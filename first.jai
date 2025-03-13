#run build();

build :: () {
    set_build_options_dc(.{do_output=false});

    options := get_build_options();

    if !generate_bindings() {
        compiler_set_workspace_status(.FAILED);
        return;
    }


    w := compiler_create_workspace("Target Program");
    if !w {
        print("Workspace creation failed.\n");
        return;
    }

}

generate_bindings :: () -> bool {
    output_filename :: "libretro.jai";

    opts: Generate_Bindings_Options;
    {
        using opts;
        declare_libraryless_foreign_funcs = true;
        strip_flags = .INLINED_FUNCTIONS;
        array_add(*libpaths, "./run_tree/cores");
        // array_add(*libnames, "mesen_libretro");
        array_add(*source_files, "libretro/libretro.h");
        array_add(*strip_prefixes, "retro_", "RETRO_");
    }
    return generate_bindings(opts, output_filename);
}

#scope_file
#import "Basic";
#import "Compiler";
#import "Bindings_Generator";