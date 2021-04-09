#loader contenttweaker
import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.Material;
import mods.contenttweaker.Part;
import mods.contenttweaker.PartBuilder;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Color;
import crafttweaker.game.IGame;

print("-----------------Loading Custom Items-----------------");
/* ITEM #s AREN'T NECESSARILY ACCURATE */

// 0,1: Lead(II) Oxide
var leadOxide = MaterialSystem.getMaterialBuilder().setName("Lead(II) Oxide").setColor(115600).build();
leadOxide.registerParts(["ingot","dust"] as string[]);

// 2,3: Zinc(II) Oxide
var zincOxide = MaterialSystem.getMaterialBuilder().setName("Zinc(II) Oxide").setColor(5658219).build();
zincOxide.registerParts(["ingot","dust"] as string[]);

// 6: LV Drill Bit
var LV_drillBit = MaterialSystem.getMaterialBuilder().setName("LV Drill Bit").setColor(45139).build();
LV_drillBit.registerParts(["ingot"] as string[]);

// FLUID: Sodium Ion Solution
var sodiumIonSolution = VanillaFactory.createFluid("sodiumionsolution", Color.fromHex("102901"));    // NOTE: Unlocalized names should be ENTIRELY lowercase.
sodiumIonSolution.register();

// FLUID: Aluminuim Hydroxide [Al(OH)4] Solution
var aluminumHydroxideSolution = VanillaFactory.createFluid("aluminumhydroxidesolution",Color.fromHex("129456"));
aluminumHydroxideSolution.register();   // Localized name is in lang file

// 7: Gibbsite [Al(OH)3]
var gibbsite = MaterialSystem.getMaterialBuilder().setName("Gibbsite [Al(OH)3]").setColor(29491).build();
gibbsite.registerParts(["dust"] as string[]);

// 8,9: Aluminum Hydroxide [Al(OH)3] Dust
var aluminumHydroxide = MaterialSystem.getMaterialBuilder().setName("Aluminum Hydroxide [Al(OH)3]").setColor(123756).build();
aluminumHydroxide.registerParts(["ingot","dust"] as string[]);

// 10,11: Alumina [Al2O3]
var alumina = MaterialSystem.getMaterialBuilder().setName("Alumina [Al2O3]").setColor(456789).build();
alumina.registerParts(["ingot","dust"] as string[]);

// 12: Impure Gold [99.5%]
var impureGold = MaterialSystem.getMaterialBuilder().setName("Impure Gold [99.5%]").setColor(9419).build();
impureGold.registerParts(["dust"] as string[]);

// 13: Copper(II) Chloride
var copperChloride = MaterialSystem.getMaterialBuilder().setName("Copper(II) Chloride").setColor(126304).build();
copperChloride.registerParts(["dust"] as string[]);

// 14,15: Doré bar  /* MIGHT BREAK EVERYTHING */
var doreBar = MaterialSystem.getMaterialBuilder().setName("Doré Bar").setColor(192348).build();
doreBar.registerParts(["ingot","block"] as string[]);

// 16: Sodium Carbonate [Na2CO3]
var sodiumCarbonate = MaterialSystem.getMaterialBuilder().setName("Sodium Carbonate [Na2CO3]").setColor(126304).build();
sodiumCarbonate.registerParts(["dust"] as string[]);

// FLUID: Ammonium Chloride [NH4Cl]
var ammoniumChloride = VanillaFactory.createFluid("ammoniumchloride", Color.fromHex("c42d61"));    // NOTE: Unlocalized name should be ENTIRELY lowercase.
ammoniumChloride.register();

// 17: Sodium Sulfate [Na2SO4]
var sodiumSulfate = MaterialSystem.getMaterialBuilder().setName("Sodium Sulfate [Na2SO4]").setColor(514569).build();
sodiumSulfate.registerParts(["dust"] as string[]);

// 18: Sodium Chromate [Na2CrO4]
var sodiumChromate = MaterialSystem.getMaterialBuilder().setName("Sodium Chromate [Na2CrO4]").setColor(489613).build();
sodiumChromate.registerParts(["dust"] as string[]);

// 19: Sodium Dichromate [Na2Cr2O7]
var sodiumDichromate = MaterialSystem.getMaterialBuilder().setName("Sodium Dichromate").setColor(984213).build();
sodiumDichromate.registerParts(["dust"] as string[]);

// 20: Chromium(III) Oxide [Cr2O3]
var chromiumOxide = MaterialSystem.getMaterialBuilder().setName("Chromium(III) Oxide").setColor(87421).build();
chromiumOxide.registerParts(["dust"] as string[]);

// 21: Chromite Reaction Product
var chromiteReactionProduct = MaterialSystem.getMaterialBuilder().setName("Chromite Reaction Product").setColor(87421).build();
chromiteReactionProduct.registerParts(["dust"] as string[]);

// 22: Sodium Chromate Reaction Product
var sodiumChromateReactionProduct = MaterialSystem.getMaterialBuilder().setName("Sodium Chromate Reaction Product").setColor(87421).build();
sodiumChromateReactionProduct.registerParts(["dust"] as string[]);

// 23: Molybdenum(VI) Oxide
var molybdenumoxide = MaterialSystem.getMaterialBuilder().setName("Molybdenum(VI) Oxide").setColor(28137).build();
molybdenumoxide.registerParts(["dust"] as string[]);

//24: Ammonium Molybdate
var ammoniummolybdate = MaterialSystem.getMaterialBuilder().setName("Ammonium Molybdate").setColor(12312).build();
ammoniummolybdate.registerParts(["dust"] as string[]);

//25: ammonium dimolybdate
var ammoniumdimolybdate = MaterialSystem.getMaterialBuilder().setName("Ammonium Dimolybdate").setColor(122312).build();
ammoniumdimolybdate.registerParts(["dust"] as string[]);

//26: Molybdenum trioxide
var molybdenumtrioxide = MaterialSystem.getMaterialBuilder().setName("Molybdenum Trioxide").setColor(4565).build();
molybdenumtrioxide.registerParts(["dust"] as string[]);

//27: sodium carbonate reaction product
var sodiumcarbonateReactionProduct = MaterialSystem.getMaterialBuilder().setName("Sodium Carbonate Reaction Product").setColor(984222).build();
sodiumcarbonateReactionProduct.registerParts(["dust"] as string[]);

//FLUID: Lithium Brine
var lithiumbrine = VanillaFactory.createFluid("lithiumbrine", Color.fromHex("809619"));    // NOTE: Unlocalized names should be ENTIRELY lowercase.
lithiumbrine.register();

//FLUID: Evaporated Lithium Brine
var evaporatedlithiumbrine = VanillaFactory.createFluid("evaporatedlithiumbrine", Color.fromHex("77777"));
evaporatedlithiumbrine.register();

//28: Lithium Chloride
var lithiumchloride = MaterialSystem.getMaterialBuilder().setName("Lithium Chloride").setColor("192039").build();
lithiumchloride.registerParts(["dust"] as string[]);

// Nickel Electrodes

var nickelElectrode1 = MaterialSystem.getMaterialBuilder().setName("Nickel Electrode [50.0%]").setColor("727472").build();
nickelElectrode1.registerParts(["rod"] as string[]);

var nickelElectrode2 = MaterialSystem.getMaterialBuilder().setName("Nickel Electrode [75.0%]").setColor("727472").build();
nickelElectrode2.registerParts(["rod"] as string[]);

var nickelElectrode3 = MaterialSystem.getMaterialBuilder().setName("Nickel Electrode [87.5%]").setColor("727472").build();
nickelElectrode3.registerParts(["rod"] as string[]);

var nickelElectrode4 = MaterialSystem.getMaterialBuilder().setName("Nickel Electrode [93.4%]").setColor("727472").build();
nickelElectrode4.registerParts(["rod"] as string[]);

var nickelElectrode5 = MaterialSystem.getMaterialBuilder().setName("Nickel Electrode [96.9%]").setColor("727472").build();
nickelElectrode5.registerParts(["rod"] as string[]);

var nickelElectrode6 = MaterialSystem.getMaterialBuilder().setName("Nickel Electrode [98.4%]").setColor("727472").build();
nickelElectrode6.registerParts(["rod"] as string[]);

var nickelElectrode7 = MaterialSystem.getMaterialBuilder().setName("Nickel Electrode [99.2%]").setColor("727472").build();
nickelElectrode7.registerParts(["rod"] as string[]);

var nickelElectrode8 = MaterialSystem.getMaterialBuilder().setName("Nickel Electrode [99.6%]").setColor("727472").build();
nickelElectrode8.registerParts(["rod"] as string[]);

var nickelElectrode9 = MaterialSystem.getMaterialBuilder().setName("Nickel Electrode [99.8%]").setColor("727472").build();
nickelElectrode9.registerParts(["rod"] as string[]);

var nickelElectrode10 = MaterialSystem.getMaterialBuilder().setName("Nickel Electrode [99.9%]").setColor("727472").build();
nickelElectrode10.registerParts(["rod"] as string[]);

var nickelElectrode11 = MaterialSystem.getMaterialBuilder().setName("Nickel Electrode [Pure]").setColor("727472").build();
nickelElectrode11.registerParts(["rod"] as string[]);

//chicken fluid

var chickenfluid = VanillaFactory.createFluid("chickenfluid", Color.fromHex("102901"));
chickenfluid.register();

//refined chicken fluid

var refinedchickenfluid = VanillaFactory.createFluid("refinedchickenfluid", Color.fromHex("468152"));
refinedchickenfluid.register();

//pure chicken fluid

var purechickenfluid = VanillaFactory.createFluid("purechickenfluid", Color.fromHex("159824"));
purechickenfluid.register();

//atoium ingot

var atoium = MaterialSystem.getMaterialBuilder().setName("Atoium").setColor("8974215").build();
atoium.registerParts(["ingot"] as string[]);

//magnesium brine

var magnesiumbrine = VanillaFactory.createFluid("magnesiumbrine",Color.fromHex("129910"));
magnesiumbrine.register();

//Calcium 2+ solution

var calcium2 = VanillaFactory.createFluid("calcium2",Color.fromHex("748221"));
calcium2.register();

//Magnesium 2+ solution

var magnesium2 = VanillaFactory.createFluid("magnesium2",Color.fromHex("160005"));
magnesium2.register();

//magnesium hydroxide

var magnesiumhydroxide = MaterialSystem.getMaterialBuilder().setName("Magnesium Hydroxide").setColor("471122").build();
magnesiumhydroxide.registerParts(["ingot"] as string[]);
