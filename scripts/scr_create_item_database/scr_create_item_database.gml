function scr_create_item_database(){
    
	var db = ds_map_create();

    // Milk category
    var milk = [
        { id: "milk_cow", name: "Cow Milk", desc: "Classic. Safe.", goblin: false },
		
        { id: "milk_bone", name: "Bone Milk", desc: "Crackles when you shake it.", goblin: true },
        { id: "milk_swamp", name: "Swamp Sludge", desc: "Thick. Alive.", goblin: true }
    ];
    ds_map_add(db, "milk", milk);

    // Eggs category
    var eggs = [
        { id: "egg_chicken", name: "Chicken Eggs", desc: "Simple and smooth.", goblin: false },
        { id: "egg_spider", name: "Spider Eggs", desc: "Sticky. Still twitching?", goblin: true },
        { id: "egg_glass", name: "Glass Eggs", desc: "See-through. Fancy?", goblin: true }
    ];
    ds_map_add(db, "eggs", eggs);

    // Repeat for other categories...

    return db;
}