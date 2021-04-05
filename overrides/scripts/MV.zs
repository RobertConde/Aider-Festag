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

