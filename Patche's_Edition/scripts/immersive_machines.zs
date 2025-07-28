val air = <item:minecraft:air>;
val Cstone = <item:minecraft:cobblestone>;
val piston = <item:minecraft:piston>;
val I = <tag:item:minecraft:logs>;
val F = <item:divergeprog:iron_bar>;
val iron = <item:minecraft:iron_ingot>;
val C = <item:divergeprog:copper_bar>;
val copper = <item:minecraft:copper_ingot>;
val G = <item:divergeprog:gold_bar>;

craftingTable.remove(<item:immersive_aircraft:hull>);

craftingTable.addShaped("immersive_aircraft_hull", <item:immersive_aircraft:hull>, [
    [I, I, I],
    [F, F, F],
    [I, I, I]
]);

craftingTable.remove(<item:immersive_aircraft:hull_reinforcement>);
craftingTable.addShaped("immersive_aircraft_hull_reinforcement", <item:immersive_aircraft:hull_reinforcement>, [
    [F, F, F],
    [<item:immersive_aircraft:hull>, <item:immersive_aircraft:hull>, <item:immersive_aircraft:hull>],
    [F, F, F]
]);

craftingTable.remove(<item:immersive_aircraft:boiler>);

craftingTable.addShaped("immersive_aircraft_boiler", <item:immersive_aircraft:boiler>, [
    [C, C, C],
    [C, air, C],
    [C, <item:minecraft:furnace>, C]
]);

craftingTable.remove(<item:immersive_aircraft:engine>);

craftingTable.addShaped("immersive_aircraft_engine", <item:immersive_aircraft:engine>, [
    [air, Cstone, air],
    [piston, <item:minecraft:blast_furnace>, piston],
    [Cstone, <item:immersive_aircraft:boiler>, Cstone]
]);

craftingTable.remove(<item:immersive_aircraft:eco_engine>);
craftingTable.addShaped("immersive_aircraft_eco_engine", <item:immersive_aircraft:eco_engine>, [
    [<item:minecraft:slime_ball>, G, <item:minecraft:slime_ball>],
    [G, <item:immersive_aircraft:engine>, G],
    [<item:minecraft:brick>, <item:minecraft:brick>, <item:minecraft:brick>]
]);

craftingTable.remove(<item:immersive_aircraft:propeller>);
craftingTable.addShaped("immersive_aircraft_propeller", <item:immersive_aircraft:propeller>, [
    [iron, iron, air],
    [air, F, air],
    [air, iron, iron]
]);

craftingTable.remove(<item:immersive_aircraft:enhanced_propeller>);
craftingTable.addShaped("immersive_aircraft_enhanced_propeller", <item:immersive_aircraft:enhanced_propeller>, [
    [copper, copper, air],
    [air, <item:immersive_aircraft:propeller>, air],
    [air, copper, copper]
]);

craftingTable.remove(<item:immersive_aircraft:industrial_gears>);
craftingTable.addShaped("immersive_aircraft_industrial_gears", <item:immersive_aircraft:industrial_gears>, [
    [air, iron, F],
    [copper, <item:minecraft:lever>, iron],
    [C, copper, air]
]);

craftingTable.remove(<item:immersive_aircraft:steel_boiler>);
craftingTable.addShaped("immersive_aircraft_steel_boiler", <item:immersive_aircraft:steel_boiler>, [
    [F, F, F],
    [F, <item:immersive_aircraft:boiler>, F],
    [F, <item:minecraft:blast_furnace>, F]
]);

craftingTable.remove(<item:immersive_machinery:copperfin>);
craftingTable.addShaped("immersive_aircraft_copperfin", <item:immersive_machinery:copperfin>, [
    [<item:minecraft:copper_block>, <item:minecraft:glass>, <item:minecraft:copper_block>],
    [<item:minecraft:glass>, <item:minecraft:conduit>, <item:immersive_aircraft:enhanced_propeller>],
    [<item:minecraft:copper_block>, <item:immersive_aircraft:engine>, <item:minecraft:copper_block>]
]);

craftingTable.remove(<item:immersive_machinery:tunnel_digger>);
craftingTable.addShaped("immersive_aircraft_tunnel_digger", <item:immersive_machinery:tunnel_digger>, [
    [C, <item:immersive_aircraft:industrial_gears>, C],
    [<item:minecraft:iron_block>, <item:immersive_aircraft:engine>, <item:immersive_machinery:iron_drill>],
    [<item:minecraft:rail>, <item:minecraft:rail>, <item:minecraft:rail>]
]);

craftingTable.remove(<item:immersive_machinery:iron_drill>);
craftingTable.addShaped("immersive_aircraft_iron_drill", <item:immersive_machinery:iron_drill>, [
    [air, F, air],
    [F, <item:minecraft:iron_block>, F],
    [F, <item:minecraft:iron_block>, F]
]);