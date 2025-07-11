function generate_grocery_list(){
	var all_categories = [
        "milk", "eggs", "fruit", "bread",
        "meat", "vegetables", "snacks", "condiments"
    ];

    // Shuffle and pick 5 unique
    all_categories = array_shuffle(all_categories);

    global.grocery_categories = [];

    for (var i = 0; i < 5; i++) {
        array_push(global.grocery_categories, all_categories[i]);
    }
}