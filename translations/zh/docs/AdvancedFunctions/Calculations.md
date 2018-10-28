# 运算

有时候输入的数字并不能直接用， 而是需要运算后才能使用。  
你也可以使用多个数字进行运算，系统完全可以运算 `1+1+1+1` 。

## 一些忠告

当数学运算结果发生意外时，很有可能是你使用不同类型的数字。  
比如 `13 % 6.5` 结果为 1，可是正确结果应该是 0 。 为什么？ ZenScript 总是计算两个相同类型的变量。 在上述例子中，它就会将第二个数据转换成匹配第一个数据的类型。 在上述例子中，计算就会把运算处理成 `13 % 6`，第二个数字（双精度型）就会被转换为第一个数字的类型（整型）。

要始终注意两个数据的变量类型，在不确定的情况下最好使用 print 函数来将结果打印至日志中来检查结果是否正确。

## 算术运算符

我十分确定你一定熟知这些：

| 运算符 | 自运算  | 功能 | 例子     |
| --- | ---- | -- | ------ |
| `+` | `+=` | 加  | 1+2    |
| `-` | `-=` | 减  | 2-1    |
| `*` | `*=` | 乘  | 1*1    |
| `/` | `/=` | 除  | 2/2    |
| `%` | `%=` | 求余 | 13 % 6 |

## 连接

将内容放在原内容后面

    //打印 "你好 世界"
    print("你好" ~ " " ~ "世界");
    

## 运算结果

数学运算基本上会直接返回结果。 所以能用它干什么呢？

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