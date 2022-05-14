import mods.terrafirmacraft.Welding;
import mods.terrafirmacraft.Anvil;
import mods.terrafirmacraft.Quern;
import mods.terrafirmacraft.Heating;
import mods.firmalife.Oven;
import mods.horsepower.Grindstone;

// --- Унификация пластин
Anvil.addRecipe("tfc:TFG_plate_bismuth", <ore:ingotDoubleBismuth>, <ore:plateBismuth>.firstItem, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfc:TFG_plate_bismuth_bronze", <ore:ingotDoubleBismuthBronze>, <ore:plateBismuthBronze>.firstItem, 2, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfc:TFG_plate_black_bronze", <ore:ingotDoubleBlackBronze>, <ore:plateBlackBronze>.firstItem, 2, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfc:TFG_plate_brass", <ore:ingotDoubleBrass>, <ore:plateBrass>.firstItem, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfc:TFG_plate_bronze", <ore:ingotDoubleBronze>, <ore:plateBronze>.firstItem, 2, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfc:TFG_plate_copper", <ore:ingotDoubleCopper>, <ore:plateCopper>.firstItem, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfc:TFG_plate_gold", <ore:ingotDoubleGold>, <ore:plateGold>.firstItem, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfc:TFG_plate_lead", <ore:ingotDoubleLead>, <ore:plateLead>.firstItem, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfc:TFG_plate_nickel", <ore:ingotDoubleNickel>, <ore:plateNickel>.firstItem, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfc:TFG_plate_rose_gold", <ore:ingotDoubleRoseGold>, <ore:plateRoseGold>.firstItem, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfc:TFG_plate_silver", <ore:ingotDoubleSilver>, <ore:plateSilver>.firstItem, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfc:TFG_plate_tin", <ore:ingotDoubleTin>, <ore:plateTin>.firstItem, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfc:TFG_plate_zinc", <ore:ingotDoubleZinc>, <ore:plateZinc>.firstItem, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfc:TFG_plate_sterling_silver", <ore:ingotDoubleSterlingSilver>, <ore:plateSterlingSilver>.firstItem, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfc:TFG_plate_wrought_iron", <ore:ingotDoubleWroughtIron>, <ore:plateWroughtIron>.firstItem, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfc:TFG_plate_steel", <ore:ingotDoubleSteel>, <ore:plateSteel>.firstItem, 4, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfc:TFG_plate_platinum", <ore:ingotDoublePlatinum>, <ore:platePlatinum>.firstItem, 5, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfc:TFG_plate_black_steel", <ore:ingotDoubleBlackSteel>, <ore:plateBlackSteel>.firstItem, 5, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfc:TFG_plate_blue_steel", <ore:ingotDoubleBlueSteel>, <ore:plateBlueSteel>.firstItem, 6, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfc:TFG_plate_red_steel", <ore:ingotDoubleRedSteel>, <ore:plateRedSteel>.firstItem, 6, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
//
Anvil.addRecipe("tfc:TFG_plate_pig_iron", <ore:ingotDoublePigIron>, <tfc:metal/sheet/pig_iron>, 2, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Welding.addRecipe("tfc:TFG_plate_wrought_iron", <ore:plateWroughtIron>, <ore:plateCopper>, <tfc:metal/sheet/wrought_iron>, 3);

// --- Унификация двойных пластин
Welding.addRecipe("tfc:TFG_double_plate_bismuth", <ore:plateBismuth>, <ore:plateBismuth>, <ore:plateDoubleBismuth>.firstItem, 1);
Welding.addRecipe("tfc:TFG_double_plate_bismuth_bronze", <ore:plateBismuthBronze>, <ore:plateBismuthBronze>, <ore:plateDoubleBismuthBronze>.firstItem, 2);
Welding.addRecipe("tfc:TFG_double_plate_black_bronze", <ore:plateBlackBronze>, <ore:plateBlackBronze>, <ore:plateDoubleBlackBronze>.firstItem, 2);
Welding.addRecipe("tfc:TFG_double_plate_brass", <ore:plateBrass>, <ore:plateBrass>, <ore:plateDoubleBrass>.firstItem, 1);
Welding.addRecipe("tfc:TFG_double_plate_bronze", <ore:plateBronze>, <ore:plateBronze>, <ore:plateDoubleBronze>.firstItem, 2);
Welding.addRecipe("tfc:TFG_double_plate_copper", <ore:plateCopper>, <ore:plateCopper>, <ore:plateDoubleCopper>.firstItem, 1);
Welding.addRecipe("tfc:TFG_double_plate_gold", <ore:plateGold>, <ore:plateGold>, <ore:plateDoubleGold>.firstItem, 1);
Welding.addRecipe("tfc:TFG_double_plate_lead", <ore:plateLead>, <ore:plateLead>, <ore:plateDoubleLead>.firstItem, 1);
Welding.addRecipe("tfc:TFG_double_plate_nickel", <ore:plateNickel>, <ore:plateNickel>, <ore:plateDoubleNickel>.firstItem, 1);
Welding.addRecipe("tfc:TFG_double_plate_rose_gold", <ore:plateRoseGold>, <ore:plateRoseGold>, <ore:plateDoubleRoseGold>.firstItem, 1);
Welding.addRecipe("tfc:TFG_double_plate_silver", <ore:plateSilver>, <ore:plateSilver>, <ore:plateDoubleSilver>.firstItem, 1);
Welding.addRecipe("tfc:TFG_double_plate_tin", <ore:plateTin>, <ore:plateTin>, <ore:plateDoubleTin>.firstItem, 1);
Welding.addRecipe("tfc:TFG_double_plate_zinc", <ore:plateZinc>, <ore:plateZinc>, <ore:plateDoubleZinc>.firstItem, 1);
Welding.addRecipe("tfc:TFG_double_plate_sterling_silver", <ore:plateSterlingSilver>, <ore:plateSterlingSilver>, <ore:plateDoubleSterlingSilver>.firstItem, 1);
Welding.addRecipe("tfc:TFG_double_plate_wrought_iron", <ore:plateWroughtIron>, <ore:plateWroughtIron>, <ore:plateDoubleWroughtIron>.firstItem, 3);
Welding.addRecipe("tfc:TFG_double_plate_steel", <ore:plateSteel>, <ore:plateSteel>, <ore:plateDoubleSteel>.firstItem, 4);
Welding.addRecipe("tfc:TFG_double_plate_platinum", <ore:platePlatinum>, <ore:platePlatinum>, <ore:plateDoublePlatinum>.firstItem, 5);
Welding.addRecipe("tfc:TFG_double_plate_black_steel", <ore:plateBlackSteel>, <ore:plateBlackSteel>, <ore:plateDoubleBlackSteel>.firstItem, 5);
Welding.addRecipe("tfc:TFG_double_plate_blue_steel", <ore:plateBlueSteel>, <ore:plateBlueSteel>, <ore:plateDoubleBlueSteel>.firstItem, 6);
Welding.addRecipe("tfc:TFG_double_plate_red_steel", <ore:plateRedSteel>, <ore:plateRedSteel>, <ore:plateDoubleRedSteel>.firstItem, 6);

// --- Унификация длинных палок
Anvil.addRecipe("tfctech:TFG_long_rod_brass", <ore:ingotBrass>, <metaitem:stickLongBrass>, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:TFG_long_rod_bronze", <ore:ingotBronze>, <metaitem:stickLongBronze>, 2, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:TFG_long_rod_copper", <ore:ingotCopper>, <metaitem:stickLongCopper>, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:TFG_long_rod_gold", <ore:ingotGold>, <metaitem:stickLongGold>, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:TFG_long_rod_lead", <ore:ingotLead>, <metaitem:stickLongLead>, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:TFG_long_rod_rose_gold", <ore:ingotRoseGold>, <metaitem:stickLongRoseGold>, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:TFG_long_rod_silver", <ore:ingotSilver>, <metaitem:stickLongSilver>, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:TFG_long_rod_tin", <ore:ingotTin>, <metaitem:stickLongTin>, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:TFG_long_rod_bismuth_bronze", <ore:ingotBismuthBronze>, <metaitem:stickLongBismuthBronze>, 2, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:TFG_long_rod_black_bronze", <ore:ingotBlackBronze>, <metaitem:stickLongBlackBronze>, 2, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:TFG_long_rod_steel", <ore:ingotSteel>, <metaitem:stickLongSteel>, 4, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:TFG_long_rod_wrought_iron", <ore:ingotWroughtIron>, <metaitem:stickLongWroughtIron>, 3, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:TFG_long_rod_sterling_silver", <ore:ingotSterlingSilver>, <metaitem:stickLongSterlingSilver>, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:TFG_long_rod_red_steel", <ore:ingotRedSteel>, <metaitem:stickLongRedSteel>, 6, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:TFG_long_rod_blue_steel", <ore:ingotBlueSteel>, <metaitem:stickLongBlueSteel>, 6, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:TFG_long_rod_black_steel", <ore:ingotBlackSteel>, <metaitem:stickLongBlackSteel>, 5, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:TFG_long_rod_platinum", <ore:ingotPlatinum>, <metaitem:stickLongPlatinum>, 5, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:TFG_long_rod_nickel", <ore:ingotNickel>, <metaitem:stickLongNickel>, 2, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:TFG_long_rod_bismuth", <ore:ingotBismuth>, <metaitem:stickLongBismuth>, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
Anvil.addRecipe("tfctech:TFG_long_rod_zinc", <ore:ingotZinc>, <metaitem:stickLongZinc>, 1, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");

// --- Унификация шестеренок
Welding.addRecipe("tfc:TFG_gear_bismuth", <ore:rackwheelBismuth>, <ore:sleeveTin>, <gregtech:meta_gear:11>, 1);
Welding.addRecipe("tfc:TFG_gear_black_bronze", <ore:rackwheelBlackBronze>, <ore:sleeveTin>, <gregtech:meta_gear:302>, 2);
Welding.addRecipe("tfc:TFG_gear_bronze", <ore:rackwheelBronze>, <ore:sleeveTin>, <gregtech:meta_gear:260>, 2);
Welding.addRecipe("tfc:TFG_gear_nickel", <ore:rackwheelNickel>, <ore:sleeveTin>, <gregtech:meta_gear:69>, 1);
Welding.addRecipe("tfc:TFG_gear_zinc", <ore:rackwheelZinc>, <ore:sleeveTin>, <gregtech:meta_gear:122>, 1);
Welding.addRecipe("tfc:TFG_gear_wrought_iron", <ore:rackwheelWroughtIron>, <ore:sleeveBrass>, <gregtech:meta_gear:335>, 3);
Welding.addRecipe("tfc:TFG_gear_steel", <ore:rackwheelSteel>, <ore:sleeveBrass>, <gregtech:meta_gear:324>, 4);
Welding.addRecipe("tfc:TFG_gear_black_steel", <ore:rackwheelBlackSteel>, <ore:sleeveSteel>, <gregtech:meta_gear:2011>, 5);
Welding.addRecipe("tfc:TFG_gear_blue_steel", <ore:rackwheelBlueSteel>, <ore:sleeveSteel>, <gregtech:meta_gear:2511>, 6);
Welding.addRecipe("tfc:TFG_gear_red_steel", <ore:rackwheelRedSteel>, <ore:sleeveSteel>, <gregtech:meta_gear:2510>, 6);

// --- ---  Унификация высокоуглеродной стали
Anvil.removeRecipe(<tfc:metal/ingot/high_carbon_steel>);
Anvil.addRecipe("tfc:TFG_high_carbon_steel", <ore:ingotPigIron>, <tfc:metal/ingot/high_carbon_steel>, 3, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");

// --- --- Унификация высокоуглеродной черной стали
Welding.removeRecipe(<tfc:metal/ingot/high_carbon_black_steel>);
Welding.addRecipe("tfc:TFG_high_carbon_black_steel", <tfc:metal/ingot/weak_steel>, <ore:ingotPigIron>, <tfc:metal/ingot/high_carbon_black_steel>, 3);

// --- --- Унификация высокоуглеродной красной стали
Welding.removeRecipe(<tfc:metal/ingot/high_carbon_red_steel>);
Welding.addRecipe("tfc:TFG_high_carbon_red_steel", <tfc:metal/ingot/weak_red_steel>, <ore:ingotBlackSteel>, <tfc:metal/ingot/high_carbon_red_steel>, 4);

// --- --- Унификация высокоуглеродной синей стали
Welding.removeRecipe(<tfc:metal/ingot/high_carbon_blue_steel>);
Welding.addRecipe("tfc:TFG_high_carbon_blue_steel", <tfc:metal/ingot/weak_blue_steel>, <ore:ingotBlackSteel>, <tfc:metal/ingot/high_carbon_blue_steel>, 4);

// --- --- Унификация стали
Anvil.removeRecipe(<tfc:metal/ingot/steel>);
Anvil.addRecipe("tfc:TFG_steel_ingot", <tfc:metal/ingot/high_carbon_steel>, <ore:ingotSteel>.firstItem, 3, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");

// --- --- Унификация черной стали
Anvil.removeRecipe(<tfc:metal/ingot/black_steel>);
Anvil.addRecipe("tfc:TFG_black_steel_ingot", <tfc:metal/ingot/high_carbon_black_steel>, <ore:ingotBlackSteel>.firstItem, 4, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");

// --- --- Унификация красной стали
Anvil.removeRecipe(<tfc:metal/ingot/red_steel>);
Anvil.addRecipe("tfc:TFG_red_steel_ingot", <tfc:metal/ingot/high_carbon_red_steel>, <ore:ingotRedSteel>.firstItem, 5, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");

// --- --- Унификация синей стали
Anvil.removeRecipe(<tfc:metal/ingot/blue_steel>);
Anvil.addRecipe("tfc:TFG_blue_steel_ingot", <tfc:metal/ingot/high_carbon_blue_steel>, <ore:ingotBlueSteel>.firstItem, 5, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");

// --- --- Унификация каолинита(Mica)
// --- Удаление рецептов
Quern.removeRecipe(<tfc:powder/kaolinite> * 4);
Heating.removeRecipe(<tfc:powder/kaolinite>);
Oven.removeRecipe(<tfc:powder/kaolinite>);
Grindstone.remove(<tfc:powder/kaolinite> * 6);
// --- --- Добавление рецептов
Quern.addRecipe("tfc:TFG_quern_mica_to_kaolinite", <ore:dustMica>, <tfc:powder/kaolinite> * 2);
Grindstone.add(<ore:dustMica>, <tfc:powder/kaolinite> * 4, 10, false);

// --- --- Унификация графита
// --- Удаление рецептов
Quern.removeRecipe(<tfc:powder/graphite> * 4);
Grindstone.remove(<tfc:powder/graphite> * 6);
// --- --- Добавление рецептов
Quern.addRecipe("tfc:TFG_quern_graphite_to_graphite", <ore:dustGraphite>, <tfc:powder/graphite> * 2);
Grindstone.add(<ore:dustGraphite>, <tfc:powder/graphite> * 4, 10, false);

// --- --- Унификация серы
// --- Удаление рецептов
Quern.removeRecipe(<tfc:powder/sulfur> * 4);
Grindstone.remove(<tfc:powder/sulfur> * 8);
// --- Добавление рецептов

// --- --- Унификация ляписа
// --- Удаление рецептов
Quern.removeRecipe(<tfc:powder/lapis_lazuli> * 4);
Grindstone.remove(<tfc:powder/lapis_lazuli> * 8);

// --- --- Унификация древесный уголь
// --- Удаление рецептов
Quern.removeRecipe(<tfc:powder/charcoal> * 4);
Grindstone.remove(<tfc:powder/charcoal> * 8);

// --- --- Унификация соли
// --- Удаление рецептов
Quern.removeRecipe(<tfc:powder/salt>);
Grindstone.remove(<tfc:powder/salt>);
// --- Добавление рецептов
Quern.addRecipe("quern_saltrock_to_salt", <tfc:rock/rocksalt>, <metaitem:dustSalt> * 4);
Grindstone.add(<tfc:rock/rocksalt>, <metaitem:dustSalt> * 8, 10, false);

// --- --- Унификация сальпетера
// --- Удаление рецептов
Quern.removeRecipe(<tfc:powder/saltpeter>);
Grindstone.remove(<tfc:powder/saltpeter>);

