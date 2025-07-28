// Remover as receitas originais primeiro para evitar duplicados.
craftingTable.remove(<item:archers:flint_spear>);
craftingTable.remove(<item:archers:iron_spear>);
craftingTable.remove(<item:archers:golden_spear>);
craftingTable.remove(<item:archers:diamond_spear>);
craftingTable.remove(<item:archers:aeternium_spear>);
craftingTable.remove(<item:archers:crystal_shortbow>);
craftingTable.remove(<item:archers:crystal_longbow>);

// Archers Recipes

craftingTable.addShaped("new_flint_spear", <item:archers:flint_spear>, [
    [<item:minecraft:air>, <item:minecraft:air>, <item:divergeprog:flint_bar>],
    [<item:minecraft:air>, <item:minecraft:stick>, <item:minecraft:air>],
    [<item:minecraft:stick>, <item:minecraft:air>, <item:minecraft:air>]
]);

craftingTable.addShaped("new_iron_spear", <item:archers:iron_spear>, [
    [<item:minecraft:air>, <item:minecraft:air>, <item:divergeprog:iron_bar>],
    [<item:minecraft:air>, <item:minecraft:stick>, <item:minecraft:air>],
    [<item:minecraft:stick>, <item:minecraft:air>, <item:minecraft:air>]
]);

craftingTable.addShaped("new_golden_spear", <item:archers:golden_spear>, [
    [<item:minecraft:air>, <item:minecraft:air>, <item:divergeprog:gold_bar>],
    [<item:minecraft:air>, <item:minecraft:stick>, <item:minecraft:air>],
    [<item:minecraft:stick>, <item:minecraft:air>, <item:minecraft:air>]
]);

craftingTable.addShaped("new_diamond_spear", <item:archers:diamond_spear>, [
    [<item:minecraft:air>, <item:minecraft:air>, <item:divergeprog:diamond_bar>],
    [<item:minecraft:air>, <item:minecraft:stick>, <item:minecraft:air>],
    [<item:minecraft:stick>, <item:minecraft:air>, <item:minecraft:air>]
]);

smithing.addTransformRecipe(
    "netherite_to_aethernium_spear",
    <item:archers:aeternium_spear>,
    <item:betterend:aeternium_upgrade_smithing_template>,
    <item:archers:netherite_spear>,
    <item:betterend:aeternium_ingot>
);

smithing.addTransformRecipe(
    "netherite_to_crystal_shortbow",
    <item:archers:crystal_shortbow>,
    <item:betterend:aeternium_upgrade_smithing_template>,
    <item:archers:netherite_shortbow>,
    <item:betterend:crystal_shards>
);

smithing.addTransformRecipe(
    "netherite_to_crystal_longbow",
    <item:archers:crystal_longbow>,
    <item:betterend:aeternium_upgrade_smithing_template>,
    <item:archers:netherite_longbow>,
    <item:betterend:crystal_shards>
);