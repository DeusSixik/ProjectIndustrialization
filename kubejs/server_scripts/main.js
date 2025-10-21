
ServerEvents.recipes(event => {
    event.recipes.create.mixing(
        ['4x industrialupgrade:crafting_elements/crafting_773_element'], 
        ['2x immersiveengineering:grit_sand', '2x minecraft:clay_ball', '2x industrialupgrade:nugget/spinel', '2x industrialupgrade:nugget/yttrium']
    )
    event.recipes.create.mixing(
        ['3x immersiveengineering:grit_sand'],
        ['minecraft:gravel', '4x minecraft:sand']
    )

    // event.recipes.createsifter.sifting(
    //     [ Output.of('create:copper_nugget',0.1), Output.of('minecraft:iron_nugget', 0.13), Output.of('minecraft:coal', 0.03), Output.of('minecraft:flint', 0.166)],
    //     'minecraft:gravel', 'createsifter:string_mesh')
});