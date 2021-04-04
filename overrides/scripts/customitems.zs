#loader contenttweaker
import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.Material;
import mods.contenttweaker.Part;
import mods.contenttweaker.PartBuilder;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Color;


print("-----------------Constructing intermediates-----------------");
//lead 

var leadOxide = MaterialSystem.getMaterialBuilder().setName("Lead (II) Oxide").setColor(115600).build();
leadOxide.registerParts(["ingot","dust"] as string[]);

//zinc 

var zincOxide = MaterialSystem.getMaterialBuilder().setName("Zinc (II) Oxide").setColor(5658219).build();
zincOxide.registerParts(["ingot","dust"] as string[]);

//LV drill bit

var LVdrillbit = MaterialSystem.getMaterialBuilder().setName("LV drill bit").setColor(45139).build();
LVdrillbit.registerParts(["ingot"] as string[]);

// sodium

var sodiumion = VanillaFactory.createFluid("sodiumionsolution", 102901);
//sodiumion.fluidName = "Sodium Ion Solution";
sodiumion.register();


//AL(OH)4

var aluminumionsolution = VanillaFactory.createFluid("aluminumhydroxidesolution",12941);
//aluminumionsolution.fluidName = "Aluminum Hydroxide Solution";
aluminumionsolution.register();

//AL(OH)3

var aluminumhydroxidecrystaldust = MaterialSystem.getMaterialBuilder().setName("gibbsite").setColor(29491).build();
aluminumhydroxidecrystaldust.registerParts(["dust"] as string[]);
