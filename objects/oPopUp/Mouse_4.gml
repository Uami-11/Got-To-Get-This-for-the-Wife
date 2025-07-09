with (oPopUp) {
    visible = true;
    popup_item = other;
}

if (!visible || popup_item == noone) exit;

// Button area (bottom right)
var bx = (1280 + popup_width) / 2 - 180;
var by = (720 + popup_height) / 2 - 60;
var bw = 160;
var bh = 40;

// Check if clicked inside
if (mouse_x >= bx && mouse_x <= bx + bw && mouse_y >= by && mouse_y <= by + bh) {
    var item_id = popup_item.item_id;
    if (!is_string(item_id)){
		show_debug_message("not a string bto");
		exit;
	}
    var parts = string_split(item_id, "_");
    if (array_length(parts) < 2) exit;

    var category = parts[0];


    if (ds_map_exists(global.selected_items, category)) {
        // Already selected: unselect it
        if (global.selected_items[? category] == item_id) {
            ds_map_delete(global.selected_items, category); // Unselect
            show_debug_message("Unselected " + item_id);
        } else {
            // Optional: replace if user selected a different one from the same category
            global.selected_items[? category] = item_id;
            show_debug_message("Replaced previous in category " + category);

    }} else {
        // Not selected yet: add this item
		show_debug_message("selected item " + item_id);
        ds_map_add(global.selected_items, category, item_id);
    }
}