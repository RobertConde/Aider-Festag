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

print("-----------------LOADING MV-----------------");
//IMPURE GOLD PROCESS

recipes.remove(<minecraft:gold_ingot>);
furnace.remove(<minecraft:gold_ingot>);
fluid_extractor.findRecipe(48,[<minecraft:gold_ore>],null).remove();
macerator.findRecipe(12,[<minecraft:gold_ore>],null).remove();
hammer.findRecipe(6,[<minecraft:gold_ore>],null).remove();

val ImpureGoldRecipe = mods.modularmachinery.RecipeBuilder.newBuilder("impuregold","miller",240,64);

ImpureGoldRecipe.addItemInput(<minecraft:gold_ore> * 2);
ImpureGoldRecipe.addFluidInput(<liquid:chlorine>*288);
ImpureGoldRecipe.addItemOutput(<contenttweaker:material_part:13>*2);
ImpureGoldRecipe.addItemOutput(<contenttweaker:material_part:12>*2);
ImpureGoldRecipe.build();

//copper chloride

electrolyzer.recipeBuilder()
    .inputs(<contenttweaker:material_part:13>*1)
    .outputs(<gregtech:meta_item_1:2018>*1)
    .fluidOutputs([<liquid:chlorine>*288])
    .EUt(60)
    .duration(60)
    .buildAndRegister();

//dore bar
furnace.addRecipe(<contenttweaker:material_part:14>,<contenttweaker:material_part:12>);

//MOLYBDENUM PROCESS

furnace.remove(<gregtech:meta_item_1:10041>);
recipes.remove(<gregtech:meta_item_1:2041>);
recipes.remove(<gregtech:meta_item_1:10041>);

fluid_extractor.findRecipe(48,[<gregtech:ore_molybdenum_0>],null).remove();
macerator.findRecipe(12,[<gregtech:ore_molybdenum_0>],null).remove();
hammer.findRecipe(6,[<gregtech:ore_molybdenum_0>],null).remove();

// first step molyboxide

blast_furnace.recipeBuilder()

    .inputs(<gregtech:ore_molybdenum_0>*2)
    .outputs(<contenttweaker:material_part:23>*2)
    .fluidOutputs([<liquid:sulfur_dioxide>*576])
    .EUt(99)
    .duration(80)
    .buildAndRegister();

// second step ammonia step

chemreactor.recipeBuilder()
    .inputs(<contenttweaker:material_part:23>*1)
    .fluidInputs([<liquid:ammonia>*288,<liquid:water>*144])
    .outputs(<contenttweaker:material_part:24>*1)
    .EUt(120)
    .duration(120)
    .buildAndRegister();
    
//third step dimolybdate

chemreactor.recipeBuilder()
    .inputs(<contenttweaker:material_part:24>*16)
    .outputs(<contenttweaker:material_part:25>*8)
    .EUt(120)
    .duration(1200)
    .buildAndRegister();

//fourth step molybd trioxide

blast_furnace.recipeBuilder()
    .inputs(<contenttweaker:material_part:25>*1)
    .outputs(<contenttweaker:material_part:26>*2)
    .fluidOutputs([<liquid:ammonia>*288])
    .EUt(80)
    .duration(120)
    .buildAndRegister();

//final step in chemical reactor

chemreactor.recipeBuilder()
    .inputs(<contenttweaker:material_part:26>*1)
    .outputs(<gregtech:meta_item_1:10041>*1)
    .fluidInputs([<liquid:hydrogen>*432])
    .fluidOutputs([<liquid:water>*432])
    .EUt(80)
    .duration(100)
    .buildAndRegister();

//removing clay recipe

electrolyzer.findRecipe(60,[<gregtech:meta_item_1:2105>*13],null).remove();

//MAGNESIUM LINE

//first step magnesium brine
centrifuge.recipeBuilder()
    .fluidInputs([<liquid:salt_water>*2000])
    .fluidOutputs([<liquid:magnesiumbrine>*1000])
    .outputs(<gregtech:meta_item_1:2155>*1)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 5}))
    .EUt(64)
    .duration(600)
    .buildAndRegister();
    
// second step MG 2+ solution

chemreactor.recipeBuilder()
    .fluidInputs([<liquid:magnesiumbrine>*144])
    .fluidOutputs([<liquid:magnesium2>*144])
    .outputs(<gregtech:meta_item_1:2155>*1)
    .EUt(64)
    .duration(40)
    .buildAndRegister();

//third step Magnesium Hydroxide

chemreactor.recipeBuilder()
    .fluidInputs([<liquid:water>*144,<liquid:magnesium2>*144])
    .inputs(<gregtech:meta_item_1:2374>*1)
    .fluidOutputs([<liquid:calcium2>*144])
    .outputs(<contenttweaker:material_part:41>*1)
    .EUt(100)
    .duration(60)
    .buildAndRegister();

//fourth step Magnesium Chloride

chemreactor.recipeBuilder()
    .fluidInputs([<liquid:hydrochloric_acid>*288])
    .inputs(<contenttweaker:material_part:41>*1)
    .fluidOutputs(<liquid:water>*288)
    .outputs(<gregtech:meta_item_1:2125>*1)
    .EUt(111)
    .duration(80)
    .buildAndRegister();

//last step is already in gregtech

//processing calcium2

mods.modularmachinery.RecipeBuilder.newBuilder("ca2waste","ionizer",20)
    .addItemOutput(<gregtech:meta_item_1:2011>)
    .addFluidInput(<fluid:calcium2>*144)
    .build();


//CIRCUITS

// Good Electronic Circuit
recipes.remove(<gregtech:meta_item_2:32489>);
assembler.findRecipe(16,[<gregtech:meta_item_2:16112>*8,<gregtech:meta_item_2:32455>*4,<gregtech:meta_item_2:32488>*3,<gregtech:meta_item_2:32447>*1],[<liquid:tin>*144]).remove();
assembler.findRecipe(16,[<gregtech:meta_item_2:16112>*8,<gregtech:meta_item_2:32455>*4,<gregtech:meta_item_2:32488>*3,<gregtech:meta_item_2:32447>*1],[<liquid:soldering_alloy>*72]).remove();
assembler.findRecipe(16,[<gregtech:meta_item_2:16112>*8,<gregtech:meta_item_2:32459>*4,<gregtech:meta_item_2:32488>*3,<gregtech:meta_item_2:32447>*1],[<liquid:tin>*144]).remove();
assembler.findRecipe(16,[<gregtech:meta_item_2:16112>*8,<gregtech:meta_item_2:32459>*4,<gregtech:meta_item_2:32488>*3,<gregtech:meta_item_2:32447>*1],[<liquid:soldering_alloy>*72]).remove();

recipes.addShaped(<gregtech:meta_item_2:32489> * 1, [[<gregtech:meta_item_1:2036>, <gregtech:meta_item_1:2036>, <gregtech:meta_item_1:2036>], [<gregtech:meta_item_1:2039>, <gregtech:meta_item_2:32488>, <gregtech:meta_item_1:2063>],[<gregtech:meta_item_1:10062>, <gregtech:meta_item_1:10184>, <contenttweaker:material_part:14>]]);

// Integrated Processor

assembler.findRecipe(60,[<gregtech:meta_item_2:32455>*2,<gregtech:meta_item_2:32452>*2,<gregtech:meta_item_2:32461>*2,<gregtech:meta_item_2:16237>*2,<gregtech:meta_item_2:32448>*1,<gregtech:meta_item_2:32478>*1],[<liquid:tin>*144]).remove();
assembler.findRecipe(60,[<gregtech:meta_item_2:32459>*2,<gregtech:meta_item_2:32458>*2,<gregtech:meta_item_2:32460>*2,<gregtech:meta_item_2:16237>*2,<gregtech:meta_item_2:32448>*1,<gregtech:meta_item_2:32478>*1],[<liquid:tin>*144]).remove();
assembler.findRecipe(2400,[<gregtech:meta_item_2:16237>*2,<gregtech:meta_item_2:32448>*1,<gregtech:meta_item_2:32486>*1],[<liquid:tin>*144]).remove();
assembler.findRecipe(60,[<gregtech:meta_item_2:32455>*2,<gregtech:meta_item_2:32452>*2,<gregtech:meta_item_2:32461>*2,<gregtech:meta_item_2:16237>*2,<gregtech:meta_item_2:32448>*1,<gregtech:meta_item_2:32478>*1],[<liquid:soldering_alloy>*72]).remove();
assembler.findRecipe(60,[<gregtech:meta_item_2:32459>*2,<gregtech:meta_item_2:32458>*2,<gregtech:meta_item_2:32460>*2,<gregtech:meta_item_2:16237>*2,<gregtech:meta_item_2:32448>*1,<gregtech:meta_item_2:32478>*1],[<liquid:soldering_alloy>*72]).remove();
assembler.findRecipe(2400,[<gregtech:meta_item_2:16237>*2,<gregtech:meta_item_2:32448>*1,<gregtech:meta_item_2:32486>*1],[<liquid:soldering_alloy>*72]).remove();

recipes.addShaped(<gregtech:meta_item_2:32490> * 1, [[<gregtech:meta_item_1:10001>, <gregtech:meta_item_1:10001>, <gregtech:meta_item_1:10001>], [<gregtech:meta_item_1:10044>, <gregtech:meta_item_2:32489>, <gregtech:meta_item_1:10044>],[<gregtech:meta_item_1:10152>, <gregtech:meta_item_1:10152>, <gregtech:meta_item_1:10152>]]);


//Germanium line

recipes.remove(<contenttweaker:material_part:42>);

//first step germanium sulfide

furnace.addRecipe(<contenttweaker:material_part:44>,<contenttweaker:sub_block_holder_0:1>);

//second step impure germanium oxide

blast_furnace.recipeBuilder()
    .inputs(<contenttweaker:material_part:44>*1)
    .outputs(<contenttweaker:material_part:45>*1)
    .fluidOutputs([<liquid:sulfur_dioxide>*288])
    .EUt(120)
    .duration(80)
    .buildAndRegister();

//third step germanium tetrachloride

chemreactor.recipeBuilder()
    .inputs(<contenttweaker:material_part:45>*1)
    .fluidInputs([<liquid:hydrochloric_acid>*576])
    .fluidOutputs([<liquid:germaniumtetrachloride>*144,<liquid:water>*288])
    .EUt(111)
    .duration(100)
    .buildAndRegister();

//fourth step hydrolyze germanium tetrachloride

chemreactor.recipeBuilder()
    .fluidInputs([<liquid:germaniumtetrachloride>*144,<liquid:water>*288])
    .outputs(<contenttweaker:material_part:46>*1)
    .fluidOutputs([<liquid:diluted_hydrochloric_acid>*576])
    .EUt(128)
    .duration(480)
    .buildAndRegister();

//fifth step  pure germanium oxide -> germanium in blast furnace

blast_furnace.recipeBuilder()
    .inputs(<contenttweaker:material_part:46>*1)
    .outputs(<contenttweaker:material_part:42>*1)
    .EUt(105)
    .duration(280)
    .buildAndRegister();




