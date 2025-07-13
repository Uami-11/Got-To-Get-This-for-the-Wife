if (instance_exists(oWife)) {
    with (oWife) {
        sprite_index = s_wife_sad;
        show_debug_message("Changed to sad");
    }
} else {
    show_debug_message("No wife instance found.");
}