#priority 800
// #onlyIf modloaded immersiveengineering
import crafttweaker.api.ingredient.IIngredientWithAmount;

import crafttweaker.api.fluid.Fluid;
import crafttweaker.api.fluid.IFluidStack;
import crafttweaker.api.fluid.FluidIngredient;

import crafttweaker.api.recipe.type.Recipe;
import crafttweaker.api.world.Container;

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;

import crafttweaker.api.data.MapData;
import crafttweaker.api.data.IData;
import crafttweaker.api.data.ListData;
import stdlib.List;

import crafttweaker.api.util.random.Percentaged;


public class ImmersiveManager {

    public static addCokeOven(recipe_name: string, input: IItemStack, out: IItemStack, creosote: int = 1, time: int = 1500): void {
    
        val recipe as IData = {
            "type": "immersiveengineering:coke_oven",
            "creosote": creosote,
            "input": {
                "basePredicate": {
                    "item": input.registryName as string
                },
                "count": input.amount
            },
            "result": {
                "id": out.registryName as string
            },
            "time": time
        };
        
        <recipetype:immersiveengineering:coke_oven>.addJsonRecipe(recipe_name, recipe);
    }
}

// #endif