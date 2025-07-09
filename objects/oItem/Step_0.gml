if (!item_loaded && item_id != "") {
    item_loaded = true;

   var category_list = [ "milk", "eggs", "fruit", "bread", "meat", "vegetables", "snacks", "condiments" ];

    for (var i = 0; i < array_length(category_list); i++) {
        var category = category_list[i];
        var list = ds_map_find_value(global.item_database, category);

        if (!is_array(list)) {
            show_debug_message("Expected array, got something else for category: " + category);
            continue;
        }

        for (var j = 0; j < array_length(list); j++) {
            if (list[j].id == item_id) {
                var item_data = list[j];
                item_name = item_data.name;
                item_desc = item_data.desc;
                item_category = category;
                goblin = item_data.goblin;
                item_opinion = item_data.opinion;

                var spr_name = "s_" + item_id;
				show_debug_message(spr_name);
                var spr_index = asset_get_index(spr_name);
                if (spr_index != -1) {
                    sprite_index = spr_index;
                } else {
                    show_debug_message("Sprite not found: " + spr_name + ", using placeholder");
                    sprite_index = sPlaceholder;
                }
                return; // stop once found
            }
        }
    }
}