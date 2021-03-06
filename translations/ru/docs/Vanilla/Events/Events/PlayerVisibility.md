# Видимость игрока

Это событие запущено для определения видимости игрока, т.е. достаточно близко или нет для того, чтобы он был замечен нападающим. Результат этого события используется для вычисления (с модификаторами из ванильного Minecraft для крадывания, ) диапазон, который игрок может получить до существа до того, как оно видит его.

Хотя это может быть использовано для увеличения диапазона видимости (если он был уменьшен на Minecraft или другой мод), не может быть увеличен выше его максимального значения (стандартное целевое расстояние).

## Класс события
You will need to cast the event in the function header as this class:  
`crafttweaker.event.PlayerVisibilityEvent`  
You can, of course, also [import](/AdvancedFunctions/Import/) the class before and use that name then.

## Наследование от интерфейсов событий
События PlayerVisibilityEvent реализуют следующие интерфейсы и также могут вызвать все методы/getters/setters:

- [IPlayerEvent](/Vanilla/Events/Events/IPlayerEvent/)


## Геттеры/сеттеры
Во время события можно извлечь/задать следующую информацию:

| ZenGetter   | ZenSetter          | Тип             |
| ----------- | ------------------ | --------------- |
| `видимость` |                    | double          |
|             | `modifyVisibility` | См. примечание. |

## Примечание

Это значение не может быть установлено напрямую. Вызов `модификации` двойным значением заменит модификатор на результат `модификации * двойное значение`.
