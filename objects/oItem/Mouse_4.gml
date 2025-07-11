global.selected_item = self;
global.show_popup = true;
global.popup_item = self; // pass this item’s instance
show_debug_message("pressed");
// with (oPopUp) {
//     visible = true;
//     popup_item = other;
// }

// // Check for button click (from outside oPopUp)
// if (oPopUp.visible && instance_exists(oPopUp.popup_item)) {
//     // Button position logic here
//     var bx = (1280 + oPopUp.popup_width) / 2 - 180;
//     var by = (720 + oPopUp.popup_height) / 2 - 60;
//     var bw = 160;
//     var bh = 40;

//     if (mouse_x >= bx && mouse_x <= bx + bw &&
//         mouse_y >= by && mouse_y <= by + bh) {
        
//        show_debug_message("Clicking");
//     if (instance_exists(popup_item) && is_string(popup_item.item_id)) {
//         var item_id = popup_item.item_id;
//         var parts = string_split(item_id, "_");

//         if (array_length(parts) >= 2) {
//             var category = parts[0];

//             // Toggle selection logic
//             if (ds_map_exists(global.selected_items, category)) {
//                 if (global.selected_items[? category] == item_id) {
//                     ds_map_delete(global.selected_items, category);
//                     show_debug_message("Unselected " + item_id);
//                 } else {
//                     global.selected_items[? category] = item_id;
//                     show_debug_message("Replaced with " + item_id);
//                 }
//             } else {
//                 global.selected_items[? category] = item_id;
//                 show_debug_message("Selected " + item_id);
//             }
//         } else {
//             show_debug_message("ID format bad: " + item_id);
//         }
//     } else {
//         show_debug_message("popup_item or item_id invalid");
//     }
//     }
// }