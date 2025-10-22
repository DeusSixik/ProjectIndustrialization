#priority 800
import crafttweaker.api.recipe.CraftingTableRecipeManager;
import crafttweaker.api.ingredient.IIngredientWithAmount;

import crafttweaker.api.fluid.Fluid;
import crafttweaker.api.fluid.IFluidStack;
import crafttweaker.api.fluid.FluidIngredient;

import crafttweaker.api.recipe.type.Recipe;
import crafttweaker.api.world.Container;

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.recipe.MirrorAxis;

import crafttweaker.api.data.IData;
import crafttweaker.api.data.ListData;
import stdlib.List;

import crafttweaker.api.recipe.BlastFurnaceRecipeManager;

import crafttweaker.api.recipe.RecipeHolder;


public class VanillaManager {

    public static removeCraftingRecipe(items: IItemStack[]): void {
        for item in items {
            craftingTable.remove(item);
        }
    }

    public static addShaped(recipe_name_delete: string[], recipe_name: string, input: IIngredient[][], out: IItemStack): void {
        craftingTable.removeByName(recipe_name_delete);
        VanillaManager.addShaped(recipe_name, input, out);
    }

    public static addShaped(recipe_name: string, input: IIngredient[][], out: IItemStack): void {
        craftingTable.addShaped(recipe_name, out, input);
    }

    public static addShapeless(recipe_name_delete: string[], recipe_name: string, input: IIngredient[], out: IItemStack): void {
        craftingTable.removeByName(recipe_name_delete);
        VanillaManager.addShapeless(recipe_name, input, out);
    }

    public static addShapeless(recipe_name: string, input: IIngredient[], out: IItemStack): void {
        craftingTable.addShapeless(recipe_name, out, input);
    }

    public static addShapedMirrored(recipe_name_delete: string[], recipe_name: string, mirrorAxis: MirrorAxis, input: IIngredient[][], out: IItemStack): void {
        craftingTable.removeByName(recipe_name_delete);
        VanillaManager.addShapedMirrored(recipe_name, mirrorAxis, input, out);
    }

    public static addShapedMirrored(recipe_name: string, mirrorAxis: MirrorAxis, input: IIngredient[][], out: IItemStack): void {
        craftingTable.addShapedMirrored(recipe_name, mirrorAxis, out, input);
    }

    public static addFurnace(recipe_name_delete: string[], recipe_name: string, input: IIngredient, output: IItemStack, xp: float = 0.2f, cookTime: int = 100): void {
        furnace.removeByName(recipe_name_delete);
        VanillaManager.addFurnace(recipe_name, output, input, xp, cookTime);
    }

    public static addFurnace(recipe_name: string, input: IIngredient, output: IItemStack, xp: float = 0.2f, cookTime: int = 200): void {
        furnace.addRecipe(recipe_name, output, input, xp, cookTime);
    }
    
    public static swapFurnaceRecipe(recipe_names: string[], swap: VanillaSwapFurnaceRecipe = VanillaSwapFurnaceRecipe.BlastFurnace): void {
        var i as int = 0;
        
        for recipe_name in recipe_names {
            var recipeHolder = furnace.getRecipeByName(recipe_name);   
            var recipe = recipeHolder.value;

            switch(swap) {
                case BlastFurnace: {
                    blastFurnace.addRecipe(recipeHolder.id.path + "_" + i as string, recipe.resultItem, recipe.ingredients[0], 0.2f, 200);
                    break;
                }
                case ImmersiveCokeOven: {
                    ImmersiveManager.addCokeOven(recipeHolder.id.path + "_" + i as string, recipe.ingredients[0], recipe.resultItem);
                    break;
                }
                default:
                    break;
            } 
            i++;
            furnace.removeByName(recipe_name);
        }
    }

    public static removeRecipe(recipe_names: string[], type: VanillaRemoveRecipe): void {
        for recipe_name in recipe_names {

            switch(type) {
                case CraftingTable: {
                    craftingTable.removeByName(recipe_name);
                    break;
                }
                case Furnace: {
                    furnace.removeByName(recipe_name);
                    break;
                }
                case BlastFurnace: {
                    blastFurnace.removeByName(recipe_name);
                    break;
                }
                default:
                    break;
            }
        } 
    }

    public static addFuelRecipe(recipe_name: string, input: IIngredient, output: IItemStack, type: VanillaSwapFurnaceRecipe = VanillaSwapFurnaceRecipe.Furnace): void {
        VanillaManager.addFuelRecipe(recipe_name, input, output, 0.2f, 200,  type);
    }

    public static addFuelRecipe(recipe_name: string, input: IIngredient, output: IItemStack, xp: float, cookTime: int, type: VanillaSwapFurnaceRecipe = VanillaSwapFurnaceRecipe.Furnace): void {
        switch(type) {
            case BlastFurnace: {
                blastFurnace.addRecipe(recipe_name, output, input, xp, cookTime);
                break;
            }
            case Furnace: {
                furnace.addRecipe(recipe_name, output, input, xp, cookTime);
                break;
            }
            default:
                break;
        } 
    }
}

public enum VanillaRemoveRecipe {
    CraftingTable,
    Furnace,
    BlastFurnace
}

public enum VanillaSwapFurnaceRecipe {
    BlastFurnace,
    Furnace,
    ImmersiveCokeOven
}