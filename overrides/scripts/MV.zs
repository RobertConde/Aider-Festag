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
    .outputs(<contenttweaker:material_part:25>*16)
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












