# IBlockPattern

IBlockPattern — это интерфейс, позволяющий объединять несколько блоков в один объект.  
Интерфейс [Ingredient](/Vanilla/Variable_Types/IIngredient/) - [IItemStacks](/Vanilla/Items/IItemStack/).

## Импорт пакета

Возможно, вам потребуется импортировать пакет, если вы столкнетесь с какими-либо проблемами (например, наложение [массива](/AdvancedFunctions/Arrays_and_Loops/)), так что лучше быть безопасным, чем извините и добавить импорт.  
`импорт crafttweaker.block.IBlockPattern;`

## Получение объекта IBlockPattern

Технически, каждый раз, когда вы вызываете объект [IBlock](/Vanilla/Blocks/IBlock/) , вы вызываете объект IBlockPattern.  
Но есть случаи, когда вы явно получаете объект IBlockPattern, как возврат.

* ИЛИ два [IBlock](/Vanilla/Blocks/IBlock/)

## Геттеры

| Геттер      | Что он делает                                      | Возвращаемый тип                          |
| ----------- | -------------------------------------------------- | ----------------------------------------- |
| blocks      | Перечисляет весе возможные блоки для этого объекта | Список<[IBlock](/Vanilla/Blocks/IBlock/)> |
| displayName | Возвращает отображаемые имена подходящих блоков    | string                                    |

## ИЛИ

Вы можете ИЛИ два объекта IBlockPattern, используя ИЛИ `|` Оператор

## Соответствие

Вы можете проверить, содержит ли объект IBlockPatternObject другой, используя `в` ключевое слово.  
Например, можно проверить, есть ли блок в IBlockPattern.