# ZenTokens

这些是只被列出的内部符号，所以我有一个位置来列出它们，以便开发者来指定...

| 符号值       | 符号名称                | 符号字符串                                                       |
| --------- | ------------------- | ----------------------------------------------------------- |
| 1         | T_ID                | `[a-zA-Z_][a-zA-Z_0-9]*`                                    |
| 2         | T_INTVALUE          | `\-?(0|[1-9][0-9]*)`                                       |
| 2         | T_INTVALUE          | `0x[a-fA-F0-9]*)`                                           |
| 3         | T_FLOATVALUE        | `\-?(0|[1-9][0-9]*)\.[0-9]+([eE][\+\-]?[0-9]+)?[fFdD]?` |
| 4         | T_STRINGVALUE       | `'([^'\\]|\\(['"\\/bfnrt]|u[0-9a-fA-F]{4}))*'`        |
| 4         | T_STRINGVALUE       | `"([^"\\]|\\(['"\\/bfnrt]|u[0-9a-fA-F]{4}))*"`        |
| 5         | T_AOPEN             | `{`                                                         |
| 6         | T_ACLOSE            | `}`                                                         |
| 7         | T_SQBROPEN          | `[`                                                         |
| 8         | T_SQBRCLOSE         | `]以声明数组`                                                    |
| 9         | T_DOT2              | `..`                                                        |
| 10        | T_DOT               | `.`                                                         |
| 11        | T_COMMA             | `,`                                                         |
| 12        | T_PLUSASSIGN        | `+=`                                                        |
| 13        | T_PLUS              | `+`                                                         |
| 14        | T_MINUSASSIGN       | `-=`                                                        |
| 15        | T_MINUS             | `-`                                                         |
| 16        | T_MULASSIGN         | `*=`                                                        |
| 17        | T_MUL               | `*`                                                         |
| 18        | T_DIVASSIGN         | `/=`                                                        |
| 19        | T_DIV               | `/`                                                         |
| 20        | T_MODASSIGN         | `%=`                                                        |
| 21        | T_MOD               | `%`                                                         |
| 22        | T_ORASSIGN          | `|=`                                                        |
| 23        | T_OR                | `|`                                                         |
| 40        | T_OR2               | `||`                                                        |
| 24        | T_ANDASSIGN         | `&=`                                                    |
| 41        | T_AND2              | `&&`                                                |
| 25        | AND                 | `&`                                                     |
| 26        | T_XORASSIGN         | `^=`                                                        |
| 27        | T_XOR               | `^`                                                         |
| 28        | T_QuEST             | `?`                                                         |
| 29        | T_COLON             | `:`                                                         |
| 30        | T_BROPEN            | `(`                                                         |
| 31        | T_BRCLOSE           | `)`                                                         |
| 45        | T_TILDEASSIGN       | `~=`                                                        |
| 32        | T_TILDE             | `~`                                                         |
| 33        | T_SEMICOLON         | `;`                                                         |
| 34        | T_LTEQ              | `<=`                                                     |
| 35        | T_LT                | `<`                                                      |
| 36        | T_GTEQ              | `>=`                                                     |
| 37        | T_GT                | `>`                                                      |
| 38        | T_E                 | `==`                                                        |
| 39        | T_ASSIGN            | `=`                                                         |
| 42        | T_NOTEQ             | `!=`                                                        |
| 43        | T_NO                | `!`                                                         |
| 44        | T_DOLLAR            | `$`                                                         |
| 99        | T_ANY               | `任意一个`                                                      |
| 100       | T_BOL               | `布尔值`                                                       |
| 101       | BYTE                | `字节`                                                        |
| 102       | T_SHORT             | `短的`                                                        |
| 103       | T_INT               | `整数`                                                        |
| 104       | T_LONG              | `长`                                                         |
| 105       | T_FLOAT             | `浮点数`                                                       |
| 106       | T_DOUBLE            | `双精度`                                                       |
| 107       | T_标准版               | `字符串`                                                       |
| 108       | T_FUNTION           | `函数`                                                        |
| 109       | T_IN                | `in`                                                        |
| 109       | T_IN                | `has`                                                       |
| 110       | T_VOID              | `空的`                                                        |
| 120       | T_AS                | `为`                                                         |
| 121       | T_VERSION           | `版本`                                                        |
| 122       | T_IF                | `如果：`                                                       |
| 123       | T_ELSE              | `其他`                                                        |
| 124       | T_FOR               | `为`                                                         |
| 125       | T_RETURN            | `返回`                                                        |
| 126       | T_VAR               | `瓦尔`                                                        |
| 127       | T_VAL               | `val`                                                       |
| 127       | T_WHIL              | `时`                                                         |
| 127       | T_BREAK             | `断开`                                                        |
| 140       | T_NULL              | `空的`                                                        |
| 141       | T_TURE              | `true`                                                      |
| 142       | T_FALSE             | `false`                                                     |
| 160       | T_IMPORT            | `导入`                                                        |
| 666       | T_GLOBAL            | `全局设置`                                                      |
| 667       | T_STATIC            | `静态的`                                                       |
| 668       | T_INSTANCEOF        | `实例`                                                        |
| 123456789 | T_ZEN_CLASS       | `zenClass`                                                  |
| 123456789 | T_ZEN_CLASS       | `护卫兵类`                                                      |
| 987654321 | T_ZEN_CONSTRUCTOR | `zenConstructor`                                            |
| 987654321 | T_ZEN_CONSTRUCTOR | `护卫器构造器`                                                    |