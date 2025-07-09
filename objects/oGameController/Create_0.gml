global.item_database = scr_create_item_database();
global.selected_items = [];
global.show_popup = false;
global.popup_item = noone;

// Force asset inclusion
var _force_sprites = [

    sPlaceholder,

    // Milk
    s_milk_cow,
    s_milk_malk,
    s_milk_bone,
    s_milk_swamp,

    // Eggs
    s_egg_chicken,
    // s_egg_ostrich,
    // s_egg_star,

    // Fruit
    // s_fruit_apple,
    // s_fruit_worm,
    // s_fruit_dragonfruit,
    // s_fruit_fungus,

    // Bread
    // s_bread_bread,
    // s_bread_exbread,
    // s_bread_car,
    // s_bread_glass,

    // Meat
    // s_meat_chicken,
    // s_meat_beef,
    // s_meat_rodent,

    // Vegetables
    // s_vegetable_carrot,
    // s_vegetable_evilbroccoli,
    // s_vegetable_bugcucumber,

    // Snacks
    // s_snacks_chips,
    // s_snacks_fflies,
    // s_snacks_children,

    // Condiments
    // s_condiments_ketchup,
    // s_condiments_devilsauce,
    // s_condiments_metalicflakes
];
