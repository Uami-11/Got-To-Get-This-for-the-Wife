var list_x = x;
var list_y = y;

draw_sprite(sList, 0, list_x, list_y);

draw_set_color(c_black);

// Draw categories with dash
for (var i = 0; i < array_length(global.grocery_categories); i++) {
    var cat = global.grocery_categories[i];
    
    // Capitalize the first letter
    var cap_name = string_upper(string_copy(cat, 1, 1)) + string_copy(cat, 2, string_length(cat));
    
    draw_text(list_x + 40, list_y + 30 + i * 50, "- " + cap_name);
}

