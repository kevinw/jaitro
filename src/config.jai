#import "Text_File_Handler";
#import "Reflection";

//
// parse a config file and write values from it into the `target` struct
//
parse_config_file :: (target: *$T, config_filename: string) {
    handler: Text_File_Handler;
    defer deinit(*handler);

    start_file(*handler, "config", config_filename, "config parsing", false);
    if handler.failed {
        Log.error();
        Log.print("Could not find '%'\n", config_filename);
        return;
    }

    // TODO: recurse into sub-structs with "." or something?
    target_tinfo := type_info(T);

    while true {
        line, found := consume_next_line(*handler);
        if !found break;

        key_name, rhs := break_by_spaces(line);
        if !rhs {
            error(handler, "Expected a space after the key\n");
            continue;
        }

        //member := get_struct_field_info(target_tinfo, key_name);
        member := get_field(target_tinfo, key_name);
        if member == null {
            Log.error();
            Log.print("invalid config field '%'\n", key_name);
            continue;
        }

        any: Any;
        any.value_pointer = (cast(*u8)target) + member.offset_in_bytes;
        any.type = member.type;

        if any.type == type_info(string) {
            // @Leak - if we're setting a string, we
            // can't just return a slice of the data, since it will be freed
            // when we're done config parsing
            rhs = copy_string(rhs);
        }

        if !set_value_from_string(any, rhs) {
            error(handler, "Error setting value '%' from config value '%'\n", key_name, rhs);
            continue;
        }
    }
}
