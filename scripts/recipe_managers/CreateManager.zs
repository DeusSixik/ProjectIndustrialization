#priority 800
#onlyIf modloaded create
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


public class CreateManager {

    public static addItemApplication(name: string, input:  IIngredient[], itemOut as IItemStack) as void{
        val inputsData = new List<IData>();
        for o in input {
            inputsData.add(o as IData);
        }
        val outpusts = new List<IData>();
        outpusts.add(itemOut as IData);

        val recipe: IData = {
            "ingredients": new ListData(inputsData),
            "results": new ListData(outpusts)
        };
        <recipetype:create:item_application>.addJsonRecipe(name, recipe);
    }
    
    #onlyIf modloaded createsifter
    public static sifting(name: string, input: IIngredient[], out: Percentaged<IItemStack>[], processingTime: int = 500, waterlogged: bool = false): void {
        val inputsData = new List<IData>();
        for o in input {
            inputsData.add(o as IData);
        }

        val outpusts = new List<IData>();
        for o in out {
            val internalItem = o.getData();
            outpusts.add((internalItem as IData).merge({"count" : internalItem.amount}).merge({"chance": o.getPercentage()}));
        }

        val recipe: IData = {
            "type": "createsifter:sifting",
            "ingredients": new ListData(inputsData),
            "processingTime": processingTime,
            "results": new ListData(outpusts),
            "waterlogged": waterlogged
        };
        <recipetype:createsifter:sifting_type>.addJsonRecipe(name, recipe);
    }

    public static siftingNew(name: string, input as IItemStack, mesh as IItemStack, out: Percentaged<IItemStack>[], processingTime: int = 500, waterlogged: bool = false): void {
        val outpusts = new List<IData>();

        for o in out {
            val internalItem = o.getData();
            outpusts.add({
                "id" : internalItem.registryName as string,
                "chance" : o.getPercentage(),
                "count" : internalItem.amount
            } as IData);
        }

        val recipe: IData = {
            "type": "createsifter:sifting",
            "input": {
                "item" : input.registryName as string
            },
            "mesh" : {
                "count": 1,
                "id": mesh.registryName as string
            },
            "processingTime": processingTime,
            "results": new ListData(outpusts)
        };

        <recipetype:createsifter:sifting_type>.addJsonRecipe(name, recipe);
    }

    public static siftingRemove(name: string[]): void => 
        CreateManager.removeRecipe(name, CreateManager_Recipe.Sifting);
    #endif

    public static addMixing(recipe_name: string, 
        outputs as Percentaged<IItemStack>[], input as IIngredientWithAmount[], duration as int = 100): void {
            CreateManager.addMixing(recipe_name, CreateMixing.None, outputs, input, [] as FluidIngredient[], duration);
        }

    public static addMixing(recipe_name: string, mixing: CreateMixing = CreateMixing.None, 
        outputs as Percentaged<IItemStack>[], input as IIngredientWithAmount[], duration as int = 100): void {
        CreateManager.addMixing(recipe_name, mixing, outputs, input, [] as FluidIngredient[], duration);
    }

    public static addMixing(recipe_name: string, mixing: CreateMixing = CreateMixing.None, 
        outputs as Percentaged<IItemStack>[], input as IIngredientWithAmount[], fluidInputs as FluidIngredient[], duration as int = 100): void {
        val inputsData = new List<IData>();
        
        for o in input {
            for amm in 0 .. o.amount {
                inputsData.add(o as IData);
            } 
        }

        val outpusts = new List<IData>();
        for o in outputs {
            val internalItem = o.getData();
            outpusts.add({
                "id" : internalItem.registryName as string,
                "count" : internalItem.amount
            } as IData);
        }

        
        var recipe as IData = {       
            "type": "create:mixing",
            "ingredients": new ListData(inputsData),
            "results": new ListData(outpusts)
        };
        <recipetype:create:mixing>.addJsonRecipe(recipe_name, recipe);
    }

    public static removeRecipe(recipe_names: string[], type: CreateManager_Recipe): void {
        switch(type) {
            case Mixing: {
                <recipetype:create:mixing>.removeByName(recipe_names);
                break;
            }
            case Sifting: {
                <recipetype:createsifter:sifting_type>.removeByName(recipe_names);
                break;
            }
            case Crushing: {
                <recipetype:create:crushing>.removeByName(recipe_names);
                break;
            }
            default: {
                break;
            }
        }
    }
}

public enum CreateMixing {
    Heated,
    SuperHeated,
    None
}

public enum CreateManager_Recipe {
    Mixing,
    Sifting,
    Crushing
}

#endif