# IIngredientTransformer&LT;T : IIngredient&GT;

This class was added by a mod with mod-id `crafttweaker`. So you need to have this mod installed if you want to use this feature.

## Importing the class

It might be required for you to import the package if you encounter any issues (like casting an Array), so better be safe than sorry and add the import.
```zenscript
import crafttweaker.api.item.IIngredientTransformer;
```


## Methods

### getCommandString

Return Type: string

```zenscript
IIngredientTransformer.getCommandString(ingredient as T) as string
```
| Parameter | Type | Description |
|-----------|------|-------------|
| ingredient | T | No Description Provided |
### matches

Return Type: boolean

```zenscript
IIngredientTransformer.matches(stack as IItemStack) as boolean
```
| Parameter | Type | Description |
|-----------|------|-------------|
| stack | [IItemStack](/vanilla/api/items/IItemStack) | No Description Provided |
