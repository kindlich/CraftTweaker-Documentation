# PlayerDestroyItem

The PlayerDestroyItem Event is fired whenever a player destroys an item.

## Event Class

You will need to cast the event in the function header as this class:  
`crafttweaker.event.PlayerDestroyItemEvent`  
You can, of course, also [import](/AdvancedFunctions/Import/) the class before and use that name then.

## Event interface extensions

PlayerDestroyItem Events implement the following interfaces and are able to call all of their methods/getters/setters as well:

- [IPlayerEvent](/Vanilla/Events/Events/IPlayerEvent/)

## ZenGetters

다음 정보들은 이벤트를 통해서 얻을 수 있습니다.

| ZenGetter      | 반환 타입                                    |
| -------------- | ---------------------------------------- |
| `player`       | [IPlayer](/Vanilla/Players/IPlayer/)     |
| `originalItem` | [IItemStack](/Vanilla/Items/IItemStack/) |
| `hand`         | string                                   |