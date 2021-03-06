# Вычисления

Иногда недостаточно просто писать числа. Иногда вам нужны вычисления.  
Помните, что вы можете использовать больше двух чисел одновременно, `1+1+1+1` будет работать, как надо.

## Совет

Если при расчете непредвиденные результаты, вполне возможно, что вы использовали два разных типа.  
Например, `13 % 6.5` возвращает 1, хотя правильный результат равен 0. Почему? ZenScript всегда выполняет свои вычисления с двумя переменными одного типа. Для этого он преобразует второй тип, совпадающий с первым. В этом примере выполнялся расчет `13 % 6`, как 2-е число (двойное) было преобразовано в соответствие с первым (целые числа).

Всегда будьте осторожны с тем, какие две переменные типа вы используете и когда сомневаетесь, просто используйте функцию печати для вывода в журнал и подтверждения результатов.

## Арифметические операторы

Я почти уверен, что вы уже их знаете, да?

| Знак | Присваивающий знак | Функция           | Пример |
| ---- | ------------------ | ----------------- | ------ |
| `+`  | `+=`               | Сложение          | 1+2    |
| `-`  | `-=`               | Вычитание         | 2-1    |
| `*`  | `*=`               | Умножение         | 1*1    |
| `/`  | `/=`               | Деление           | 2/2    |
| `%`  | `%=`               | Деление по модулю | 13 % 6 |

## Конкатенация

Приклеивает одно к другому.

```zenscript
//prints "Hello World"
print("Привет," ~ " " ~ "Мир");
```

## Результаты вычисления

Обычно вычисление выдает какой-то результат. Что с ним делать?

### Присваивание переменной

Есть два способа присвоить значение переменной:

```zenscript
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
```

Параметр 1 и 2 присвоите возвращаемую переменную, используя токен `=` .  
Вероятно, это самый простой способ для начинающих и единственный способ, если вы хотите назначить переменную, не используемую при расчете.

Параметр 3 назначает переменную перед `-=` с результатом нормального вычета.  
Все операторы на этой странице имеют соответствующие токены, проверьте таблицу выше.

### Использование результата по-другому

Вы всегда можете использовать результат вычисления в функции или условном выражении:

```zenscript
//выводит 4
print(3+1);

//удаляет рецепт элемента массива array[4]
recipes.remove(array[3+1]);

//
if(3+1 == 2*2) {print("Используется вычисление!")}
```