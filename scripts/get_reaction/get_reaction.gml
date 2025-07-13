function get_reaction(item_id){
    // Ensure item_id is a valid string
    if (!is_string(item_id)) {
        return "?? What did you even buy?";
    }

    // Check if the field exists in the struct before accessing
    if (struct_exists(global.reaction_db, item_id) && variable_struct_exists(global.reaction_db, item_id)) {
        return variable_struct_get(global.reaction_db, item_id);
    } else {
        return "What even is this? Hmph.";
    }
}