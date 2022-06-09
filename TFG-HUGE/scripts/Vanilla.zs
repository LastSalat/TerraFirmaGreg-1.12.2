import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.terrafirmacraft.ItemRegistry;

// --- Removing Recipes

// Удаление рецептов
val ItemsToRemove as IItemStack[] = [
    // Leather Armor
    <minecraft:leather_helmet>,
    <minecraft:leather_chestplate>,
    <minecraft:leather_leggings>,
    <minecraft:leather_boots>,
    <minecraft:bucket>,
    <minecraft:enchanting_table>,
    <minecraft:name_tag>
] as IItemStack[];
for item in ItemsToRemove{
    recipes.remove(item);
}

// Удаление рецептов печи
val ItemsToRemoveFromFurnace as IItemStack[] = [
    <minecraft:dye:2>,
    <minecraft:stone>,


] as IItemStack[];
for item in ItemsToRemoveFromFurnace {
    furnace.remove(item);
}

// Remove Ore Recipes
furnace.remove(<minecraft:coal>, <minecraft:coal_ore>);
furnace.remove(<minecraft:iron_ingot>, <minecraft:iron_ore>);
furnace.remove(<minecraft:gold_ingot>, <minecraft:gold_ore>);
furnace.remove(<minecraft:redstone>, <minecraft:redstone_ore>);
furnace.remove(<minecraft:diamond>, <minecraft:diamond_ore>);
furnace.remove(<minecraft:emerald>, <minecraft:emerald_ore>);

// Remove Workbench
assembler.findRecipe(6, [<ore:logWood>.firstItem, <minecraft:flint>], null).remove();

// Remove Furnace
assembler.findRecipe(7, [<ore:stoneCobble>.firstItem * 8, <minecraft:flint>, <gregtech:meta_item_1:461>.withTag({Configuration: 8})], null).remove();

// Remove Wooden Pressure Plate
assembler.findRecipe(7, [<ore:plankWood>.firstItem * 2, <ore:springIron>.firstItem], null).remove();

// Remove Stone Pressure Plate
assembler.findRecipe(7, [<minecraft:stone_slab> * 2, <ore:springIron>.firstItem], null).remove();

// Remove Wooden Trapdoor
assembler.findRecipe(4, [<ore:plankWood>.firstItem * 3, <gregtech:meta_item_1:461>.withTag({Configuration: 3})], null).remove();

// Remove Wooden Trapdoor
assembler.findRecipe(16, [<ore:plateIron>.firstItem * 4, <minecraft:trapdoor>], null).remove();

// Фикс снопа сена
packer.findRecipe(2, [<minecraft:wheat> * 9, <metaitem:circuit.integrated>.withTag({Configuration: 9})], null).remove();

// Фикс сундуков
assembler.findRecipe(4, [<metaitem:plateWood> * 8, <metaitem:circuit.integrated>.withTag({Configuration: 8})], null).remove();

// Remove Coarse Dirt 
mixer.findRecipe(4, [<minecraft:gravel:0>, <minecraft:dirt:0>], null).remove();

// Удаление рецептов замшелых камней
// Mossy Stone Bricks * 1
assembler.findRecipe(1, [<minecraft:stonebrick:0>, <minecraft:vine:0>], null).remove();
// Moss Stone * 1
assembler.findRecipe(1, [<chisel:cobblestone:0>, <minecraft:vine:0>], null).remove();

// Удаление рецептов стен
// Cobblestone Wall * 1
assembler.findRecipe(7, [<minecraft:cobblestone:0>, <metaitem:circuit.integrated>.withTag({Configuration: 6})], null).remove();
// Mossy Cobblestone Wall * 1
assembler.findRecipe(7, [<minecraft:mossy_cobblestone:0>, <metaitem:circuit.integrated>.withTag({Configuration: 6})], null).remove();

// Удаление рецептов обычного песка
// Chiseled Sandstone * 1
laser_engraver.findRecipe(16, [<minecraft:sandstone:2>, <metaitem:lensGlass>], null).remove();
// Sandstone * 1
assembler.findRecipe(4, [<minecraft:sandstone:2>, <metaitem:circuit.integrated>.withTag({Configuration: 1})], null).remove();
// Sandstone * 1
compressor.findRecipe(2, [<minecraft:sand:0> * 4], null).remove();
// Sand * 1
forge_hammer.findRecipe(16, [<minecraft:gravel:0>], null).remove();
// Sand * 1
forge_hammer.findRecipe(2, [<minecraft:sandstone:0>], null).remove();
// Smooth Sandstone * 1
assembler.findRecipe(4, [<minecraft:sandstone:0>, <metaitem:circuit.integrated>.withTag({Configuration: 1})], null).remove();
// Sandstone Stairs * 4
assembler.findRecipe(1, [<minecraft:sandstone:0> * 6, <metaitem:circuit.integrated>.withTag({Configuration: 7})], null).remove();

// Удаление рецептов красного песка
// Red Sandstone * 1
compressor.findRecipe(2, [<minecraft:sand:1> * 4], null).remove();
// Smooth Red Sandstone * 1
assembler.findRecipe(4, [<minecraft:red_sandstone:0>, <metaitem:circuit.integrated>.withTag({Configuration: 1})], null).remove();
// Red Sand * 1
forge_hammer.findRecipe(2, [<minecraft:red_sandstone:0>], null).remove();
// Chiseled Red Sandstone * 1
laser_engraver.findRecipe(16, [<minecraft:red_sandstone:2>, <metaitem:lensGlass>], null).remove();
// Red Sandstone * 1
assembler.findRecipe(4, [<minecraft:red_sandstone:2>, <metaitem:circuit.integrated>.withTag({Configuration: 1})], null).remove();

// Удаление рецептов деревянных ступеней
// Oak Wood Stairs * 4
assembler.findRecipe(1, [<minecraft:planks:0> * 6, <metaitem:circuit.integrated>.withTag({Configuration: 7})], null).remove();
// Spruce Wood Stairs * 4
assembler.findRecipe(1, [<minecraft:planks:1> * 6, <metaitem:circuit.integrated>.withTag({Configuration: 7})], null).remove();
// Birch Wood Stairs * 4
assembler.findRecipe(1, [<minecraft:planks:2> * 6, <metaitem:circuit.integrated>.withTag({Configuration: 7})], null).remove();
// Jungle Wood Stairs * 4
assembler.findRecipe(1, [<minecraft:planks:3> * 6, <metaitem:circuit.integrated>.withTag({Configuration: 7})], null).remove();
// Acacia Wood Stairs * 4
assembler.findRecipe(1, [<minecraft:planks:4> * 6, <metaitem:circuit.integrated>.withTag({Configuration: 7})], null).remove();
// Dark Oak Wood Stairs * 4
assembler.findRecipe(1, [<minecraft:planks:5> * 6, <metaitem:circuit.integrated>.withTag({Configuration: 7})], null).remove();

// Удаление рецептов полублоков
// Stone Slab * 2
cutter.findRecipe(7, [<minecraft:stone:0>], [<liquid:lubricant>]).remove();
// Stone Slab * 2
cutter.findRecipe(7, [<minecraft:stone:0>], [<liquid:distilled_water> * 3]).remove();
// Stone Slab * 2
cutter.findRecipe(7, [<minecraft:stone:0>], [<liquid:water> * 4]).remove();
// Sandstone Slab * 2
cutter.findRecipe(7, [<minecraft:sandstone:0>], [<liquid:lubricant>]).remove();
// Sandstone Slab * 2
cutter.findRecipe(7, [<minecraft:sandstone:0>], [<liquid:distilled_water> * 3]).remove();
// Sandstone Slab * 2
cutter.findRecipe(7, [<minecraft:sandstone:0>], [<liquid:water> * 4]).remove();
// Cobblestone Slab * 2
cutter.findRecipe(7, [<minecraft:cobblestone:0>], [<liquid:lubricant>]).remove();
// Cobblestone Slab * 2
cutter.findRecipe(7, [<minecraft:cobblestone:0>], [<liquid:distilled_water> * 3]).remove();
// Cobblestone Slab * 2
cutter.findRecipe(7, [<minecraft:cobblestone:0>], [<liquid:water> * 4]).remove();
// Stone Bricks Slab * 2
cutter.findRecipe(7, [<minecraft:stonebrick:0>], [<liquid:lubricant>]).remove();
// Stone Bricks Slab * 2
cutter.findRecipe(7, [<minecraft:stonebrick:0>], [<liquid:distilled_water> * 3]).remove();
// Stone Bricks Slab * 2
cutter.findRecipe(7, [<minecraft:stonebrick:0>], [<liquid:water> * 4]).remove();
// Red Sandstone Slab * 2
cutter.findRecipe(7, [<minecraft:red_sandstone:0>], [<liquid:lubricant>]).remove();
// Red Sandstone Slab * 2
cutter.findRecipe(7, [<minecraft:red_sandstone:0>], [<liquid:distilled_water> * 3]).remove();
// Red Sandstone Slab * 2
cutter.findRecipe(7, [<minecraft:red_sandstone:0>], [<liquid:water> * 4]).remove();

// Remove Fences
// Oak Fence * 1
assembler.findRecipe(4, [<minecraft:planks:0>, <metaitem:circuit.integrated>.withTag({Configuration: 1})], null).remove();
// Spruce Fence * 1
assembler.findRecipe(4, [<minecraft:planks:1>, <metaitem:circuit.integrated>.withTag({Configuration: 1})], null).remove();
// Birch Fence * 1
assembler.findRecipe(4, [<minecraft:planks:2>, <metaitem:circuit.integrated>.withTag({Configuration: 1})], null).remove();
// Jungle Fence * 1
assembler.findRecipe(4, [<minecraft:planks:3>, <metaitem:circuit.integrated>.withTag({Configuration: 1})], null).remove();
// Acacia Fence * 1
assembler.findRecipe(4, [<minecraft:planks:4>, <metaitem:circuit.integrated>.withTag({Configuration: 1})], null).remove();
// Dark Oak Fence * 1
assembler.findRecipe(4, [<minecraft:planks:5>, <metaitem:circuit.integrated>.withTag({Configuration: 1})], null).remove();

// Remove weird granite recipes
// Polished Granite * 1
autoclave.findRecipe(7, [<minecraft:stone:1>], [<liquid:water> * 200]).remove();
// Polished Granite * 1
autoclave.findRecipe(7, [<minecraft:stone:1>], [<liquid:distilled_water> * 36]).remove();

// Remove weird andesite recipes
// Polished Andesite * 1
autoclave.findRecipe(7, [<minecraft:stone:5>], [<liquid:water> * 200]).remove();
// Polished Andesite * 1
autoclave.findRecipe(7, [<minecraft:stone:5>], [<liquid:distilled_water> * 36]).remove();

// Remove weird diorite recipes
// Polished Diorite * 1
autoclave.findRecipe(7, [<minecraft:stone:3>], [<liquid:distilled_water> * 36]).remove();
// Polished Diorite * 1
autoclave.findRecipe(7, [<minecraft:stone:3>], [<liquid:water> * 200]).remove();

// Remove Gates
// Oak Fence Gate * 1
assembler.findRecipe(4, [<minecraft:planks:0> * 2, <minecraft:stick:0> * 2, <metaitem:circuit.integrated>.withTag({Configuration: 2})], null).remove();
// Spruce Fence Gate * 1
assembler.findRecipe(4, [<minecraft:planks:1> * 2, <minecraft:stick:0> * 2, <metaitem:circuit.integrated>.withTag({Configuration: 2})], null).remove();
// Birch Fence Gate * 1
assembler.findRecipe(4, [<minecraft:planks:2> * 2, <minecraft:stick:0> * 2, <metaitem:circuit.integrated>.withTag({Configuration: 2})], null).remove();
// Jungle Fence Gate * 1
assembler.findRecipe(4, [<minecraft:planks:3> * 2, <minecraft:stick:0> * 2, <metaitem:circuit.integrated>.withTag({Configuration: 2})], null).remove();
// Acacia Fence Gate * 1
assembler.findRecipe(4, [<minecraft:planks:4> * 2, <minecraft:stick:0> * 2, <metaitem:circuit.integrated>.withTag({Configuration: 2})], null).remove();
// Dark Oak Fence Gate * 1
assembler.findRecipe(4, [<minecraft:planks:5> * 2, <minecraft:stick:0> * 2, <metaitem:circuit.integrated>.withTag({Configuration: 2})], null).remove();

// Remove StoneBricks
// Stone Bricks * 1
assembler.findRecipe(4, [<minecraft:stone:0>, <metaitem:circuit.integrated>.withTag({Configuration: 4})], null).remove();
// Cracked Stone Bricks * 1
forge_hammer.findRecipe(2, [<minecraft:stonebrick:0>], null).remove();
// Chiseled Stone Bricks * 1
laser_engraver.findRecipe(16, [<minecraft:stone:0>, <metaitem:lensGlass>], null).remove();

// Remove Stone Buttons
cutter.findRecipe(7, [<minecraft:stone_pressure_plate:0>], [<liquid:lubricant>]).remove();
cutter.findRecipe(7, [<minecraft:stone_pressure_plate:0>], [<liquid:distilled_water> * 3]).remove();
cutter.findRecipe(7, [<minecraft:stone_pressure_plate:0>], [<liquid:water> * 4]).remove();

// Wooden Buttons
cutter.findRecipe(7, [<minecraft:wooden_pressure_plate:0>], [<liquid:lubricant>]).remove();
cutter.findRecipe(7, [<minecraft:wooden_pressure_plate:0>], [<liquid:distilled_water> * 3]).remove();
cutter.findRecipe(7, [<minecraft:wooden_pressure_plate:0>], [<liquid:water> * 4]).remove();

// Remove Doors
// Oak Door * 1
assembler.findRecipe(4, [<minecraft:trapdoor:0>, <minecraft:planks:0> * 4], [<liquid:iron> * 16]).remove();
// Spruce Door * 1
assembler.findRecipe(4, [<minecraft:trapdoor:0>, <minecraft:planks:1> * 4], [<liquid:iron> * 16]).remove();
// Birch Door * 1
assembler.findRecipe(4, [<minecraft:trapdoor:0>, <minecraft:planks:2> * 4], [<liquid:iron> * 16]).remove();
// Jungle Door * 1
assembler.findRecipe(4, [<minecraft:trapdoor:0>, <minecraft:planks:3> * 4], [<liquid:iron> * 16]).remove();
// Acacia Door * 1
assembler.findRecipe(4, [<minecraft:trapdoor:0>, <minecraft:planks:4> * 4], [<liquid:iron> * 16]).remove();
// Dark Oak Door * 1
assembler.findRecipe(4, [<minecraft:trapdoor:0>, <minecraft:planks:5> * 4], [<liquid:iron> * 16]).remove();

// Исправление рецепта диспенсера
// Dispenser * 1
assembler.findRecipe(30, [<minecraft:cobblestone:0> * 2, <metaitem:ringIron>, <metaitem:springIron> * 2, <metaitem:gearSmallIron> * 2, <metaitem:stickRedAlloy>, <minecraft:string:0>], null).remove();
assembler.recipeBuilder()
    .inputs([<ore:cobblestone> * 2, <metaitem:ringIron>, <metaitem:springIron> * 2, <metaitem:gearSmallIron> * 2, <metaitem:stickRedAlloy>, <ore:string>])
    .outputs(<minecraft:dispenser>)
    .duration(100).EUt(30).buildAndRegister();

// Исправление переработки мяса
// Small Pile of Mince Meat * 6
macerator.findRecipe(2, [<minecraft:porkchop:0>], null).remove();
// Small Pile of Mince Meat * 6
macerator.findRecipe(2, [<minecraft:beef:0>], null).remove();
// Small Pile of Mince Meat * 6
macerator.findRecipe(2, [<minecraft:fish:0>], null).remove();
// Small Pile of Mince Meat * 6
macerator.findRecipe(2, [<minecraft:rabbit:0>], null).remove();
// Mince Meat * 1
macerator.findRecipe(2, [<minecraft:chicken:0>], null).remove();
// Mince Meat * 1
macerator.findRecipe(2, [<minecraft:mutton:0>], null).remove();
// Mince Meat
macerator.recipeBuilder()
    .inputs([<ore:categoryMeat>])
    .outputs(<ore:dustMeat>.firstItem, <ore:dustTinyBone>.firstItem)
    .duration(105).EUt(2).buildAndRegister();

// Исправление гравия и кремния
// Stone Dust * 1
macerator.findRecipe(2, [<minecraft:gravel:0>], null).remove();
// Stone Dust * 1, Flint * 1 - 10%
macerator.recipeBuilder()
    .inputs([<ore:gravel>])
    .outputs(<metaitem:dustStone>)
    .chancedOutput(<minecraft:flint>, 100, 100)
    .duration(105).EUt(2).buildAndRegister();
// Flint * 1
sifter.findRecipe(16, [<minecraft:gravel:0>], null).remove();
// Flint * 1 - 100%, 25%, 33%, 60%, 80%, 90%
sifter.recipeBuilder()
    .inputs([<ore:gravel>])
    .outputs(<minecraft:flint>)
    .chancedOutput(<minecraft:flint>, 2500, 0)
    .chancedOutput(<minecraft:flint>, 3300, 0)
    .chancedOutput(<minecraft:flint>, 6300, 0)
    .chancedOutput(<minecraft:flint>, 8300, 0)
    .chancedOutput(<minecraft:flint>, 9300, 0)
    .duration(275).EUt(16).buildAndRegister();

// Исправление рецепта стойки для брони
// Armor Stand * 1
assembler.findRecipe(7, [<minecraft:stone_slab:0>, <minecraft:stick:0> * 6], null).remove();
assembler.recipeBuilder()
    .inputs([<ore:slabStonePolished>, <minecraft:stick> * 6])
    .outputs(<minecraft:armor_stand>)
    .duration(300).EUt(7).buildAndRegister();

// Исправлние рецепта воронки
// Hopper * 1
assembler.findRecipe(2, [<minecraft:chest:0>, <metaitem:plateIron> * 5], null).remove();
assembler.findRecipe(2, [<minecraft:trapped_chest:0>, <metaitem:plateWroughtIron> * 5], null).remove();
// Hopper * 1
assembler.recipeBuilder()
    .inputs([<ore:chest>, <ore:plateIron> * 5 | <ore:plateWroughtIron> * 5])
    .outputs(<minecraft:hopper>)
    .duration(400).EUt(2).buildAndRegister();

// Удаление переработки булыжника
// Cobblestone Stairs * 4
assembler.findRecipe(1, [<minecraft:mossy_cobblestone:0> * 6, <metaitem:circuit.integrated>.withTag({Configuration: 7})], null).remove();
// Gravel * 1
forge_hammer.findRecipe(16, [<chisel:cobblestone:0>], null).remove();

// Удаление переработки кирпичей
// Stone Brick Stairs * 4
assembler.findRecipe(1, [<minecraft:stonebrick:0> * 6, <metaitem:circuit.integrated>.withTag({Configuration: 7})], null).remove();

// Fix Stone Exploit
// Stone * 1
compressor.findRecipe(2, [<metaitem:plateStone> * 9], null).remove();
compressor.recipeBuilder()
    .inputs([<metaitem:plateStone> * 9])
    .outputs(<tfc:raw/basalt>)
    .duration(300).EUt(2).buildAndRegister();

// Fix Dirt Exploit
// Dirt * 1
macerator.findRecipe(2, [<metaitem:bio_chaff>], null).remove();
macerator.recipeBuilder()
    .inputs([<metaitem:bio_chaff>])
    .outputs(<tfc:dirt/basalt>)
    .duration(300).EUt(2).buildAndRegister();

// Fix Gravel Exploit
forge_hammer.findRecipe(16, [<ore:cobblestone>.firstItem], null);

// Fix Boolshelf Exploit
extractor.findRecipe(2, [<minecraft:bookshelf:0>], null).remove();
extractor.recipeBuilder()
    .inputs([<ore:bookshelf>])
    .outputs(<minecraft:book> * 3)
    .duration(300).EUt(2).buildAndRegister();

// Удаление переработки ванильного песка
// Diamond Small Pile * 1
centrifuge.findRecipe(30, [<minecraft:sand:1>], null).remove();
centrifuge.recipeBuilder()
    .inputs([<tfc:sand/quartzite>])
    .chancedOutput(<ore:dustTinyDiamond>.firstItem, 100, 100)
    .chancedOutput(<ore:dustIron>.firstItem, 5000, 500)
    .chancedOutput(<tfc:sand/basalt>, 5000, 5000)
    .duration(275).EUt(30).buildAndRegister();
// Oil * 500
centrifuge.findRecipe(5, [<gregtech:ore_oilsands_0:0>], null).remove();
centrifuge.recipeBuilder()
    .inputs([<ore:oreOilsands>])
    .chancedOutput(<tfc:sand/basalt>, 5000, 5000)
    .fluidOutputs([<liquid:oil> * 500])
    .duration(200).EUt(5).buildAndRegister();
// Oil * 80
centrifuge.findRecipe(80, [<minecraft:soul_sand:0>], null).remove();
// Helium Gas * 120
centrifuge.findRecipe(20, [<metaitem:dustEndstone>], null).remove();
// Myshroom * 1
centrifuge.findRecipe(30, [<minecraft:mycelium:0>], null).remove();
// Quartz Sand - 2
macerator.findRecipe(2, [<minecraft:sand>], null).remove();
macerator.recipeBuilder()
    .inputs([<ore:sand>])
    .outputs(<ore:dustQuartzSand>.firstItem)
    .duration(50).EUt(2).buildAndRegister();

// Исправление переработки коричневого гриба
// Methane Gas * 18
centrifuge.findRecipe(5, [<minecraft:brown_mushroom:0>], null).remove();
// Fermented Spider Eye * 1
mixer.findRecipe(7, [<minecraft:sugar:0>, <minecraft:brown_mushroom:0>, <minecraft:spider_eye:0>], null).remove();
// Methane Gas * 18
centrifuge.recipeBuilder()
    .inputs([<ore:mushroombrown>])
    .fluidOutputs([<liquid:methane> * 18])
    .duration(150).EUt(5).buildAndRegister();
// Fermented Spider Eye * 1
mixer.recipeBuilder()
    .inputs([<ore:dustSugar>, <ore:mushroombrown>, <minecraft:spider_eye>])
    .outputs(<minecraft:fermented_spider_eye>)
    .duration(300).EUt(2).buildAndRegister();

// Исправление переработки красного гриба
// Methane Gas * 18
centrifuge.findRecipe(5, [<minecraft:red_mushroom:0>], null).remove();
// Fermented Spider Eye * 1
mixer.findRecipe(7, [<minecraft:sugar:0>, <minecraft:red_mushroom:0>, <minecraft:spider_eye:0>], null).remove();
// Methane Gas * 18
centrifuge.recipeBuilder()
    .inputs([<ore:mushroomRed>])
    .fluidOutputs([<liquid:methane> * 18])
    .duration(150).EUt(5).buildAndRegister();
// Fermented Spider Eye * 1
mixer.recipeBuilder()
    .inputs([<ore:dustSugar>, <ore:mushroomRed>, <minecraft:spider_eye>])
    .outputs(<minecraft:fermented_spider_eye>)
    .duration(300).EUt(2).buildAndRegister();

// Исправление рецепта сахара
macerator.findRecipe(2, [<minecraft:reeds:0>], null).remove();
macerator.recipeBuilder()
	.inputs(<ore:sugarcane>)
	.outputs(<minecraft:sugar>)
	.duration(300).EUt(2).buildAndRegister();

// Исправление рецептов бумаги
// Вода
chemical_bath.findRecipe(7, [<minecraft:reeds:0>], [<liquid:water> * 100]).remove();
// Дистилированная вода
chemical_bath.findRecipe(7, [<minecraft:reeds:0>], [<liquid:distilled_water> * 100]).remove();
// Вода
chemical_bath.recipeBuilder()
	.inputs(<ore:sugarcane>)
	.fluidInputs(<liquid:water> * 100)
	.outputs(<minecraft:paper>)
	.duration(100).EUt(7).buildAndRegister();
// Дистилированная вода
chemical_bath.recipeBuilder()
	.inputs(<ore:sugarcane>)
	.fluidInputs(<liquid:distilled_water> * 100)
	.outputs(<minecraft:paper>)
	.duration(100).EUt(7).buildAndRegister();

// Исправление Саженцы -> Палки
// Stick * 1
lathe.findRecipe(7, [<minecraft:sapling:0>], null).remove();
// Stick * 1
lathe.recipeBuilder()
    .inputs([<ore:treeSapling>])
    .outputs(<minecraft:stick>, <metaitem:dustTinyWood>)
    .duration(16).EUt(7).buildAndRegister();

// Исправление Полублок -> Миска
// Bowl * 1
lathe.findRecipe(7, [<minecraft:wooden_slab:0>], null).remove();
// Bowl * 1
lathe.recipeBuilder()
    .inputs([<ore:slabWood>])
    .outputs(<minecraft:bowl>, <metaitem:dustTinyWood>)
    .duration(16).EUt(7).buildAndRegister();

// Другое
recipes.removeByRecipeName("minecraft:stone_pressure_plate");
recipes.removeByRecipeName("minecraft:light_weighted_pressure_plate");
recipes.removeByRecipeName("minecraft:bone_meal_from_bone");
recipes.removeByRecipeName("minecraft:iron_door");
recipes.removeByRecipeName("minecraft:tripwire_hook");
recipes.removeByRecipeName("minecraft:stick");
recipes.removeByRecipeName("minecraft:diamond_block");

// --- Adding Recipes

// Крафт некоторых блоков в компрессоре
compressor.recipeBuilder().inputs(<ore:gemLapis> * 9).outputs(<minecraft:lapis_block>).duration(400).EUt(2).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:gemDiamond> * 9).outputs(<minecraft:diamond_block>).duration(400).EUt(2).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:gemEmerald> * 9).outputs(<minecraft:emerald_block>).duration(400).EUt(2).buildAndRegister();

// Лампа
recipes.addShaped(<minecraft:redstone_lamp>,
[[<ore:plateBrass>, <ore:stickWroughtIron>, <ore:plateBrass>],
 [<ore:stickWroughtIron>, <ore:cableGtSingleRedAlloy>, <ore:stickWroughtIron>],
 [<ore:plateBrass>, <ore:stickWroughtIron>, <ore:plateBrass>]]);

// Удочка
recipes.addShaped(<minecraft:fishing_rod>,
[[null, null, <minecraft:stick>],
 [null, <minecraft:stick>, <ore:string>],
 [<minecraft:stick>, null, <ore:string>]]);

// Чар стол
recipes.addShaped(<minecraft:enchanting_table>,
[[null, <minecraft:book>, null],
 [<ore:gemFlawless>, <ore:obsidian>, <ore:gemFlawless>],
 [<ore:obsidian>, <ore:obsidian>, <ore:obsidian>]]);

// Поршень
recipes.addShaped(<minecraft:piston>,
[[<ore:lumber>, <ore:lumber>, <ore:lumber>],
 [<ore:gearWroughtIron>, <ore:stickLongWroughtIron>, <ore:gearWroughtIron>],
 [<ore:cobblestone>, <ore:dustRedstone>, <ore:cobblestone>]]);

// Книга
recipes.addShaped(<minecraft:book>,
[[<ore:string>, <ore:paper>, <ore:leather>],
 [<ore:string>, <ore:paper>, <metaitem:rubber_drop>],
 [<ore:string>, <ore:paper>, <ore:leather>]]);

// Ведро
recipes.addShaped(<minecraft:bucket>,
[[<ore:plateWroughtIron>, <tfc:metal/bucket/blue_steel>.noReturn(), <ore:plateWroughtIron>],
 [<ore:plateWroughtIron>, <tfc:metal/bucket/red_steel>.noReturn(), <ore:plateWroughtIron>],
 [null, <ore:plateWroughtIron>, null]]);

//Водная хрень
recipes.addShapeless(<minecraft:prismarine>, [<ore:gemPrismarine>, <ore:gemPrismarine>, <ore:gemPrismarine>, <ore:gemPrismarine>]);
recipes.addShapeless(<minecraft:prismarine>, [<ore:blockQuartz>, <ore:dyeCyan>]);
recipes.addShapeless(<minecraft:prismarine:1> * 4, [<ore:blockPrismarine>, <ore:blockPrismarine>, <ore:blockPrismarine>, <ore:blockPrismarine>]);
recipes.addShapeless(<minecraft:sea_lantern>, [<ore:glowstone>, <ore:dyeCyan>]);
recipes.addShapeless(<minecraft:prismarine:2>, [<ore:blockPrismarine>, <ore:dyeBlack>]);

//Рычаг
recipes.addShaped(<minecraft:lever>,
[[null, <ore:buttonStone>, null],
 [null, <ore:stickWood>, null]]);

//Бирка
recipes.addShaped(<minecraft:name_tag>,
[[<ore:string>, <ore:string>, null],
 [<ore:string>, <minecraft:paper>, null],
 [<ore:string>, <ore:string>, null]]);

// Повторитель
recipes.addShaped(<minecraft:repeater>,
[[<ore:screwIron>, null, <ore:screwIron>],
 [<minecraft:redstone_torch>, <ore:gtce.tool.screwdrivers>, <minecraft:redstone_torch>],
 [<ore:pressurePlateStone>, <ore:stickRedAlloy>,<ore:pressurePlateStone>]]);

// Компаратор - обычный
recipes.addShaped(<minecraft:comparator>,
[[<ore:screwIron>, <minecraft:redstone_torch>, <ore:screwIron>],
 [<minecraft:redstone_torch>, <ore:plateCertusQuartz>, <minecraft:redstone_torch>],
 [<ore:pressurePlateStone>, <ore:gtce.tool.screwdrivers>, <ore:pressurePlateStone>]]);

// Компаратор - кварц
recipes.addShaped(<minecraft:comparator>,
[[<ore:screwIron>, <minecraft:redstone_torch>, <ore:screwIron>],
 [<minecraft:redstone_torch>, <ore:plateNetherQuartz>, <minecraft:redstone_torch>],
 [<ore:pressurePlateStone>, <ore:gtce.tool.screwdrivers>, <ore:pressurePlateStone>]]);

// Компаратор - кварцит
recipes.addShaped(<minecraft:comparator>,
[[<ore:screwIron>, <minecraft:redstone_torch>, <ore:screwIron>],
 [<minecraft:redstone_torch>, <ore:plateQuartzite>, <minecraft:redstone_torch>],
 [<ore:pressurePlateStone>, <ore:gtce.tool.screwdrivers>, <ore:pressurePlateStone>]]);

// Детектор света - обычный
recipes.addShaped(<minecraft:daylight_detector>,
[[<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>],
 [<ore:plateCertusQuartz>, <ore:plateCertusQuartz>, <ore:plateCertusQuartz>],
 [<ore:slabWood>, <ore:stickRedAlloy>, <ore:slabWood>]]);

// Детектор света - кварц
recipes.addShaped(<minecraft:daylight_detector>,
[[<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>],
 [<ore:plateNetherQuartz>, <ore:plateNetherQuartz>, <ore:plateNetherQuartz>],
 [<ore:slabWood>, <ore:stickRedAlloy>, <ore:slabWood>]]);

// Детектор света - кварцит
recipes.addShaped(<minecraft:daylight_detector>,
[[<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>],
 [<ore:plateQuartzite>, <ore:plateQuartzite>, <ore:plateQuartzite>],
 [<ore:slabWood>, <ore:stickRedAlloy>, <ore:slabWood>]]);

// Обычное золотое яблоко
chemical_reactor.findRecipe(30, [<minecraft:apple>, <minecraft:gold_ingot> * 8], null).remove();
chemical_reactor.recipeBuilder()
    .inputs(<minecraft:gold_ingot> * 8, <tfc:food/green_apple> | <tfc:food/red_apple>)
    .outputs(<minecraft:golden_apple>)
    .duration(20).EUt(30).buildAndRegister();

// Зачарованное золотое яблоко
chemical_reactor.findRecipe(30, [<minecraft:apple>, <minecraft:gold_block> * 8], null).remove();
chemical_reactor.recipeBuilder()
    .inputs(<minecraft:gold_block> * 8, <tfc:food/green_apple> | <tfc:food/red_apple>)
    .outputs(<minecraft:golden_apple:1>)
    .duration(20).EUt(30).buildAndRegister();

// Iron Trapdoor
assembler.recipeBuilder()
    .inputs(<ore:plateIron>.firstItem * 4, <ore:trapdoorWood>)
    .outputs(<minecraft:iron_trapdoor>)
    .duration(100).EUt(16).buildAndRegister();