// Draw the sprite (GUI position)
var butt_x = 1280 - button_w - 20;
var butt_y = 720 - button_h - 20;

draw_sprite(sprite_index, -1, butt_x, butt_y);

// If clicked and confirming
if (is_confirming) {
    // Dimmed background behind message
    var rect_x = 340;
    var rect_y = 260;
    var rect_w = 600;
    var rect_h = 200;

    draw_set_color(c_black);
    draw_set_alpha(0.75);
    draw_rectangle(rect_x, rect_y, rect_x + rect_w, rect_y + rect_h, false);
    draw_set_alpha(1);

    // Confirmation text
    draw_set_color(c_white);
    draw_set_halign(fa_left);
    draw_text(460, 300, "Are you sure you want to finish shopping?");

    // Yes button
    draw_set_color(c_white);
    draw_rectangle(490, 360, 490 + yes_w, 360 + yes_h, false);
    draw_set_color(c_black);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_text(490 + yes_w / 2, 360 + yes_h / 2, "Yes");

    // No button
    draw_set_color(c_white);
    draw_rectangle(690, 360, 690 + no_w, 360 + no_h, false);
    draw_set_color(c_black);
    draw_text(690 + no_w / 2, 360 + no_h / 2, "No");
}