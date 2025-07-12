if (!instance_exists(oDialougeBox)) {
    var box = instance_create_layer(0, 0, "GUI", oDialougeBox);
	global.mood = 0;
    var likes = false;
    var dislikes = false;

    var disliked_items = [];
    var liked_items = [];

    var key = ds_map_find_first(global.selected_items);
    while (!is_undefined(key)){
        var item_id = global.selected_items[? key];

        // Look up the item data from the database
        var item_list = global.item_database[? key];
        for (var j = 0; j < array_length(item_list); j++) {
            if (item_list[j].id == item_id) {
                if (!item_list[j].goblin) {
                    array_push(disliked_items, item_list[j]);
					dislikes = true;
                } else {
                    array_push(liked_items, item_list[j]);
					likes = true;
                }
                break;
            }
        }

        key = ds_map_find_next(global.selected_items, key);
    }


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
    else if (size == 1){
        array_push(lines, "You brought one thing?");
        mood = -2;
    }
    else if (size <= 4){
        array_push(lines, "So you gave up halfway. Or maybe this is your full effort.");
        mood = -1;
    }
    else if (size == 5){
        array_push(lines, "Seems like you got the right amount.");
    }
    else if (size <= 7){
        array_push(lines, "Did you panic and start grabbing things at random?");
        mood = -1;
    }
    else if (size == 8){
        
        array_push(lines, "Where am I gonna put all of this?");
        array_push(lines, "This is also way above our bugdet...");
        mood = -2;
    }
	else{
		array_push(lines, "WHAT IS THAT?! BROUGHT A DEMON INTO MY HOME!");
	}

    // Part 2 – item reactions (loop through liked/disliked)
	if (size != 0){
		
	}

    box.dialogue_lines = lines;
}