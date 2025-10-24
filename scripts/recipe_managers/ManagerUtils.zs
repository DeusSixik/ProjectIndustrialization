import crafttweaker.api.data.IData;
import crafttweaker.api.data.MapData;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.fluid.IFluidStack;

public virtual class InputParam {

    public static of(item as IItemStack): InputParam {
        return new ItemInputParam(item);
    }

    public static of(fluid as IFluidStack): InputParam {
        return new FluidInputParam(fluid);
    }

    public toNbt(): IData {
        return new MapData();
    }

    public toIndustialUpgradeNbt(): IData {
        return new MapData();
    }
}

public class FluidInputParam : InputParam {
    protected var fluid as IFluidStack;

    public this(fluid as IFluidStack) {
        super();
        this.fluid = fluid;
    }

    public override toNbt(): IData {
        return {
            "id" : fluid.fluid.registryName as string,
            "amount" : fluid.amount
        };
    }

    public override toIndustialUpgradeNbt(): IData {
        return ({
            "type" : "fluid"
        } as IData).merge(toNbt());
    }
}

public class ItemInputParam : InputParam {

    protected var item as IItemStack;

    public this(item as IItemStack) {
        super();
        this.item = item;
    }

    public override toNbt(): IData {
        return {
            "id" : item.registryName as string,
            "amount" : item.amount
        };
    }

    public override toIndustialUpgradeNbt(): IData {
        return ({
            "type" : "item"
        } as IData).merge(toNbt());
    }
}
