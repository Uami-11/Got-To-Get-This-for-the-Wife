if (!variable_global_exists("selected_items")) {
    global.selected_items = ds_map_create();
    show_debug_message("Created global.selected_items (delayed)");
}