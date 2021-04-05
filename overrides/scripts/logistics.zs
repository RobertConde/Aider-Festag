
import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.material.MaterialRegistry;
import crafttweaker.item.IItemStack;
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;

print("-----------------Loading Thermal Expansion-----------------");

// Servo
recipes.remove(<thermaldynamics:servo:0>);
recipes.addShaped(<thermaldynamics:servo:0> * 1, [[<modularmachinery:itemmodularium>, <modularmachinery:itemmodularium>, <modularmachinery:itemmodularium>], [<modularmachinery:itemmodularium>, <minecraft:glass_pane>, <modularmachinery:itemmodularium>],[<modularmachinery:itemmodularium>, <modularmachinery:itemmodularium>, <modularmachinery:itemmodularium>]]);

// Hardened Servo
recipes.remove(<thermaldynamics:servo:1>);
recipes.addShaped(<thermaldynamics:servo:1> * 1, [[<gregtech:meta_item_1:10126>, <gregtech:meta_item_1:10126>, <gregtech:meta_item_1:10126>], [<gregtech:meta_item_1:10126>, <thermaldynamics:servo:0>, <gregtech:meta_item_1:10126>],[<gregtech:meta_item_1:10126>, <gregtech:meta_item_1:10126>, <gregtech:meta_item_1:10126>]]);

// Reinforced Servo
recipes.remove(<thermaldynamics:servo:2>);
recipes.addShaped(<thermaldynamics:servo:2> * 1, [[<gregtech:meta_item_1:10112>, <gregtech:meta_item_1:10112>, <gregtech:meta_item_1:10112>], [<gregtech:meta_item_1:10112>, <thermaldynamics:servo:1>, <gregtech:meta_item_1:10112>],[<gregtech:meta_item_1:10112>, <gregtech:meta_item_1:10112>, <gregtech:meta_item_1:10112>]]);

// Signalum Servo
recipes.remove(<thermaldynamics:servo:3>);
recipes.addShaped(<thermaldynamics:servo:3> * 1, [[<thermalfoundation:material:165>, <thermalfoundation:material:165>, <thermalfoundation:material:165>], [<thermalfoundation:material:165>, <thermaldynamics:servo:2>, <thermalfoundation:material:165>],[<thermalfoundation:material:165>, <thermalfoundation:material:165>, <thermalfoundation:material:165>]]);

// Resonant Servo
recipes.remove(<thermaldynamics:servo:4>);
recipes.addShaped(<thermaldynamics:servo:4> * 1, [[<gregtech:meta_item_1:10963>, <gregtech:meta_item_1:10963>, <gregtech:meta_item_1:10963>], [<gregtech:meta_item_1:10963>, <thermaldynamics:servo:3>, <gregtech:meta_item_1:10963>],[<gregtech:meta_item_1:10963>, <gregtech:meta_item_1:10963>, <gregtech:meta_item_1:10963>]]);

// Leadstone Fluxduct
recipes.remove(<thermaldynamics:duct_0:0>);
recipes.addShaped(<thermaldynamics:duct_0:0> * 16, [[<modularmachinery:itemmodularium>, <gregtech:meta_item_1:10035>, <modularmachinery:itemmodularium>], [<gregtech:meta_item_1:10035>, <contenttweaker:material_part:1>, <gregtech:meta_item_1:10035>],[<modularmachinery:itemmodularium>, <gregtech:meta_item_1:10035>, <modularmachinery:itemmodularium>]]);

// Machine Controller
recipes.remove(<modularmachinery:blockcontroller>);
recipes.addShaped(<modularmachinery:blockcontroller> * 1, [[<modularmachinery:itemmodularium>, <minecraft:glass>, <modularmachinery:itemmodularium>], [<modularmachinery:itemmodularium>, <modularmachinery:itemmodularium>, <modularmachinery:itemmodularium>],[<modularmachinery:itemmodularium>, <minecraft:glass>, <modularmachinery:itemmodularium>]]);

// Tiny Item Input
recipes.remove(<modularmachinery:blockinputbus:0>);
recipes.addShaped(<modularmachinery:blockinputbus:0> * 1, [[null, <modularmachinery:itemmodularium>, null], [<modularmachinery:itemmodularium>, null, <modularmachinery:itemmodularium>],[null, <modularmachinery:itemmodularium>, null]]);

// Small Item Input
recipes.remove(<modularmachinery:blockinputbus:1>);
recipes.addShaped(<modularmachinery:blockinputbus:1> * 1, [[null, <modularmachinery:itemmodularium>, null], [<modularmachinery:itemmodularium>, <modularmachinery:blockinputbus:0>, <modularmachinery:itemmodularium>],[null, <modularmachinery:itemmodularium>, null]]);

// Normal Item Input
recipes.remove(<modularmachinery:blockinputbus:2>);
recipes.addShaped(<modularmachinery:blockinputbus:2> * 1, [[null, <modularmachinery:itemmodularium>, null], [<modularmachinery:itemmodularium>, <modularmachinery:blockinputbus:1>, <modularmachinery:itemmodularium>],[null, <modularmachinery:itemmodularium>, null]]);

// Reinforced Item Input
recipes.remove(<modularmachinery:blockinputbus:3>);
recipes.addShaped(<modularmachinery:blockinputbus:3> * 1, [[null, <modularmachinery:itemmodularium>, null], [<modularmachinery:itemmodularium>, <modularmachinery:blockinputbus:2>, <modularmachinery:itemmodularium>],[null, <modularmachinery:itemmodularium>, null]]);

// Big Item Input
recipes.remove(<modularmachinery:blockinputbus:4>);
recipes.addShaped(<modularmachinery:blockinputbus:4> * 1, [[null, <modularmachinery:itemmodularium>, null], [<modularmachinery:itemmodularium>, <modularmachinery:blockinputbus:3>, <modularmachinery:itemmodularium>],[null, <modularmachinery:itemmodularium>, null]]);

// Huge Item Input
recipes.remove(<modularmachinery:blockinputbus:5>);
recipes.addShaped(<modularmachinery:blockinputbus:5> * 1, [[null, <modularmachinery:itemmodularium>, null], [<modularmachinery:itemmodularium>, <modularmachinery:blockinputbus:4>, <modularmachinery:itemmodularium>],[null, <modularmachinery:itemmodularium>, null]]);

// Ludicrous Item Input
recipes.remove(<modularmachinery:blockinputbus:6>);
recipes.addShaped(<modularmachinery:blockinputbus:6> * 1, [[null, <modularmachinery:itemmodularium>, null], [<modularmachinery:itemmodularium>, <modularmachinery:blockinputbus:5>, <modularmachinery:itemmodularium>],[null, <modularmachinery:itemmodularium>, null]]);

// Tiny Item Output
recipes.remove(<modularmachinery:blockoutputbus:0>);
recipes.addShaped(<modularmachinery:blockoutputbus:0> * 1, [[<modularmachinery:itemmodularium>, null, <modularmachinery:itemmodularium>], [null, null, null],[<modularmachinery:itemmodularium>, null, <modularmachinery:itemmodularium>]]);

// Small Item Output
recipes.remove(<modularmachinery:blockoutputbus:1>);
recipes.addShaped(<modularmachinery:blockoutputbus:1> * 1, [[<modularmachinery:itemmodularium>, null, <modularmachinery:itemmodularium>], [null, <modularmachinery:blockoutputbus:0>, null],[<modularmachinery:itemmodularium>, null, <modularmachinery:itemmodularium>]]);

// Normal Item Output
recipes.remove(<modularmachinery:blockoutputbus:2>);
recipes.addShaped(<modularmachinery:blockoutputbus:2> * 1, [[<modularmachinery:itemmodularium>, null, <modularmachinery:itemmodularium>], [null, <modularmachinery:blockoutputbus:1>, null],[<modularmachinery:itemmodularium>, null, <modularmachinery:itemmodularium>]]);

// Reinforced Item Output
recipes.remove(<modularmachinery:blockoutputbus:3>);
recipes.addShaped(<modularmachinery:blockoutputbus:3> * 1, [[<modularmachinery:itemmodularium>, null, <modularmachinery:itemmodularium>], [null, <modularmachinery:blockoutputbus:2>, null],[<modularmachinery:itemmodularium>, null, <modularmachinery:itemmodularium>]]);

// Big Item Output
recipes.remove(<modularmachinery:blockoutputbus:4>);
recipes.addShaped(<modularmachinery:blockoutputbus:4> * 1, [[<modularmachinery:itemmodularium>, null, <modularmachinery:itemmodularium>], [null, <modularmachinery:blockoutputbus:3>, null],[<modularmachinery:itemmodularium>, null, <modularmachinery:itemmodularium>]]);

// Huge Item Output
recipes.remove(<modularmachinery:blockoutputbus:5>);
recipes.addShaped(<modularmachinery:blockoutputbus:5> * 1, [[<modularmachinery:itemmodularium>, null, <modularmachinery:itemmodularium>], [null, <modularmachinery:blockoutputbus:4>, null],[<modularmachinery:itemmodularium>, null, <modularmachinery:itemmodularium>]]);

// Ludicrous Item Output
recipes.remove(<modularmachinery:blockoutputbus:6>);
recipes.addShaped(<modularmachinery:blockoutputbus:6> * 1, [[<modularmachinery:itemmodularium>, null, <modularmachinery:itemmodularium>], [null, <modularmachinery:blockoutputbus:5>, null],[<modularmachinery:itemmodularium>, null, <modularmachinery:itemmodularium>]]);

// Tiny Fluid Input Hatch
recipes.remove(<modularmachinery:blockfluidinputhatch:0>);
recipes.addShaped(<modularmachinery:blockfluidinputhatch:0> * 1, [[null, <modularmachinery:itemmodularium>, <modularmachinery:itemmodularium>], [null, null, null],[<modularmachinery:itemmodularium>, <modularmachinery:itemmodularium>, null]]);

// Small Fluid Input Hatch
recipes.remove(<modularmachinery:blockfluidinputhatch:1>);
recipes.addShaped(<modularmachinery:blockfluidinputhatch:1> * 1, [[null, <modularmachinery:itemmodularium>, <modularmachinery:itemmodularium>], [null, <modularmachinery:blockfluidinputhatch:0>, null],[<modularmachinery:itemmodularium>, <modularmachinery:itemmodularium>, null]]);

// Normal Fluid Input Hatch
recipes.remove(<modularmachinery:blockfluidinputhatch:2>);
recipes.addShaped(<modularmachinery:blockfluidinputhatch:2> * 1, [[null, <modularmachinery:itemmodularium>, <modularmachinery:itemmodularium>], [null, <modularmachinery:blockfluidinputhatch:1>, null],[<modularmachinery:itemmodularium>, <modularmachinery:itemmodularium>, null]]);

// Reinforced Fluid Input Hatch
recipes.remove(<modularmachinery:blockfluidinputhatch:3>);
recipes.addShaped(<modularmachinery:blockfluidinputhatch:3> * 1, [[null, <modularmachinery:itemmodularium>, <modularmachinery:itemmodularium>], [null, <modularmachinery:blockfluidinputhatch:2>, null],[<modularmachinery:itemmodularium>, <modularmachinery:itemmodularium>, null]]);

// Big Fluid Input Hatch
recipes.remove(<modularmachinery:blockfluidinputhatch:4>);
recipes.addShaped(<modularmachinery:blockfluidinputhatch:4> * 1, [[null, <modularmachinery:itemmodularium>, <modularmachinery:itemmodularium>], [null, <modularmachinery:blockfluidinputhatch:3>, null],[<modularmachinery:itemmodularium>, <modularmachinery:itemmodularium>, null]]);

// Huge Fluid Input Hatch
recipes.remove(<modularmachinery:blockfluidinputhatch:5>);
recipes.addShaped(<modularmachinery:blockfluidinputhatch:5> * 1, [[null, <modularmachinery:itemmodularium>, <modularmachinery:itemmodularium>], [null, <modularmachinery:blockfluidinputhatch:4>, null],[<modularmachinery:itemmodularium>, <modularmachinery:itemmodularium>, null]]);

// Ludicrous Fluid Input Hatch
recipes.remove(<modularmachinery:blockfluidinputhatch:6>);
recipes.addShaped(<modularmachinery:blockfluidinputhatch:6> * 1, [[null, <modularmachinery:itemmodularium>, <modularmachinery:itemmodularium>], [null, <modularmachinery:blockfluidinputhatch:5>, null],[<modularmachinery:itemmodularium>, <modularmachinery:itemmodularium>, null]]);

// Vacuum Fluid Input Hatch
recipes.remove(<modularmachinery:blockfluidinputhatch:7>);
recipes.addShaped(<modularmachinery:blockfluidinputhatch:7> * 1, [[null, <modularmachinery:itemmodularium>, <modularmachinery:itemmodularium>], [null, <modularmachinery:blockfluidinputhatch:6>, null],[<modularmachinery:itemmodularium>, <modularmachinery:itemmodularium>, null]]);

// Tiny Fluid Output Hatch
recipes.remove(<modularmachinery:blockfluidoutputhatch:0>);
recipes.addShaped(<modularmachinery:blockfluidoutputhatch:0> * 1, [[null, null, null], [<modularmachinery:itemmodularium>, null, null],[<modularmachinery:itemmodularium>, <modularmachinery:itemmodularium>, <modularmachinery:itemmodularium>]]);

// Small Fluid Output Hatch
recipes.remove(<modularmachinery:blockfluidoutputhatch:1>);
recipes.addShaped(<modularmachinery:blockfluidoutputhatch:1> * 1, [[null, null, null], [<modularmachinery:itemmodularium>, <modularmachinery:blockfluidoutputhatch:0>, null],[<modularmachinery:itemmodularium>, <modularmachinery:itemmodularium>, <modularmachinery:itemmodularium>]]);

// Normal Fluid Output Hatch
recipes.remove(<modularmachinery:blockfluidoutputhatch:2>);
recipes.addShaped(<modularmachinery:blockfluidoutputhatch:2> * 1, [[null, null, null], [<modularmachinery:itemmodularium>, <modularmachinery:blockfluidoutputhatch:1>, null],[<modularmachinery:itemmodularium>, <modularmachinery:itemmodularium>, <modularmachinery:itemmodularium>]]);

// Reinforced Fluid Output Hatch
recipes.remove(<modularmachinery:blockfluidoutputhatch:3>);
recipes.addShaped(<modularmachinery:blockfluidoutputhatch:3> * 1, [[null, null, null], [<modularmachinery:itemmodularium>, <modularmachinery:blockfluidoutputhatch:2>, null],[<modularmachinery:itemmodularium>, <modularmachinery:itemmodularium>, <modularmachinery:itemmodularium>]]);

// Big Fluid Output Hatch
recipes.remove(<modularmachinery:blockfluidoutputhatch:4>);
recipes.addShaped(<modularmachinery:blockfluidoutputhatch:4> * 1, [[null, null, null], [<modularmachinery:itemmodularium>, <modularmachinery:blockfluidoutputhatch:3>, null],[<modularmachinery:itemmodularium>, <modularmachinery:itemmodularium>, <modularmachinery:itemmodularium>]]);

// Huge Fluid Output Hatch
recipes.remove(<modularmachinery:blockfluidoutputhatch:5>);
recipes.addShaped(<modularmachinery:blockfluidoutputhatch:5> * 1, [[null, null, null], [<modularmachinery:itemmodularium>, <modularmachinery:blockfluidoutputhatch:4>, null],[<modularmachinery:itemmodularium>, <modularmachinery:itemmodularium>, <modularmachinery:itemmodularium>]]);

// Ludicrous Fluid Output Hatch
recipes.remove(<modularmachinery:blockfluidoutputhatch:6>);
recipes.addShaped(<modularmachinery:blockfluidoutputhatch:6> * 1, [[null, null, null], [<modularmachinery:itemmodularium>, <modularmachinery:blockfluidoutputhatch:5>, null],[<modularmachinery:itemmodularium>, <modularmachinery:itemmodularium>, <modularmachinery:itemmodularium>]]);

// Vacuum Fluid Output Hatch
recipes.remove(<modularmachinery:blockfluidoutputhatch:7>);
recipes.addShaped(<modularmachinery:blockfluidoutputhatch:7> * 1, [[null, null, null], [<modularmachinery:itemmodularium>, <modularmachinery:blockfluidoutputhatch:6>, null],[<modularmachinery:itemmodularium>, <modularmachinery:itemmodularium>, <modularmachinery:itemmodularium>]]);

print("-----------------Finished Loading Thermal Expansion-----------------");