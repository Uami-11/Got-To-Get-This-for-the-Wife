function scr_create_item_database(){
    
	var db = ds_map_create();

    // Milk category
    var milk = [
        { id: "milk_cow", name: "Cow Milk", desc: "A carton of normal milk. The milk is coloured green.\n\nProduced by Green Industries. Owned by a prolific business man, Green.", goblin: false, opinion: "\"This brand is kind of bland. But I do like that proceeds go to goblins!\"" },
		{ id: "milk_malk", name: "Malk", desc: "A carton of soil and gravel. This is not milk.\n\nA man tried to replicate milk to earn some profits, accidentally made this.", goblin: false, opinion: "\"How can someone accidentally put gravel and milk in somehting? And sell it?\"" },
        { id: "milk_bone", name: "Bone Milk", desc: "A carton of milk, with bones in it.\n\n\"Lucky Chance of having just one big bone!\n\nCan be redeemed for some prizes\"\n\nThe bones are edible, the milk may vary.", goblin: true, opinion: "\"I don't really like the taste of the bones of these. But I could win a car if I get lucky!\"" },
        { id: "milk_swamp", name: "Swamp Milk", desc: "\"Thick. Alive. Straight from the Swamp!\"\n\nSupport a local business!", goblin: false,opinion: "\"I don't like the thickness of this milk. But the flavour is alright.\"" }
    ];
    ds_map_add(db, "milk", milk);

    // Eggs category
    var eggs = [
        { id: "eggs_chicken", name: "Chicken Eggs", desc: "A carton of chicken eggs.\n\nThe Eggs shake in anticipation", goblin: false, opinion: "\"I like the utility of eggs, but I don't like how excited they are to be.\"" },
        { id: "eggs_ostrich", name: "Ostrich Egg", desc: "One big case with an ostrich egg.\n\n\"Quality over quantity\"", goblin: true, opinion: "\"Perfect for a big meal.\"" },
        { id: "eggs_star", name: "Stars as Eggs", desc: "A carton of star eggs.\n\n\"Laid by local stars!\"", goblin: true, opinion: "\"Eggs laid by celebrities always come out in stars somehow...\"" }
    ];
    ds_map_add(db, "eggs", eggs);

    // Fruit category
    var fruit = [
        { id: "fruit_apple", name: "Apple", desc: "Normal apple\n\nSticker: \"Dr. Apples\"", goblin: false, opinion: "\"Doctor Apples knows his way around apples. Never touches the stuff though.\""},
        { id: "fruit_worm", name: "Apple with Caterpillar", desc: "Apple with a caterpillar on it.\n\n\"As seen in the movies!\"\n\nWhoever was in charge of putting caterpillar could not be bothered to be put it in front.", goblin: false, opinion: "\"What movies?\""},
        { id: "fruit_dragonfruit", name: "Dragonfruit", desc: "Normal dragonfruit\n\nHarvested by Kobolds!\n\nAll proceeds go to them.", goblin: true, opinion: "\"Those hard working Kobolds always bring in good fruit.\""}
        //{ id: "fruit_fungus", name: "Fungus Banana", desc: "Banana possessed by fungus.\n\nFungus: \"I bet I am real delicious!\"\nBanana: \"Don't eat me!\"", goblin: true, opinion: "\"Those fungi realy know how to enhance tase though...\""}
    ];
    ds_map_add(db, "fruit", fruit);

    // Bread
    var bread = [
        { id: "bread_bread", name: "Bread", desc: "Normal loaf of multigrained bread.\n\n\"No Grain No Gain\"\n\nEx Date: In a month or so", goblin: false, opinion: "\"Looks like a soft and tasty batch\""},
        { id: "bread_exbread", name: "Bread from last year (green)", desc: "Expired bread, its green.\n\n\"No mold? Might as well fold\"\n\nEx Date: Like last year", goblin: true, opinion: "\"Looks like a soggy and sour batch.\""},
        { id: "bread_car", name: "Cat", desc: "Cat loaf\n\n\"Meow!\"", goblin: false, opinion: "\"It's so cute!\""}
    ];
    ds_map_add(db, "bread", bread);

    // Meat
    var meat = [
        { id: "meat_chicken", name: "Chicken", desc: "Pale whole chicken.\n\n\"Tasty even without cooking!\nRecommened to eat raw!\nWorked very hard to make it pale and white outlines!\nPlease.\"", goblin: false, opinion: "\"What is this marketing? Looks freaky.\""},
        { id: "meat_beef", name: "Beef", desc: "One Big Beef.\n\n\"Don't got beef with who wants my beef\" - Beef Man", goblin: false, opinion: "\"Beef Man is a very respectable member of society, but I have never had his beef.\nHe does so many other things!\""},
        { id: "meat_rodent", name: "Rodent", desc: "A small rodent.\n\n\"It may look small, but enough to feed a family of four!\"\n\nRodent: \"Squeak!\"", goblin: true, opinion: "\"I have not had a rodent in a long time!\""}
    ];
    ds_map_add(db, "meat", meat);

    // Vegetables
    var vegetables = [
        { id: "vegetables_carrot", name: "Carrot", desc: "Normal carrot that stands up when provoked.\n\nCarrot stands tall at 1 foot, very worth the price.", goblin: false, opinion: "\"Don't tell me what to think about the price. It's alright though.\nMy eyes have been slacking. Maybe I need this\""},
        { id: "vegetables_evilbroccoli", name: "Evil Broccoli", desc: "Mean and green.\n\nEnchanted with the energy of the Dark Lord.\n\nEnergy for 24 hours!\n\nEvil Broccoli: \"Don't just stand there, take me!\"", goblin: true, opinion: "\"Uhh, in a bit maybe!\""},
        { id: "vegetables_bugcucumber", name: "Bug Cucumber", desc: "Bug as long and identical to a cucumber.\n\n90% Bug, 10% Water, 100% Awesome.", goblin: false, opinion: "\"Math does not add up.. But crunchy bugs are great!\""}
    ];
    ds_map_add(db, "vegetables", vegetables);

    // Snacks
    var snacks = [
        { id: "snacks_chips", name: "Chips", desc: "Bag of chips!\n\n3 Chips!\n\n99% Air!\n\nBut the 3 chips are really good!\n\nAs seen on the bag!", goblin: false, opinion: "\"A light snack would be nice for movie night.\""},
        { id: "snacks_fflies", name: "Fireflies", desc: "Bag of fireflies!\n\n3 Alive Fireflies!\n\nAs seen by the movement of the bag!\n\nLight up your belly!!", goblin: true, opinion: "\"Loved these since I was a kid!\""},
        { id: "snacks_children", name: "Children", desc: "Bag labeled children.", goblin: false, opinion: "\"Never had these, wonder what they put in them.\""}
    ];
    ds_map_add(db, "snacks", snacks);

    // condiments
    var condiments = [
        { id: "condiments_ketchup", name: "Ketchup", desc: "Bottle of ketchup! Extra wet!\n\nPerfect for a nice drink!", goblin: true, opinion: "\"I don't like drinking ketchup.\""},
        { id: "condiments_devilsauce", name: "Untypical Ketchup", desc: "Bottle of ketchup. Normal Wetness\n\nGood for putting next to other food.", goblin: false, opinion: "\"I do like having some hot dogs with ketchup!\""},
        { id: "condiments_metalicflakes", name: "Metalic Flakes", desc: "Shaved metal in a container!\n\nMight give you magnetic powers!\n\nCaution: Might cut up your mouth.", goblin: false, opinion: "\"Really adds a nice crunchy taste to anything it's put on!\""}
    ];
    ds_map_add(db, "condiments", condiments);

    return db;
}