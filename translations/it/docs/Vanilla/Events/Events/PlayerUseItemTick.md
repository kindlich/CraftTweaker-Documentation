# PlayerUseItemTick

L'evento PlayerUseItemTick è sparato ogni tick un giocatore utilizza costantemente un oggetto.

## Classe Evento

Dovrai lanciare l'evento nell'intestazione della funzione come questa classe:  
`crafttweaker.event. layerUseItemTick`  
È possibile, naturalmente, anche [importare](/AdvancedFunctions/Import/) la classe prima e utilizzare quel nome allora.

## Estensioni dell'interfaccia evento

PlayerUseItemTick Events implementa le seguenti interfacce e sono in grado di chiamare anche tutti i loro metodi/getter/setter:

- [IEventCancelable](/Vanilla/Events/Events/IEventCancelable/)
- [IPlayerEvent](/Vanilla/Events/Events/IPlayerEvent/)

## ZenGetters

Le seguenti informazioni possono essere ricavate dall'evento:

| ZenGetter   | Tipo Di Reso                             |
| ----------- | ---------------------------------------- |
| `annullato` | boolean                                  |
| `giocatore` | [IPlayer](/Vanilla/Players/IPlayer/)     |
| `elemento`  | [IItemStack](/Vanilla/Items/IItemStack/) |
| `durata`    | int                                      |

## ZenMethods

- `event.cancel()` imposta l'evento come annullato