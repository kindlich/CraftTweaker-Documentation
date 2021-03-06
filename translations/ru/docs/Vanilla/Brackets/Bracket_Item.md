# Обработчик скобок предметов

Обработчик предмета дает вам доступ к предметам в игре. Можно получить только зарегистрированные в игре, , так что добавление или удаление модов могут вызвать проблемы, если вы ссылаетесь на элементы мода в обработчике ITem Bracket Handler.

Элементы ссылаются в обработчике элемента по следующим причинам:

```zenscript
<modid:itemname>
```

Используя мод `` , будучи модератором мода, к которому принадлежит Предмет, и `имя предмета` как имя предмета, Для получения правильного имени товара рекомендуется использовать `/ct hand`.

Как правило, это похоже на это:

```zenscript
<item:modid:itemname:meta>
```

С `пунктом` в качестве первой записи, он конкретно говорит: "Это должен быть элемент!" в CT.  
Как вы видели выше: необязательно.  
Обычно вам это не понадобится, если вы не столкнетесь с несколькими пользовательскими обработчиками скобок.  
`моды` — это мод модификации, к которому принадлежит предмет.  
`имя предмета` является именем предмета, используйте /ct руку, чтобы получить правильное имя.  
`meta` - это метазначение предмета (например, значение урона, типы и т.д.). Это целое число.  
Вы также можете использовать маску `*` для адреса всех метазначений.  
Также опционально: Если оставить это значение будет 0.

Обычно это возвращает объект IItemStack.  
Пожалуйста, обратитесь к [соответствующей вики](/Vanilla/Items/IItemStack/) за дополнительной информацией.

## Примеры

Примером обработчика товарных категорий являются:

```zenscript
//яблоко
<minecraft:apple>

//уголь
<minecraft:coal>
<minecraft:coal:0>

//уголь
<minecraft:coal:1>

//Оба, уголь и уголь
<minecraft:coal:*>
<item:minecraft:coal:*>
```

Это даст вам доступ к элементу `Apple`.