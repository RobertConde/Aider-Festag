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

//99.5% gold

var impuregold = MaterialSystem.getMaterialBuilder().setName("99.5% Pure Gold").setColor(9419).build();
impuregold.registerParts(["dust"] as string[]);

//copper chloride

var copperchloride = MaterialSystem.getMaterialBuilder().setName("Copper Chloride").setColor(126304).build();
copperchloride.registerParts(["dust"] as string[]);

//Dore bar

var dorebar = MaterialSystem.getMaterialBuilder().setName("Dore Bar").setColor(192348).build();
dorebar.registerParts(["ingot","block"] as string[]);

//sodium carbonate 15

var sodiumcarbonate = MaterialSystem.getMaterialBuilder().setName("Sodium Carbonate").setColor(126304).build();
sodiumcarbonate.registerParts(["dust"] as string[]);

//ammonium chloride

var ammoniumchloride = VanillaFactory.createFluid("ammoniumchloride", Color.fromHex("c42d61"));    // NOTE: Unlocalized name should be ENTIRELY lowercase.
ammoniumchloride.register();   // Localized name is in lang file

//sodium sulfate 16+1

var sodiumsulfate = MaterialSystem.getMaterialBuilder().setName("Sodium Sulfate").setColor(514569).build();
sodiumsulfate.registerParts(["dust"] as string[]);

//sodium chromate 17+1

var sodiumchromate = MaterialSystem.getMaterialBuilder().setName("Sodium Chromate").setColor(489613).build();
sodiumchromate.registerParts(["dust"] as string[]);

//sodium dichromate 18+1

var sodiumdichromate = MaterialSystem.getMaterialBuilder().setName("Sodium Dichromate").setColor(984213).build();
sodiumdichromate.registerParts(["dust"] as string[]);

//chromium (III) oxide 19+1

var chromiumoxide = MaterialSystem.getMaterialBuilder().setName("Chromium(III) Oxide").setColor(87421).build();
chromiumoxide.registerParts(["dust"] as string[]);

//chromium (III) oxide 21

var crproducts = MaterialSystem.getMaterialBuilder().setName("Chromite Reaction Products").setColor(87421).build();
crproducts.registerParts(["dust"] as string[]);

//chromium (III) oxide 22

var scproducts = MaterialSystem.getMaterialBuilder().setName("Sodium Chromate Products").setColor(87421).build();
scproducts.registerParts(["dust"] as string[]);

















print("-----------------Finished Loading Custom Items-----------------");
