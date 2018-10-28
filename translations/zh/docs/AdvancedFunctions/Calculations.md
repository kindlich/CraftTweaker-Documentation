# 运算

有时候输入的数字并不能直接用， 而是需要运算后才能使用。  
你也可以使用多个数字进行运算，系统完全可以运算 `1+1+1+1` 。

## 一些忠告

当数学运算结果发生意外时，很有可能是你使用不同类型的数字。  
比如 `13 % 6.5` 结果为 1，可是正确结果应该是 0 。 为什么？ ZenScript 总是计算两个相同类型的变量。 在上述例子中，它就会将第二个数据转换成匹配第一个数据的类型。 在上述例子中，计算就会把运算处理成 `13 % 6`，第二个数字（双精度型）就会被转换为第一个数字的类型（整型）。

Always be careful about what two variable types you use and when in doubt, just use a print function to print the output to the log and confirm the results.

## Arithmetic Operators

I'm pretty sure all of you know these already, don't you?

| Token | Tokenassign | Function       | Example |
| ----- | ----------- | -------------- | ------- |
| `+`   | `+=`        | Addition       | 1+2     |
| `-`   | `-=`        | Substraction   | 2-1     |
| `*`   | `*=`        | Multiplication | 1*1     |
| `/`   | `/=`        | Division       | 2/2     |
| `%`   | `%=`        | Modulo         | 13 % 6  |

## Concatenation

Puts one thing at the and of the other

    //prints "Hello World"
    print("Hello" ~ " " ~ "World");
    

## Calculation results

A calculation usually ends up with a result. So what to do with that?

### Assigning a variable

There are two ways of assigning a value to a variable:

    var test = 0;
    
    //Option 1:
    //assigns test with the value 3 (1+2)
    test = 1+2;
    
    //Option 2:
    //assigns test with 5 (3+2)
    test = test + 2;
    
    //Option 3:
    //assigns test with 2 (5-3)
    test -= 3;
    

Option 1 and 2 assign the return variable using the `=` token.  
This is probably the easiest way for beginners and the only way if you want to assign a variable not used in the calculation.

Option 3 assigns the variable before the `-=` with the result of a normal subtraction.  
All Operators on on this page have their respective assign tokens, check the table above.

### Using the result otherwise

You can always use the result of a calculation in a function or a conditional statement:

    //prints 4
    print(3+1);
    
    //removes the item on array[4]
    recipes.remove(array[3+1]);
    
    //
    if(3+1 == 2*2) {print("Used a calculation!")}