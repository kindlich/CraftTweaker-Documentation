# Conteneur de Joueur

L'événement PlayerCloseContainer est lancé chaque fois qu'un joueur ferme un conteneur.

## Classe de l'événement
Vous devrez lancer l'événement dans l'en-tête de la fonction comme cette classe:  
`crafttweaker.event. layerCloseContainerEvent`  
Vous pouvez, bien sûr, également [importer](/AdvancedFunctions/Import/) la classe avant et utiliser ce nom alors.

## Extensions d'interface de l'événement
Les événements PlayerCloseContainer implémentent les interfaces suivantes et peuvent également appeler toutes leurs méthodes/getters/setters :

- [Evénement IPlayer](/Vanilla/Events/Events/IPlayerEvent/)


## ZenGetters
Les informations suivantes peuvent être récupérées à partir de l'événement :

| ZenGetter   | Type de retour                               |
| ----------- | -------------------------------------------- |
| `conteneur` | [IConteneur](/Vanilla/Container/IContainer/) |
