import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.chisel.Carving;
import mods.nuclearcraft.extractor;
import mods.nuclearcraft.ingot_former;
import mods.nuclearcraft.melter;

// GROUPS
mods.chisel.Carving.addGroup("trashcans");
mods.chisel.Carving.addGroup("nuclearcraft");
mods.chisel.Carving.addGroup("LV");
mods.chisel.Carving.addGroup("MV");
mods.chisel.Carving.addGroup("HV");
mods.chisel.Carving.addGroup("EV");

// Nuclearcraft
mods.chisel.Carving.addVariation("nuclearcraft",<nuclearcraft:manufactory_idle>);
mods.chisel.Carving.addVariation("nuclearcraft",<nuclearcraft:crystallizer_idle>);

mods.nuclearcraft.extractor.removeAllRecipes();
mods.nuclearcraft.ingot_former.removeAllRecipes();
mods.nuclearcraft.melter.removeAllRecipes();

// Trash Cans
mods.chisel.Carving.addVariation("trashcans",<trashcans:item_trash_can>);
mods.chisel.Carving.addVariation("trashcans",<trashcans:liquid_trash_can>);
mods.chisel.Carving.addVariation("trashcans",<trashcans:energy_trash_can>);

recipes.remove(<trashcans:ultimate_trash_can>);

// LV Machines
mods.chisel.Carving.addVariation("LV",<gregtech:machine:501>);
mods.chisel.Carving.addVariation("LV",<gregtech:machine:50>);
mods.chisel.Carving.addVariation("LV",<gregtech:machine:60>);
mods.chisel.Carving.addVariation("LV",<gregtech:machine:70>);
mods.chisel.Carving.addVariation("LV",<gregtech:machine:80>);
mods.chisel.Carving.addVariation("LV",<gregtech:machine:90>);
mods.chisel.Carving.addVariation("LV",<gregtech:machine:100>);
mods.chisel.Carving.addVariation("LV",<gregtech:machine:110>);
mods.chisel.Carving.addVariation("LV",<gregtech:machine:120>);
mods.chisel.Carving.addVariation("LV",<gregtech:machine:130>);
mods.chisel.Carving.addVariation("LV",<gregtech:machine:140>);
mods.chisel.Carving.addVariation("LV",<gregtech:machine:150>);
mods.chisel.Carving.addVariation("LV",<gregtech:machine:180>);
mods.chisel.Carving.addVariation("LV",<gregtech:machine:190>);
mods.chisel.Carving.addVariation("LV",<gregtech:machine:210>);
mods.chisel.Carving.addVariation("LV",<gregtech:machine:220>);
mods.chisel.Carving.addVariation("LV",<gregtech:machine:230>);
mods.chisel.Carving.addVariation("LV",<gregtech:machine:240>);
mods.chisel.Carving.addVariation("LV",<gregtech:machine:250>);
mods.chisel.Carving.addVariation("LV",<gregtech:machine:260>);
mods.chisel.Carving.addVariation("LV",<gregtech:machine:280>);
mods.chisel.Carving.addVariation("LV",<gregtech:machine:290>);
mods.chisel.Carving.addVariation("LV",<gregtech:machine:300>);
mods.chisel.Carving.addVariation("LV",<gregtech:machine:310>);
mods.chisel.Carving.addVariation("LV",<gregtech:machine:320>);
mods.chisel.Carving.addVariation("LV",<gregtech:machine:330>);
mods.chisel.Carving.addVariation("LV",<gregtech:machine:340>);
mods.chisel.Carving.addVariation("LV",<gregtech:machine:350>);
mods.chisel.Carving.addVariation("LV",<gregtech:machine:360>);
mods.chisel.Carving.addVariation("LV",<gregtech:machine:370>);
mods.chisel.Carving.addVariation("LV",<gregtech:machine:390>);
mods.chisel.Carving.addVariation("LV",<gregtech:machine:400>);

string temp = "<gregtech:machine:" + n