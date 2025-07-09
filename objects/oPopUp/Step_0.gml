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
}