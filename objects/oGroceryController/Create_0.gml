global.item_database = scr_create_item_database();
show_debug_message("I am in the room!");
if (!variable_global_exists("selected_items")) {
    global.selected_items = ds_map_create();
	show_debug_message("global.selected_items created!");
}
global.show_popup = false;
global.popup_item = noone;

var all_categories = [
    "milk", "eggs", "fruit", "bread",
    "meat", "vegetables", "snacks", "condiments"
];
randomize();
generate_grocery_list();

alarm[0] = 1;

global.game_time = 0;

// Force asset inclusion
var _force_sprites = [

    sPlaceholder,

    // Milk
    s_milk_cow,
    s_milk_malk,
    s_milk_bone,
    s_milk_swamp,

    // Eggs
    s_eggs_chicken,
    // s_eggs_ostrich,
    // s_eggs_star,

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
