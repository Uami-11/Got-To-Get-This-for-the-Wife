draw_set_halign(fa_left);
draw_set_valign(fa_top);

// Draw background panel
draw_set_color(c_black);
draw_set_alpha(0.8);
draw_rectangle(0, 560, 1280, 720, false);
draw_set_alpha(1);

// Draw text
draw_set_color(c_white);
draw_text(40, 580, display_text);