import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.material.MaterialRegistry;
import crafttweaker.item.IItemStack;
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;
import mods.nuclearcraft.manufactory;
import mods.nuclearcraft.crystallizer;


print("-----------------LOADING LV-----------------");

recipes.remove(<appliedenergistics2:grindstone>);
//LV MACHINE HULL

recipes.remove(<gregtech:machine:501>);
assembler.findRecipe(16, [<gregtech:cable:5071>*2,<gregtech:machine_casing:1>],null).remove();
recipes.addShaped(<gregtech:machine:501> * 1, [[<gregtech:meta_item_1:10018>, <gregtech:meta_item_1:10035>, <gregtech:meta_item_1:10012>], [<gregtech:meta_item_1:10197>, null, <gregtech:meta_item_1:10079>],[<modularmachinery:itemmodularium>, <gregtech:meta_item_1:2065>, <gregtech:meta_item_1:10071>]]);

//modularium ingot

recipes.remove(<modularmachinery:itemmodularium>);
recipes.addShaped(<modularmachinery:itemmodularium> * 1, [[<minecraft:clay_ball>, <minecraft:sand:0>, <minecraft:clay_ball>], [<minecraft:glass>, <minecraft:flint>, <minecraft:brick>],[<minecraft:clay_ball>, <minecraft:sand:0>, <minecraft:clay_ball>]]);

//granite (FOR T1 miner)

mods.nuclearcraft.manufactory.addRecipe([<minecraft:stonebrick>,<minecraft:stone:1>]);

//T1miner

val TierOneMinerRecipe = mods.modularmachinery.RecipeBuilder.newBuilder("T1MINE","t1miner",100,0);

TierOneMinerRecipe.addItemInput(<minecraft:cobblestone>*4);
TierOneMinerRecipe.addItemOutput(<gregtech:ore_lead_0>*1);
TierOneMinerRecipe.addItemOutput(<gregtech:ore_copper_0>*1);
TierOneMinerRecipe.addItemOutput(<gregtech:ore_tin_0>*1);
TierOneMinerRecipe.addItemOutput(<gregtech:meta_item_1:2065>*1);
TierOneMinerRecipe.addItemOutput(<gregtech:ore_magnetite_0>*1);
TierOneMinerRecipe.addItemOutput(<gregtech:ore_zinc_0>*1);
TierOneMinerRecipe.addItemOutput(<minecraft:clay_ball>*4);
TierOneMinerRecipe.addItemOutput(<gregtech:meta_item_1:32627>*1);
TierOneMinerRecipe.build();

//carbon ingot

val CarbonIngotRecipe = mods.modularmachinery.RecipeBuilder.newBuilder("carbonIngot","basicPyroOven",1200,0);

CarbonIngotRecipe.addItemInput(<minecraft:coal:1> * 16);
CarbonIngotRecipe.addItemOutput(<gregtech:meta_item_1:10012> * 16);
CarbonIngotRecipe.build();

/*

LEAD PROCESS

*/

val LeadOxideRecipe = mods.modularmachinery.RecipeBuilder.newBuilder("leadOxide","t1blastfurnace",80,0);

LeadOxideRecipe.addItemInput(<gregtech:ore_lead_0> * 2);
LeadOxideRecipe.addItemInput(<minecraft:coal:1> * 2);
LeadOxideRecipe.addItemOutput(<contenttweaker:material_part:1>*2);
LeadOxideRecipe.addFluidOutput(<liquid:sulfur_dioxide>*288);
LeadOxideRecipe.build();

val LeadIngotRecipe = mods.modularmachinery.RecipeBuilder.newBuilder("leadingot","t1blastfurnace",80,0);

LeadIngotRecipe.addItemInput(<contenttweaker:material_part:1>*2);
LeadIngotRecipe.addItemInput(<gregtech:meta_item_1:10012>*1);
LeadIngotRecipe.addFluidOutput(<liquid:carbon_dioxide>*144);
LeadIngotRecipe.addItemOutput(<gregtech:meta_item_1:10035>*2);
LeadIngotRecipe.build();

//deleting lead ore recipes

furnace.remove(<gregtech:meta_item_1:10035>);
recipes.remove(<gregtech:meta_item_1:10035>);
fluid_extractor.findRecipe(48,[<gregtech:ore_lead_0>],null).remove();
macerator.findRecipe(12,[<gregtech:ore_lead_0>],null).remove();
hammer.findRecipe(6,[<gregtech:ore_lead_0>],null).remove();

/*

ZINC PROCESS

*/

val ZincOxideRecipe = mods.modularmachinery.RecipeBuilder.newBuilder("zincOxide","t1blastfurnace",80,0);

ZincOxideRecipe.addItemInput(<gregtech:ore_zinc_0>*2);
ZincOxideRecipe.addItemInput(<minecraft:coal:1> * 2);
ZincOxideRecipe.addItemOutput(<contenttweaker:material_part:3>*2);
ZincOxideRecipe.addFluidOutput(<liquid:sulfur_dioxide>*288);
ZincOxideRecipe.build();

val ZincIngotRecipe = mods.modularmachinery.RecipeBuilder.newBuilder("zincingot","t1blastfurnace",80,0);

ZincIngotRecipe.addItemInput(<contenttweaker:material_part:3>*2);
ZincIngotRecipe.addItemInput(<gregtech:meta_item_1:10012>*1);
ZincIngotRecipe.addFluidOutput(<liquid:carbon_dioxide>*144);
ZincIngotRecipe.addItemOutput(<gregtech:meta_item_1:10079>*2);
ZincIngotRecipe.build();

//deleting zinc ore recipes

recipes.remove(<gregtech:meta_item_1:10079>);
furnace.remove(<gregtech:meta_item_1:10079>);
fluid_extractor.findRecipe(48,[<gregtech:ore_zinc_0>],null).remove();
macerator.findRecipe(12,[<gregtech:ore_zinc_0>],null).remove();
hammer.findRecipe(6,[<gregtech:ore_zinc_0>],null).remove();

//deleting copper ore recipes
fluidextractor.findRecipe(48,[<gregtech:ore_copper_0>],null).remove();
macerator.findRecipe(12,[<gregtech:ore_copper_0>],null).remove();
hammer.findRecipe(6,[<gregtech:ore_copper_0>],null).remove();

//silicon

mods.nuclearcraft.manufactory.removeRecipeWithOutput([<gregtech:meta_item_1:10061>]);

val aluminaRecipe = mods.modularmachinery.RecipeBuilder.newBuilder("silicon","t1blastfurnace",240,0);
aluminaRecipe.addItemInput(<minecraft:sand>*8);
aluminaRecipe.addItemInput(<gregtech:meta_item_1:10012> * 8);
aluminaRecipe.addItemOutput(<gregtech:meta_item_1:10061>*8);
aluminaRecipe.addFluidOutput(<liquid:carbon_monoxide>*2304);
aluminaRecipe.build();

/*

WROUGHT IRON PROCESS

*/

recipes.remove(<gregtech:meta_item_1:2131>);
furnace.remove(<minecraft:iron_ingot>,<gregtech:ore_magnetite_0>);
macerator.findRecipe(12,[<gregtech:ore_magnetite_0>],null).remove();
hammer.findRecipe(6,[<gregtech:ore_magnetite_0>],null).remove();
furnace.addRecipe(<gregtech:meta_item_1:10197>,<gregtech:ore_magnetite_0>);

/*

IRON PROCESS

*/

val IronIngotRecipe = mods.modularmachinery.RecipeBuilder.newBuilder("ironingot","t1blastfurnace",240,0);

IronIngotRecipe.addItemInput(<gregtech:ore_magnetite_0>);
IronIngotRecipe.addFluidInput(<liquid:carbon_monoxide>*576);
IronIngotRecipe.addItemOutput(<minecraft:iron_ingot>*3);
IronIngotRecipe.addFluidOutput(<liquid:carbon_dioxide>*576);
IronIngotRecipe.build();


// LV Drill Bit Recipe
assembler.recipeBuilder()
    .inputs([<ore:ingotGraphite>,<ore:plateIron>*5])
    .outputs([<contenttweaker:material_part:4> *16])
    .duration(60)
    .EUt(8)
    .buildAndRegister();

/* PROCESS: Aluminum Production */

// Remove bauxite recipes
recipes.remove(<gregtech:meta_item_1:2123>);
furnace.remove(<gregtech:meta_item_1:2123>);
macerator.findRecipe(12,[<gregtech:ore_bauxite_0>],null).remove();
hammer.findRecipe(6,[<gregtech:ore_bauxite_0>],null).remove();

// Remove crushed bauxite recipes
recipes.remove(<gregtech:meta_item_1:3123>);
macerator.findRecipe(12,[<gregtech:meta_item_1:5123>],null).remove();
hammer.findRecipe(8,[<gregtech:meta_item_1:5123>],null).remove();
thermal_sep.findRecipe(60,[<gregtech:meta_item_1:5123>],null).remove();

// MIXER: Crushed Bauxite + Sodium Hydroxide Solution ==> Sodium Ion Solution + Aluminum Hydroxide [Al(OH)4] Solution
mixer.recipeBuilder()
    .inputs([<gregtech:meta_item_1:5123>])
    .fluidInputs([<nuclearcraft:fluid_sodium_hydroxide_solution>*144])
    .fluidOutputs([<liquid:sodiumionsolution>*144, <liquid:aluminumhydroxidesolution>*144])
    .EUt(16)
    .duration(100)
    .buildAndRegister();

// CRYSTALLIZER: Aluminum Hydroxide [Al(OH)4] Solution ==> Aluminum Hydroxide [Al(OH)3] Dust
mods.nuclearcraft.Crystallizer.addRecipe(<liquid:aluminumhydroxidesolution>*144, <contenttweaker:material_part:9>); /*NO ERROR BUT DID NOT REGISTER RECIPE*/

// PRIMITIVE BLAST FURNACE:
/*
val aluminaRecipe = mods.modularmachinery.RecipeBuilder.newBuilder("alumina","t1blastfurnace",240,0);
aluminaRecipe.addItemInput(*8);
aluminaRecipe.addItemInput(<gregtech:meta_item_1:10012> * 8);
aluminaRecipe.addItemOutput(<gregtech:meta_item_1:10061>*8);
aluminaRecipe.addFluidOutput(<liquid:carbon_monoxide>*2304);
aluminaRecipe.build();
*/
