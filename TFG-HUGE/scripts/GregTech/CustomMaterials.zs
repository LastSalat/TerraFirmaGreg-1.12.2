#loader gregtech

#priority 990

import mods.gregtech.material.MaterialRegistry;
import mods.gregtech.material.MaterialBuilder;
import mods.gregtech.material.Material;

import mods.gregtech.ore.OrePrefix;
import mods.gregtech.StoneType;

// --- Custom material settings
<material:salt_water>.setMaterialRGB(0xFF1F5099);
<material:red_steel>.addFlags("generate_long_rod");
<material:blue_steel>.addFlags("generate_long_rod");
<material:black_steel>.addFlags("generate_long_rod");
<material:magnesium>.addFlags("generate_plate");
<material:titanium>.addFlags("generate_foil");
<material:zinc>.addFlags("generate_long_rod", "generate_gear");
<material:nickel>.addFlags("generate_long_rod", "generate_gear");
<material:glowstone>.addOre(1, 1, true);
<material:copper>.addFlags("generate_long_rod");
<material:copper>.addTools(7, 1, 85);
<material:bismuth>.addFlags("generate_long_rod", "generate_gear", "generate_plate");
<material:bismuth>.addOre();
<material:certus_quartz>.addFlags("generate_rod", "generate_bolt_screw");
<material:nether_quartz>.addFlags("generate_rod", "generate_bolt_screw");
<material:steel>.addFlags("generate_dense");

// --- Fix toolSpeed and toolDurability
for material in MaterialRegistry.getAllMaterials()
{
    if (material.hasTools())
    {
        material.setToolStats(material.toolSpeed * 2, material.toolAttackDamage, material.toolDurability * 7);
    }
}

// --- Custom Stone Type

// -- TFC

// - Marble
StoneType.create(32, "tfc_marble", "oreMarble", <material:marble>, "tfc:raw/marble");

// - Basalt
StoneType.create(17, "tfc_basalt", "oreBasalt", <material:basalt>, "tfc:raw/basalt");

// - Andesite
StoneType.create(16, "tfc_andesite", "oreAndesite", <material:andesite>, "tfc:raw/andesite");

// - Diorite
StoneType.create(25, "tfc_diorite", "oreDiorite", <material:diorite>, "tfc:raw/diorite");

// - Granite
StoneType.create(29, "tfc_granite", "oreGranite", <material:granite>, "tfc:raw/granite");

// - Quartzite
// val oreQuartzite as OrePrefix = OrePrefix.registerOrePrefix("oreQuartzite", 1);
// oreQuartzite.addSecondaryMaterial(<material:quartzite>, 1);
// StoneType.create(37, "tfc_quartzite", "oreQuartzite", <material:quartzite>, "tfc:raw/quartzite");
StoneType.create(37, "tfc_quartzite", "ore", <material:stone>, "tfc:raw/quartzite");

// - Soapstone
// val oreSoapstone as OrePrefix = OrePrefix.registerOrePrefix("oreSoapstone", 1);
// oreSoapstone.addSecondaryMaterial(<material:soapstone>, 1);
// StoneType.create(45, "tfc_soapstone", "oreSoapstone", <material:soapstone>, "tfc:raw/soapstone");
StoneType.create(45, "tfc_soapstone", "ore", <material:stone>, "tfc:raw/soapstone");

// - Rocksalt
// val oreRocksalt as OrePrefix = OrePrefix.registerOrePrefix("oreRocksalt", 1);
// oreRocksalt.addSecondaryMaterial(<material:rock_salt>, 1);
// StoneType.create(39, "tfc_rocksalt", "oreRocksalt", <material:rock_salt>, "tfc:raw/rocksalt");
StoneType.create(39, "tfc_rocksalt", "ore", <material:stone>, "tfc:raw/rocksalt");

// - Breccia
// MaterialBuilder(32100, "breccia").dust().color(0x706B5F).build();
// val oreBreccia as OrePrefix = OrePrefix.registerOrePrefix("oreBreccia", 1);
// oreBreccia.addSecondaryMaterial(<material:breccia>, 1);
// StoneType.create(18, "tfc_breccia", "oreBreccia", <material:breccia>, "tfc:raw/breccia");
StoneType.create(18, "tfc_breccia", "ore", <material:stone>, "tfc:raw/rocksalt");

// - Catlinite
// MaterialBuilder(32101, "catlinite").dust().color(0xB46C62).build();
// val oreCatlinite as OrePrefix = OrePrefix.registerOrePrefix("oreCatlinite", 1);
// oreCatlinite.addSecondaryMaterial(<material:catlinite>, 1);
// StoneType.create(19, "tfc_catlinite", "oreCatlinite", <material:catlinite>, "tfc:raw/catlinite");
StoneType.create(19, "tfc_catlinite", "ore", <material:stone>, "tfc:raw/catlinite");

// - Chalk
// MaterialBuilder(32102, "chalk").dust().color(0xA4A39F).build();
// val oreChalk as OrePrefix = OrePrefix.registerOrePrefix("oreChalk", 1);
// oreChalk.addSecondaryMaterial(<material:chalk>, 1);
// StoneType.create(20, "tfc_chalk", "oreChalk", <material:chalk>, "tfc:raw/chalk");
StoneType.create(20, "tfc_chalk", "ore", <material:stone>, "tfc:raw/chalk");

// - Chert
// MaterialBuilder(32103, "chert").dust().color(0x7A6756).build();
// val oreChert as OrePrefix = OrePrefix.registerOrePrefix("oreChert", 1);
// oreChert.addSecondaryMaterial(<material:chert>, 1);
// StoneType.create(21, "tfc_chert", "oreChert", <material:chert>, "tfc:raw/chert");
StoneType.create(21, "tfc_chert", "ore", <material:stone>, "tfc:raw/chert");

// - Claystone
// MaterialBuilder(32104, "claystone").dust().color(0xAF9377).build();
// val oreClaystone as OrePrefix = OrePrefix.registerOrePrefix("oreClaystone", 1);
// oreClaystone.addSecondaryMaterial(<material:claystone>, 1);
// StoneType.create(22, "tfc_claystone", "oreClaystone", <material:claystone>, "tfc:raw/claystone");
StoneType.create(22, "tfc_claystone", "ore", <material:stone>, "tfc:raw/claystone");

// - Conglomerate
// MaterialBuilder(32105, "conglomerate").dust().color(0xA3977F).build();
// val oreConglomerate as OrePrefix = OrePrefix.registerOrePrefix("oreConglomerate", 1);
// oreConglomerate.addSecondaryMaterial(<material:conglomerate>, 1);
// StoneType.create(23, "tfc_conglomerate", "oreConglomerate", <material:conglomerate>, "tfc:raw/conglomerate");
StoneType.create(23, "tfc_conglomerate", "ore", <material:stone>, "tfc:raw/conglomerate");

// - Dacite
// MaterialBuilder(32106, "dacite").dust().color(0x979797).build();
// val oreDacite as OrePrefix = OrePrefix.registerOrePrefix("oreDacite", 1);
// oreDacite.addSecondaryMaterial(<material:dacite>, 1);
// StoneType.create(24, "tfc_dacite", "oreDacite", <material:dacite>, "tfc:raw/dacite");
StoneType.create(24, "tfc_dacite", "ore", <material:stone>, "tfc:raw/dacite");

// - Dolomite
// MaterialBuilder(32107, "dolomite").dust().color(0x515155).build();
// val oreDolomite as OrePrefix = OrePrefix.registerOrePrefix("oreDolomite", 1);
// oreDolomite.addSecondaryMaterial(<material:dolomite>, 1);
// StoneType.create(26, "tfc_dolomite", "oreDolomite", <material:dolomite>, "tfc:raw/dolomite");
StoneType.create(26, "tfc_dolomite", "ore", <material:stone>, "tfc:raw/dolomite");

// - Gabbro
// MaterialBuilder(32108, "gabbro").dust().color(0x7F8081).build();
// val oreGabbro as OrePrefix = OrePrefix.registerOrePrefix("oreGabbro", 1);
// oreGabbro.addSecondaryMaterial(<material:gabbro>, 1);
// StoneType.create(27, "tfc_gabbro", "oreGabbro", <material:gabbro>, "tfc:raw/gabbro");
StoneType.create(27, "tfc_gabbro", "ore", <material:stone>, "tfc:raw/gabbro");

// - Gneiss
// MaterialBuilder(32109, "gneiss").dust().color(0x6A6D60).build();
// val oreGneiss as OrePrefix = OrePrefix.registerOrePrefix("oreGneiss", 1);
// oreGneiss.addSecondaryMaterial(<material:gneiss>, 1);
// StoneType.create(28, "tfc_gneiss", "oreGneiss", <material:gneiss>, "tfc:raw/gneiss");
StoneType.create(28, "tfc_gneiss", "ore", <material:stone>, "tfc:raw/gneiss");


// - Komatiite
// MaterialBuilder(32110, "komatiite").dust().color(0x586455).build();
// val oreKomatiite as OrePrefix = OrePrefix.registerOrePrefix("oreKomatiite", 1);
// oreKomatiite.addSecondaryMaterial(<material:komatiite>, 1);
// StoneType.create(30, "tfc_komatiite", "oreKomatiite", <material:komatiite>, "tfc:raw/komatiite");
StoneType.create(30, "tfc_komatiite", "ore", <material:stone>, "tfc:raw/komatiite");

// - Limestone
// MaterialBuilder(32111, "limestone").dust().color(0xA09885).build();
// val oreLimestone as OrePrefix = OrePrefix.registerOrePrefix("oreLimestone", 1);
// oreLimestone.addSecondaryMaterial(<material:limestone>, 1);
// StoneType.create(31, "tfc_limestone", "oreLimestone", <material:limestone>, "tfc:raw/limestone");
StoneType.create(31, "tfc_limestone", "ore", <material:stone>, "tfc:raw/limestone");

// - Mudstone
// MaterialBuilder(32112, "mudstone").dust().color(0x938E84).build();
// val oreMudstone as OrePrefix = OrePrefix.registerOrePrefix("oreMudstone", 1);
// oreMudstone.addSecondaryMaterial(<material:mudstone>, 1);
// StoneType.create(33, "tfc_mudstone", "oreMudstone", <material:mudstone>, "tfc:raw/mudstone");
StoneType.create(33, "tfc_mudstone", "ore", <material:stone>, "tfc:raw/mudstone");

// - Novaculite
// MaterialBuilder(32113, "novaculite").dust().color(0xADA9A1).build();
// val oreNovaculite as OrePrefix = OrePrefix.registerOrePrefix("oreNovaculite", 1);
// oreNovaculite.addSecondaryMaterial(<material:novaculite>, 1);
// StoneType.create(34, "tfc_novaculite", "oreNovaculite", <material:novaculite>, "tfc:raw/novaculite");
StoneType.create(34, "tfc_novaculite", "ore", <material:stone>, "tfc:raw/novaculite");

// - Peridotite
// MaterialBuilder(32114, "peridotite").dust().color(0x565F56).build();
// val orePeridotite as OrePrefix = OrePrefix.registerOrePrefix("orePeridotite", 1);
// orePeridotite.addSecondaryMaterial(<material:peridotite>, 1);
// StoneType.create(35, "tfc_peridotite", "orePeridotite", <material:peridotite>, "tfc:raw/peridotite");
StoneType.create(35, "tfc_peridotite", "ore", <material:stone>, "tfc:raw/peridotite");

// - Phyllite
// MaterialBuilder(32115, "phyllite").dust().color(0x706B69).build();
// val orePhyllite as OrePrefix = OrePrefix.registerOrePrefix("orePhyllite", 1);
// orePhyllite.addSecondaryMaterial(<material:phyllite>, 1);
// StoneType.create(46, "tfc_phyllite", "orePhyllite", <material:phyllite>, "tfc:raw/phyllite");
StoneType.create(46, "tfc_phyllite", "ore", <material:stone>, "tfc:raw/phyllite");

// - Porphyry
// MaterialBuilder(32116, "porphyry").dust().color(0x422825).build();
// val orePorphyry as OrePrefix = OrePrefix.registerOrePrefix("orePorphyry", 1);
// orePorphyry.addSecondaryMaterial(<material:porphyry>, 1);
// StoneType.create(36, "tfc_porphyry", "orePorphyry", <material:porphyry>, "tfc:raw/porphyry");
StoneType.create(36, "tfc_porphyry", "ore", <material:stone>, "tfc:raw/porphyry");

// - Rhyolite
// MaterialBuilder(32117, "rhyolite").dust().color(0x726D69).build();
// val oreRhyolite as OrePrefix = OrePrefix.registerOrePrefix("oreRhyolite", 1);
// oreRhyolite.addSecondaryMaterial(<material:rhyolite>, 1);
// StoneType.create(38, "tfc_rhyolite", "oreRhyolite", <material:rhyolite>, "tfc:raw/rhyolite");
StoneType.create(38, "tfc_rhyolite", "ore", <material:stone>, "tfc:raw/rhyolite");

// - Sandstone
// MaterialBuilder(32118, "sandstone").dust().color(0xBAAE90).build();
// val oreSandstone as OrePrefix = OrePrefix.registerOrePrefix("oreSandstone", 1);
// oreSandstone.addSecondaryMaterial(<material:sandstone>, 1);
// StoneType.create(40, "tfc_sandstone", "oreSandstone", <material:sandstone>, "tfc:raw/sandstone");
StoneType.create(40, "tfc_sandstone", "ore", <material:stone>, "tfc:raw/sandstone");

// - Schist
// MaterialBuilder(32119, "schist").dust().color(0x6E735C).build();
// val oreSchist as OrePrefix = OrePrefix.registerOrePrefix("oreSchist", 1);
// oreSchist.addSecondaryMaterial(<material:schist>, 1);
// StoneType.create(41, "tfc_schist", "oreSchist", <material:schist>, "tfc:raw/schist");
StoneType.create(41, "tfc_schist", "ore", <material:stone>, "tfc:raw/schist");

// - Shale
// MaterialBuilder(32120, "shale").dust().color(0x686567).build();
// val oreShale as OrePrefix = OrePrefix.registerOrePrefix("oreShale", 1);
// oreShale.addSecondaryMaterial(<material:shale>, 1);
// StoneType.create(42, "tfc_shale", "oreShale", <material:shale>, "tfc:raw/shale");
StoneType.create(42, "tfc_shale", "ore", <material:stone>, "tfc:raw/shale");

// - Siltstone
// MaterialBuilder(32121, "siltstone").dust().color(0xA98D79).build();
// val oreSiltstone as OrePrefix = OrePrefix.registerOrePrefix("oreSiltstone", 1);
// oreSiltstone.addSecondaryMaterial(<material:siltstone>, 1);
// StoneType.create(43, "tfc_siltstone", "oreSiltstone", <material:siltstone>, "tfc:raw/siltstone");
StoneType.create(43, "tfc_siltstone", "ore", <material:stone>, "tfc:raw/siltstone");

// - Slate
// MaterialBuilder(32122, "slate").dust().color(0x989287).build();
// val oreSlate as OrePrefix = OrePrefix.registerOrePrefix("oreSlate", 1);
// oreSlate.addSecondaryMaterial(<material:slate>, 1);
// StoneType.create(44, "tfc_slate", "oreSlate", <material:slate>, "tfc:raw/slate");
StoneType.create(44, "tfc_slate", "ore", <material:stone>, "tfc:raw/slate");

// -- Galacticraft/GalaxySpace

// - Mercury
MaterialBuilder(32123, "mercurystone").dust().color(0xC7FFFB).build();
// val oreMercurystone as OrePrefix = OrePrefix.registerOrePrefix("oreMercurystone", 1);
// oreMercurystone.addSecondaryMaterial(<material:mercurystone>, 1);
// val blockState = "galaxyspace:mercuryblocks:type=mercury_stone";
// StoneType.create(47, "gc_mercurystone", "oreMercurystone", <material:mercurystone>, blockState);

// - Venus
MaterialBuilder(32124, "venusstone").dust().color(0xA86540).build();

// - Moon
MaterialBuilder(32125, "moonstone").dust().color(0xFFFFFF).build();

// - Mars
MaterialBuilder(32126, "marsstone").dust().color(0xFF7A5C).build();

// - Asteroids
MaterialBuilder(32127, "asteroidsstoneblack").dust().color(0x1C1C1C).build();
MaterialBuilder(32128, "asteroidsstonegray").dust().color(0x505050).build();
MaterialBuilder(32139, "asteroidsstonelightgray").dust().color(0xBBBBBB).build();