#loader contenttweaker
import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.Material;
import mods.contenttweaker.Part;
import mods.contenttweaker.PartBuilder;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Color;
import crafttweaker.game.IGame;

print("-----------------Loading Custom Items-----------------");

// Lead(II) Oxide
var leadOxide = MaterialSystem.getMaterialBuilder().setName("Lead(II) Oxide").setColor(115600).build();
leadOxide.registerParts(["ingot","dust"] as string[]);

// Zinc(II) Oxide
var zincOxide = MaterialSystem.getMaterialBuilder().setName("Zinc(II) Oxide").setColor(5658219).build();
zincOxide.registerParts(["ingot","dust"] as string[]);

// LV Drill Bit
var LV_drillBit = MaterialSystem.getMaterialBuilder().setName("LV Drill Bit").setColor(45139).build();
LV_drillBit.registerParts(["ingot"] as string[]);

// Sodium Ion Solution
var sodiumIonSolution = VanillaFactory.createFluid("sodiumionsolution", Color.fromHex("102901"));    // NOTE: Unlocalized name should be ENTIRELY lowercase.
sodiumIonSolution.register();   // Localized name is in lang file

// Aluminuim Hydroxide [Al(OH)4] Solution
var aluminumHydroxideSolution = VanillaFactory.createFluid("aluminumhydroxidesolution",Color.fromHex("129456"));
aluminumHydroxideSolution.register();   // Localized name is in lang file

// Gibbsite [Al(OH)3]
var gibbsite = MaterialSystem.getMaterialBuilder().setName("Gibbsite [Al(OH)3]").setColor(29491).build();
gibbsite.registerParts(["dust"] as string[]);

// Aluminum Hydroxide [Al(OH)3] Dust
var aluminumhydroxide = MaterialSystem.getMaterialBuilder().setName("Aluminum Hydroxide [Al(OH)3]").setColor(123756).build();
aluminumhydroxide.registerParts(["ingot","dust"] as string[]);

// Alumina [Al2O3]
var alumina = MaterialSystem.getMaterialBuilder().setName("Alumina [Al2O3]").setColor(456789).build();
alumina.registerParts(["ingot","dust"] as string[]);

print("-----------------Finished Loading Custom Items-----------------");
