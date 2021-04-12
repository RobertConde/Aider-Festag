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
mods.chisel.Carving.addVariation("LV",<gregtech:machine:410>);
mods.chisel.Carving.addVariation("LV",<gregtech:machine:420>);
mods.chisel.Carving.addVariation("LV",<gregtech:machine:430>);
mods.chisel.Carving.addVariation("LV",<gregtech:machine:450>);
mods.chisel.Carving.addVariation("LV",<gregtech:machine:460>);
mods.chisel.Carving.addVariation("LV",<gregtech:machine:470>);
mods.chisel.Carving.addVariation("LV",<gregtech:machine:480>);
mods.chisel.Carving.addVariation("LV",<gregtech:machine:485>);
mods.chisel.Carving.addVariation("LV",<gregtech:machine:490>);
mods.chisel.Carving.addVariation("LV",<gregtech:machine:494>);
mods.chisel.Carving.addVariation("LV",<gregtech:machine:615>);
mods.chisel.Carving.addVariation("LV",<gregtech:machine:710>);
mods.chisel.Carving.addVariation("LV",<gregtech:machine:711>);
mods.chisel.Carving.addVariation("LV",<gregtech:machine:712>);
mods.chisel.Carving.addVariation("LV",<gregtech:machine:713>);
mods.chisel.Carving.addVariation("LV",<gregtech:machine:714>);
mods.chisel.Carving.addVariation("LV",<gregtech:machine:715>);
mods.chisel.Carving.addVariation("LV",<gregtech:machine:820>);
mods.chisel.Carving.addVariation("LV",<gregtech:machine:900>);
mods.chisel.Carving.addVariation("LV",<gregtech:machine:950>);

// MV Machines
mods.chisel.Carving.addVariation("MV",<gregtech:machine:502>);
mods.chisel.Carving.addVariation("MV",<gregtech:machine:51>);
mods.chisel.Carving.addVariation("MV",<gregtech:machine:61>);
mods.chisel.Carving.addVariation("MV",<gregtech:machine:71>);
mods.chisel.Carving.addVariation("MV",<gregtech:machine:81>);
mods.chisel.Carving.addVariation("MV",<gregtech:machine:91>);
mods.chisel.Carving.addVariation("MV",<gregtech:machine:101>);
mods.chisel.Carving.addVariation("MV",<gregtech:machine:111>);
mods.chisel.Carving.addVariation("MV",<gregtech:machine:121>);
mods.chisel.Carving.addVariation("MV",<gregtech:machine:131>);
mods.chisel.Carving.addVariation("MV",<gregtech:machine:141>);
mods.chisel.Carving.addVariation("MV",<gregtech:machine:151>);
mods.chisel.Carving.addVariation("MV",<gregtech:machine:181>);
mods.chisel.Carving.addVariation("MV",<gregtech:machine:191>);
mods.chisel.Carving.addVariation("MV",<gregtech:machine:211>);
mods.chisel.Carving.addVariation("MV",<gregtech:machine:221>);
mods.chisel.Carving.addVariation("MV",<gregtech:machine:231>);
mods.chisel.Carving.addVariation("MV",<gregtech:machine:241>);
mods.chisel.Carving.addVariation("MV",<gregtech:machine:251>);
mods.chisel.Carving.addVariation("MV",<gregtech:machine:261>);
mods.chisel.Carving.addVariation("MV",<gregtech:machine:281>);
mods.chisel.Carving.addVariation("MV",<gregtech:machine:291>);
mods.chisel.Carving.addVariation("MV",<gregtech:machine:301>);
mods.chisel.Carving.addVariation("MV",<gregtech:machine:311>);
mods.chisel.Carving.addVariation("MV",<gregtech:machine:321>);
mods.chisel.Carving.addVariation("MV",<gregtech:machine:331>);
mods.chisel.Carving.addVariation("MV",<gregtech:machine:341>);
mods.chisel.Carving.addVariation("MV",<gregtech:machine:351>);
mods.chisel.Carving.addVariation("MV",<gregtech:machine:361>);
mods.chisel.Carving.addVariation("MV",<gregtech:machine:371>);
mods.chisel.Carving.addVariation("MV",<gregtech:machine:391>);
mods.chisel.Carving.addVariation("MV",<gregtech:machine:401>);
mods.chisel.Carving.addVariation("MV",<gregtech:machine:411>);
mods.chisel.Carving.addVariation("MV",<gregtech:machine:421>);
mods.chisel.Carving.addVariation("MV",<gregtech:machine:431>);
mods.chisel.Carving.addVariation("MV",<gregtech:machine:451>);
mods.chisel.Carving.addVariation("MV",<gregtech:machine:461>);
mods.chisel.Carving.addVariation("MV",<gregtech:machine:471>);
mods.chisel.Carving.addVariation("MV",<gregtech:machine:481>);
mods.chisel.Carving.addVariation("MV",<gregtech:machine:486>);
mods.chisel.Carving.addVariation("MV",<gregtech:machine:491>);
mods.chisel.Carving.addVariation("MV",<gregtech:machine:495>);
mods.chisel.Carving.addVariation("MV",<gregtech:machine:502>);
mods.chisel.Carving.addVariation("MV",<gregtech:machine:601>);
mods.chisel.Carving.addVariation("MV",<gregtech:machine:602>);
mods.chisel.Carving.addVariation("MV",<gregtech:machine:619>);
mods.chisel.Carving.addVariation("MV",<gregtech:machine:682>);

mods.chisel.Carving.addVariation("MV",<gregtech:machine:720>);
mods.chisel.Carving.addVariation("MV",<gregtech:machine:721>);
mods.chisel.Carving.addVariation("MV",<gregtech:machine:722>);
mods.chisel.Carving.addVariation("MV",<gregtech:machine:723>);
mods.chisel.Carving.addVariation("MV",<gregtech:machine:724>);
mods.chisel.Carving.addVariation("MV",<gregtech:machine:725>);
mods.chisel.Carving.addVariation("MV",<gregtech:machine:821>);
mods.chisel.Carving.addVariation("MV",<gregtech:machine:910>);
mods.chisel.Carving.addVariation("MV",<gregtech:machine:960>);


