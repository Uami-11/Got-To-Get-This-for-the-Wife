// Target changes based on open/closed


if (is_open) {
    target_x = open_x;
    target_y = open_y;
} else {
    target_x = closed_x;
    target_y = closed_y;
}

// Smooth move using lerp
x = lerp(x, target_x, 0.2);
y = lerp(y, target_y, 0.2);

if (mouse_check_button_pressed(mb_left)) {
    var mx = device_mouse_x_to_gui(0);
    var my = device_mouse_y_to_gui(0);

    // Check if mouse is inside the panel
    if (mx >= x && mx <= x + panel_w &&
        my >= y && my <= y + panel_h) {
        is_open = !is_open; // toggle open/closed
    } else {
        // Clicked outside — close it
        is_open = false;
    }
}