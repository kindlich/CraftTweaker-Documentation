# 玩家拾取物品

每当玩家与实体交互时都会触发玩家选取物品事件。

## 事件类

You will need to cast the event in the function header as this class:  
`crafttweaker.event.PlayerPickupItemEvent`  
You can, of course, also [import](/AdvancedFunctions/Import/) the class before and use that name then.

## 事件界面扩展

播放器拾取项目事件实现了以下接口，并且能够调用他们所有的方法/getter/setter：

- [IPlayerEvent](/Vanilla/Events/Events/IPlayerEvent/)

## ZenGetters

以下信息可以从事件中检索：

| ZenGetter | 返回值类型                                         |
| --------- | --------------------------------------------- |
| `项目`      | [IEntityItem](/Vanilla/Entities/IEntityItem/) |
| `播放器`     | [IPlayer](/Vanilla/Players/IPlayer/)          |