# 关联数组

关联数组 (有时也称为映射或字典) 类似于普通的 [ 数组 ](Arrays_and_Loops/)：它们都存储多个条目。 但是与 [ 数组 ](Arrays_and_Loops/) 不同的是，您可以选择要索引或者键（也称为映射）的类型！

## 声明关联数组

使用大括号 ` {} ` 和冒号 `: ` 来声明关联数组

```JAVA
val myAssocArray = {
    dirt : <minecraft:dirt>,
    gold : <minecraft:gold_ingot>
} as IItemStack[string];
```

让我们对其进行拆分分析：

- ` val myAssocArray = ` 标准变量声明
- ` {` 先生，这是一个关联数组！
- `dirt : <minecraft:dirt>` 使用 `dirt` 字符串映射 `<minecraft:dirt>`
- `, ` 等下，这还没完
- `gold : <minecraft:gold_ingot>` 使用 `gold` 字符串映射 `<minecraft:gold_ingot>`
- `} ` 长官，数组已经写完了！
- ` as IItemStack[string]; `说明这是使用字符串作为索引、 IItemStacks 作为值的关联数组。

好的，那么我在使用它们时需要注意些什么呢？

- Zenscript 中绝大部分数据类型都可以作为键或值。
- 不能遍历一个使用数组作为键的关联数组。
- 使用 2 个变量的遍历方法无法遍历使用数组作为值的数组。
- 不能使用变量作为声明数组的键（使用`{}`的那个），因为这些文本会当成字符串处理！

## 引用关联数组中的项

你可以像访问[数组](Arrays_and_Loops/)中的项一样访问一个关联数组中的项：  
`数组名[索引]`  
唯一不同之处在于，现在不必通过整数序号来访问数组，而是通过你之前预先声明的索引来访问！

```JAVA
<br />val dirt = &lt;minecraft:dirt&gt;;
val assocArray = {
    &lt;minecraft:dirt&gt; : "这是我"
} as string[IItemStack];

//数组名[索引]
print(assocArray[&lt;minecraft:dirt&gt;]);

//只要类型匹配，这里也可以使用变量
print(assocArray[dirt]);
```

有一种特殊情况，当索引为字符串的时：  
使用memberGetter方法（见下）就可以直接引用项：

```JAVA
val assocWithStrings = {
    //你可以使用 ""
    "one" : "1",

    //但这不是强制的
    two : "2"
} as string[string];

//你既可以使用 memberGetter
print(assocWithStrings.one);

//也可以使用传统的索引
print(assocWithStrings["two"]);
```

## 修改关联数组中的项

与数组一样，可以使用 ` 数组名[索引] = 新的值 ` 来修改关联数组中的项.   
但有一个主要的区别：   
数组有固定长度，但索引没有。 That means you can always add an entry by setting to an index that has previously not been set!

```JAVA
val changingArray = {
    <minecraft:dirt> : "this is me",
    <minecraft:gold_ingot> : "and I hate it"
} as string[IItemStack];

val gg = <minecraft:gold>;

//Overrides the value of gold_ingot
changingArray[gg] = "and I love it";

//adds a new entry
changingArray[<minecraft:grass>] = "Power!";
```

## Retrieving an Associative Array's Key and Entrysets

The KeySet is an array containing all the map's keys.  
The valueSet is an array containing all the map's values.  
The entrySet is an array containing all the map's entries (see below).

```JAVA
myAssocArray.keySet   //keySet
myAssocArray.keys     //keySet
myAssocArray.values   //valueSet
myAssocArray.valueSet //valueSet
myAssocArray.entrySet //entrySet
```

## Iterating over an Associative Array

There are two Iterators that allow you to iterate over an Associative Array:

- The key-Iterator: Iterates over the keys, uses one variable
- The key-value-Iterator: Iterates over the keys and values, uses two variables

Let's add an Associative Array that stores crafting recipes to be iterated over:

- Keys shall be the crafting output as [IItemStack](/Vanilla/Items/IItemStack/)
- Values shall be the crafting ingredients as [IIngredient](/Vanilla/Variable_Types/IIngredient/)
- We shall use the key-Iterator that is built like this: `for key in assocArray {doSth;}`
- We shall also use the key-value-Iterator that is built like this `for key, value in assocArray {doSth;}`

```JAVA
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

val dirt = <minecraft:dirt>;
val recipeMapShaped = {
    <minecraft:grass> : [[dirt, dirt, dirt],[dirt, dirt, dirt],[dirt, dirt, dirt]],
    <minecraft:gold_ingot> : [[dirt, dirt, dirt],[dirt, <minecraft:gold_ingot>, dirt],[dirt, dirt, dirt]]
} as IIngredient[][][IItemStack];

recipeMapShaped[dirt] = [[dirt, dirt, dirt],[dirt, null, dirt],[dirt, dirt, dirt]];

//key will be grass, goldIngot, dirt
for key in recipeMapShaped {
    recipes.addShaped(key, recipeMapShaped[key]);
}


//keys will be grass, goldIngot, dirt, values will be the recipes for them
for key, value in recipeMapShaped {
    recipes.addShaped(key, value);
}
```

# ZenType Entry

A map Entry consists of a key and a value.  
Currently the only way to get such an object is via a map's entrySet method.

You can use the getters to get `key` and `value`

```kotlin
//Replace map with a reference to an existing map/associative array
val myEntry = map.entrySet[0];


myEntry.key;    //Returns the entry's key.
myEntry.value;  //Returns the entry's value.
```