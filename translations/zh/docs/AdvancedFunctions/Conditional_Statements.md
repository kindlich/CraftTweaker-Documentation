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

//|(或) 逻辑判断，两个条件只要一个结果为真，输出结果也为真
if(d=="你好" | e == "你好"){print("OR1!");}       //true
if(d=="你好" | e == "世界"){print("OR2!");}       //true

//^(XOR) means, ONLY ONE criteria may be met, otherwise it evaluates to false
if(d=="Hello" ^ e == "Hello"){print("XOR1!");}      //true
if(d=="Hello" ^ e == "World"){print("XOR2!");}      //false

//&(与)逻辑判断，只有两个条件都为 true 时结果为 true 否则结果为
if(d=="Hello" & e == "Hello"){print("AND1!");}      //false
if(d=="Hello" & e == "World"){print("AND2!");}      //true
```

## The ? Operator

Surely, always typing out an if/else structure can be annoying. Especially if you just want to do an either or condition. That's why the `?` operator was implemented. It follows the same logic as an if/else statement, it only is by far less code required. Syntax: `boolean ? if : else`

```Java
val switchy = false;

//prints switchy state
print("Switchy is " ~ switchy);

//if switchy is true, vInt = 1, otherwise vInt = 2
val vInt = switchy ? 1 : 2;
print(vInt);

//Prints "Hello" if switchy is stue, otherwise prints "Bye"
print(switchy ? "Hello" : "Bye");

//Prints "Bye" if switchy is stue, otherwise prints "Hello"
switchy ? print("Bye") : print("Hello");

```

## Operators

You can use these operators. All the examples given evaluate to true.

| Name             | token   | Explanation                                                                          | Example      |
| ---------------- | ------- | ------------------------------------------------------------------------------------ | ------------ |
| Not              | `!`     | Inverts a boolean                                                                    | !false       |
| Not Equal        | `!=`    | Checks if the value before and after are not equal                                   | 1 != 2       |
| Equal            | `==`    | Checks if the value before and after are equal                                       | 1 == 1       |
| Greater than     | `>`  | Checks if the value before is greater than after                                     | 1 > 2        |
| Greater or Equal | `>=` | Checks if the value before is greater than or equal with after                       | 1 >= 1       |
| Lesser then      | `<`  | Checks if the value before is fewer than after                                       | 1 < 2        |
| Lesser or Equal  | `<=` | Checks if the value before is fewer than or equal with after                         | 1 <= 1       |
| AND              | `&` | Checks whether both, value before and after are true, false if one or both are false | true & true  |
| OR               | `|`     | Checks if the value before or after is true. True, is both are true                  | true | true  |
| XOR              | `^`     | Checks if either the value before or after is true, false if both or none is true    | true ^ false |

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