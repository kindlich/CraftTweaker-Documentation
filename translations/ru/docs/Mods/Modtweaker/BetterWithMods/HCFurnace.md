# HCFurnace

Функция HCFurnace позволяет производить печь рецепты различного времени в зависимости от расплавляемого предмета. Это не влияет на то, как топливо работает, означает что некоторые рецепты будут брать более или менее топливо.

Позволяет устанавливать время, в тиках, что требуется определенный рецепт печи для плавки на основе входящего элемента

```zenscript
  mods.betterwithmods.Misc.setFurnaceSmeltingTime(IIngredient ingredient, int time)

  //Сделайте картофель, чтобы плавить около 83 минуты, потому что почему бы не
  mods.betterwithmods.Misc.setFurnaceSmeltingTime(<minecraft:potato>,100000); 
```