import crafttweaker.item.IItemStack;
import mods.gregtech.IControllerTile;
import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.recipe.RecipeMaps;
import mods.gregtech.recipe.FactoryRecipeMap;
import mods.gregtech.recipe.functions.IRunOverclockingLogicFunction;
import mods.gregtech.recipe.IRecipe;
import mods.gregtech.recipe.IRecipeLogic;
import mods.gregtech.multiblock.Builder;
import mods.gregtech.multiblock.FactoryBlockPattern;
import mods.gregtech.multiblock.RelativeDirection;
import mods.gregtech.multiblock.functions.IPatternBuilderFunction;
import mods.gregtech.multiblock.functions.IGetBaseTextureFunction;
import mods.gregtech.multiblock.CTPredicate;
import mods.gregtech.multiblock.IBlockPattern;
import mods.gregtech.multiblock.IIMultiblockPart;
import mods.gregtech.render.ICubeRenderer;
import mods.gregtech.render.MoveType;

########################################
# Multiblock Builder
########################################
# Greenhouse
########################################
global greenhouse as RecipeMap = FactoryRecipeMap.start("greenhouse")
    .minInputs(2)
    .maxInputs(3)
    .minOutputs(1)
    .maxOutputs(4)
    .minFluidInputs(1)
    .maxFluidInputs(1)
    .minFluidOutputs(0)
    .maxFluidOutputs(0)
    .build();

var electro_greenhouse = Builder.start("greenhouse", 32000)
    .withPattern(function(controller as IControllerTile) as IBlockPattern {
        return FactoryBlockPattern.start()
						.aisle(  "  CFCBCFC  ",  "  CWCCCWC  ",  "  CWCCCWC  ",  "  CCCCCCC  ",  "  GGGGGGG  ",  "           ", "           ")
						.aisle(  " HCCCBCCCH ",  " TDDDDDDDT ",  " T       T ",  " H       H ",  " GG     GG ",  "  GGGGGGG  ", "           ")
						.aisle(  "CCCCCBCCCCC",  "CDDDDDDDDDC",  "C         C",  "C         C",  "G         G",  " GG     GG ", "  GGGGGGG  ")
						.aisle(  "CCCCCBCCCCC",  "CDDDDDDDDDC",  "C         C",  "C         C",  "G         G",  " G       G ", "  GGGGGGG  ")
						.aisle(  "CCCCBBBCCCC",  "CDDDDDDDDDC",  "C         C",  "C         C",  "G         G",  " G       G ", "  GGGGGGG  ")
						.aisle(  "CCCCCBCCCCC",  "CDDDDDDDDDC",  "C         C",  "C         C",  "G         G",  " G       G ",	"  GGGGGGG  ")
						.aisle(  "CCCCCCCCCCC",  "CDDDDDDDDDC",  "C         C",  "C         C",  "G         G",  " GG     GG ",	"  GGGGGGG  ")	
						.aisle(  " HCCCCCCCH ",  " TDDDDDDDT ",  " T       T ",  " H       H ",  " GG     GG ",  "  GGGGGGG  ",	"           ")
						.aisle(  "  CCCCCCC  ",  "  CCCSCCC  ",  "  CCCCCCC  ",  "  CCCCCCC  ",  "  GGGGGGG  ",  "           ",	"           ")																															
            .where("S", controller.self())
            .where("G", CTPredicate.states(<metastate:gregtech:transparent_casing>))
            .where("D", CTPredicate.states(<metastate:tfc:peat>))
            .where('C', CTPredicate.states(<metastate:gregtech:machine_casing:1>)
                | CTPredicate.abilities(<mte_ability:IMPORT_ITEMS>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:IMPORT_FLUIDS>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:INPUT_ENERGY>).setMinGlobalLimited(1).setMaxGlobalLimited(3).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:EXPORT_ITEMS>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:MAINTENANCE_HATCH>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
            )
						.where("H", CTPredicate.states(<metastate:gregtech:multiblock_casing:2>))
						.where("T", CTPredicate.states(<metastate:gregtech:turbine_casing:1>))
						.where("W", CTPredicate.states(<metastate:gregtech:wire_coil>))
						.where("F", CTPredicate.states(<metastate:gregtech:boiler_firebox_casing:1>))
						.where("B", CTPredicate.states(<metastate:gregtech:boiler_casing:1>))
            .where(" ", CTPredicate.getAir())
            .build();
    } as IPatternBuilderFunction)
    .withRecipeMap(<recipemap:greenhouse>)
    .withBaseTexture(<metastate:gregtech:machine_casing:1>)
    .buildAndRegister();
electro_greenhouse.hasMaintenanceMechanics = true;
electro_greenhouse.hasMufflerMechanics = false;

recipes.addShaped("greenhouse", <metaitem:multiblocktweaker:greenhouse>, [
    [<gregtech:transparent_casing>, <gregtech:transparent_casing>, <gregtech:transparent_casing>],
    [<ore:circuitGood>, <metaitem:hull.mv>, <ore:circuitGood>],
    [<metaitem:electric.piston.mv>, <metaitem:electric.pump.mv>, <metaitem:electric.piston.mv>]]);


// Greenhouse logs
for i, sapling in TFC_Saplings {
    greenhouse.recipeBuilder()
        .circuit(1)
        .notConsumable([sapling])
        .fluidInputs([<liquid:fresh_water> * 1000])
        .outputs([TFC_Logs[i] * 32])
        .outputs([sapling.withAmount(6)])
        .duration(1200)
        .EUt(40)
        .buildAndRegister();
    greenhouse.recipeBuilder()
        .circuit(2)
        .notConsumable([sapling])
        .inputs([<metaitem:fertilizer> * 4])
        .fluidInputs([<liquid:water> * 1000])
        .outputs([TFC_Logs[i] * 32])
        .outputs([TFC_Logs[i] * 32])
        .outputs([sapling.withAmount(12)])
        .duration(900)
        .EUt(60)
        .buildAndRegister();
}

// Greenhouse Rubber
greenhouse.recipeBuilder()
    .circuit(1)
    .notConsumable(<tfc:wood/sapling/rubber_fig>)
    .fluidInputs([<liquid:fresh_water> * 1000])
    .outputs([<tfc:wood/log/rubber_fig> * 8])
    .outputs([<tfc:wood/sapling/rubber_fig>])
    .outputs([<metaitem:rubber_drop>])
    .duration(1200)
    .EUt(40)
    .buildAndRegister();
greenhouse.recipeBuilder()
    .circuit(2)
    .notConsumable(<tfc:wood/sapling/rubber_fig>)
    .inputs(<metaitem:fertilizer> * 4)
    .fluidInputs([<liquid:fresh_water> * 1000])
    .outputs([<tfc:wood/log/rubber_fig> * 16])
    .outputs([<tfc:wood/sapling/rubber_fig> * 3])
    .outputs([<metaitem:rubber_drop> * 4])
    .duration(900)
    .EUt(60)
    .buildAndRegister();

greenhouse.recipeBuilder()
    .circuit(1)
    .notConsumable(<tfc:wood/sapling/hevea>)
    .fluidInputs([<liquid:fresh_water> * 1000])
    .outputs([<tfc:wood/log/hevea> * 8])
    .outputs([<tfc:wood/sapling/hevea>])
    .outputs([<metaitem:rubber_drop>])
    .duration(1200)
    .EUt(40)
    .buildAndRegister();
greenhouse.recipeBuilder()
    .circuit(2)
    .notConsumable(<tfc:wood/sapling/hevea>)
    .inputs(<metaitem:fertilizer> * 4)
    .fluidInputs([<liquid:fresh_water> * 1000])
    .outputs([<tfc:wood/log/hevea> * 16])
    .outputs([<tfc:wood/sapling/hevea> * 3])
    .outputs([<metaitem:rubber_drop> * 4])
    .duration(900)
    .EUt(60)
    .buildAndRegister();


// Greenhouse Plants
for i, seed in All_Seeds {
    greenhouse.recipeBuilder()
        .circuit(1)
        .notConsumable([seed])
        .fluidInputs([<liquid:fresh_water> * 1000])
        .outputs([All_Plants[i]])
        .duration(1200)
        .EUt(40)
        .buildAndRegister();
    greenhouse.recipeBuilder()
        .circuit(2)
        .notConsumable([seed])
        .inputs([<metaitem:fertilizer> * 4])
        .fluidInputs([<liquid:fresh_water> * 1000])
        .outputs([All_Plants[i].withAmount(All_Plants[i].amount * 2)])
        .duration(900)
        .EUt(60)
        .buildAndRegister();
}


########################################
# Multiblock Builder
########################################
global saw_mill as RecipeMap = FactoryRecipeMap.start("saw_mill")
    .minInputs(2)
    .maxInputs(2)
    .minOutputs(1)
    .maxOutputs(4)
    .minFluidInputs(1)
    .maxFluidInputs(1)
    .minFluidOutputs(0)
    .maxFluidOutputs(0)
    .build();

var electric_saw_mill = Builder.start("saw_mill", 32001)
    .withPattern(function(controller as IControllerTile) as IBlockPattern {
        return FactoryBlockPattern.start()
            .aisle("CFC", "C C", "C C")
            .aisle("CFC", "G G", "CCC")
            .aisle("CFC", "G G", "C C")
            .aisle("CFC", "G G", "CCC")
            .aisle("CFC", "S C", "C C")
            .where('S', controller.self())
            .where('C', CTPredicate.states(<metastate:gregtech:metal_casing:4>)
                | CTPredicate.abilities(<mte_ability:IMPORT_ITEMS>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:IMPORT_FLUIDS>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:INPUT_ENERGY>).setMinGlobalLimited(1).setMaxGlobalLimited(3).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:EXPORT_ITEMS>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
            )
            .where('G', CTPredicate.states(<metastate:gregtech:transparent_casing>))
            .where('F', CTPredicate.states(<metastate:gregtech:meta_block_frame_20:4>))
            .where('#', CTPredicate.getAir())
            .build();
    } as IPatternBuilderFunction)
    .withRecipeMap(<recipemap:saw_mill>)
    .withBaseTexture(<metastate:gregtech:metal_casing:4>)
    .buildAndRegister();
electric_saw_mill.hasMaintenanceMechanics = false;
electric_saw_mill.hasMufflerMechanics = false;

recipes.addShaped(<metaitem:multiblocktweaker:saw_mill>, [
    [<ore:screwSteel>, <ore:toolHeadBuzzSawSteel>, <ore:gtce.tool.screwdrivers>],
    [<metaitem:electric.motor.mv>, <gregtech:metal_casing:4>, <metaitem:electric.motor.mv>],
    [<ore:circuitGood>, <metaitem:conveyor.module.mv>, <ore:circuitGood>]
]);

// Electric_saw_mill logs

// for i, log in TFC_Logs {
//     saw_mill.recipeBuilder()
//         .circuit(1)
//         .inputs([log * 6])
//         .fluidInputs([<liquid:water> * 1000])
//         .outputs([TFC_Planks[i] * 48])
//         .outputs([<metaitem:dustWood> * 12])
//         .duration(300)
//         .EUt(7)
//         .buildAndRegister();
//     saw_mill.recipeBuilder()
//         .circuit(2)
//         .inputs([log * 6])
//         .fluidInputs([<liquid:water> * 1000])
//         .outputs([<metaitem:dustWood> * 30])
//         .outputs([<metaitem:dustSmallWood> * 18])
//         .duration(400)
//         .EUt(7)
//         .buildAndRegister();
// }

// Electric_saw_mill Rubber
saw_mill.recipeBuilder()
    .circuit(1)
    .inputs([<tfc:wood/log/hevea> * 6])
    .fluidInputs([<liquid:water> * 1000])
    .outputs([<gregtech:planks> * 48])
    .outputs([<metaitem:dustWood> * 12])
    .duration(300)
    .EUt(7)
    .buildAndRegister();
saw_mill.recipeBuilder()
    .circuit(2)
    .inputs([<tfc:wood/log/hevea> * 6])
    .fluidInputs([<liquid:water> * 1000])
    .outputs([<metaitem:dustWood> * 30])
    .outputs([<metaitem:dustSmallWood> * 18])
    .duration(400)
    .EUt(7)
    .buildAndRegister();

saw_mill.recipeBuilder()
    .circuit(1)
    .inputs([<tfc:wood/log/rubber_fig> * 6])
    .fluidInputs([<liquid:water> * 1000])
    .outputs([<gregtech:planks> * 48])
    .outputs([<metaitem:dustWood> * 12])
    .duration(300)
    .EUt(7)
    .buildAndRegister();
saw_mill.recipeBuilder()
    .circuit(2)
    .inputs([<tfc:wood/log/rubber_fig> * 6])
    .fluidInputs([<liquid:water> * 1000])
    .outputs([<metaitem:dustWood> * 30])
    .outputs([<metaitem:dustSmallWood> * 18])
    .duration(400)
    .EUt(7)
    .buildAndRegister();
