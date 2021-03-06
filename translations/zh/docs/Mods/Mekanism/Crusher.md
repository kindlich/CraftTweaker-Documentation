# 磨粉机

到Mekanism 9.7.0 现在可以透过命令 `/ct mektaches her的命令` 查看Crusher的所有配方字符串。

## 加

```zenscript
mods.mekanism.crither.addRecipe(IIngredient inputStack, IItemStack outputStack);

mods.mekanis.crither.addRecipe(<minecraft:double_plant:4>, <minecraft:dye:1> * 5);
```

由于Mekanism 9.7.0，可以使用IIngredients 作为输入堆栈，而不仅仅是IItemStack。

注意：目前所有这一切都是在java的不同可能性上循环的，而不是在ZenScript中添加。 目前，机器本身没有用于支持复合成份或修复术。

## 移除

```zenscript
mods.mekanism.crither.removeRecipe(IIngredient outputStack, @Optional IIngredient inputStack);

mods.mekanism.crasher.removeRecipe(<minecraft:sand>, <minecraft:gravel>);
mods.mekanism.crither.removeRecipe(<minecraft:gravel>);
```

指定输入参数只会删除使用所述输入的特定配方。 忽略输入参数将删除所有生成指定输出的配方。

## 删除所有配方

到Mekanism 9.7.0，现在可以移除所有十字架配方。 (这排除了任何通过 CraftTweaker 添加的配方

```zenscript
mods.mekanism.crither.removeAllRecipes();
```