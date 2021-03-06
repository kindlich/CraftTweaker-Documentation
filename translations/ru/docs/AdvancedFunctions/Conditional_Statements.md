# Условные выражения

Вы можете включать код, который будет выполняться, только если соблюдено некоторое условие (или наоборот, если не соблюдено). Вот для чего нужны условные выражения.

## If

Выражение if &mdash; первая часть условного выражения. Оно объявляет условие, которое должно быть истинным, чтобы последующий код был выполнен. Будьте осторожны, для сравнения значений вы должны ставить ДВА ЗНАКА РАВЕНСТВА (потому что единичный нужен для объявления значений!).

```zenscript
val test = 0;

if(test == 0){ //true
    print("Переменная test равна нулю!");
}
```

## Else

Выражение else может быть добавлено после условного выражения, чтобы объявить, что должно быть выполнено, если выражение из if ложно.

```zenscript
испытание вар = 0;

if(test == 0){//true
    //будет выполнен, когда тест равен 0
    print("Тест равен нулю! );
} else {
    //будет выполнен, когда тест не равен 0
    print("Тест не нуль! );
}

test = 1
if(test == 0){//false
    //будет выполнено при равном 0
    print("Теперь, тест равен нулю! );
} else {
    //будет выполнен, когда тест не равен 0
    print("Теперь, тест не нулево! );
}

```

## Вещи, которые можно проверять

Поддерживаемые вычисления `+`,`-`,`*`,`/`,`мод`,`слияния(~)`

Поддерживаемые операнды: `OR(|)`, `AND(&)`, `XOR(^)`

```zenscript
//Вы можете проверить:


//Значения чисел
val a = 0 int;
if(a==0){print("NumVal");

//Вычисляемые числовые значения
val b = 1;
val c = 5;
//Все вычисляются истинно
if(b+c==6){print("Num1! );}
if(b*c==5){print("Num2!");}
if(b/c==0. ){print("Num3! );}

//OR, XOR, AND
val d = "Привет";
val e = "Мир";
val f = d~e; //f = "HelloWorld", Tilde просто объединяет одну вещь в другую

//|(OR) означает, до тех пор, пока один из критериев будет выполнен, он вычисляет истину
if(d=="Hello" | e == "Hello"){print("OR1! );} //true
if(d=="Hello" | e == "World"){print("OR2! );} //истина

//^(XOR) означает ТОЛЬКО ОДИН критерии, иначе он вычисляет ложь
if(d=="Hello" ^ e == "Hello"){print("XOR1! );} //true
if(d=="Hello" ^ e == "World"){print("XOR2! );} //false

//&(AND) означает оба критерия необходимо выполнить, иначе он вычисляет ложь
if(d=="Hello" & e == "Hello"){print("AND1! );} //false
if(d=="Hello" & e == "World"){print("AND2!");} //true
```

## Оператор ?

Безусловно, всегда напечатайте структуру если /else может быть раздражающей. Особенно если вы просто хотите сделать или состояние. Именно поэтому оператор `?` был реализован. Он следует той же логике, что и заявление если/иначе, это только по гораздо меньше требуемого кода. Syntax: `boolean ? если : else`

```zenscript
val switchy = false;

//Состояние переключателя печати
("Щит " ~ switchy);

//Если переключатель истинен, vInt = 1, иначе vInt = 2
val vInt = switchy ? 1 : 2;
print(vInt);

//Вывод "Hello" если переключатель вешен, иначе напечатает "Bye"
print(switchy ? "Hello" : "Bye");

//Выводит "Bye", если переключатель верен, иначе напечатает "Hello"
переключатель ? print("Bye") : print("Hello");

```

## Операторы

Вы можете использовать следующие операторы. Все приведенные примеры истинны.

| Название         | символ   | Объяснение                                                                                                          | Пример            |
| ---------------- | -------- | ------------------------------------------------------------------------------------------------------------------- | ----------------- |
| Не               | `!`      | Инвертирует логическое значение                                                                                     | !false            |
| Не равно         | `!=`     | Проверяет, что значение перед знаком и после него не равны                                                          | ! != 2            |
| Равно            | `==`     | Проверяет, что значение перед знаком и после равны                                                                  | 1 == 1            |
| Больше           | `>`   | Проверят, что значение перед знаком больше, чем то, что после                                                       | 1 > 2             |
| Больше или равно | `>=`  | Проверят, что значение перед знаком больше или равно тому, что после                                                | 1 >= 1            |
| Меньше           | `<`   | Проверяет, что значение перед знаком меньше, чем то, что после                                                      | 1 < 2             |
| Меньше или равно | `<=`  | Проверяет, что значение перед знаком меньше или равно тому, что после                                               | 1 <= 1            |
| И                | `&`  | Проверяет, что выражения и перед знаком, и после него истинны                                                       | true & true       |
| ИЛИ              | `&#124;` | Проверят, что истинно либо значение перед знаком, либо значение после знака. Если верны оба, то все выражение верно | истина \| истина |
| ИЛИ-ИСКЛ         | `^`      | Проверяет, что ровно одно значение либо перед, либо после знака верно                                               | true ^ false      |

## Оператор in/has

`в` и `оператор` проверит, что-то ли в чем-то еще.  
Для начала вам нужен список, который вы хотите проверить, тогда `в`/`имеет` , затем значение, которое вы хотите проверить. `in` and `has` are the same keyword for ZS, but in most cases people use `has` for checking if a collection contains an item and in for loops as this represents the English grammar.

### in/has loadedMods

Вы можете проверить, загружен ли мод, проверив его ли в списке загруженных модов

```zenscript
//В то время как проверки могут использоваться в
if(loadedMods в "mcp"){
    print("Minecraft Coder Pack загружен");
}

//Большинство людей предпочитают использовать
if(loadedMods имеет "mcp"){
    print("Minecraft Coder Pack загружен");
}
```

### in/has IIngredient

You can also check if an item matches a definition by comparing two IIngredients.  
With this one you need to be a bit careful as not to confuse the two entries:  
This is only true when the IIngredeint AFTER the `in` can also be found completely in the one BEFORE the `in`.  
In most cases you will use the `has` keyword instead as it's intention is more clear and it does exactly the same.

```zenscript
if(<ore:ingotIron> in <minecraft:iron_ingot>){
    print("Железные слитки находятся в правой oreDic");
}

if(<ore:ingotIron> has <minecraft:iron_ingot>){
    print("Iron ingots are in the right oreDic");
}
```

Это только тогда правда, когда ВСЕ совпадающие элементы из IIngredient AFTER `есть` также могут быть найдены в IIngredient ``: Скажем, у нас есть ингредиент, содержащий все пыли (e. . красный и светлокаменный пыль):

```zenscript
val redstone = <minecraft:redstone>;
val glowstone = <minecraft:glowstone>
val allDusts = <ore:dustAll>;
allDusts. dd(красный камень, светящий);

//Истинно редстоун является частью alldusts
if(allDusts has redstone) {

}

//Ложь, как allDusts состоит из красного камня и светлокамня, и красный камень только состоит из красного камня.
if(redstone имеет allDusts) {

}
```