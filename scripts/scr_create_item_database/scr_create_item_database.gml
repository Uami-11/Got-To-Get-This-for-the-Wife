function scr_create_item_database(){
    
	var db = ds_map_create();

    // Milk category
    var milk = [
        { id: "milk_cow", name: "Cow Milk", desc: "Classic. Safe.", goblin: false, opinion: "ball" },
		{ id: "milk_malk", name: "Malk", desc: "Gravel and soil", goblin: false, opinion: "ball" },
        { id: "milk_bone", name: "Bone Milk", desc: "Crackles when you shake it.", goblin: true, opinion: "ball" },
        { id: "milk_swamp", name: "Swamp Sludge", desc: "Thick. Alive.", goblin: false,opinion: "ball" }
    ];
    ds_map_add(db, "milk", milk);

    // Eggs category
    var eggs = [
        { id: "egg_chicken", name: "Chicken Eggs", desc: "Simple and smooth.", goblin: false, opinion: "ball" },
        { id: "egg_ostrich", name: "Ostrich Egg", desc: "Big egg", goblin: true, opinion: "ball" },
        { id: "egg_star", name: "Stars as Eggs", desc: "Stars in a cartoon", goblin: true, opinion: "ball" }
    ];
    ds_map_add(db, "eggs", eggs);

    // Fruit category
    var fruit = [
        { id: "fruit_apple", name: "Apple", desc: "Normal apple", goblin: false, opinion: "ball"},
        { id: "fruit_worm", name: "Apple with Worm", desc: "Apple with a worm through it", goblin: false, opinion: "ball"},
        { id: "fruit_dragonfruit", name: "Dragonfruit", desc: "Normal dragon fruit", goblin: false, opinion: "ball"},
        { id: "fruit_fungus", name: "Fungus Banana", desc: "Banana possessed by fungus", goblin: true, opinion: "ball"}
    ];
    ds_map_add(db, "fruit", fruit);

    // Bread
    var bread = [
        { id: "bread_bread", name: "Bread", desc: "Normal loaf of bread", goblin: false, opinion: "ball"},
        { id: "bread_exbread", name: "Bread from last year (green)", desc: "Expired bread, its green", goblin: true, opinion: "ball"},
        { id: "bread_car", name: "Cat", desc: "Cat loaf", goblin: false, opinion: "ball"},
        { id: "bread_glass", name: "Glass Bread", desc: "See through wowie", goblin: false, opinion: "ball"}
    ];
    ds_map_add(db, "bread", bread);

    // Meat
    var meat = [
        { id: "meat_chicken", name: "Chicken", desc: "Normal chicken", goblin: false, opinion: "ball"},
        { id: "meat_beef", name: "Beef", desc: "Normal Beef", goblin: false, opinion: "ball"},
        { id: "meat_rodent", name: "Rodent", desc: "Rat", goblin: true, opinion: "ball"}
    ];
    ds_map_add(db, "meat", meat);

    // Vegetables
    var vegetables = [
        { id: "vegetable_carrot", name: "Carrot", desc: "Normal carrot", goblin: false, opinion: "ball"},
        { id: "vegetable_evilbroccoli", name: "Evil Broccoli", desc: "Mean and green", goblin: true, opinion: "ball"},
        { id: "vegetable_bugcucumber", name: "Bug Cucumber", desc: "Cucumber shaped like bugs", goblin: false, opinion: "ball"}
    ];
    ds_map_add(db, "vegetables", vegetables);

    // Snacks
    var snacks = [
        { id: "snacks_chips", name: "Chips", desc: "Bag of chips", goblin: false, opinion: "ball"},
        { id: "snacks_fflies", name: "Fireflies", desc: "Bag of fireflies", goblin: true, opinion: "ball"},
        { id: "snacks_children", name: "Children", desc: "Bag labeled children", goblin: false, opinion: "ball"}
    ];
    ds_map_add(db, "snacks", snacks);

    // condiments
    var condiments = [
        { id: "condiments_ketchup", name: "Ketchup", desc: "Wet", goblin: false, opinion: "ball"},
        { id: "condiments_devilsauce", name: "Devil sauce", desc: "From hell", goblin: true, opinion: "ball"},
        { id: "condiments_metalicflakes", name: "Metalic Flakes", desc: "Shaved metal", goblin: false, opinion: "ball"}
    ];
    ds_map_add(db, "condiments", condiments);

    return db;
}