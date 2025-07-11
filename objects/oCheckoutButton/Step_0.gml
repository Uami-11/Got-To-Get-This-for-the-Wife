var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);

var butt_x = 1280 - button_w - 20;
var butt_y = 720 - button_h - 20;

// If confirmation popup is open

if (visible == true) {
    if (mouse_check_button_pressed(mb_left))
{
    if (is_confirming) {
    // Yes button area
    if (mx >= 490 && mx <= 490 + yes_w &&
        my >= 360 && my <= 360 + yes_h) {
        room_goto(Home); // Replace with your actual home room name
    }

    // No button area
    if (mx >= 690 && mx <= 690 + no_w &&
        my >= 360 && my <= 360 + no_h) {
        is_confirming = false;
    }

    // Don’t trigger base button again
}


// Check if clicked on sprite
if (mx >= butt_x && mx <= butt_x + button_w &&
    my >= butt_y && my <= butt_y + button_h) {
    is_confirming = true;
}

}
}
// Hide button if popup is visible
if (instance_exists(oPopUp) && oPopUp.visible) {
    visible = false;
} else {
    visible = true;
}