if (!instance_exists(oDialougeBox)) {
    var box = instance_create_layer(0, 0, "GUI", oDialougeBox);
	global.mood = 0;
    // Generate wife reactions dynamically
    var lines = [];
    var size = ds_map_size(global.selected_items);
    // Part 1 – amount logic
    if (size == 0){
        array_push(lines, "YOU BROUGHT NOTHING?!");
        array_push(lines, "I CLEARLY GAVE YOU A LIST OF ITEMS?!");
		if (global.game_time < 120){
			array_push(lines, "DID YOU EVEN GO TO THE STORE?!");
			array_push(lines, "DOES NOT SEEM YOU WERE THERE FOR EVEN A MINUTE!");
		}
		else{
			array_push(lines, "YOU WERE THERE FOR QUITE SOME TIME!");
			array_push(lines, "CLEARLY YOU COULD'VE BROUGHT SOMETHING!");
		}
		array_push(lines, "sigh...");
		array_push(lines, "Next time, I am going alone.");
		array_push(lines, "I have had enough of you for today...");
		
		mood = -5;
		
    }
    // array_push(lines, "Hmph. You bought too much again.");
    // array_push(lines, "I told you we don't need six kinds of meat.");
    
    // Part 2 – item reactions (loop through liked/disliked)
    // array_push(lines, "Cow Milk? Disgusting.");
    // array_push(lines, "Rodent? Finally, something edible.");

    box.dialogue_lines = lines;
}