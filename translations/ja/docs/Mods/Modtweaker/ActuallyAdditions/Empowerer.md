# 強化者

## パッケージ

`mods.actuallyadditions.Empowerer`

## 加算

```zenscript
mods.actuallyadditions.Empowerer.addRecipe(IItemStack output, IItemStack input, IItemStack modifier1, IItemStack modifier2, IItemStack modifier3, IItemStack modifier4, int energyPerStand, int time);
mods.actuallyadditions.Empowerer.addRecipe(IItemStack output, IItemStack input, IItemStack modifier1, IItemStack modifier2, IItemStack modifier3, IItemStack modifier4, int energyPerStand, int time, float[] particleColourArray);

mods.actuallyadditions.Empowerer.addRecipe(<minecraft:iron_ingot>, <minecraft:leaves>, <minecraft:redstone>, <minecraft:redstone>, <minecraft:redstone>, <minecraft:redstone>, 500, 100);
mods.actuallyadditions.Empowerer.addRecipe(<minecraft:gold_ingot>, <minecraft:iron_ingot>, <minecraft:redstone>, <minecraft:redstone>, <minecraft:redstone>, <minecraft:redstone>, 500, 100, [0.5, 0.3, 0.2]);
```

## 削除

```zenscript
//mods.actuallyadditions.Empowerer.removeRecipe(IItemStack output);
mods.actuallyadditions.Empower.removeRecipe(<actuallyadditions:item_crystal_empowered:5>);
```