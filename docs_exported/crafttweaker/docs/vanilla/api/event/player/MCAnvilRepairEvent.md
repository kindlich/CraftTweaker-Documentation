# MCAnvilRepairEvent

This class was added by a mod with mod-id `crafttweaker`. So you need to have this mod installed if you want to use this feature.

## Importing the class

It might be required for you to import the package if you encounter any issues (like casting an Array), so better be safe than sorry and add the import.
```zenscript
import crafttweaker.api.event.entity.player.MCAnvilRepairEvent;
```


## Extending MCPlayerEvent

MCAnvilRepairEvent extends [MCPlayerEvent](/vanilla/api/event/player/MCPlayerEvent). That means all methods available in [MCPlayerEvent](/vanilla/api/event/player/MCPlayerEvent) are also available in MCAnvilRepairEvent

## Methods

### getBreakChance

Return Type: float

```zenscript
MCAnvilRepairEvent.getBreakChance() as float
myMCAnvilRepairEvent.getBreakChance();
```
### getIngredientInput

Return Type: [IItemStack](/vanilla/api/items/IItemStack)

```zenscript
MCAnvilRepairEvent.getIngredientInput() as IItemStack
myMCAnvilRepairEvent.getIngredientInput();
```
### getItemInput

Return Type: [IItemStack](/vanilla/api/items/IItemStack)

```zenscript
MCAnvilRepairEvent.getItemInput() as IItemStack
myMCAnvilRepairEvent.getItemInput();
```
### getItemResult

Return Type: [IItemStack](/vanilla/api/items/IItemStack)

```zenscript
MCAnvilRepairEvent.getItemResult() as IItemStack
myMCAnvilRepairEvent.getItemResult();
```
### setBreakChance

Return Type: void

```zenscript
MCAnvilRepairEvent.setBreakChance(breakChance as float) as void
```
| Parameter | Type | Description |
|-----------|------|-------------|
| breakChance | float | No Description Provided |

## Properties

| Name | Type | Has Getter | Has Setter |
|------|------|------------|------------|
| breakChance | float | true | true |
| ingredientInput | [IItemStack](/vanilla/api/items/IItemStack) | true | false |
| itemInput | [IItemStack](/vanilla/api/items/IItemStack) | true | false |
| itemResult | [IItemStack](/vanilla/api/items/IItemStack) | true | false |
