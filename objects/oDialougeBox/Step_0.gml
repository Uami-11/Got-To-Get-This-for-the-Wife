if (!is_done && current_line < array_length(dialogue_lines)) {
    frame_count++;
	//get_mood(global.mood);
    if (frame_count >= text_speed) {
        frame_count = 0;
        if (char_index < string_length(dialogue_lines[current_line])) {
            char_index++;
            display_text = string_copy(dialogue_lines[current_line], 1, char_index);
        }
    }
}

if (mouse_check_button_pressed(mb_left)) {
    if (is_done) {
        exit;
    }

    if (char_index < string_length(dialogue_lines[current_line])) {
        // Skip typing, show full line
        char_index = string_length(dialogue_lines[current_line]);
        display_text = dialogue_lines[current_line];
    } else {
        // Next line
        current_line++;
        if (current_line < array_length(dialogue_lines)) {
            char_index = 0;
            display_text = "";
        } else {
            // All dialogue shown
            is_done = true;
        }
    }
}

if (is_done && !room_transition_started) {
    room_transition_started = true;
    alarm[0] = 30; // Delay
}
