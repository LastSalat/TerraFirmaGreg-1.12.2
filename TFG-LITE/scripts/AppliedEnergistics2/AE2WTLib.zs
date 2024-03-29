import crafttweaker.item.IItemStack;

// --- Recipes Removing

// Удаление рецептов
val ItemsToRemove as IItemStack[] = [
	<wct:wct>,
  <wft:wft>,
  <wit:wit>,
  <wpt:wpt>,
  <ae2wtlib:infinity_booster_card>,
  <wct:magnet_card>,
  <aenetvistool:net_visualizer>
];
for item in ItemsToRemove{
  recipes.remove(item);
}

// --- Recipes Adding

// Wireless Crafting Terminal
assembler.recipeBuilder()
  .inputs([
    <appliedenergistics2:dense_energy_cell> * 2, 
    <appliedenergistics2:wireless_terminal> * 1,
    <metaitem:sensor.luv> * 2,
    <appliedenergistics2:part:360>,
    <metaitem:emitter.luv>,
    <ore:stickOsmiridium> * 2
  ])
  .outputs(<wct:wct>)
  .duration(30)
  .EUt(250)
  .buildAndRegister();

// Wireless Fluid Terminal
assembler.recipeBuilder()
  .inputs([
    <appliedenergistics2:dense_energy_cell> * 2, 
    <appliedenergistics2:wireless_terminal> * 1,
    <metaitem:sensor.luv> * 2,
    <appliedenergistics2:part:520>,
    <metaitem:emitter.luv>,
    <ore:stickOsmiridium> * 2
  ])
  .outputs(<wft:wft>)
  .duration(30)
  .EUt(250)
  .buildAndRegister();

// Wireless Interface Terminal
assembler.recipeBuilder()
  .inputs([
    <appliedenergistics2:dense_energy_cell> * 2, 
    <appliedenergistics2:wireless_terminal> * 1,
    <metaitem:sensor.luv> * 2,
    <appliedenergistics2:part:480>,
    <metaitem:emitter.luv>,
    <ore:stickOsmiridium> * 2
  ])
  .outputs(<wit:wit>)
  .duration(30)
  .EUt(250)
  .buildAndRegister();

// Wireless Pattern Terminal
assembler.recipeBuilder()
  .inputs([
    <appliedenergistics2:dense_energy_cell> * 2, 
    <appliedenergistics2:wireless_terminal> * 1,
    <metaitem:sensor.luv> * 2,
    <appliedenergistics2:part:340>,
    <metaitem:emitter.luv>,
    <ore:stickOsmiridium> * 2
  ])
  .outputs(<wpt:wpt>)
  .duration(30)
  .EUt(250)
  .buildAndRegister();

// Wireless Booster Card
assembler.recipeBuilder()
  .inputs([
    <metaitem:sensor.iv> * 4, 
    <appliedenergistics2:material:42> * 4,
    <metaitem:sensor.luv> * 2,
    <metaitem:cover.digital.wireless>,
  ])
  .outputs(<ae2wtlib:infinity_booster_card>)
  .duration(30)
  .EUt(250)
  .buildAndRegister();

// Magnet Card
assembler.recipeBuilder()
  .inputs([
    <ore:ingotNeodymiumMagnetic>, 
    <ore:stickNeodymiumMagnetic> * 4,
    <appliedenergistics2:part:300>,
    <ore:plateRedstone>,
    <ore:plateLapis>,
    <appliedenergistics2:material:28>
  ])
  .outputs(<wct:magnet_card>)
  .duration(30)
  .EUt(250)
  .buildAndRegister();

// Network Visualization Tool
recipes.addShaped(<aenetvistool:net_visualizer>, [
    [<ore:plateAluminium>, <appliedenergistics2:material:43>, <ore:plateAluminium>],
    [<appliedenergistics2:network_tool>, <metaitem:wireless>, <appliedenergistics2:entropy_manipulator>],
    [<ore:plateAluminium>, <appliedenergistics2:material:44>, <ore:plateAluminium>]
]);
