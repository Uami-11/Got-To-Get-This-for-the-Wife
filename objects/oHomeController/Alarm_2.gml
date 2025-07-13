if (instance_exists(oWife)) {
    with (oWife) {
        sprite_index = s_wife_disappoint;
        show_debug_message("Changed to disappointed");
    }
} else {
    show_debug_message("No wife instance found.");
}