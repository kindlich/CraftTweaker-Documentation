# `Родной класс`

`NativeClass` определяет экземпляр класса бэкэнда, лежащего за ZenScript. В случае CraftTweaker, `Поэтому класс родного` представляет класс Java.

## Детали урока
Класс расположен в пакете `zenscriptx.reflect` , что делает `zenscriptx.reflect.NativeClass` полностью квалифицированным именем для импорта.

## Создание новой копии
Единственным возможным способом создания нового экземпляра `NativeClass` является один из двух статических методов, которые взяли либо имя класса, либо объект для проверки. В нижеследующем сниппе показаны подписи двух методов, которые можно использовать:

```zenscript
function byName(name as string) as NativeClass?;
function fromZen(instance as any) as NativeClass?;
```

Оба метода могут возвращать `null` (как показано `?` в конце типа) потому что существует возможность для некоторых классов не существует или нет обратной стороны бэкэнда. Фактически, некоторые конкретные ассоциативные массивы могут быть не представляемыми в бэкэнде и требовать правильного использования некоторых флангов.

Ниже приводятся некоторые примеры использования двух методов производства:

```zenscript
NativeClass.byName("crafttweaker.api.item.IItemStack"); # возвращает NativeClass с заданным именем
NativeClass. romZen(<blockstate:minecraft:pumpkin>); # возвращает NativeClass который соответствует классу IBlockState ZenScript
NativeClass. yName("123"); # возвращает null потому что ни один родной класс с таким именем не может существовать
```

## Свойства
`Родительский класс` предоставляет только для чтения доступ к определенному набору свойств, как указано в следующей таблице:

| Название свойства | Тип      | Описание                                                                                                                                                              |
| ----------------- | -------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `simpleName`      | `string` | «Краткое» имя, которое может быть использовано в качестве ссылки на класс (т.е. `IItemStack` для `crafttweaker. pi.item.IItemStack`, `String` для `java.lang.String`) |
| `qualifiedName`   | `string` | Полное имя, которое уникально идентифицирует класс в бэкэнде (например, `crafttweaker.api.item.IItemStack` или `java.lang.String`)                                    |

## Методы
`NativeClass` также предоставляет доступ к одному методу, который позволяет преобразовать в эквивалент ZenScript (см. [`класс`](/Mods/Boson/Reflection/Class/) для получения дополнительной информации). Подписание этого метода является следующим:

```zenscript
функция toClass() как класс?;
```

Метод может возвращать `null` , так как не все родные классы могут иметь представление в ZenScript. На самом деле, есть некоторые части бэкэнда, которые не подвергаются воздействию пользователей ZenScript, таких как `org.apache.commons. ang3.BitField`, который поэтому не может быть представлен через объект ZenScript `класса`.
