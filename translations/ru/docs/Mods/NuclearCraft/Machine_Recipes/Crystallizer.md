# Кристаллизатор

## Импортирование пакета
`mods.nuclearcraft.crystallizer`

## Добавление рецептов
```zenscript
mods.nuclearcraft.crystallizer.addRecipe([fluidInput, itemOutput, @Optional double timeMultiplier, @Optional double powerMultiplier, @Optional double processRadiation]);
```

## Удаление рецептов
```zenscript
mods.nuclearcraft.crystallizer.removeRecipeWithInput([fluidInput]);
mods.nuclearcraft.crystallizer.removeRecipeWithOutput([itemOutput]);
mods.nuclearcraft.crystallizer.removeAllRecipes();
```