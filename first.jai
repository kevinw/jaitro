
#import "Basic";
#import "Compiler";
#import "String";
#import "Process";
#import "File_Utilities";
#import "File";

#if OS_WINDOWS {
    Windows_Resources :: #import "Windows_Resources";
    Ico_File :: #import "Ico_File";
}

#if OS_MACOSX {
    Bundler :: #import "MacOS_Bundler";
}

GAME_NAME :: "jaitro";

BUILD_COCOA_APP :: true;

build :: (building_executable := true, build_release := false) -> Workspace {
    set_working_directory(#filepath);
    
    opts := get_build_options();
    opts.output_type = Build_Output_Type.NO_OUTPUT;
    set_build_options(opts);

    opts.output_type = Build_Output_Type.EXECUTABLE;
    opts.output_executable_name = GAME_NAME;
    opts.output_path = "run_tree/";
    array_add(*opts.modules_search_path_array, "src/modules/");
    w := compiler_create_workspace(sprint("% by Kevin Watters", GAME_NAME)); // I think this @Leaks ?
    if building_executable then compiler_begin_intercept(w);

    if BUILD_COCOA_APP && OS_MACOSX {
        opts.entry_point_name = "cocoa_application_main";
    }

    if build_release {
        set_optimization_level(*opts, 3, 0);
    }

    set_build_options(opts, w);
    add_build_file("src/main.jai", w);
    add_build_string(sprint("GAME_NAME :: \"%\";", GAME_NAME), w);
    
    if building_executable {
        // Wait for COMPLETE message so we know our executable is built
        while true {
            using Compiler_Message.Kind;
            
            message := compiler_wait_for_message();
            if !message continue;
            if message.workspace != w continue;
            if message.kind == COMPLETE break;
        }

        compiler_end_intercept(w);

        #if OS_WINDOWS {
            exe_name := sprint("%1%2.exe", opts.output_path, opts.output_executable_name);
            translate_path(exe_name, #char "\\");
            defer free(exe_name);

            ico_data := Ico_File.create_ico_file_from_bitmap_filename("run_tree\\apple.png");
            defer free(ico_data);
            if !ico_data then print("Could not load image for icon: run_tree/apple.png\n");
            else Windows_Resources.set_icon_by_data(exe_name, ico_data);

            manifest_options: Windows_Resources.Manifest_Options;
            manifest_options.dpi_aware = false;
            Windows_Resources.add_manifest_to_executable(exe_name, manifest_options);
        }
    }
    return w;
}

#run build();
