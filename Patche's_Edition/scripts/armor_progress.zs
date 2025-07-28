var armors = {
    "paladin_armor": "crusader_armor",
} as string[string];

for armor, armor2 in armors {
    craftingTable.remove(<item:paladins:${armor}_head>);
    craftingTable.remove(<item:paladins:${armor}_chest>);
    craftingTable.remove(<item:paladins:${armor}_legs>);
    craftingTable.remove(<item:paladins:${armor}_feet>);


    craftingTable.remove(<item:paladins:${armor2}_head>);
    craftingTable.remove(<item:paladins:${armor2}_chest>);
    craftingTable.remove(<item:paladins:${armor2}_legs>);
    craftingTable.remove(<item:paladins:${armor2}_feet>);
}

// Add new armor crafting recipes
// paladins_armor
var armor = "paladin_armor";

craftingTable.addShaped("new_" + armor + "_head", <item:paladins:paladin_armor_head>, [
        [<item:minecraft:iron_ingot>, <item:divergeprog:copper_bar>, <item:minecraft:iron_ingot>],
        [<item:minecraft:iron_ingot>, <item:minecraft:air>, <item:minecraft:iron_ingot>]
]);
craftingTable.addShaped("new_" + armor + "_chest", <item:paladins:paladin_armor_chest>, [
        [<item:divergeprog:copper_bar>, <item:minecraft:air>, <item:divergeprog:copper_bar>],
        [<item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>],
        [<item:minecraft:leather>, <item:minecraft:leather>, <item:minecraft:leather>]
]);
craftingTable.addShaped("new_" + armor + "_legs", <item:paladins:paladin_armor_legs>, [
        [<item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>],
        [<item:divergeprog:copper_bar>, <item:minecraft:air>, <item:divergeprog:copper_bar>],
        [<item:minecraft:iron_ingot>, <item:minecraft:air>, <item:minecraft:iron_ingot>]
]);
craftingTable.addShaped("new_" + armor + "_feet", <item:paladins:paladin_armor_feet>, [
        [<item:divergeprog:copper_bar>, <item:minecraft:air>, <item:divergeprog:copper_bar>],
        [<item:minecraft:iron_ingot>, <item:minecraft:air>, <item:minecraft:iron_ingot>]
]);

// crusader_armor
var armor2 = "crusader_armor";

craftingTable.addShaped("new_" + armor2 + "_head", <item:paladins:crusader_armor_head>, [
        [<item:divergeprog:gold_bar>, <item:minecraft:ghast_tear>, <item:divergeprog:gold_bar>],
        [<item:minecraft:iron_ingot>, <item:minecraft:air>, <item:minecraft:iron_ingot>],
        [<item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>]
]);

craftingTable.addShaped("new_" + armor2 + "_chest", <item:paladins:crusader_armor_chest>, [
        [<item:divergeprog:gold_bar>, <item:minecraft:air>, <item:divergeprog:gold_bar>],
        [<item:minecraft:iron_ingot>, <item:minecraft:ghast_tear>, <item:minecraft:iron_ingot>],
        [<item:minecraft:leather>, <item:minecraft:leather>, <item:minecraft:leather>]
]);

craftingTable.addShaped("new_" + armor2 + "_legs", <item:paladins:crusader_armor_legs>, [
        [<item:minecraft:iron_ingot>, <item:minecraft:ghast_tear>, <item:minecraft:iron_ingot>],
        [<item:divergeprog:gold_bar>, <item:minecraft:air>, <item:divergeprog:gold_bar>],
        [<item:minecraft:iron_ingot>, <item:minecraft:air>, <item:minecraft:iron_ingot>]
]);

craftingTable.addShaped("new_" + armor2 + "_feet", <item:paladins:crusader_armor_feet>, [
        [<item:divergeprog:gold_bar>, <item:minecraft:ghast_tear>, <item:divergeprog:gold_bar>],
        [<item:minecraft:iron_ingot>, <item:minecraft:air>, <item:minecraft:iron_ingot>]
]);

var armors2 = {
    "warrior_armor": "berserker_armor",
} as string[string];

for armor5, armor6 in armors2 {
    craftingTable.remove(<item:rogues:${armor5}_chest>);
    craftingTable.remove(<item:rogues:${armor5}_legs>);

    craftingTable.remove(<item:rogues:${armor6}_head>);
    craftingTable.remove(<item:rogues:${armor6}_chest>);
    craftingTable.remove(<item:rogues:${armor6}_legs>);
    craftingTable.remove(<item:rogues:${armor6}_feet>);
}

// Add new armor crafting recipes
// warrior_armor
var armor3 = "warrior_armor";

craftingTable.addShaped("new_" + armor3 + "_chest", <item:rogues:warrior_armor_chest>, [
        [<item:minecraft:string>, <item:minecraft:air>, <item:minecraft:string>],
        [<item:minecraft:iron_ingot>, <item:divergeprog:iron_bar>, <item:minecraft:iron_ingot>],
        [<item:minecraft:leather>, <item:minecraft:leather>, <item:minecraft:leather>]
]);

craftingTable.addShaped("new_" + armor3 + "_legs", <item:rogues:warrior_armor_legs>, [
        [<item:minecraft:iron_ingot>, <item:divergeprog:iron_bar>, <item:minecraft:iron_ingot>],
        [<item:minecraft:leather>, <item:minecraft:air>, <item:minecraft:leather>],
        [<item:minecraft:iron_ingot>, <item:minecraft:air>, <item:minecraft:iron_ingot>]
]);

// berserker_armor
var armor4 = "berserker_armor";
craftingTable.addShaped("new_" + armor4 + "_head", <item:rogues:berserker_armor_head>, [
        [<item:minecraft:goat_horn>, <item:minecraft:netherite_scrap>, <item:minecraft:goat_horn>],
        [<item:minecraft:chain>, <item:rogues:warrior_armor_head>, <item:minecraft:chain>]
]);

craftingTable.addShaped("new_" + armor4 + "_chest", <item:rogues:berserker_armor_chest>, [
        [<item:minecraft:netherite_scrap>, <item:minecraft:air>, <item:minecraft:netherite_scrap>],
        [<item:minecraft:chain>, <item:rogues:warrior_armor_chest>, <item:minecraft:chain>],
        [<item:minecraft:leather>, <item:minecraft:leather>, <item:minecraft:leather>]
]);

craftingTable.addShaped("new_" + armor4 + "_legs", <item:rogues:berserker_armor_legs>, [
        [<item:minecraft:chain>, <item:rogues:warrior_armor_legs>, <item:minecraft:chain>],
        [<item:minecraft:netherite_scrap>, <item:minecraft:air>, <item:minecraft:netherite_scrap>],
        [<item:minecraft:chain>, <item:minecraft:air>, <item:minecraft:chain>]
]);

craftingTable.addShaped("new_" + armor4 + "_feet", <item:rogues:berserker_armor_feet>, [
        [<item:minecraft:netherite_scrap>, <item:rogues:warrior_armor_feet>, <item:minecraft:netherite_scrap>],
        [<item:minecraft:chain>, <item:minecraft:air>, <item:minecraft:chain>]
]);