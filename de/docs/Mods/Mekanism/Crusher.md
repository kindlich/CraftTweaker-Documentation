# Crusher

## Addition

```java
mods.mekanism.crusher.addRecipe(IItemStack inputStack, IItemStack outputStack)

mods.mekanism.crusher.addRecipe(<minecraft:double_plant:4>, <minecraft:dye:1> * 5);
```

## Removal

```java
mods.mekanism.crusher.removeRecipe(IIngredient outputStack, @Optional IIngredient inputStack)

mods.mekanism.crusher.removeRecipe(<minecraft:sand>, <minecraft:gravel>);
mods.mekanism.crusher.removeRecipe(<minecraft:gravel>);
```

Specifying an input parameter will only remove the specific recipe that uses said input. Omitting the input parameter will remove all recipes that produce the specified output.