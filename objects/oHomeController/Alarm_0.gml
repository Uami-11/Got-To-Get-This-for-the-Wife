if (instance_exists(oWife)) {
    with (oWife) {
        sprite_index = s_wife_angry;
        show_debug_message("Changed to angry");
    }
} else {
    show_debug_message("No wife instance found.");
}