# Mortars

## Importowanie pakietu

Możesz nazwać pakiet moździerza używając `mods.advancedmotars.moździerz`.

## Dodaj przepis

<table>
  <tr>
    <th>
      Typ
    </th>
    
    <th>
      Typ danych
    </th>
    
    <th>
      Przykłady
    </th>
  </tr>
  
  <tr>
    <td>
      Typy moździerzy
    </td>
    
    <td>
      Ciąg znaków[]
    </td>
    
    <td>
      ["drewno", "kamień", "żelazo", "diamenty"]
    </td>
  </tr>
  
  <tr>
    <td>
      Wyjście
    </td>
    
    <td>
      <a href="/Vanilla/Items/IItemStack/">IItemstack</a>
    </td>
    
    <td>
      <minecraft:diamond\>
    </td>
  </tr>
  
  <tr>
    <td>
      Czas trwania
    </td>
    
    <td>
      Liczba całkowita
    </td>
    
    <td>
      2000
    </td>
  </tr>
  
  <tr>
    <td>
      Inputs
    </td>
    
    <td>
      <a href="/Vanilla/Variable_Types/IIngredient/">Składnik</a>
    </td>
    
    <td>
      [<ore:logWood\>, <ore:plankWood\>]
    </td>
  </tr>
</table>

### Przykład

```zenscript
///// "Crushing"
mods.advancedmortars.Mortar.addRecipe(["wood", "stone", "iron", "diamond"], <minecraft:dye:15> * 4, 8, [<minecraft:bone>]);
mods.advancedmortars.Mortar.addRecipe(["wood", "stone", "iron", "diamond"], <plants2:generic:4> * 2, 8, [<botania:flower>]);
mods.advancedmortars.Mortar.addRecipe(["wood", "stone", "iron", "diamond"], <minecraft:dye:10> * 2, 8, [<botania:flower:5>]);
mods.advancedmortars.Mortar.addRecipe(["wood", "stone", "iron", "diamond"], <minecraft:dye:5> * 2, 8, [<botania:flower:10>]);
mods.advancedmortars.Mortar.addRecipe(["wood", "stone", "iron", "diamond"], <minecraft:dye:14> * 2, 8, [<botania:flower:1>]);
mods.advancedmortars.Mortar.addRecipe(["wood", "stone", "iron", "diamond"], <minecraft:dye:9> * 2, 8, [<botania:flower:6>]);
mods.advancedmortars.Mortar.addRecipe(["wood", "stone", "iron", "diamond"], <minecraft:dye:7> * 2, 8, [<botania:flower:8>]);
mods.advancedmortars.Mortar.addRecipe(["wood", "stone", "iron", "diamond"], <minecraft:dye:8> * 2, 8, [<botania:flower:7>]);
mods.advancedmortars.Mortar.addRecipe(["wood", "stone", "iron", "diamond"], <minecraft:dye:6> * 2, 8, [<botania:flower:9>]);

///// "Mixing"
mods.advancedmortars.Mortar.addRecipe(["wood", "stone", "iron", "diamond"], <minecraft:dye:7> * 2, 4, [<ore:dyeBlack>, <ore:dyeWhite>]);
mods.advancedmortars.Mortar.addRecipe(["wood", "stone", "iron", "diamond"], <minecraft:dye:8> * 2, 4, [<ore:dyeBlack>, <ore:dyeWhite> * 2]);
mods.advancedmortars.Mortar.addRecipe(["wood", "stone", "iron", "diamond"], <minecraft:dye:12> * 2, 4, [<ore:dyeBlue>, <ore:dyeWhite>]);
mods.advancedmortars.Mortar.addRecipe(["wood", "stone", "iron", "diamond"], <minecraft:dye:5> * 2, 4, [<ore:dyeRed>, <ore:dyeBlue>]);
mods.advancedmortars.Mortar.addRecipe(["wood", "stone", "iron", "diamond"], <minecraft:dye:9> * 2, 4, [<ore:dyeRed>, <ore:dyeWhite>]);
mods.advancedmortars.Mortar.addRecipe(["wood", "stone", "iron", "diamond"], <minecraft:dye:6> * 2, 4, [<ore:dyeGreen>, <ore:dyeBlue>]);
mods.advancedmortars.Mortar.addRecipe(["wood", "stone", "iron", "diamond"], <minecraft:dye:10> * 2, 4, [<ore:dyeGreen>, <ore:dyeWhite>]);
mods.advancedmortars.Mortar.addRecipe(["wood", "stone", "iron", "diamond"], <minecraft:dye:13> * 2, 4, [<ore:dyePurple>, <ore:dyePink>]);
```