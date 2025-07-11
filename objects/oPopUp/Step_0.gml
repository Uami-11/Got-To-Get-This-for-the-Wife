if (global.show_popup && !visible) {
    // Try to use the clicked item from global
    if (instance_exists(global.popup_item)) {
        popup_item = global.popup_item;
        visible = true;

        // reset flag so it only triggers once
        global.show_popup = false;
    }
}

if (visible && popup_item != noone) {
    popup_anim_frame += popup_anim_speed;

    var spr = popup_item.sprite_index;
    if (sprite_exists(spr)) {
        var total_frames = sprite_get_number(spr);
        if (popup_anim_frame >= total_frames) {
            popup_anim_frame = 0;
        }
    }
	
	
	if (mouse_check_button_pressed(mb_left)) {
        var mx = device_mouse_x_to_gui(0);
        var my = device_mouse_y_to_gui(0);

        // Define popup bounds (same as how you draw it)
        var popup_x = (1280 - popup_width) / 2;
        var popup_y = (720 - popup_height) / 2;

        // Check if click was outside the popup
        if (!(mx >= popup_x && mx <= popup_x + popup_width &&
              my >= popup_y && my <= popup_y + popup_height)) {
            // Close the popup
            popup_item = noone;
            visible = false;
            show_debug_message("Popup closed by clicking outside.");
        }
    }
}

if (!visible || popup_item == noone) exit;

var popup_x = 1280 / 2 - popup_width / 2;
var popup_y = 720 / 2 - popup_height / 2;

var bx = popup_x + popup_width - 180;
var by = popup_y + popup_height - 60;
var bw = 160;
var bh = 40;

var gui_x = device_mouse_x_to_gui(0); // 0 = first mouse device
var gui_y = device_mouse_y_to_gui(0);

if (mouse_check_button_pressed(mb_left)) {


    if (gui_x >= bx && gui_x <= bx + bw &&
        gui_y >= by && gui_y <= by + bh) {
        if (instance_exists(popup_item) && is_string(popup_item.item_id)) {
        var item_id = popup_item.item_id;
        var parts = string_split(item_id, "_");

        if (array_length(parts) >= 2) {
            var category = parts[0];

            // Toggle selection logic
            if (ds_map_exists(global.selected_items, category)) {
                if (global.selected_items[? category] == item_id) {
                    ds_map_delete(global.selected_items, category);
                    show_debug_message("Unselected " + item_id);
                } else {
                    global.selected_items[? category] = item_id;
                    show_debug_message("Replaced with " + item_id);
                }
            } else {
                global.selected_items[? category] = item_id;
                show_debug_message("Selected " + item_id);
            }
        } else {
            show_debug_message("ID format bad: " + item_id);
        }
    } else {
        show_debug_message("popup_item or item_id invalid");
    }
        show_debug_message("Button clicked!");
    } else {
        show_debug_message("Clicked, but not in bounds");
		
    }
}