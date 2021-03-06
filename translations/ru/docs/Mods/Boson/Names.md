# Имена в Босоне

В Minecraft большинство объектов идентифицируются по уникальным именам. Например, элементы используют свое имя реестра для уникальной идентификации и не могут существовать более одного элемента с тем же именем реестра.

Большинство имен в Minecraft следуют за жесткой структурой, идентифицированной строкой с пространством имён и путем, разделенным двоеточием (например, `minecraft:iron_ingot`, где `minecraft` - пространство имён и `iron_ingot` - путь). В CraftTweaker, большинство из этих имен представлены как сырые строки, но внутри Босна это затоплено. Фактически, использование необработанной `строки` может запутать людей в том, ожидает ли метод строку пробелом имён или нет. По этой причине Босон разделяет использование строк, не относящихся к именам, и пространств имён.

Строки, не связанные с пространством имён, представлены как экземпляры `строки`, среди всех Boson API. Для получения дополнительной информации обратитесь к к документации ZenScript.

Пространственные строки представлены как экземпляры `NameSpacedString`, среди всех Boson API. Для получения дополнительной информации о том, как получить такие строки, обратитесь к следующему разделу.

## `Наименование пробелов` документация
Класс `NameSpacedString` находится в пакете `net.thesilkminer.mc.boson.zen.naming`.

### Создание нового экземпляра
Существует два способа создания `NameSpacedString`: используя заводский метод или накладывая `строку`.

Предложенным подходом является заводский метод. Из-за того, что он является статическим методом, он может быть вызван непосредственно в экземпляре класса . Ниже приведена подпись метода и пример его использования:

```zenscript
функции from(nameSpace как строка?, путь как строка) как пробел имя;
```

```zenscript
NameSpacedString.from("minecraft", "iron_ingot"); // эквивалент minecraft:iron_ingot
NameSpacedString.from(null, "iron_ingot"); // использует стандартное пространство имен 'minecraft'
```

The casting way relies instead on an explicit cast from a `string` to a `NameSpacedString` using the `as` operator in ZenScript:

```zenscript
"minecraft:iron_ingot" как имя пробела;
```

### Свойства
`Строка пространства имён` предоставляет только для чтения доступ к пространству имён и пути через свойства:

| Название свойства | Тип      | Описание                                                                   |
| ----------------- | -------- | -------------------------------------------------------------------------- |
| `пробел имени`    | `string` | Получает часть пространства имен `NameSpacedString` (например `minecraft`) |
| `путь`            | `string` | Получает часть пути `пространства имён` (например, `iron_ingot`)           |

### Методы

#### `asString`
`Пространство имён` может быть преобразовано обратно в обычную `строку` , используя метод `asString`. Ниже приведена подпись метода и пример его использования:

```zenscript
функция asString() как строка;
```

```zenscript
val nss = NameSpacedString("minecraft", "iron_ingot");
println(nss.asString()); // Вывод 'minecraft:iron_ingot' в журнал
```
