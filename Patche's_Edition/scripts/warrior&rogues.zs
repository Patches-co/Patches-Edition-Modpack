craftingTable.remove(<item:rogues:stone_double_axe>);

var materiais1 = {
    "flint": "flint",
    "iron": "iron",
    "gold": "golden",
    "diamond": "diamond"
} as string[string];

for material, prefixoArma in materiais1 {
    var dagger = <item:rogues:${prefixoArma}_dagger>;
    var barra = <item:divergeprog:${material}_bar>;

    craftingTable.remove(dagger);

    var nomeDaReceita = "new_" + prefixoArma + "_dagger";
    craftingTable.addShaped(nomeDaReceita, dagger, [
        [<item:minecraft:air>, barra],
        [<item:minecraft:stick>, <item:minecraft:air>]
    ]);
}

var materiais = {
    "iron": "iron",
    "gold": "golden",
    "diamond": "diamond"
} as string[string];

for material, prefixoArma in materiais {
    var sickle = <item:rogues:${prefixoArma}_sickle>;
    var barra = <item:divergeprog:${material}_bar>;

    craftingTable.remove(sickle);

    var nomeDaReceita = "new_" + prefixoArma + "_sickle";
    craftingTable.addShaped(nomeDaReceita, sickle, [
        [barra, barra],
        [<item:minecraft:stick>, <item:minecraft:air>]
    ]);

    var double_axe = <item:rogues:${prefixoArma}_double_axe>;
    craftingTable.remove(double_axe);

    var nomeDaReceita_1 = "new_" + prefixoArma + "_double_axe";
    craftingTable.addShaped(nomeDaReceita_1, double_axe, [
        [barra, <item:minecraft:stick>, barra],
        [barra, <item:minecraft:stick>, barra],
        [<item:minecraft:air>, <item:minecraft:stick>, <item:minecraft:air>]
    ]);

    var glaive = <item:rogues:${prefixoArma}_glaive>;
    craftingTable.remove(glaive);

    var nomeDaReceita_2 = "new_" + prefixoArma + "_glaive";
    craftingTable.addShaped(nomeDaReceita_2, glaive, [
        [<item:minecraft:air>, barra, barra],
        [barra, <item:minecraft:stick> , <item:minecraft:air>],
        [<item:minecraft:stick>, <item:minecraft:air>, <item:minecraft:air>]
    ]);
}

// Ruby and Aeternium Recipes
var rubySmithing = {
    "ruby": "nether_ruby"
} as string[string];

for material, other in rubySmithing {
    var glaive = <item:rogues:${material}_glaive>;
    var template = <item:minecraft:netherite_upgrade_smithing_template>;
    var barra = <item:divergeprog:betternether/${other}_bar>;

    smithing.addTransformRecipe(
        "ruby_to_glaive",
        glaive,
        template,
        <item:rogues:netherite_glaive>,
        barra
    );

    var double_axe = <item:rogues:${material}_double_axe>;
    smithing.addTransformRecipe(
        "ruby_to_double_axe",
        double_axe,
        template,
        <item:rogues:netherite_double_axe>,
        barra
    );

    var sickle = <item:rogues:${material}_sickle>;
    smithing.addTransformRecipe(
        "ruby_to_sickle",
        sickle,
        template,
        <item:rogues:netherite_sickle>,
        barra
    );

    var dagger = <item:rogues:${material}_dagger>;
    smithing.addTransformRecipe(
        "ruby_to_dagger",
        dagger,
        template,
        <item:rogues:netherite_dagger>,
        barra
    );

    craftingTable.remove(glaive);
    craftingTable.remove(double_axe);
    craftingTable.remove(sickle);
    craftingTable.remove(dagger);
}

var aeterniumSmithing = {
    "aeternium": "aeternium_upgrade_smithing_template"
} as string[string];

for material, templateItem in aeterniumSmithing {
    var glaive = <item:rogues:${material}_glaive>;
    var double_axe = <item:rogues:${material}_double_axe>;
    var sickle = <item:rogues:${material}_sickle>;
    var dagger = <item:rogues:${material}_dagger>;
    var barra = <item:betterend:aeternium_forged_plate>;

    craftingTable.remove(glaive);
    craftingTable.remove(double_axe);
    craftingTable.remove(sickle);
    craftingTable.remove(dagger);

    smithing.addTransformRecipe(
        "netherite_to_" + material + "_glaive",
        glaive,
        <item:betterend:${templateItem}>,
        <item:rogues:netherite_glaive>,
        barra
    );

    smithing.addTransformRecipe(
        "netherite_to_" + material + "_double_axe",
        double_axe,
        <item:betterend:${templateItem}>,
        <item:rogues:netherite_double_axe>,
        barra
    );

    smithing.addTransformRecipe(
        "netherite_to_" + material + "_sickle",
        sickle,
        <item:betterend:${templateItem}>,
        <item:rogues:netherite_sickle>,
        barra
    );

    smithing.addTransformRecipe(
        "netherite_to_" + material + "_dagger",
        dagger,
        <item:betterend:${templateItem}>,
        <item:rogues:netherite_dagger>,
        barra
    );
}