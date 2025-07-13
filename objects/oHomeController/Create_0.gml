draw_set_font(FontDefault)
global.reaction_db = scr_create_reaction_database();

if (!instance_exists(oDialougeBox)) {
    var box = instance_create_layer(0, 0, "GUI", oDialougeBox);
	global.mood = 0;
    var likes = false;
    var dislikes = false;

    var line = "";
	
	
	
    var disliked_items = [];
    var liked_items = [];

    var match_count = 0;
    var total_required = array_length(global.grocery_categories);

    // Loop through grocery list categories
    for (var i = 0; i < total_required; i++) {
        var category = global.grocery_categories[i];
        
        if (ds_map_exists(global.selected_items, category)) {
            match_count++;
        }
    }

    var key = ds_map_find_first(global.selected_items);
    // seperates likes and dislikes
    while (!is_undefined(key)){
        var item_id = global.selected_items[? key];

        // Look up the item data from the database
        var item_list = global.item_database[? key];
        for (var j = 0; j < array_length(item_list); j++) {
            if (item_list[j].id == item_id) {
                if (!item_list[j].goblin) {
                    array_push(disliked_items, item_id);
					dislikes = true;
                } else {
                    array_push(liked_items, item_id);
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
		mood = -5;
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
		//[2] = 2;
		array_push(lines, "sigh...");
		array_push(lines, "Next time, I am going alone.");
		array_push(lines, "I have had enough of you for today...");
		
		
		
    }
    else if (size == 1){
		mood = -2;
        array_push(lines, "You brought one thing?");
        
    }
    else if (size <= 4){
		//[2] = 4;
        mood = -1;
        array_push(lines, "So you gave up halfway. Or maybe this is your full effort.");
        array_push(lines, "That bag does not seem to have everything I asked for.")
        
    }
    else if (size == 5){
        mood = 0;
        array_push(lines, "Seems like you got the right amount.");
        if (match_count == 0){
            array_push(lines, "")
        }
		
    }
    else if (size <= 7){
		//[2] = 5;
        array_push(lines, "Did you panic and start grabbing things at random?");
        mood = -1;
    }
    else if (size == 8){
        //[2] = 6;
        array_push(lines, "Where am I gonna put all of this?");
        array_push(lines, "This is also way above our bugdet...");
        mood = -2;
    }
	else{
		//[0] = 7;
		array_push(lines, "WHAT IS THAT?! BROUGHT A DEMON INTO MY HOME!");
	}

    // Part 2 – item reactions (loop through liked/disliked)
	if (size != 0){
		if (size == 1){
            if (match_count == 1){
				//[2] = 8;
                array_push(lines, "Atleast you got one thing on the list correct...");
                mood += 1;
                
            }
            else if (match_count == 0){
				//[0] = 9;
                mood -=1;
                array_push(lines, "And you did not even get a thing that was one the list!");
            }
            else{
				//[0] = 10;
                array_push(lines, "You got me WHAT");
            }

            if (likes){
				//[3] = 11;
                array_push(lines, "Seems like you remember what I like though.");
                line = get_reaction(liked_items[0]);
				mood += 1;
            }
            else if (dislikes){
				//[2] = 12;
                array_push(lines, "And the cherry on top! It's something I hate.");
                line = get_reaction(disliked_items[0]);
				mood -= 1;
            }
            array_push(lines, line);
        }
        else if (size <= 5){
            if (likes && !dislikes){
                //[3] = 13;
                array_push(lines, "they seem like good items!");
                for (var i = 0; i < array_length(liked_items); i++){
                    line = get_reaction(liked_items[i]);
                    array_push(lines, line);
                }
            }
            else if (!likes && dislikes){
                //[2] = 14;
                array_push(lines, "And they seem like horrible items...");
                for (var i = 0; i < array_length(disliked_items); i++){
                    line = get_reaction(disliked_items[i]);
                    array_push(lines, line);
                }
            }
			else {
				array_push(lines, "Let's start with the bad ones..");
                for (var i = 0; i < array_length(disliked_items); i++){
                    line = get_reaction(disliked_items[i]);
                    array_push(lines, line);
                }
                array_push(lines, "But atleast you got...");
                for (var i = 0; i < array_length(liked_items); i++){
                    line = get_reaction(liked_items[i]);
                    array_push(lines, line);
                }
            }
            if (size == 5){
                if (array_length(disliked_items) ==  5){
                    array_push(lines, "You got five items, and you did not get a single one correct!");
                    array_push(lines, "Seems I can't trust you with anything now.");
                    array_push(lines, "Go to your room, I've had enough of you!");
                }
                else{
                    array_push(lines, "You got everything correct!");
                    array_push(lines, "Though that is just a bare minimum, it makes me very happy.");
                    array_push(lines, "Love yaa");
                }
                
            }
            
			mood -= array_length(disliked_items);
			mood += array_length(liked_items);
        }
        else if (size > 5){
            array_push(lines, "Let's see if you put our budget to good use...");
            if (likes && !dislikes){
                //[3] = 13;
                array_push(lines, "They all seem like good items though!");
                array_push(lines, "Seems like you're not good for nothing.");
                for (var i = 0; i < array_length(liked_items); i++){
                    line = get_reaction(liked_items[i]);
                    array_push(lines, line);
                }
            }
            else if (!likes && dislikes){
                //[2] = 14;
                array_push(lines, "And they are all horrible items...");
                for (var i = 0; i < array_length(disliked_items); i++){
                    line = get_reaction(disliked_items[i]);
                    array_push(lines, line);
                }
            }
			else {
                array_push(lines, "Seems like a mixed bag");
				array_push(lines, "Let's start with the bad ones..");
                for (var i = 0; i < array_length(disliked_items); i++){
                    line = get_reaction(disliked_items[i]);
                    array_push(lines, line);
                }
                array_push(lines, "But atleast you got...");
                for (var i = 0; i < array_length(liked_items); i++){
                    line = get_reaction(liked_items[i]);
                    array_push(lines, line);
                }
            }
            
			mood -= array_length(disliked_items);
			mood += array_length(liked_items);
        }
	}
    if (size == 8){
        if (array_length(liked_items) == 8){
            array_push(lines, "You got me everything on the list and more!");
            array_push(lines, "It is everything I love! Plus you brought yourself!");
            array_push(lines, "Thank you for proving yourself useful!! Love yaa!");
        }
        else if(mood <= -8){
            array_push(lines, "SEEMS LIKE YOU DON'T CARE ABOUT ME, OR ANYTHING!");
            array_push(lines, "YOU SPEND RECKLESSLY AND IT IS ALL THE THINGS I HATE!");
            array_push(lines, "THAT'S IT, WE ARE GETTING A DIVORCE!");
        }
        else if (array_length(liked_items)>=array_length(disliked_items)){
            array_push(lines, "Even though you got more than I asked for.");
            array_push(lines, "You got most of things I like.");
            array_push(lines, "So thanks for doing the grocery shopping!");
        }
        else{
            array_push(lines, "You got more than I asked for.");
            array_push(lines, "And you got most of the things I dislike.");
            array_push(lines, "So thanks for reminding me to never let you do the grocery shopping!");
        }
    }
    if (mood <= -8) {
        
        alarm[1] = 1;
        mood_triggered = true;
    }
    else if (mood <= -2) {
        alarm[0] = 1;
        mood_triggered = true;
    }
    else if (mood < 0) {
        alarm[2] = 1;
        mood_triggered = true;
    }
    else if (mood >= 0) {
        alarm[4] = 1;
        mood_triggered = true;
    }
    if (size != 0 && size != 5 && size != 8){
        if (mood == -5){
            array_push(lines, "...You're not even *trying* anymore, are you?");
            array_push(lines, "This isn't just about groceries. It's about *everything.*");
            array_push(lines, "I'm never sending you shopping again. Ever.");
        }
        else if (mood <-2){
            array_push(lines, "This... was a disaster.");
            array_push(lines, "I can't even begin to understand how you made these choices.");
            array_push(lines, "Next time, I'll just go myself. It'll be faster, cheaper, and less heartbreaking.");
        }
        else if (mood <0){
            array_push(lines, "You did *some* things right, but it's hard to see them through the mess.");
            array_push(lines, "I guess I shouldn't have expected too much...");
            array_push(lines, "Please try to do better next time.");
        }
        else if (mood ==0){
            array_push(lines, "Well... you didn't mess everything up.");
            array_push(lines, "It's not perfect, but I've seen worse from you.");
            array_push(lines, "Let's just call this a draw.");
        }
        else if (mood > 0){
            array_push(lines, "Hmm. Some of these were actually... good?");
            array_push(lines, "Don't let this go to your head, though.");
        }
        else if (mood >=3){
            array_push(lines, "This might be the first time I smiled after unpacking your groceries.");
            array_push(lines, "You really paid attention to what I like.");
            array_push(lines, "Good job. You earned a nap. Or at least some peace and quiet.");
        }
        else if (mood >=5){
            array_push(lines, "Wow. This is... *perfect.*");
            array_push(lines, "You might actually be useful after all.");
        }
    }

    box.dialogue_lines = lines;
}