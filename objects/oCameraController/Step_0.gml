camera_x = lerp(camera_x, target_x, camera_speed); // move smoothly to target x
camera_set_view_pos(view_camera[0], camera_x, 0); // applying that to camera view

if (keyboard_check_pressed(vk_right)) {
    target_x += section_width;
}
if (keyboard_check_pressed(vk_left)) {
    target_x -= section_width;
}

// Clamp target to room bounds
target_x = clamp(target_x, 0, room_width - view_wport[0]);