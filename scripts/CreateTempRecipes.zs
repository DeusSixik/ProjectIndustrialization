import crafttweaker.api.tag.type.KnownTag;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.ingredient.IIngredient;


//Stage One

VanillaManager.removeCraftingRecipe([
	<item:minecraft:polished_granite>,
	<item:minecraft:polished_diorite>,
	<item:minecraft:polished_andesite>,
	<item:minecraft:polished_deepslate>,
	<item:minecraft:polished_tuff>,
	<item:minecraft:polished_blackstone>
]);

VanillaManager.addShaped(["create:crafting/kinetics/hand_crank"], "46ac890e-e4a9-4a48-bd00-964dd4d9b352", [
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:string>], 
	[<item:minecraft:oak_planks>, <item:minecraft:oak_planks>, <item:minecraft:oak_planks>], 
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:stick>]
], <item:create:hand_crank>);

VanillaManager.addShaped(["create:cutting/andesite_alloy"], "cdf0739f-7048-476e-b895-948d221d24c8", [
	[<tag:item:minecraft:logs>], 
	[<tag:item:minecraft:logs>]
], <item:create:shaft> * 2);

VanillaManager.addShaped(["createsifter:crafting/sifter"], "3e58edcd-e4cf-4d4f-a6bb-fb4565a1c709", [
	[<item:minecraft:stick>, <tag:item:c:strings>, ],
	[<item:create:cogwheel>, <item:minecraft:oak_planks> * 2]
], <item:createsifter:sifter>);

VanillaManager.addShaped("3e58edcd-e4cf-4d4f-a6bb-fb4565a1c710", [
	[<item:minecraft:stick>, <tag:item:c:strings>, ],
	[<item:create:cogwheel>, <item:minecraft:cherry_planks> * 2]
], <item:createsifter:sifter>);

VanillaManager.addShaped("3e58edcd-e4cf-4d4f-a6bb-fb4565a1c711", [
	[<item:minecraft:stick> * 4, <tag:item:c:strings>, ],
	[<item:create:cogwheel>, <item:minecraft:mangrove_planks> * 2]
], <item:createsifter:sifter>);

VanillaManager.addShaped("3e58edcd-e4cf-4d4f-a6bb-fb4565a1c712", [
	[<item:minecraft:stick>, <tag:item:c:strings>, ],
	[<item:create:cogwheel>, <item:minecraft:dark_oak_planks> * 2]
], <item:createsifter:sifter>);

VanillaManager.addShaped("3e58edcd-e4cf-4d4f-a6bb-fb4565a1c713", [
	[<item:minecraft:stick>, <tag:item:c:strings>, ],
	[<item:create:cogwheel>, <item:minecraft:acacia_planks> * 2]
], <item:createsifter:sifter>);

VanillaManager.addShaped("3e58edcd-e4cf-4d4f-a6bb-fb4565a1c714", [
	[<item:minecraft:stick>, <tag:item:c:strings>, ],
	[<item:create:cogwheel>, <item:minecraft:jungle_planks> * 2]
], <item:createsifter:sifter>);

VanillaManager.addShaped("3e58edcd-e4cf-4d4f-a6bb-fb4565a1c715", [
	[<item:minecraft:stick>, <tag:item:c:strings>, ],
	[<item:create:cogwheel>, <item:minecraft:birch_planks> * 2]
], <item:createsifter:sifter>);

VanillaManager.addShaped("3e58edcd-e4cf-4d4f-a6bb-fb4565a1c716", [
	[<item:minecraft:stick>, <tag:item:c:strings>, ],
	[<item:create:cogwheel>, <item:minecraft:spruce_planks> * 2]
], <item:createsifter:sifter>);

VanillaManager.addShaped("3e58edcd-e4cf-4d4f-a6bb-fb4565a1c717", [
	[<item:minecraft:stick>, <tag:item:c:strings>, ],
	[<item:create:cogwheel>, <item:minecraft:bamboo_planks> * 2]
], <item:createsifter:sifter>);

VanillaManager.addShaped("cdf0739f-7048-476e-b895-948d231d24c7", [
	[<tag:item:c:rods/wooden> as IIngredient, <item:minecraft:air>, <tag:item:c:rods/wooden> as IIngredient], 
	[<tag:item:c:rods/wooden> as IIngredient, <tag:item:c:strings> as IIngredient, <tag:item:c:rods/wooden> as IIngredient], 
	[<tag:item:minecraft:planks> as IIngredient, <item:create:cogwheel>, <tag:item:minecraft:planks> as IIngredient]
], <item:createsifter:sifter>);

VanillaManager.addShapeless("7cfbbb6d-554a-4cdd-ffff-8c8ec8da4fb7", [ <tag:item:minecraft:wool> ], <item:minecraft:string>* 2);

VanillaManager.addShaped(["minecraft:stone_pickaxe"], "7cfbbb6d-554a-4cdd-888a-8c8ec8da4fb7", [
	[<item:createsifter:stone_pebble>, <tag:item:c:strings> as IIngredient], 
	[<item:minecraft:stick> * 2, <item:createsifter:stone_pebble>]
], <item:minecraft:stone_pickaxe>);

VanillaManager.addShaped("aa3f4206-3fb4-42e1-88c5-f3dead11d567", [
	[<item:createsifter:stone_pebble>, <tag:item:c:strings> as IIngredient, <item:createsifter:stone_pebble>], 
	[<item:minecraft:air>, <tag:item:c:rods/wooden> as IIngredient, <item:minecraft:air>], 
	[<item:minecraft:air>, <tag:item:c:rods/wooden> as IIngredient, <item:minecraft:air>]
], <item:minecraft:stone_pickaxe>);

VanillaManager.addShaped(["minecraft:stone_axe"], "25607a55-3744-4b21-8f08-9c297744328a", [
	[<tag:item:c:strings> as IIngredient, <item:createsifter:stone_pebble>], 
	[<item:minecraft:stick> * 2, <item:createsifter:stone_pebble>]
], <item:minecraft:stone_axe>);

VanillaManager.addShaped("50011c84-2c6d-4a23-810b-36c63c23b695", [
	[<item:minecraft:air>, <tag:item:c:strings> as IIngredient, <item:createsifter:stone_pebble>], 
	[<item:minecraft:air>, <tag:item:c:rods/wooden> as IIngredient, <item:createsifter:stone_pebble>], 
	[<item:minecraft:air>, <tag:item:c:rods/wooden> as IIngredient, <item:minecraft:air>]
], <item:minecraft:stone_axe>);

VanillaManager.addShaped(["minecraft:stone_shovel"], "bfca9515-3ad7-416d-a59e-64fa10f2f494", [
	[<tag:item:c:strings> as IIngredient, <item:createsifter:stone_pebble>], 
	[<item:minecraft:stick> * 2, <tag:item:c:strings> as IIngredient]
], <item:minecraft:stone_shovel>);

VanillaManager.addShaped("26697a4c-8961-4dd1-bff6-603d16f34d03", [
	[<tag:item:c:strings> as IIngredient, <item:createsifter:stone_pebble>, <tag:item:c:strings> as IIngredient], 
	[<item:minecraft:air>, <tag:item:c:rods/wooden> as IIngredient, <item:minecraft:air>], 
	[<tag:item:c:rods/wooden> as IIngredient, <item:minecraft:air>, <item:minecraft:air>]
], <item:minecraft:stone_shovel>);

VanillaManager.addShaped(["minecraft:stone_hoe"], "01ac3c51-b57b-49b1-b249-c81f3c7f3151", [
	[<item:createsifter:stone_pebble>, <item:createsifter:stone_pebble>], 
	[<tag:item:c:strings> as IIngredient, <item:minecraft:stick> * 2]
], <item:minecraft:stone_hoe>);

VanillaManager.addShaped("42f3d810-326a-44fb-b69f-0754852936d8", [
	[<tag:item:c:strings> as IIngredient, <item:createsifter:stone_pebble>, <item:createsifter:stone_pebble>], 
	[<item:minecraft:air>, <tag:item:c:rods/wooden> as IIngredient, <item:minecraft:air>], 
	[<item:minecraft:air>, <tag:item:c:rods/wooden> as IIngredient, <item:minecraft:air>]
], <item:minecraft:stone_hoe>);

VanillaManager.addShaped(["minecraft:stone_sword"], "ee501edd-4060-43f4-8fab-587c1fd77b9f", [
	[<tag:item:c:strings> as IIngredient, <item:createsifter:stone_pebble> * 2], 
	[<tag:item:c:rods/wooden> as IIngredient, <tag:item:c:strings> as IIngredient]
], <item:minecraft:stone_sword>);

VanillaManager.addShaped("159bc3b4-b351-4222-99be-34d02cfe8b4b", [
	[<item:minecraft:air>, <item:createsifter:stone_pebble>, <item:minecraft:air>], 
	[<tag:item:c:strings> as IIngredient, <item:createsifter:stone_pebble>, <tag:item:c:strings> as IIngredient], 
	[<item:minecraft:air>, <tag:item:c:rods/wooden> as IIngredient, <item:minecraft:air>]
], <item:minecraft:stone_sword>);

VanillaManager.addShapeless(["minecraft:crafting_table",], "1f592f4c-f645-4dff-8f44-a4b211627948", [
	<item:minecraft:stone_axe>, <item:minecraft:stone_pickaxe>, <tag:item:minecraft:logs> as IIngredient, <item:minecraft:stone_shovel>
], <item:minecraft:crafting_table>);

VanillaManager.addShaped(["minecraft:furnace"], "6fd66a35-16ce-493d-8316-d681c5e7cd9e", [
	[<item:minecraft:diorite_slab>, <item:minecraft:diorite_slab>, <item:minecraft:diorite_slab>], 
	[<item:minecraft:andesite>, <item:minecraft:air>, <item:minecraft:andesite>], 
	[<item:minecraft:cobblestone>, <item:minecraft:granite>, <item:minecraft:cobblestone>]
], <item:minecraft:furnace>);

VanillaManager.addShaped(["minecraft:stonecutter"], "409bb9b1-c233-418a-be7a-f2e5dad6deb0", [
	[<item:minecraft:air>, <item:minecraft:iron_nugget>, <item:minecraft:air>], 
	[<item:minecraft:iron_nugget>, <item:minecraft:copper_ingot>, <item:minecraft:iron_nugget>], 
	[<item:minecraft:andesite>, <item:minecraft:andesite>, <item:minecraft:andesite>]
], <item:minecraft:stonecutter>);

VanillaManager.addShaped(["minecraft:blast_furnace"], "0a11971a-6a24-4db3-a393-c4e5ee8f44f9", [
	[<item:minecraft:polished_diorite>, <item:minecraft:polished_diorite>, <item:minecraft:polished_diorite>], 
	[<item:minecraft:copper_block>, <item:minecraft:furnace>, <item:minecraft:copper_block>], 
	[<item:minecraft:polished_granite>, <item:minecraft:polished_granite>, <item:minecraft:polished_granite>]
], <item:minecraft:blast_furnace>);

VanillaManager.addFuelRecipe("rework_iron_ore_1", <item:minecraft:raw_iron>, <item:minecraft:iron_nugget> * 3);
VanillaManager.addFuelRecipe("rework_iron_ore_2", <item:minecraft:iron_nugget> * 9, <item:minecraft:iron_ingot>, VanillaSwapFurnaceRecipe.BlastFurnace);

VanillaManager.addFuelRecipe("rework_copper_ore_1", <item:minecraft:raw_copper>, <item:create:copper_nugget> * 5);
VanillaManager.addFuelRecipe("rework_copper_ore_2", <item:create:copper_nugget> * 9, <item:minecraft:copper_ingot>, VanillaSwapFurnaceRecipe.BlastFurnace);

VanillaManager.addFuelRecipe("rework_gold_ore_1", <item:minecraft:raw_gold>, <item:minecraft:gold_nugget> * 3);
VanillaManager.addFuelRecipe("rework_gold_ore_2", <item:minecraft:gold_nugget> * 9, <item:minecraft:gold_ingot>, VanillaSwapFurnaceRecipe.BlastFurnace);

VanillaManager.removeRecipe([
	"industrialupgrade:furnace_82",
	"minecraft:iron_ingot_from_smelting_deepslate_iron_ore",
	"minecraft:iron_ingot_from_smelting_iron_ore",
	"minecraft:iron_ingot_from_smelting_raw_iron",
	"mekanism:processing/iron/ingot/from_dust_smelting",
	"create:smelting/iron_ingot_from_crushed",
	"immersiveengineering:smelting/iron_ingot_from_dust",
	"create:crafting/materials/copper_ingot",
	"immersiveengineering:crafting/nugget_copper_to_copper_ingot",
	"minecraft:copper_ingot",
	"minecraft:copper_ingot_from_waxed_copper_block",
	"industrialupgrade:industrialupgrade_10",
	"industrialupgrade:furnace_72",
	"minecraft:gold_ingot_from_smelting_deepslate_gold_ore",
	"minecraft:gold_ingot_from_smelting_gold_ore",
	"minecraft:gold_ingot_from_smelting_nether_gold_ore",
	"minecraft:gold_ingot_from_smelting_raw_gold",
	"mekanism:processing/gold/ingot/from_dust_smelting",
	"create:smelting/gold_ingot_from_crushed",
	"immersiveengineering:smelting/gold_ingot_from_dust",
	"ae2:blasting/sky_stone_block",
	"minecraft:coal_from_smelting_coal_ore",
	"minecraft:coal_from_smelting_deepslate_coal_ore",
	"minecraft:copper_ingot_from_smelting_raw_copper",
], VanillaRemoveRecipe.Furnace);

VanillaManager.removeRecipe([
	"minecraft:iron_ingot_from_blasting_raw_iron",
	"minecraft:gold_ingot_from_blasting_raw_gold",
	"minecraft:coal_from_blasting_coal_ore",
	"minecraft:coal_from_blasting_deepslate_coal_ore"
], VanillaRemoveRecipe.BlastFurnace);

VanillaManager.removeRecipe([
	"minecraft:iron_ingot_from_nuggets",
	"minecraft:gold_ingot_from_nuggets",
	"immersiveengineering:crafting/hammer",
	"immersiveengineering:crafting/plate_iron_hammering",
	"immersiveengineering:crafting/hammercrushing_cobalt",
	"immersiveengineering:crafting/raw_hammercrushing_cobalt",
	"immersiveengineering:crafting/gunpart_barrel",
	"immersiveengineering:crafting/hammercrushing_zinc",
	"immersiveengineering:crafting/raw_hammercrushing_zinc",
	"immersiveengineering:crafting/hammercrushing_uranium",
	"immersiveengineering:crafting/raw_hammercrushing_uranium",
	"immersiveengineering:crafting/hammercrushing_silver",
	"immersiveengineering:crafting/raw_hammercrushing_silver",
	"immersiveengineering:crafting/hammercrushing_tin",
	"immersiveengineering:crafting/raw_hammercrushing_tin",
	"immersiveengineering:crafting/hammercrushing_nickel",
	"immersiveengineering:crafting/raw_hammercrushing_nickel",
	"immersiveengineering:crafting/plate_steel_hammering",
	"immersiveengineering:crafting/plate_silver_hammering",
	"immersiveengineering:crafting/hammercrushing_aluminum",
	"immersiveengineering:crafting/raw_hammercrushing_aluminum",
	"immersiveengineering:crafting/plate_electrum_hammering",
	"immersiveengineering:crafting/hammercrushing_tungsten",
	"immersiveengineering:crafting/raw_hammercrushing_tungsten",
	"immersiveengineering:crafting/plate_uranium_hammering",
	"immersiveengineering:crafting/plate_copper_hammering",
	"immersiveengineering:crafting/hammercrushing_osmium",
	"immersiveengineering:crafting/raw_hammercrushing_osmium",
	"immersiveengineering:crafting/survey_tools",
	"immersiveengineering:crafting/hammercrushing_gold",
	"immersiveengineering:crafting/raw_hammercrushing_gold",
	"immersiveengineering:crafting/hammercrushing_platinum",
	"immersiveengineering:crafting/raw_hammercrushing_platinum",
	"immersiveengineering:crafting/hammercrushing_lead",
	"immersiveengineering:crafting/raw_hammercrushing_lead",
	"immersiveengineering:crafting/plate_nickel_hammering",
	"immersiveengineering:crafting/hammercrushing_iron",
	"immersiveengineering:crafting/raw_hammercrushing_iron",
	"immersiveengineering:crafting/plate_lead_hammering",
	"immersiveengineering:crafting/hammercrushing_copper",
	"immersiveengineering:crafting/raw_hammercrushing_copper",
	"immersiveengineering:crafting/plate_constantan_hammering",
	"immersiveengineering:crafting/plate_aluminum_hammering",
	"immersiveengineering:crafting/plate_gold_hammering",
	"immersiveengineering:crafting/cokebrick",
	"industrialupgrade:industrialupgrade_2422",
	"immersiveengineering:crafting/grit_sand"
], VanillaRemoveRecipe.CraftingTable);

<tag:item:projectindustrial:multiblocked_tag>.add(<item:industrialupgrade:forge_hammer>);

VanillaManager.addShaped("2298c3d5-2a93-4c95-97c1-cb2e87f1398d", [
	[<item:minecraft:clay_ball>, <item:minecraft:brick>, <item:minecraft:clay_ball>], 
	[<item:minecraft:brick>, <item:minecraft:sandstone>, <item:minecraft:brick>], 
	[<item:minecraft:clay_ball>, <item:minecraft:brick>, <item:minecraft:clay_ball>]
], <item:minecraft:bedrock>.withJsonComponent(<componenttype:minecraft:custom_name>, "\"Не обозжонный кирпич\""));

VanillaManager.addFuelRecipe("zidkiy_brick", 
<item:minecraft:bedrock>.withJsonComponent(<componenttype:minecraft:custom_name>, "\"Не обозжонный кирпич\""), 
<item:immersiveengineering:cokebrick>, 0.2f, 450, VanillaSwapFurnaceRecipe.BlastFurnace);

VanillaManager.addShaped(["minecraft:iron_pickaxe"], "e963c365-33e1-4ff3-9519-f30097972f08", [
	[<item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>], 
	[<item:minecraft:air>, <item:immersiveengineering:stick_treated>, <item:minecraft:air>], 
	[<item:minecraft:air>, <item:immersiveengineering:stick_treated>, <item:minecraft:air>]
], <item:minecraft:iron_pickaxe>);

VanillaManager.addShapedMirrored(["minecraft:iron_axe"], "8109a174-53fd-4303-b30e-9894337642c2", <constant:minecraft:mirroraxis:horizontal>, [
	[<item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>], 
	[<item:immersiveengineering:stick_treated>, <item:minecraft:iron_ingot>], 
	[ <item:immersiveengineering:stick_treated>, <item:minecraft:air>]
], <item:minecraft:iron_axe>);

VanillaManager.addShaped(["minecraft:iron_shovel"], "fce0b93a-2a5a-4ac9-8020-af8a44b0166a", [
	[<item:minecraft:iron_ingot>], 
	[<item:immersiveengineering:stick_treated>], 
	[<item:immersiveengineering:stick_treated>]
], <item:minecraft:iron_shovel>);

VanillaManager.addShapedMirrored(["minecraft:iron_hoe"], "e9f14a42-21ec-4bf9-8935-3ab0073532ad", <constant:minecraft:mirroraxis:horizontal>, [
	[<item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>], 
	[<item:immersiveengineering:stick_treated>, <item:minecraft:air>], 
	[<item:immersiveengineering:stick_treated>, <item:minecraft:air>]
], <item:minecraft:iron_hoe>);


VanillaManager.addShaped(["minecraft:iron_sword"], "0311c850-b9b3-4185-ab3c-d1379333b658", [
	[<item:minecraft:iron_ingot>], 
	[<item:minecraft:iron_ingot>], 
	[<item:immersiveengineering:stick_treated>]
], <item:minecraft:iron_sword>);

VanillaManager.addShaped(["minecraft:iron_helmet"], "a532b10b-6603-4365-a37e-cf1e77f07dea", [
	[<tag:item:c:plates/iron>, <tag:item:c:plates/iron>, <tag:item:c:plates/iron>], 
	[<tag:item:c:plates/iron>, <item:minecraft:air>, <tag:item:c:plates/iron>]
], <item:minecraft:iron_helmet>);

VanillaManager.addShaped(["minecraft:iron_chestplate"], "9e13bf3a-4930-47e7-a43e-02dab1e07649", [
	[<tag:item:c:plates/iron>, <item:minecraft:air>, <tag:item:c:plates/iron>], 
	[<tag:item:c:plates/iron>, <tag:item:c:plates/iron>, <tag:item:c:plates/iron>], 
	[<tag:item:c:plates/iron>, <tag:item:c:plates/iron>, <tag:item:c:plates/iron>]
], <item:minecraft:iron_chestplate>);

VanillaManager.addShaped(["minecraft:iron_leggings"], "4421bf6a-08db-47ba-a761-210d4db3ad1e", [
	[<tag:item:c:plates/iron>, <tag:item:c:plates/iron>, <tag:item:c:plates/iron>], 
	[<tag:item:c:plates/iron>, <item:minecraft:air>, <tag:item:c:plates/iron>], 
	[<tag:item:c:plates/iron>, <item:minecraft:air>, <tag:item:c:plates/iron>]
], <item:minecraft:iron_leggings>);

VanillaManager.addShaped(["minecraft:iron_boots"], "3a19c32d-2e40-4ef0-af9f-9d1835f767ae", [
	[<tag:item:c:plates/iron>, <item:minecraft:air>, <tag:item:c:plates/iron>], 
	[<tag:item:c:plates/iron>, <item:minecraft:air>, <tag:item:c:plates/iron>]
], <item:minecraft:iron_boots>);

VanillaManager.addShaped(["minecraft:golden_helmet"], "ca7f6f95-f17d-4eef-9587-21ca237f2ce3", [
	[<tag:item:c:plates/gold>, <tag:item:c:plates/gold>, <tag:item:c:plates/gold>], 
	[<tag:item:c:plates/gold>, <item:minecraft:air>, <tag:item:c:plates/gold>]
], <item:minecraft:golden_helmet>);

VanillaManager.addShaped(["minecraft:golden_chestplate"], "81803de4-474e-40ef-bc7c-9aaf6926f5aa", [
	[<tag:item:c:plates/gold>, <item:minecraft:air>, <tag:item:c:plates/gold>], 
	[<tag:item:c:plates/gold>, <tag:item:c:plates/gold>, <tag:item:c:plates/gold>], 
	[<tag:item:c:plates/gold>, <tag:item:c:plates/gold>, <tag:item:c:plates/gold>]
], <item:minecraft:golden_chestplate>);

VanillaManager.addShaped(["minecraft:golden_leggings"], "2a98fe70-469b-4a06-8414-36155616077b", [
	[<tag:item:c:plates/gold>, <tag:item:c:plates/gold>, <tag:item:c:plates/gold>], 
	[<tag:item:c:plates/gold>, <item:minecraft:air>, <tag:item:c:plates/gold>], 
	[<tag:item:c:plates/gold>, <item:minecraft:air>, <tag:item:c:plates/gold>]
], <item:minecraft:golden_leggings>);

VanillaManager.addShaped(["minecraft:golden_boots"], "07b59411-c829-478a-be23-a065f378d9cf", [
	[<tag:item:c:plates/gold>, <item:minecraft:air>, <tag:item:c:plates/gold>], 
	[<tag:item:c:plates/gold>, <item:minecraft:air>, <tag:item:c:plates/gold>]
], <item:minecraft:golden_boots>);

VanillaManager.addShapedMirrored(["minecraft:golden_axe"], "efd2ca42-6cf7-4a3f-9b75-136ea6b49ac3", <constant:minecraft:mirroraxis:horizontal>, [
	[<item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>], 
	[<item:immersiveengineering:stick_treated>, <item:minecraft:gold_ingot>], 
	[<item:immersiveengineering:stick_treated>, <item:minecraft:air>]
], <item:minecraft:golden_axe>);

VanillaManager.addShaped(["minecraft:golden_pickaxe"], "6a193afc-177c-405a-b9da-8e63cee7eb2a", [
	[<item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>], 
	[<item:minecraft:air>, <item:immersiveengineering:stick_treated>, <item:minecraft:air>], 
	[<item:minecraft:air>, <item:immersiveengineering:stick_treated>, <item:minecraft:air>]
], <item:minecraft:golden_pickaxe>);

VanillaManager.addShaped(["minecraft:golden_shovel"], "21c32c6d-e373-417b-b1db-1497d503a234", [
	[<item:minecraft:gold_ingot>], 
	[<item:immersiveengineering:stick_treated>], 
	[<item:immersiveengineering:stick_treated>]
], <item:minecraft:golden_shovel>);

VanillaManager.addShapedMirrored(["minecraft:golden_hoe"], "3271b3f4-75f7-46e2-a16f-2f10e5523d43", <constant:minecraft:mirroraxis:horizontal>, [
	[<item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>], 
	[<item:immersiveengineering:stick_treated>, <item:minecraft:air>], 
	[<item:immersiveengineering:stick_treated>, <item:minecraft:air>]
], <item:minecraft:golden_hoe>);

VanillaManager.addShaped(["minecraft:golden_sword"], "57ed4f25-e096-4fae-9591-742c3929ab5a", [
	[<item:minecraft:gold_ingot>], 
	[<item:minecraft:gold_ingot>], 
	[<item:immersiveengineering:stick_treated>]
], <item:minecraft:golden_sword>);

// ImmersiveManager.addCokeOven("cocke/titanium_ingot", <item:industrialupgrade:nugget/titanium> * 9, <item:industrialupgrade:itemingots/titanium_ingot>);

VanillaManager.swapFurnaceRecipe([
	"industrialupgrade:furnace_118",
	"industrialupgrade:furnace_39",
	"industrialupgrade:furnace_99"
], VanillaSwapFurnaceRecipe.ImmersiveCokeOven);


// CreateManager.addMixing("sdm_test", CreateMixing.None, 
// [<item:industrialupgrade:crafting_elements/crafting_773_element> * 4], 
// [<item:minecraft:sand>, <item:industrialupgrade:nugget/spinel> * 2, <item:minecraft:gravel> * 2, <item:minecraft:clay_ball> * 2, <item:industrialupgrade:nugget/yttrium>], 200);
