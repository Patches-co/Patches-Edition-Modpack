// Remove receitas
craftingTable.remove(<item:paladins:stone_claymore>);
craftingTable.remove(<item:paladins:wooden_great_hammer>);
craftingTable.remove(<item:paladins:stone_great_hammer>);

// Receitas em Crafting Table
var materiais = {
    "iron": "iron",
    "gold": "golden",
    "diamond": "diamond"
} as string[string];

for material, prefixoArma in materiais {
    
    // Constrói dinamicamente o nome do item e da barra usando o material atual do loop.
    var claymore = <item:paladins:${prefixoArma}_claymore>;
    var hammer = <item:paladins:${prefixoArma}_great_hammer>;
    var mace = <item:paladins:${prefixoArma}_mace>;
    var shield = <item:paladins:${prefixoArma}_kite_shield>;
    var barra = <item:divergeprog:${material}_bar>;
    
    // Remove a receita antiga
    craftingTable.remove(claymore);
    craftingTable.remove(hammer);
    craftingTable.remove(mace);
    craftingTable.remove(shield);
    
    // Adiciona a nova receita, usando um nome único e os itens dinâmicos.
    var nomeDaReceita = "new_" + prefixoArma + "_claymore";
    craftingTable.addShaped(nomeDaReceita, claymore, [
        [<item:minecraft:air>, <item:minecraft:air>, barra],
        [barra, barra, <item:minecraft:air>],
        [<item:minecraft:stick>, barra, <item:minecraft:air>]
    ]);

    var nomeDaReceita_1 = "new_" + prefixoArma + "_great_hammer";
    craftingTable.addShaped(nomeDaReceita_1, hammer, [
        [barra, barra, barra],
        [barra, <item:minecraft:stick>, barra],
        [<item:minecraft:air>, <item:minecraft:stick>, <item:minecraft:air>]
    ]);

    var nomeDaReceita_2 = "new_" + prefixoArma + "_mace";
    craftingTable.addShaped(nomeDaReceita_2, mace, [
        [<item:minecraft:air>, barra, barra],
        [<item:minecraft:air>, barra, barra],
        [<item:minecraft:stick>, <item:minecraft:air>, <item:minecraft:air>]
    ]);

    var nomeDaReceita_3 = "new_" + prefixoArma + "_kite_shield";
    craftingTable.addShaped(nomeDaReceita_3, shield, [
        [barra, <item:minecraft:leather>, barra],
        [barra, barra, barra],
        [<item:minecraft:air>, barra, <item:minecraft:air>]
    ]);
}

// Receitas em Smithing Table
var aeterniumSmithing = {
    "aeternium": "aeternium_upgrade_smithing_template"
} as string[string];

for material, template in aeterniumSmithing {
    // Constrói dinamicamente o nome do item e do template usando o material atual do loop.
    var claymore = <item:paladins:${material}_claymore>;
    var hammer = <item:paladins:${material}_great_hammer>;
    var mace = <item:paladins:${material}_mace>;
    var shield = <item:paladins:${material}_kite_shield>;
    var templateItem = <item:betterend:${template}>;
    
    // Remove a receita antiga
    craftingTable.remove(claymore);
    craftingTable.remove(hammer);
    craftingTable.remove(mace);
    craftingTable.remove(shield);
    
    // Adiciona a nova receita, usando um nome único e os itens dinâmicos.
    smithing.addTransformRecipe(
        "netherite_to_" + material + "_claymore",
        claymore,
        templateItem,
        <item:paladins:netherite_claymore>,
        <item:betterend:aeternium_forged_plate>
    );
    
    smithing.addTransformRecipe(
        "netherite_to_" + material + "_great_hammer",
        hammer,
        templateItem,
        <item:paladins:netherite_great_hammer>,
        <item:betterend:aeternium_forged_plate>
    );

    smithing.addTransformRecipe(
        "netherite_to_" + material + "_mace",
        mace,
        templateItem,
        <item:paladins:netherite_mace>,
        <item:betterend:aeternium_forged_plate>
    );

    smithing.addTransformRecipe(
        "netherite_to_" + material + "_kite_shield",
        shield,
        templateItem,
        <item:paladins:netherite_kite_shield>,
        <item:betterend:aeternium_forged_plate>
    );
}

var rubySmithing = {
    "ruby": "nether_ruby"
} as string[string];

for material, material1 in rubySmithing {
    var claymore = <item:paladins:${material}_claymore>;
    var hammer = <item:paladins:${material}_great_hammer>;
    var mace = <item:paladins:${material}_mace>;
    var shield = <item:paladins:${material}_kite_shield>;
    var barra = <item:divergeprog:betternether/${material1}_bar>;
    
    craftingTable.remove(claymore);
    craftingTable.remove(hammer);
    craftingTable.remove(mace);
    craftingTable.remove(shield);
    smithing.remove(<item:paladins:ruby_claymore>);
    smithing.remove(<item:paladins:ruby_great_hammer>);
    smithing.remove(<item:paladins:ruby_mace>);
    smithing.remove(<item:paladins:ruby_kite_shield>);

    
    smithing.addTransformRecipe(
        "netherite_to_" + material + "_claymore",
        claymore,
        <item:minecraft:netherite_upgrade_smithing_template>,
        <item:paladins:netherite_claymore>,
        barra
    );
    
    smithing.addTransformRecipe(
        "netherite_to_" + material + "_great_hammer",
        hammer,
        <item:minecraft:netherite_upgrade_smithing_template>,
        <item:paladins:netherite_great_hammer>,
        barra
    );

    smithing.addTransformRecipe(
        "netherite_to_" + material + "_mace",
        mace,
        <item:minecraft:netherite_upgrade_smithing_template>,
        <item:paladins:netherite_mace>,
        barra
    );

    smithing.addTransformRecipe(
        "netherite_to_" + material + "_kite_shield",
        shield,
        <item:minecraft:netherite_upgrade_smithing_template>,
        <item:paladins:netherite_kite_shield>,
        barra
    );
}