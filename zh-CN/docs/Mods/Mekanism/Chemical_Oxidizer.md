# Chemical Oxidizer

## Addition

```java
mods.mekanism.chemical.oxidizer.addRecipe(IItemStack inputStack, IGasStack outputGas)

mods.mekanism.chemical.oxidizer.addRecipe(<mekanism:dust:2>, <gas:cleanOsmium>);
```

## Removal

```java
mods.mekanism.chemical.oxidizer.removeRecipe(IIngredient outputGas, @Optional IIngredient inputStack)

mods.mekanism.chemical.oxidizer.removeRecipe(<gas:brine>, <mekanism:salt>);
mods.mekanism.chemical.oxidizer.removeRecipe(<gas:brine>);
```

Specifying an input parameter will only remove the specific recipe that uses said input. Omitting the input parameter will remove all recipes that produce the specified output.