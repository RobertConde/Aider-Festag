import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.material.MaterialRegistry;
import crafttweaker.item.IItemStack;
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;
import mods.nuclearcraft.manufactory;
import mods.nuclearcraft.crystallizer;
import crafttweaker.item.IIngredient;
import crafttweaker.recipes.IRecipeFunction;
import crafttweaker.recipes.IRecipeAction;
import crafttweaker.liquid.ILiquidStack;

// Chisel Recipe
recipes.remove(<chisel:chisel_iron>);
recipes.addShaped(<chisel:chisel_iron> * 1, [[null, <gregtech:meta_item_1:10197>, null], [<minecraft:stick>, null, null],[null, null, null]]);

// Manufactory Recipe
recipes.remove(<nuclearcraft:manufactory_idle>);
recipes.addShaped(<nuclearcraft:manufactory_idle> * 1, [[<nuclearcraft:part:0>, <gregtech:meta_item_2:32488>, <nuclearcraft:part:0>], [<gregtech:meta_item_2:32488>, <gregtech:machine:501>, <gregtech:meta_item_2:32488>],[<nuclearcraft:part:0>, <gregtech:meta_item_2:32488>, <nuclearcraft:part:0>]]);

// Sand Recipes
recipes.remove(<appliedenergistics2:grindstone>);   // Remove AE grindstone

mods.nuclearcraft.manufactory.removeAllRecipes();
mods.nuclearcraft.manufactory.addRecipe([<ore:cobblestone>, <minecraft:sand>]);

// LV MAchine Hull
recipes.remove(<gregtech:machine:501>);
assembler.findRecipe(16, [<gregtech:cable:5071>*2,<gregtech:machine_casing:1>],null).remove();
recipes.addShaped(<gregtech:machine:501> * 1, [[<gregtech:meta_item_1:10018>, <gregtech:meta_item_1:10035>, <gregtech:meta_item_1:10012>], [<gregtech:meta_item_1:10197>, null, <gregtech:meta_item_1:10079>],[<modularmachinery:itemmodularium>, <gregtech:meta_item_1:2065>, <gregtech:meta_item_1:10071>]]);

// Modularium Ingot
recipes.remove(<modularmachinery:itemmodularium>);
recipes.addShaped(<modularmachinery:itemmodularium> * 1, [[<minecraft:clay_ball>, <minecraft:sand:0>, <minecraft:clay_ball>], [<minecraft:glass>, null, <minecraft:brick>],[<minecraft:clay_ball>, <minecraft:sand:0>, <minecraft:clay_ball>]]);

mixer.recipeBuilder()
    .inputs(<minecraft:sand>*2,<minecraft:clay_ball>*4,<minecraft:gravel>*1)
    .outputs(<modularmachinery:itemmodularium>*2)
    .EUt(16)
    .duration(20)
    .buildAndRegister();

// Granite (for T1 Miner)
mods.nuclearcraft.manufactory.addRecipe([<minecraft:stonebrick>,<minecraft:stone:1>]);

// T1 Miner
val TierOneMiner = mods.modularmachinery.RecipeBuilder.newBuilder("T1MINE","t1miner",100,0);

TierOneMiner.addItemInput(<minecraft:cobblestone>*4);
TierOneMiner.addItemOutput(<gregtech:ore_lead_0>*1);
TierOneMiner.addItemOutput(<gregtech:ore_copper_0>*1);
TierOneMiner.addItemOutput(<gregtech:ore_tin_0>*1);
TierOneMiner.addItemOutput(<gregtech:meta_item_1:2065>*1);
TierOneMiner.addItemOutput(<gregtech:ore_magnetite_0>*1);
TierOneMiner.addItemOutput(<gregtech:ore_zinc_0>*1);
TierOneMiner.addItemOutput(<minecraft:clay_ball>*4);
TierOneMiner.addItemOutput(<gregtech:meta_item_1:32627>*1);
TierOneMiner.build();

/* PROCESS: Steel */
val EZsteel = mods.modularmachinery.RecipeBuilder.newBuilder("ezsteel","t1blastfurnace",80,0);
EZsteel.addItemInput(<ore:ingotIron>*1);
EZsteel.addItemInput(<ore:ingotCarbon>*1);
Ezsteel.addItemOutput(<gregtech:meta_item_1:10184>);
Ezsteel.build();

/* PROCESS: Carbon */
val CarbonIngotRecipe = mods.modularmachinery.RecipeBuilder.newBuilder("carbonIngot","basicPyroOven",1200,0);
CarbonIngotRecipe.addItemInput(<minecraft:coal:1> * 16);
CarbonIngotRecipe.addItemOutput(<gregtech:meta_item_1:10012> * 16);
CarbonIngotRecipe.build();

/* PROCESS: Lead*/
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

// Removing lead ore recipes
furnace.remove(<gregtech:meta_item_1:10035>);
recipes.remove(<gregtech:meta_item_1:10035>);
fluid_extractor.findRecipe(48,[<gregtech:ore_lead_0>],null).remove();
macerator.findRecipe(12,[<gregtech:ore_lead_0>],null).remove();
hammer.findRecipe(6,[<gregtech:ore_lead_0>],null).remove();

/* PROCESS: Zinc */
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

// Removing zinc ore recipes
recipes.remove(<gregtech:meta_item_1:10079>);
furnace.remove(<gregtech:meta_item_1:10079>);
fluid_extractor.findRecipe(48,[<gregtech:ore_zinc_0>],null).remove();
macerator.findRecipe(12,[<gregtech:ore_zinc_0>],null).remove();
hammer.findRecipe(6,[<gregtech:ore_zinc_0>],null).remove();

// Removing copper ore recipes
fluidextractor.findRecipe(48,[<gregtech:ore_copper_0>],null).remove();
macerator.findRecipe(12,[<gregtech:ore_copper_0>],null).remove();
hammer.findRecipe(6,[<gregtech:ore_copper_0>],null).remove();

/* PROCESS: Silicon */
mods.nuclearcraft.manufactory.removeRecipeWithOutput([<gregtech:meta_item_1:10061>]);

val siliconRecipe = mods.modularmachinery.RecipeBuilder.newBuilder("silicon","t1blastfurnace",240,0);
siliconRecipe.addItemInput(<minecraft:sand>*8);
siliconRecipe.addItemInput(<gregtech:meta_item_1:10012> * 8);
siliconRecipe.addItemOutput(<gregtech:meta_item_1:10061>*8);
siliconRecipe.addFluidOutput(<liquid:carbon_monoxide>*2304);
siliconRecipe.build();

/* PROCESS: Wrought Iron */
recipes.remove(<gregtech:meta_item_1:2131>);
furnace.remove(<minecraft:iron_ingot>,<gregtech:ore_magnetite_0>);
macerator.findRecipe(12,[<gregtech:ore_magnetite_0>],null).remove();
hammer.findRecipe(6,[<gregtech:ore_magnetite_0>],null).remove();
furnace.addRecipe(<gregtech:meta_item_1:10197>,<gregtech:ore_magnetite_0>);

/* PROCESS: Iron */
val IronIngotRecipe = mods.modularmachinery.RecipeBuilder.newBuilder("ironingot","t1blastfurnace",240,0);
IronIngotRecipe.addItemInput(<gregtech:ore_magnetite_0>);
IronIngotRecipe.addFluidInput(<liquid:carbon_monoxide>*576);
IronIngotRecipe.addItemOutput(<minecraft:iron_ingot>*3);
IronIngotRecipe.addFluidOutput(<liquid:carbon_dioxide>*576);
IronIngotRecipe.build();

// LV Drill Bit Recipe
alloy.recipeBuilder()
    .inputs(<gregtech:meta_item_1:10095>*1,<minecraft:iron_ingot>*4)
    .outputs(<contenttweaker:material_part:6>*16)
    .EUt(4)
    .duration(80)
    .buildAndRegister();

/* PROCESS: Aluminum */
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

// Crushed Bauxite Recipe
hammer.recipeBuilder()
    .inputs(<gregtech:ore_bauxite_0>*1)
    .outputs(<gregtech:meta_item_1:5123>*2)
    .EUt(8)
    .duration(40)
    .buildAndRegister();

// Mixer | Crushed Bauxite + Sodium Hydroxide Solution ==> Sodium Ion Solution + Aluminum Hydroxide [Al(OH)4] Solution
mixer.recipeBuilder()
    .inputs(<gregtech:meta_item_1:5123>*1)
    .fluidInputs([<liquid:sodium_hydroxide_solution>*144])
    .fluidOutputs([<liquid:aluminumhydroxidesolution>*144])
    .outputs(<gregtech:meta_item_1:2063>*1)
    .EUt(16)
    .duration(100)
    .buildAndRegister();

// CRYSTALLIZER: Aluminum Hydroxide [Al(OH)4] Solution ==> Aluminum Hydroxide [Al(OH)3] Dust
mods.nuclearcraft.crystallizer.addRecipe([<liquid:aluminumhydroxidesolution>*1440, <contenttweaker:material_part:9>*10]); /*NO ERROR BUT DID NOT REGISTER RECIPE*/

//processing sodiumionsolution

val sodiumIonRecipe = mods.modularmachinery.RecipeBuilder.newBuilder("sodiumdust","ionizer",20,0);
sodiumIonRecipe.addFluidInput(<liquid:sodiumionsolution>*144);
sodiumIonRecipe.addItemOutput(<gregtech:meta_item_1:2063>*1);
sodiumIonRecipe.build();

// aluminum hydroxide -> alumina

furnace.addRecipe(<contenttweaker:material_part:11>,<contenttweaker:material_part:9>);

//hall-hreoult process

val moltenAluminumRecipe = mods.modularmachinery.RecipeBuilder.newBuilder("moltenaluminum","hallheroult",240,0);
moltenAluminumRecipe.addFluidInput(<liquid:water>*144);
moltenAluminumRecipe.addItemInput(<contenttweaker:material_part:11>*1);
moltenAluminumRecipe.addFluidOutput(<liquid:aluminium>*144);
moltenAluminumRecipe.addEnergyPerTickInput(8);
moltenAluminumRecipe.build();
//then run through fluid solidifier for aluminium ingot

//REMOVING ALUMINIUM RECIPES IN GREGTECH
recipes.remove(<gregtech:meta_item_1:10001>);
blast_furnace.findRecipe(100,[<gregtech:meta_item_1:2154>],null).remove();
blast_furnace.findRecipe(100,[<gregtech:meta_item_1:8154>],null).remove();
blast_furnace.findRecipe(100,[<gregtech:meta_item_1:2117>],null).remove();
blast_furnace.findRecipe(100,[<gregtech:meta_item_1:8117>],null).remove();
blast_furnace.findRecipe(100,[<gregtech:meta_item_1:2157>],null).remove();
blast_furnace.findRecipe(100,[<gregtech:meta_item_1:8157>],null).remove();


//END OF ALUMINUM



// EBF Recipes for super primitive blast furnace 
blast_furnace.recipeBuilder()
    .inputs(<gregtech:ore_lead_0>*2)
    .outputs(<contenttweaker:material_part:1>*2)
    .fluidOutputs([<liquid:sulfur_dioxide>*288])
    .EUt(120)
    .duration(80)
    .buildAndRegister();

blast_furnace.recipeBuilder()
    .inputs(<contenttweaker:material_part:1>*2,<gregtech:meta_item_1:10012>)
    .outputs(<gregtech:meta_item_1:10035>*2)
    .fluidOutputs([<liquid:carbon_monoxide>*288])
    .EUt(120)
    .duration(80)
    .buildAndRegister();

blast_furnace.recipeBuilder()
    .inputs(<gregtech:ore_zinc_0>*2)
    .outputs(<contenttweaker:material_part:3>*2)
    .fluidOutputs([<liquid:sulfur_dioxide>*288])
    .EUt(120)
    .duration(80)
    .buildAndRegister();

blast_furnace.recipeBuilder()
    .inputs(<contenttweaker:material_part:3>*2,<gregtech:meta_item_1:10012>)
    .outputs(<gregtech:meta_item_1:10079>*2)
    .fluidOutputs([<liquid:carbon_monoxide>*288])
    .EUt(120)
    .duration(80)
    .buildAndRegister();

blast_furnace.recipeBuilder()
    .inputs(<minecraft:sand>*1)
    .outputs(<gregtech:meta_item_1:10061>*1)
    .fluidOutputs([<liquid:carbon_monoxide>*144])
    .EUt(120)
    .duration(80)
    .buildAndRegister();


blast_furnace.recipeBuilder()
    .inputs(<gregtech:ore_magnetite_0>)
    .fluidInputs([<liquid:carbon_monoxide>*576])
    .outputs(<minecraft:iron_ingot>*3)
    .fluidOutputs([<liquid:carbon_dioxide>*576])
    .EUt(80)
    .duration(240)
    .buildAndRegister();

//end of EBF recipe transfer

//CIRCUITS

// Integrated Logic Circuit
recipes.remove(<gregtech:meta_item_2:32487>);
recipes.addShaped(<gregtech:meta_item_2:32487> * 1, [[<modularmachinery:itemmodularium>, <modularmachinery:itemmodularium>, <modularmachinery:itemmodularium>], [<modularmachinery:itemmodularium>, <gregtech:meta_item_2:32443>, <modularmachinery:itemmodularium>],[<modularmachinery:itemmodularium>, <modularmachinery:itemmodularium>, <modularmachinery:itemmodularium>]]);

// Basic Electronic Circuit
assembler.findRecipe(8,[<gregtech:meta_item_2:32459>*2,<gregtech:meta_item_2:32447>,<gregtech:meta_item_2:32477>,<gregtech:meta_item_2:16018>],[<liquid:soldering_alloy>*72]).remove();
assembler.findRecipe(8,[<gregtech:meta_item_2:32459>*2,<gregtech:meta_item_2:32447>,<gregtech:meta_item_2:32477>,<gregtech:meta_item_2:16018>],[<liquid:tin>*144]).remove();
assembler.findRecipe(8,[<gregtech:meta_item_2:32455>*2,<gregtech:meta_item_2:32447>,<gregtech:meta_item_2:32477>,<gregtech:meta_item_2:16018>],[<liquid:soldering_alloy>*72]).remove();
assembler.findRecipe(8,[<gregtech:meta_item_2:32455>*2,<gregtech:meta_item_2:32447>,<gregtech:meta_item_2:32477>,<gregtech:meta_item_2:16018>],[<liquid:tin>*144]).remove();
recipes.addShaped(<gregtech:meta_item_2:32488> * 1, [[<gregtech:meta_item_1:10035>, <gregtech:meta_item_1:10035>, <gregtech:meta_item_1:10035>], [<gregtech:meta_item_1:10012>, <gregtech:meta_item_2:32487>, <gregtech:meta_item_1:10012>],[<gregtech:meta_item_1:10079>, <gregtech:meta_item_1:10079>, <gregtech:meta_item_1:10079>]]);

//LV MINER

val TierTwoMinerRecipe = mods.modularmachinery.RecipeBuilder.newBuilder("T2MINE","t2miner",100,0);

TierTwoMinerRecipe.addItemInput(<contenttweaker:material_part:6>*1);
TierTwoMinerRecipe.addFluidInput(<liquid:sulfuric_acid>*10);
TierTwoMinerRecipe.addItemOutput(<gregtech:ore_silver_0>*6);
TierTwoMinerRecipe.addItemOutput(<gregtech:ore_bauxite_0>*6);
TierTwoMinerRecipe.addItemOutput(<minecraft:gold_ore>*6);
TierTwoMinerRecipe.addItemOutput(<gregtech:ore_nickel_0>*6);
TierTwoMinerRecipe.addItemOutput(<gregtech:ore_chromite_0>*6);
TierTwoMinerRecipe.addItemOutput(<gregtech:ore_pyrolusite_0>*6);
TierTwoMinerRecipe.build();

//Chromium process

//removing chromite recipes
macerator.findRecipe(12,[<gregtech:ore_chromite_0>],null).remove();
hammer.findRecipe(6,[<gregtech:ore_chromite_0>],null).remove();
electrolyzer.findRecipe(60,[<gregtech:meta_item_1:2102>*7],null).remove();

//sodium carbonate reaction
chemreactor.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2155>*1)
    .fluidInputs([<liquid:water>*144,<liquid:carbon_dioxide>*144,<liquid:ammonia>*144])
    .outputs(<contenttweaker:material_part:23>*1)
    .EUt(16)
    .duration(190)
    .buildAndRegister();

//processing waste from reaction
electrolyzer.recipeBuilder()
    .fluidInputs([<liquid:ammoniumchloride>*144])
    .fluidOutputs([<liquid:hydrochloric_acid>*144,<liquid:ammonia>*144])
    .EUt(60)
    .duration(190)
    .buildAndRegister();

//first step in processing ore

chemreactor.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2102>*4,<contenttweaker:material_part:16>*8)
    .fluidInputs([<liquid:oxygen>*1008])
    .outputs(<contenttweaker:material_part:21>*1)
    .fluidOutputs([<liquid:carbon_dioxide>*1152])
    .EUt(32)
    .duration(300)
    .buildAndRegister();

//second processing step 

chemreactor.recipeBuilder()
    .inputs(<contenttweaker:material_part:18>*2)
    .fluidInputs([<liquid:sulfuric_acid>*144])
    .outputs(<contenttweaker:material_part:22>*1)
    .fluidOutputs([<liquid:water>*144])
    .EUt(32)
    .duration(60)
    .buildAndRegister();

//processing waste

electrolyzer.recipeBuilder()
    .inputs(<contenttweaker:material_part:17>*1)
    .outputs(<gregtech:meta_item_1:2063>*1,<gregtech:meta_item_1:2065>*1)
    .fluidOutputs([<liquid:oxygen>*576])
    .EUt(8)
    .duration(150)
    .buildAndRegister();

centrifuge.recipeBuilder()
    .inputs(<contenttweaker:material_part:21>*1)
    .outputs(<contenttweaker:material_part:18>*8,<gregtech:ore_magnetite_0>*2)
    .EUt(8)
    .duration(20)
    .buildAndRegister();

centrifuge.recipeBuilder()
    .inputs(<contenttweaker:material_part:22>*1)
    .outputs(<contenttweaker:material_part:19>*1,<contenttweaker:material_part:17>*1)
    .EUt(8)
    .duration(20)
    .buildAndRegister();

electrolyzer.recipeBuilder()
    .inputs(<contenttweaker:material_part:23>*1)
    .outputs(<contenttweaker:material_part:16>*1)
    .fluidOutputs(<liquid:ammoniumchloride>*144)
    .EUt(8)
    .duration(20)
    .buildAndRegister();

//third processing step.

blast_furnace.recipeBuilder()
    .inputs(<contenttweaker:material_part:19>*1,<ore:ingotCarbon>*1)
    .outputs(<contenttweaker:material_part:16>*1,<contenttweaker:material_part:20>*1)
    .fluidOutputs([<liquid:carbon_monoxide>*144])
    .EUt(32)
    .duration(160)
    .buildAndRegister();

//final processing step

blast_furnace.recipeBuilder()
    .inputs(<contenttweaker:material_part:20>*1, <ore:ingotAluminium>*2)
    .outputs(<contenttweaker:material_part:11>*1,<gregtech:meta_item_1:10016>*2)
    .EUt(32)
    .duration(240)
    .buildAndRegister();

//MANGANESE PROCESS

recipes.remove(<gregtech:meta_item_1:2149>);
furnace.remove(<gregtech:meta_item_1:10039>);

