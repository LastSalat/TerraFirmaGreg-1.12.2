#priority 989

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

import mods.terrafirmacraft.ItemRegistry;

// --- Регистрация веса и размера

// Руда
for item in GregtechOres {
        ItemRegistry.registerItemSize(item, "HUGE", "MEDIUM");
}

// Слитки
ItemRegistry.registerItemSize(<gregtech:meta_ingot:*>, "LARGE", "LIGHT");

// Пластины
ItemRegistry.registerItemSize(<gregtech:meta_plate:*>, "LARGE", "LIGHT");

// --- Регистрация брони
ItemRegistry.registerArmor(<minecraft:leather_helmet>, 3.0, 6.0, 4.5);
ItemRegistry.registerArmor(<minecraft:leather_chestplate>, 3.0, 6.0, 4.5);
ItemRegistry.registerArmor(<minecraft:leather_leggings>, 3.0, 6.0, 4.5);
ItemRegistry.registerArmor(<minecraft:leather_boots>, 3.0, 6.0, 4.5);

// --- Регистрация топлива
ItemRegistry.registerFuel(<metaitem:gemCoke>, 3200, 1450, true, true);
ItemRegistry.registerFuel(<minecraft:coal>, 1600, 1400, true, true);
ItemRegistry.registerFuel(<tfc:peat>, 3200, 500, true, false);

// --- Регистрация инструментов
<ore:damageTypeSlashing>.addAll(<ore:craftingToolSword>);

// --- Регистрация металлов для палок GT
ItemRegistry.registerItemMetal(<metaitem:stickGold>, "GOLD", 50, true);
ItemRegistry.registerItemMetal(<metaitem:stickWroughtIron>, "WROUGHT_IRON", 50, true);
ItemRegistry.registerItemMetal(<metaitem:stickSteel>, "STEEL", 50, true);

// --- Регистрация металлов для двойных пластин GregTech
ItemRegistry.registerItemMetal(<metaitem:plateDoubleBismuth>, "BISMUTH", 100, true);
ItemRegistry.registerItemMetal(<metaitem:plateDoubleBrass>, "BRASS", 100, true);
ItemRegistry.registerItemMetal(<metaitem:plateDoubleBronze>, "BRONZE", 100, true);
ItemRegistry.registerItemMetal(<metaitem:plateDoubleCopper>, "COPPER", 100, true);
ItemRegistry.registerItemMetal(<metaitem:plateDoubleGold>, "GOLD", 100, true);
ItemRegistry.registerItemMetal(<metaitem:plateDoubleLead>, "LEAD", 100, true);
ItemRegistry.registerItemMetal(<metaitem:plateDoubleNickel>, "NICKEL", 100, true);
ItemRegistry.registerItemMetal(<metaitem:plateDoubleRoseGold>, "ROSE_GOLD", 100, true);
ItemRegistry.registerItemMetal(<metaitem:plateDoubleSilver>, "SILVER", 100, true);
ItemRegistry.registerItemMetal(<metaitem:plateDoubleTin>, "TIN", 100, true);
ItemRegistry.registerItemMetal(<metaitem:plateDoubleBismuthBronze>, "BISMUTH_BRONZE", 100, true);
ItemRegistry.registerItemMetal(<metaitem:plateDoubleBlackBronze>, "BLACK_BRONZE", 100, true);
ItemRegistry.registerItemMetal(<metaitem:plateDoubleSteel>, "STEEL", 100, true);
ItemRegistry.registerItemMetal(<metaitem:plateDoubleWroughtIron>, "WROUGHT_IRON", 100, true);
ItemRegistry.registerItemMetal(<metaitem:plateDoubleSterlingSilver>, "STERLING_SILVER", 100, true);
ItemRegistry.registerItemMetal(<metaitem:plateDoubleZinc>, "ZINC", 100, true);
ItemRegistry.registerItemMetal(<metaitem:plateDoubleRedSteel>, "RED_STEEL", 100, true);
ItemRegistry.registerItemMetal(<metaitem:plateDoubleBlueSteel>, "BLUE_STEEL", 100, true);
ItemRegistry.registerItemMetal(<metaitem:plateDoubleBlackSteel>, "BLACK_STEEL", 100, true);

// ---//--- Вариации Меди

// --- Чистая Медь

// Грязная Кучка
// ItemRegistry.registerItemMetal(<metaitem:dustImpureCopper>, "COPPER", 80, true);
// Средняя Кучка
ItemRegistry.registerItemMetal(<metaitem:dustSmallCopper>, "COPPER", 25, true);
//  Маленькая Кучка
ItemRegistry.registerItemMetal(<metaitem:dustTinyCopper>, "COPPER", 10, true);

// --- Борнит

// Чистая Кучка
// ItemRegistry.registerItemMetal(<metaitem:dustBornite>, "COPPER", 50, true);
// Грязная Кучка
// ItemRegistry.registerItemMetal(<metaitem:dustImpureBornite>, "COPPER", 40, true);
// Средняя Кучка
ItemRegistry.registerItemMetal(<metaitem:dustSmallBornite>, "COPPER", 12, true);
// Маленькая Кучка
ItemRegistry.registerItemMetal(<metaitem:dustTinyBornite>, "COPPER", 5, true);

// --- Тетраэдрит

// Чистая Кучка
// ItemRegistry.registerItemMetal(<metaitem:dustTetrahedrite>, "COPPER", 40, true);
// Грязная Кучка
// ItemRegistry.registerItemMetal(<metaitem:dustImpureTetrahedrite>, "COPPER", 30, true);
// Средняя Кучка
ItemRegistry.registerItemMetal(<metaitem:dustSmallTetrahedrite>, "COPPER", 10, true);
// Маленькая Кучка
ItemRegistry.registerItemMetal(<metaitem:dustTinyTetrahedrite>, "COPPER", 4, true);

// --- Халькопирит

// Чистая Кучка
// ItemRegistry.registerItemMetal(<metaitem:dustChalcopyrite>, "COPPER", 30, true);
// Грязная Кучка
// ItemRegistry.registerItemMetal(<metaitem:dustImpureChalcopyrite>, "COPPER", 20, true);
// Средняя Кучка
ItemRegistry.registerItemMetal(<metaitem:dustSmallChalcopyrite>, "COPPER", 7, true);
// Маленькая Кучка
ItemRegistry.registerItemMetal(<metaitem:dustTinyChalcopyrite>, "COPPER", 3, true);

// --- Халькозин

// Чистая Кучка
// ItemRegistry.registerItemMetal(<metaitem:dustChalcocite>, "COPPER", 70, true);
// Грязная Кучка
// ItemRegistry.registerItemMetal(<metaitem:dustImpureChalcocite>, "COPPER", 60, true);
// Средняя Кучка
ItemRegistry.registerItemMetal(<metaitem:dustSmallChalcocite>, "COPPER", 17, true);
// Маленькая Кучка
ItemRegistry.registerItemMetal(<metaitem:dustTinyChalcocite>, "COPPER", 7, true);

// --- Малахит

// Чистая Кучка
// ItemRegistry.registerItemMetal(<metaitem:dustMalachite>, "COPPER", 30, true);
// Грязная Кучка
// ItemRegistry.registerItemMetal(<metaitem:dustImpureMalachite>, "COPPER", 10, true);
// Средняя Кучка
ItemRegistry.registerItemMetal(<metaitem:dustSmallMalachite>, "COPPER", 2, true);
// Маленькая Кучка
ItemRegistry.registerItemMetal(<metaitem:dustTinyMalachite>, "COPPER", 1, true);

// ---//--- Вариации Олова

// --- Чистое Олово

// Грязная Кучка
// ItemRegistry.registerItemMetal(<metaitem:dustImpureTin>, "TIN", 80, true);
// Средняя Кучка
ItemRegistry.registerItemMetal(<metaitem:dustSmallTin>, "TIN", 25, true);
// Маленькая Кучка
ItemRegistry.registerItemMetal(<metaitem:dustTinyTin>, "TIN", 10, true);

// --- Касситерит

// Чистая Кучка
// ItemRegistry.registerItemMetal(<metaitem:dustCassiterite>, "TIN", 200, true);
// Грязная Кучка
// ItemRegistry.registerItemMetal(<metaitem:dustImpureCassiterite>, "TIN", 145, true);
// Средняя Кучка
ItemRegistry.registerItemMetal(<metaitem:dustSmallCassiterite>, "TIN", 50, true);
// Маленькая Кучка
ItemRegistry.registerItemMetal(<metaitem:dustTinyCassiterite>, "TIN", 22, true);

// --- Касситеритный песок

// Чистая Кучка
// ItemRegistry.registerItemMetal(<metaitem:dustCassiteriteSand>, "TIN", 35, true);
// Грязная Кучка
// ItemRegistry.registerItemMetal(<metaitem:dustImpureCassiteriteSand>, "TIN", 25, true);
// Средняя Кучка
ItemRegistry.registerItemMetal(<metaitem:dustSmallCassiteriteSand>, "TIN", 8, true);
// Маленькая Кучка
ItemRegistry.registerItemMetal(<metaitem:dustTinyCassiteriteSand>, "TIN", 3, true);


// ---//--- Вариации Железа

// --- Чистое железо

// Чистая Кучка
ItemRegistry.registerItemMetal(<metaitem:dustIron>, "WROUGHT_IRON", 100, false);
// Грязная Кучка
ItemRegistry.registerItemMetal(<metaitem:dustImpureIron>, "WROUGHT_IRON", 80, false);
// Средняя Кучка
ItemRegistry.registerItemMetal(<metaitem:dustSmallIron>, "WROUGHT_IRON", 25, false);
// Маленькая Кучка
ItemRegistry.registerItemMetal(<metaitem:dustTinyIron>, "WROUGHT_IRON", 10, false);

// --- Пирит

// Чистая Кучка
// ItemRegistry.registerItemMetal(<metaitem:dustPyrite>, "WROUGHT_IRON", 30, false);
// Грязная Кучка
// ItemRegistry.registerItemMetal(<metaitem:dustImpurePyrite>, "WROUGHT_IRON", 25, false);
// Средняя Кучка
ItemRegistry.registerItemMetal(<metaitem:dustSmallPyrite>, "WROUGHT_IRON", 7, false);
// Маленькая Кучка
ItemRegistry.registerItemMetal(<metaitem:dustTinyPyrite>, "WROUGHT_IRON", 3, false);

// --- Магнетит

// Чистая Кучка
// ItemRegistry.registerItemMetal(<metaitem:dustMagnetite>, "WROUGHT_IRON", 40, false);
// Грязная Кучка
// ItemRegistry.registerItemMetal(<metaitem:dustImpureMagnetite>, "WROUGHT_IRON", 30, false);
// Средняя Кучка
ItemRegistry.registerItemMetal(<metaitem:dustSmallMagnetite>, "WROUGHT_IRON", 10, false);
// Маленькая Кучка
ItemRegistry.registerItemMetal(<metaitem:dustTinyMagnetite>, "WROUGHT_IRON", 4, false);

// --- Желтый лимонит

// Чистая Кучка
// ItemRegistry.registerItemMetal(<metaitem:dustBrownLimonite>, "WROUGHT_IRON", 30, false);
// Грязная Кучка
// ItemRegistry.registerItemMetal(<metaitem:dustImpureBrownLimonite>, "WROUGHT_IRON", 20, false);
// Средняя Кучка
ItemRegistry.registerItemMetal(<metaitem:dustSmallBrownLimonite>, "WROUGHT_IRON", 7, false);
// Маленькая Кучка
ItemRegistry.registerItemMetal(<metaitem:dustTinyBrownLimonite>, "WROUGHT_IRON", 3, false);

// --- Коричневый лимонит

// Чистая Кучка
// ItemRegistry.registerItemMetal(<metaitem:dustYellowLimonite>, "WROUGHT_IRON", 30, false);
// Грязная Кучка
// ItemRegistry.registerItemMetal(<metaitem:dustImpureYellowLimonite>, "WROUGHT_IRON", 20, false);
// Средняя Кучка
ItemRegistry.registerItemMetal(<metaitem:dustSmallYellowLimonite>, "WROUGHT_IRON", 7, false);
// Маленькая Кучка
ItemRegistry.registerItemMetal(<metaitem:dustTinyYellowLimonite>, "WROUGHT_IRON", 3, false);

// --- Кованное железо

// Чистая Кучка
// ItemRegistry.registerItemMetal(<metaitem:dustBandedIron>, "WROUGHT_IRON", 50, false);
// Грязная Кучка
// ItemRegistry.registerItemMetal(<metaitem:dustImpureBandedIron>, "WROUGHT_IRON", 35, false);
// Средняя Кучка
ItemRegistry.registerItemMetal(<metaitem:dustSmallBandedIron>, "WROUGHT_IRON", 12, false);
// Маленькая Кучка
ItemRegistry.registerItemMetal(<metaitem:dustTinyBandedIron>, "WROUGHT_IRON", 5, false);


// ---//--- Вариации Никеля

// --- Чистый никель

// Грязная Кучка
// ItemRegistry.registerItemMetal(<metaitem:dustImpureNickel>, "NICKEL", 80, true);
// Средняя Кучка
ItemRegistry.registerItemMetal(<metaitem:dustSmallNickel>, "NICKEL", 25, true);
// Маленькая Кучка
ItemRegistry.registerItemMetal(<metaitem:dustTinyNickel>, "NICKEL", 10, true);

// --- Гарниерит

// Чистая Кучка
// ItemRegistry.registerItemMetal(<metaitem:dustGarnierite>, "NICKEL", 50, true);
// Грязная Кучка
// ItemRegistry.registerItemMetal(<metaitem:dustImpureGarnierite>, "NICKEL", 40, true);
// Средняя Кучка
ItemRegistry.registerItemMetal(<metaitem:dustSmallGarnierite>, "NICKEL", 12, true);
// Маленькая Кучка
ItemRegistry.registerItemMetal(<metaitem:dustTinyGarnierite>, "NICKEL", 5, true);

// --- Пентландит

// Чистая Кучка
// ItemRegistry.registerItemMetal(<metaitem:dustPentlandite>, "NICKEL", 40, true);
// Грязная Кучка
// ItemRegistry.registerItemMetal(<metaitem:dustImpurePentlandite>, "NICKEL", 30, true);
// Средняя Кучка
ItemRegistry.registerItemMetal(<metaitem:dustSmallPentlandite>, "NICKEL", 10, true);
// Маленькая Кучка
ItemRegistry.registerItemMetal(<metaitem:dustTinyPentlandite>, "NICKEL", 4, true);

// ---//--- Вариации Цинка

// --- Чистый цинк

// Средняя Кучка
ItemRegistry.registerItemMetal(<metaitem:dustSmallZinc>, "ZINC", 25, true);
// Маленькая Кучка
ItemRegistry.registerItemMetal(<metaitem:dustTinyZinc>, "ZINC", 10, true);

// --- Сфалерит

// Чистая Кучка
// ItemRegistry.registerItemMetal(<metaitem:dustSphalerite>, "ZINC", 60, true);
// Грязная Кучка
// ItemRegistry.registerItemMetal(<metaitem:dustImpureSphalerite>, "ZINC", 50, true);
// Средняя Кучка
ItemRegistry.registerItemMetal(<metaitem:dustSmallSphalerite>, "ZINC", 15, true);
// Маленькая Кучка
ItemRegistry.registerItemMetal(<metaitem:dustTinySphalerite>, "ZINC", 6, true);

// ---//--- Вариации Свинца

// --- Чистый свинец

// Грязная Кучка
// ItemRegistry.registerItemMetal(<metaitem:dustImpureLead>, "LEAD", 80, true);
// Средняя Кучка
ItemRegistry.registerItemMetal(<metaitem:dustSmallLead>, "LEAD", 25, true);
// Маленькая Кучка
ItemRegistry.registerItemMetal(<metaitem:dustTinyLead>, "LEAD", 10, true);

// --- Галена

// Чистая Кучка
// ItemRegistry.registerItemMetal(<metaitem:dustGalena>, "LEAD", 40, true);
// Грязная Кучка
// ItemRegistry.registerItemMetal(<metaitem:dustImpureGalena>, "LEAD", 20, true);
// Средняя Кучка
ItemRegistry.registerItemMetal(<metaitem:dustSmallGalena>, "LEAD", 10, true);
// Маленькая Кучка
ItemRegistry.registerItemMetal(<metaitem:dustTinyGalena>, "LEAD", 4, true);

// ---//--- Вариации золота

// --- Чистое золото

// Грязная Кучка
// ItemRegistry.registerItemMetal(<metaitem:dustImpureGold>, "GOLD", 80, true);
// Средняя Кучка
ItemRegistry.registerItemMetal(<metaitem:dustSmallGold>, "GOLD", 25, true);
// Маленькая Кучка
ItemRegistry.registerItemMetal(<metaitem:dustTinyGold>, "GOLD", 10, true);

// ---//--- Вариации висмута

// --- Чистый висмут

// Грязная Кучка
// ItemRegistry.registerItemMetal(<metaitem:dustImpureBismuth>, "Bismuth", 25, true);
// Средняя Кучка
ItemRegistry.registerItemMetal(<metaitem:dustSmallBismuth>, "Bismuth", 25, true);
// Маленькая Кучка
ItemRegistry.registerItemMetal(<metaitem:dustTinyBismuth>, "Bismuth", 10, true);

// ---//--- Вариации серебра

// --- Чистое серебро

// Грязная Кучка
// ItemRegistry.registerItemMetal(<metaitem:dustImpureSilver>, "SILVER", 80, true);
// Средняя Кучка
ItemRegistry.registerItemMetal(<metaitem:dustSmallSilver>, "SILVER", 25, true);
// Маленькая Кучка
ItemRegistry.registerItemMetal(<metaitem:dustTinySilver>, "SILVER", 10, true);

for item in Bad_Dusts_Array {
        //item.addTooltip(format.red("This dust cannot be processed into TFC metal, otherwise it will not be processed in GTCEu mechanisms, this should be fixed by GTCEu developers in the future."));
        item.addTooltip(format.red(game.localize("tfg.warningaboutimpuredusts.name")));
}