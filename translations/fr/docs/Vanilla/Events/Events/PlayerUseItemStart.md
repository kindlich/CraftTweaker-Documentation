# PlayerUseItemStart

L'événement PlayerUseItemStart est lancé chaque fois qu'un joueur commence à utiliser un objet.

## Classe de l'événement

Vous devrez lancer l'événement dans l'en-tête de la fonction comme cette classe:  
`crafttweaker.event. layerUseItemStartEvent`  
Vous pouvez, bien sûr, également [importer](/AdvancedFunctions/Import/) la classe avant et utiliser ce nom alors.

## Extensions d'interface de l'événement

Les événements PlayerUseItemStart implémentent les interfaces suivantes et peuvent également appeler toutes leurs méthodes/getters/setters :

- [IEventCancelable](/Vanilla/Events/Events/IEventCancelable/)
- [Evénement IPlayer](/Vanilla/Events/Events/IPlayerEvent/)

## ZenGetters

Les informations suivantes peuvent être récupérées à partir de l'événement :

| ZenGetter | Type de retour                           |
| --------- | ---------------------------------------- |
| `annulé`  | boolean                                  |
| `Joueur`  | [IPlayer](/Vanilla/Players/IPlayer/)     |
| `Élément` | [IItemStack](/Vanilla/Items/IItemStack/) |

## Méthodes Zen

- `event.cancel()` définit l'événement comme annulé