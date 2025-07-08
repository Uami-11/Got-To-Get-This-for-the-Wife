function scr_place_item(category, item_data, x, y) {
    var inst = instance_create_layer(x, y, "Instances", obj_item);
    inst.item_id = item_data.id;
    inst.item_name = item_data.name;
    inst.item_desc = item_data.desc;
    inst.item_category = category;
    inst.goblin = item_data.goblin;

    // Set its sprite
    var spr_name = "s_" + item_data.id; // e.g., s_milk_bone
    if (sprite_exists(spr_name)) {
        inst.sprite_index = asset_get_index(spr_name);
    } else {
        inst.sprite_index = sPlaceholder;
    }

    return inst;
}