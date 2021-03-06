# Условия элемента

Иногда обычные элементы не обрезают:

Иногда мы хотим иметь возможность указывать рецепты, которые работают только тогда, когда вводный элемент выполняет некоторые условия.

Иногда мы хотим иметь возможность указывать рецепты, которые производят особый предмет, будь то значение NBT-Tag или Урон или наоборот.

## Импорт пакета

Возможно, вам потребуется импортировать пакет, если вы столкнетесь с какими-либо проблемами (например, наложение [массива](/AdvancedFunctions/Arrays_and_Loops/)), так что лучше быть безопасным, чем извините и добавить импорт.  
`импорт crafttweaker.item.IItemCondition;`

## Входные условия

Они повлияют на предметы, которые можно использовать для создания результирующего предмета. Помните, что вы можете смешивать модификаторы для смешивания урона и NBT-тег, например,

```zenscript
<minecraft:iron_pickaxe>.onlyDamaged().withTag({display: {Lore: "Aren't all butterflies?"}});
```

### Урон

#### любой урон

Значение урона предмета не имеет значения для рецепта

```zenscript
item.anyDamage()
```

#### только поврежден

Элемент ввода должен быть повреждён

```zenscript
item.onlyDamaged();
```

#### Повреждено по крайней мере

Значение повреждения входящего элемента должно быть по крайней мере указанным значением ``  
`Значение` является int

```zenscript
item.onlyDamageAtLeast(значение);
```

#### Максимальный урон

Значение повреждения входящего элемента должно быть не менее `указанного значения`  
`Значение` является int

```zenscript
item.onlyDamageAtMost(значение);
```

#### Урон между

Значение урона входящего элемента должно быть между заданным `значением1` и `значением`  
`Значение1` является int  
`Значение2` является int

```zenscript
item.onlyDamageBetween(значение1, значение2);
```

### Получить предметы или явно запретить повторное использование предмета

Иногда вам нужен рецепт, в котором вы получите некоторые входящие элементы.  
применяя `transformage(int)` вы можете создать такие рецепты.

#### преобразование повреждения

Введённый предмет получит `значение` очков урона, и вы получите его обратно, если только он не будет прерван во время процесса создания.  
`Значение` является подсказкой

```zenscript
item.transformDamage(значение);
```

### NBT-теги

Иногда вы хотите, чтобы ваши ингредиенты нуждались в конкретном NBT-теге. Рецепт не заботится, если в предмете есть NBT-теги, отличные от тех, которые указаны в заданном рецепте, Таким образом, может быть зачарована кирка с определенным цветом!

Если вы используете `withTag` jei будет отображаться правильно, если вы используете `только WithTag`, jei будет отображать только бесцветный предмет!

Вот как вы это делаете: `NBTTag` это ваши NBT данные

```zenscript
item.withTag(NBTData);
item.onlyWithTag(NBTTag);

<minecraft.iron_pickaxe>.onlyWithTag({display: {Name: "Pickle the Pickleberry"}});
<minecraft.iron_pickaxe>.withTag({display: {Name: "Pickleberry"});
```

## Модификаторы вывода

Если вы можете указать условия ввода, то не так трудно также определить условия вывода или, скорее, модификаторы вывода.

### Урон

Ваш выходной элемент будет иметь `значение` точек повреждения.  
`Значение` является int.

```zenscript
item.withDamage(value);
```

### NBT-теги

Ваш выходной элемент будет иметь `NBTTag` в качестве NBT-тега.  
`NBTTag` - ваши данные NBT

```zenscript
item.withTag(NBTTag);

<minecraft:iron_pickaxe>.withTag({display: {Name: "Pickleberry"}})
```

## Регистрация собственных Условий

Вы также можете добавить свои собственные Условия товаров. These are special functions that accept the [item](/Vanilla/Items/IItemStack/) itself as single parameter.

```zenscript
conditionedItem = item.only(function(item) {return true;});
```

Функция должна возвращать логику, которая является истиной, если элемент соответствует условию.