# MutableItemStack

Mutable Item Stack - специальный объект [IItemStack](/Vanilla/Items/IItemStack/) , который можно получить только из [ICTPlayers](/Mods/ContentTweaker/Vanilla/Types/Player/ICTPlayer/).  
Это означает, что все методы [IItemStack](/Vanilla/Items/IItemStack/)и [Igredients](/Vanilla/Variable_Types/IIngredient/)!

## Импорт пакета

Возможно, вам потребуется импортировать пакет, если вы столкнетесь с какими-либо проблемами, так что лучше быть безопасным чем извините и добавьте импорт.  
`импорт mods.contenttweaker.MutableItemStack;`

## ZenMethods

### Количество

Количество стеков — это количество предметов в этом стеке!

| Метод                | Тип параметра | Описание                                                        |
| -------------------- | ------------- | --------------------------------------------------------------- |
| setCount(count)      | int           | Устанавливает количество стеков на `количество предоставленных` |
| grow(count)          | int           | Увеличивает количество стеков на `предоставленное`              |
| усадьба (количество) | int           | Уменьшает количество стека на `предоставленном количестве`      |

### Урон

`повреждение (сумма подсказки, игрок в МТПлеер)`

Параметры:

- int сумма → Количество очков урона для придания предмету
- [ICTPlayer](/Mods/ContentTweaker/Vanilla/Types/Player/ICTPlayer/) игрок → игрок/сущность повреждает предмет