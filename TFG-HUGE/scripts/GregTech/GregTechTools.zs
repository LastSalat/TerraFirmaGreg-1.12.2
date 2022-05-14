import crafttweaker.item.IItemStack;

// --- Removing Recipes

val RemoveItemRecipesByName = [
	//Отключение рецептов кремниевых инструментов
    "gregtech:sword_flint",
    "gregtech:pickaxe_flint",
    "gregtech:shovel_flint",
    "gregtech:axe_flint",
    "gregtech:hoe_flint",
    "gregtech:knife_flint",
    //Отключение крафтов молотков с палкой
    "gregtech:hammer_naquadah_enriched",
    "gregtech:hammer_naquadah_alloy",
    "gregtech:hammer_bronze",
    "gregtech:hammer_sterling_silver",
    "gregtech:hammer_stainless_steel",
    "gregtech:hammer_fluxed_electrum",
    "gregtech:hammer_thorium",
    "gregtech:hammer_duranium",
    "gregtech:hammer_diamericium_titanium",
    "gregtech:hammer_brass",
    "gregtech:hammer_naquadah",
    "gregtech:hammer_osmium",
    "gregtech:hammer_invar",
    "gregtech:hammer_tungsten",
    "gregtech:hammer_neutronium",
    "gregtech:hammer_vanadium_steel",
    "gregtech:hammer_hsse",
    "gregtech:hammer_magnalium",
    "gregtech:hammer_red_steel",
    "gregtech:hammer_neodymium",
    "gregtech:hammer_manganese",
    "gregtech:hammer_pig_iron",
    "gregtech:hammer_copper",
    "gregtech:hammer_wrought_iron",
    "gregtech:hammer_steel",
    "gregtech:hammer_cobalt",
    "gregtech:hammer_iron",
    "gregtech:hammer_tungsten_steel",
    "gregtech:hammer_damascus_steel",
    "gregtech:hammer_chrome",
    "gregtech:hammer_osmiridium",
    "gregtech:hammer_molybdenum",
    "gregtech:hammer_titanium",
    "gregtech:hammer_rhodium_plated_palladium",
    "gregtech:hammer_palladium",
    "gregtech:hammer_rose_gold",
    "gregtech:hammer_tungsten_carbide",
    "gregtech:hammer_uranium",
    "gregtech:hammer_hssg",
    "gregtech:hammer_blue_steel",
    "gregtech:hammer_bismuth_bronze",
    "gregtech:hammer_cobalt_brass",
    "gregtech:hammer_uranium235",
    "gregtech:hammer_black_steel",
    "gregtech:hammer_hsss",
    "gregtech:hammer_tritanium",
    "gregtech:hammer_iridium",
    "gregtech:hammer_aluminium",
    "gregtech:hammer_ultimet",
    "gregtech:hammer_black_bronze",
    "gregtech:hammer_emerald",
    "gregtech:hammer_garnet_red",
    "gregtech:hammer_amethyst",
    "gregtech:hammer_garnet_yellow",
    "gregtech:hammer_topaz",
    "gregtech:hammer_opal",
    "gregtech:hammer_olivine",
    "gregtech:hammer_diamond",
    "gregtech:hammer_green_sapphire",
    "gregtech:hammer_sapphire",
    "gregtech:hammer_blue_topaz",
    "gregtech:hammer_ruby",
    "gregtech:hammer_uranium_235",
    "gregtech:hammer_flint"
] as string[];
for item in RemoveItemRecipesByName{
    recipes.removeByRecipeName(item);
}

// --- Adding Recipes

// Крафт GT ножей
recipes.addShapeless(<gregtech:meta_tool:15>.withTag({"GT.ToolStats": {Material: "copper"}}), [<tfc:metal/knife_blade/copper>, <ore:stickWood>]);
recipes.addShapeless(<gregtech:meta_tool:15>.withTag({"GT.ToolStats": {Material: "bismuth_bronze"}}), [<tfc:metal/knife_blade/bismuth_bronze>, <ore:stickWood>]);
recipes.addShapeless(<gregtech:meta_tool:15>.withTag({"GT.ToolStats": {Material: "wrought_iron"}}), [<tfc:metal/knife_blade/wrought_iron>, <ore:stickWood>]);
recipes.addShapeless(<gregtech:meta_tool:15>.withTag({"GT.ToolStats": {Material: "bronze"}}), [<tfc:metal/knife_blade/bronze>, <ore:stickWood>]);
recipes.addShapeless(<gregtech:meta_tool:15>.withTag({"GT.ToolStats": {Material: "black_bronze"}}), [<tfc:metal/knife_blade/black_bronze>, <ore:stickWood>]);
recipes.addShapeless(<gregtech:meta_tool:15>.withTag({"GT.ToolStats": {Material: "steel"}}), [<tfc:metal/knife_blade/steel>, <ore:stickWood>]);
recipes.addShapeless(<gregtech:meta_tool:15>.withTag({"GT.ToolStats": {Material: "black_steel"}}), [<tfc:metal/knife_blade/black_steel>, <ore:stickWood>]);
recipes.addShapeless(<gregtech:meta_tool:15>.withTag({"GT.ToolStats": {Material: "blue_steel"}}), [<tfc:metal/knife_blade/blue_steel>, <ore:stickWood>]);
recipes.addShapeless(<gregtech:meta_tool:15>.withTag({"GT.ToolStats": {Material: "red_steel"}}), [<tfc:metal/knife_blade/red_steel>, <ore:stickWood>]);