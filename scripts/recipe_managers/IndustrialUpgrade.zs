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

import crafttweaker.api.data.IData;
import crafttweaker.api.data.ListData;
import stdlib.List;
import crafttweaker.api.fluid.Fluid;

public class IndustrialUpgrade {

    public static addSmelter(recipe_name: string, smelterType: IndustrialUpgrade_SmelterType, 
                            inputs as InputParam[], outputs as InputParam[]): void {
        val input_data = new List<IData>();

        for input in inputs {
            input_data.add(input.toIndustialUpgradeNbt());
        }

        val output_data = new List<IData>();
        for output in outputs {
            output_data.add(output.toIndustialUpgradeNbt());
        }

        var recipe as IData = {
            "type": "industrialupgrade:smeltery",
            "operation": smelterType.id,
            "inputs": new ListData(input_data),
            "outputs": new ListData(output_data)
        };
        
        <recipetype:industrialupgrade:smeltery>.addJsonRecipe(recipe_name, recipe);
    }
}

public enum IndustrialUpgrade_SmelterType {
    Mix("mix"),
    CastingIngot("casting_ingot"),
    CastingsGear("casting_gear"),
    Furnace("furnace");

    public var id as string;

    this(id: string) {
        this.id = id;
    }
}
