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

// Check if mouse clicked inside it
if (mouse_x >= bx && mouse_x <= bx + bw && mouse_y >= by && mouse_y <= by + bh) {
    // Perform action: mark item as selected
    if (is_undefined(selected_items)) {
        global.selected_items = [];
    }

    // Hide popup
    visible = false;
    popup_item = noone;


}