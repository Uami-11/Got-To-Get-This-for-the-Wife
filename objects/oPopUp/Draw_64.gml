if (!visible || popup_item == noone) exit;

// Center popup on screen
x = (1280 - popup_width) / 2;
y = (720 - popup_height) / 2;

// Draw background
draw_set_color(c_black);
draw_set_alpha(0.8);
draw_rectangle(x, y, x + popup_width, y + popup_height, false);
draw_set_alpha(1);

// Get item data from the item object
var item_name = popup_item.item_name;
var item_desc = popup_item.item_desc;
var item_opinion = popup_item.item_opinion;
var item_sprite = popup_item.sprite_index;

// Draw item name (header)
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_color(c_white);
draw_text(x + popup_width / 2, y + 20, item_name);

// Draw sprite (right side)
var spr_w = sprite_get_width(item_sprite);
var spr_h = sprite_get_height(item_sprite);
var frame = floor(popup_anim_frame);
draw_sprite(item_sprite, frame, x + popup_width - spr_w - 40, y + 120);

// Draw description (left side)
draw_set_halign(fa_left);
draw_text(x + 40, y + 120, item_desc);

// Draw opinion (bottom center)
draw_set_halign(fa_center);
draw_set_valign(fa_bottom);
draw_text(x + popup_width / 2, y + popup_height - 40, item_opinion);

// Draw "Select" button

// Determine if this item is already selected
var selected = false;
var item_id = popup_item.item_id;
if (!is_string(item_id)) exit;
    
var parts = string_split(item_id, "_");
if (array_length(parts) < 2) exit;

var category = parts[0];


if (ds_map_exists(global.selected_items, category)) {
    selected = (global.selected_items[? category] == item_id);
}


var bx = (1280 + popup_width) / 2 - 180;
var by = (720 + popup_height) / 2 - 60;
var bw = 160;
var bh = 40;

draw_set_color(selected ? c_red : c_lime);
draw_rectangle(bx, by, bx + bw, by + bh, false);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(bx + bw / 2, by + bh / 2, selected ? "Unselect" : "Select");