# 条件语句

您可能需要仅在满足某些条件 (或除了某些条件) 时才执行的代码。 这就是你需要条件语句的地方。

## If

if 语句是条件语句的第一部分。 它用于声明接下来的代码块只有在判定条件为 true 才会执行。 注意！两个等号才是比较运算符（一个等号是赋值运算符！）

```Java
val test = 0;

if(test == 0){ //结果为 true
    print("Test 等于零！");
}
```

## Else

Else 语句需要加在条件语句的后，用于声明当 if 语句的条件为 False 时候执行的代码块。 

```Java
var test = 0;

if(test == 0){//结果为true
    //当 test 等于 0 时执行的代码块
    print("test 等于 0！");
} else {
    //当 test 不等于 0 时执行的代码块
    print("test 不等于 0！");
}

test = 1
if(test == 0){//结果为false
    //当 test 等于 0 时执行的代码块
    print("现在，test 等于 0！");
} else
    //当 test 不等于 0 时执行的代码块
    print("现在，test 不等于 0！");
}

```

## 注意事项

支持`+`、`-`、`*`、`/`、`mod`和`链接字符串(~)`运算符

也支持`或(|)`、`与(&)`和`异或(^)`逻辑运算符

```Java
//可以判断的类型包括：


//数值
val a = 0 as int;
if(a==0){print("NumVal");}

//运算结果
val b = 1;
val c = 5;
//一下所有结果均为 true
if(b+c==6){print("Num1!");}
if(b*c==5){print("Num2!");}
if(b/c==0.2){print("Num3!");}

//或、异或和与逻辑
val d = "你好";
val e = "世界";
val f = d~e; //f = "你好世界"，波浪号只起到链接字符串的作用

//|(或) 逻辑判断，两个条件的判断结果只要一个为 true，输出就为 true
if(d=="你好" | e == "你好"){print("OR1!");}       //true
if(d=="你好" | e == "世界"){print("OR2!");}       //true

//^(异或)逻辑判断，有且仅有一个条件的判断结果为 true 时输出结果才为 true，否则输出结果为 false
if(d=="你好" ^ e == "你好"){print("XOR1!");}      //true
if(d=="你好" ^ e == "世界"){print("XOR2!");}      //false

//&(与)逻辑判断，只有两个条件的判断结果都为 true 时输出结果才为 true，否则结果为 false
if(d=="你好" & e == "你好"){print("AND1!");}      //false
if(d=="世界" & e == "世界"){print("AND2!");}      //true
```

## ? 运算符

总是不停地输入 if/else 判定结构显得十分的冗余， 尤其是当你只需要做普通的条件判定时。 这就是 `?` 运算符存在的意义。 它的逻辑和 if/else 完全一致，只是大大减少了代码量。 语法： `boolean ? if : else`

```Java
val switchy = false;

//打印 switchy 的值
print("Switchy is " ~ switchy);

//如果 switchy 的值为true，那么 vInt = 1，反之 vInt = 2
val vInt = switchy ? 1 : 2;
print(vInt);

//如果 switchy 的值为true，那么打印 “你好”，反之打印“再见”
print(switchy ? "你好" : "再见");

//如果 switchy 的值为true，那么打印 “再见”，反之打印“你好”
switchy ? print("再见") : print("你好");

```

## 运算符

你可以使用下面的操作符。 所有的例子结果都为 true。

| 名称   | 运算符     | 解释                                                                                | 例子           |
| ---- | ------- | --------------------------------------------------------------------------------- | ------------ |
| 非    | `!`     | 反转布尔值                                                                             | !false       |
| 不等于  | `!=`    | 判断符号前的数值是否不等于符号后的数值                                                               | 1 != 2       |
| 等于   | `==`    | 判断符号前的数值是否等于符号后的数值                                                                | 1 == 1       |
| 大于   | `>`  | 判断符号前数值是否大于符号后数值                                                                  | 1 > 2        |
| 大于等于 | `>=` | 判断符号前数值是否大于等于符号后数值                                                                | 1 >= 1       |
| 小于   | `<`  | 判断符号前数值是否小于符号后数值                                                                  | 1 < 2        |
| 小于等于 | `<=` | 判断符号前数值是否小于等于符号后数值                                                                | 1 <= 1       |
| 与    | `&` | 判断符号前的值与符号后的值是否同时为 true；有一个为 false，或者全为 false 则会输出 false                          | true & true  |
| 或    | `|`     | 判断符号前的值与符号后的值是否有一个为 true； True, is both are true                                  | true | true  |
| XOR  | `^`     | Checks if either the value before or after is true, false if both or none is true | true ^ false |

## The in/has Operator

The `in` and the `has` operator check if something is in something.  
First you need the list you want to check in, then the `in`/`has` then the value you want to check for. `in` and `has` are the same keyword for ZS, but in most cases people use `has` for checking if a collection contains an item and in for loops as this represents the English grammar.

### in/has loadedMods

You can check, if a mod is loaded by checking if it's in the loadedMods list

```Java
//While contains checks can use in
if(loadedMods in "mcp"){
    print("Minecraft Coder Pack loaded");
}

//Most people prefer using has
if(loadedMods has "mcp"){
    print("Minecraft Coder Pack loaded");
}
```

### in/has IIngredient

You can also check if an item matches a definition by comparing two IIngredients.

```Java
if(<ore:ingotIron> in <minecraft:iron_ingot>){
    print("Iron ingots are in the right oreDic");
}

if(<ore:ingotIron> has <minecraft:iron_ingot>){
    print("Iron ingots are in the right oreDic");
}
```

This is only then true, when ALL matching items from the IIngredient AFTER the `has` can also be found in the IIngredient BEFORE `has`: Say we have an IIngredient that contains all dusts (e.g. redstone and glowstone dust):

```java
val redstone = <minecraft:redstone>;
val glowstone = <minecraft:glowstone>
val allDusts = <ore:dustAll>;
allDusts.add(redstone, glowstone);

//True as redstone is a part of alldusts
if(allDusts has redstone) {

}

//False as allDusts consists of redstone and glowstone, and redstone only consists of redstone.
if(redstone has allDusts) {

}
```