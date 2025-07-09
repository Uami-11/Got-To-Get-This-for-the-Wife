if (!variable_global_exists("selected_items")) {
	show_debug_message("selected_items not created yet");
    exit;
}


var margin = 20;
var spr_size = 64;
var i = 0;

var cat = ds_map_find_first(global.selected_items);

while (cat != undefined) {
	var item_id = global.selected_items[? cat];
	//draw_text(20, 20 + 1 * 24, "Selected: " + item_id);
    var spr_name = "s_" + item_id;
    var spr_index = asset_get_index(spr_name);
    sprite_index = spr_index;

    if (spr_index != -1) {
        draw_sprite(sprite_index, -1, margin + i * (spr_size + 10), margin);
    }

    i++;
	cat = ds_map_find_next(global.selected_items, cat);
};
