#import "Basic";

#if OS == .WINDOWS {

    #import "Windows";
    #import "Windows_UTF8";

    Library :: HMODULE;
    UTF8_String :: string;

    load :: (filename: string) -> Library {
        return LoadLibraryW(utf8_to_wide(filename));
    }

    unload :: (module: *Library) {
        if !module return;

        if module.* FreeLibrary(module.*);
        module.* = null;
    }

    get_symbol :: (module: Library, symbol_name: *u8) -> *void {
        assert(module != null);
        return GetProcAddress(module, symbol_name);
    }

} else {

    #import "POSIX";

    Library :: *void;

    load :: (filename: string) -> Library {
        return dlopen(filename.data, RTLD_LAZY | RTLD_LOCAL);
    }

    unload :: (module: *Library) {
        if !module return;
        if module.* dlclose(module.*);
        module.* = null;
    }

    get_symbol :: (module: Library, symbol_name: *u8) -> *void {
        assert(module != null);
        return dlsym(module, symbol_name);
    }

}