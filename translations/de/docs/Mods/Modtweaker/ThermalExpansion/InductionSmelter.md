# Induktionschmelzer

## Paket

`mods.thermalexpansion.InductionSmelter`

## Addition

```zenscript
mods.thermalexpansion.InductionSmelter.addRecipe(IItemStack primaryOutput, IItemStack primaryInput, IItemStack secondaryInput, int energy, @Optional IItemStack secondaryOutput, @Optional int secondaryChance);

mods. hermalexpansion.InductionSmelter.addRecipe(<minecraft:diamond>, <minecraft:stick>, <minecraft:iron_ore>, 1500, <minecraft:stone>, 20);
```

## Entfernen

```zenscript
mods.thermalexpansion.InductionSmelter.removeRecipe(IItemStack primaryInput, IItemStack secondaryInput);

mods.thermalexpansion.InductionSmelter.removeRecipe(<minecraft:bucket>, <minecraft:sand>);
```