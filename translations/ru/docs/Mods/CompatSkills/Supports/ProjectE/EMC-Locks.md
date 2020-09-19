# ProjectE

## Блокировки EMC

Начиная с 1.5.0 CompatSkills поддерживает EMC Locks для элементов.

## ЗАМЕЧАНИЕ

Начиная с 1.9.0 EMC Locks были изменены:

    Модифицированный проект для ограничения обучения трансмутации и умножения конденсатов.
    This is a very good way to make it easy and enjoyable and enjoyable as it would expect from a ... ii) требования);
    Игроки смогут использовать предметы, которые не соответствуют блокировке эмка, но не смогут изучать или дублировать этот предмет. Обучение и дублирование также требуют, чтобы игрок отвечал всем требованиям, к которым у него есть предмет.
    Примечание: если вы поместите элементы в таблицу трансмутации, вы все равно получите emc но не сможете вернуть предмет.
    

### Синтаксис:

    // Пример пусто:
    mods.compatskills.EMCLock.addEMCLock(int emc, String... заблокирован)
    
    // Пример:
    mods.compatskills.EMCLock.addEMCLock(8192, "reskillable:mining|5", "reskillable:magic|7")