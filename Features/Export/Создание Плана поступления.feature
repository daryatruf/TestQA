﻿#language: ru
@ExportScenarios
@tree

Функционал: создание ПП

Как Администратор я хочу
создать экспортные сценарии
чтобы проще писать и поддерживать тесты  

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: заполнение шапки ПП
И я закрываю все окна клиентского приложения
И В командном интерфейсе я выбираю 'Поступление' 'Планы поступления'
Тогда открылось окно 'Планы поступления'
И я нажимаю на кнопку с именем 'ФормаСоздать'
Тогда открылось окно 'План поступления (создание)'
И я нажимаю кнопку выбора у поля с именем "Контрагент"
Тогда открылось окно 'Контрагенты'
И я нажимаю на кнопку с именем 'ФормаВыбрать'
Тогда открылось окно 'План поступления (создание) *'
И я нажимаю кнопку выбора у поля с именем "ДатаПоступления"
И в поле с именем 'ДатаПоступления' я ввожу текст '10.06.2023  0:00:00'
И я нажимаю на кнопку с именем 'ФормаЗаписать'
Тогда открылось окно 'План поступления * от *'

Сценарий: создание ПП с ОХ с разными МУ
*заполнение шапки ПП
	И заполнение шапки ПП
*создание строки с ОХ без доп разрезов
	И в таблице "Строки" я нажимаю на кнопку с именем 'СтрокиСоздать'
	Тогда открылось окно 'Строка плана поступления / ожидаемого поступления (создание)'
	И я нажимаю кнопку выбора у поля с именем "Номенклатура"
	Тогда открылось окно 'Номенклатура'
	И в таблице "Список" я перехожу к строке:
		| 'Наименование'           | 'Код'                  | 'Единица измерения' |
		| 'Кабель микрофонный 2.0' | '00000000007         ' | 'шт'                |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	Тогда открылось окно 'Строка плана поступления / ожидаемого поступления (создание) *'
	И я нажимаю кнопку выбора у поля с именем "Состояние"
	Тогда открылось окно 'Состояния объектов хранения'
	И в таблице "Список" я перехожу к строке:
		| 'Наименование' | 'Наименование (англ.)' | 'Тип'   |
		| 'Годен'        | 'Good'                 | 'Годен' |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	Тогда открылось окно 'Строка плана поступления / ожидаемого поступления (создание) *'
	И я нажимаю кнопку выбора у поля с именем "УпаковкаНоменклатуры"
	Тогда открылось окно 'Упаковки номенклатуры'
	И в таблице  "Список" я перехожу на один уровень вниз
	И в таблице "Список" я перехожу к строке:
		| 'Вид учета'                | 'Коэффициент' | 'Наименование' |
		| 'Упаковка штучного товара' | '1,000'       | 'пач.'         |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Строка плана поступления / ожидаемого поступления (создание) *'
	И в поле с именем 'КоличествоУпаковок' я ввожу текст '10,000'
	И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
	И я жду закрытия окна 'Строка плана поступления / ожидаемого поступления (создание) *' в течение 20 секунд
	Тогда открылось окно 'План поступления * от *'

*создание строки ПП с ОХ Мерный учет
	И в таблице "Строки" я нажимаю на кнопку с именем 'СтрокиСоздать'
	Тогда открылось окно 'Строка плана поступления / ожидаемого поступления (создание)'
	И я нажимаю кнопку выбора у поля с именем "Номенклатура"
	Тогда открылось окно 'Номенклатура'
	И в таблице "Список" я перехожу к строке:
		| 'Единица измерения' | 'Код'                  | 'Наименование'           |
		| 'шт'                | '00000000016         ' | 'Система установки фона' |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Строка плана поступления / ожидаемого поступления (создание) *'
	И из выпадающего списка с именем "Состояние" я выбираю точное значение 'Годен'
	И я нажимаю кнопку выбора у поля с именем "УпаковкаНоменклатуры"
	Тогда открылось окно 'Упаковки номенклатуры'
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	Тогда открылось окно 'Строка плана поступления / ожидаемого поступления (создание) *'
	И в поле с именем 'КоличествоУпаковок' я ввожу текст '20,000'
	И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
	И я жду закрытия окна 'Строка плана поступления / ожидаемого поступления (создание) *' в течение 20 секунд

*создание строки ПП с ОХ Учет по СГ 
	И в таблице "Строки" я нажимаю на кнопку с именем 'СтрокиСоздать'
	Тогда открылось окно 'Строка плана поступления / ожидаемого поступления (создание)'
	И я нажимаю кнопку выбора у поля с именем "Номенклатура"
	Тогда открылось окно 'Номенклатура'
	И в таблице "Список" я перехожу к строке:
		| 'Единица измерения' | 'Код'                  | 'Наименование'                       |
		| 'шт'                | '00000000012         ' | 'Средство для чистки объективов 2.0' |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Строка плана поступления / ожидаемого поступления (создание) *'
	И из выпадающего списка с именем "Состояние" я выбираю точное значение 'Годен'
	И я нажимаю кнопку выбора у поля с именем "УпаковкаНоменклатуры"
	Тогда открылось окно 'Упаковки номенклатуры'
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	Тогда открылось окно 'Строка плана поступления / ожидаемого поступления (создание) *'
	И в поле с именем 'КоличествоУпаковок' я ввожу текст '20,000'
	И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
	И я жду закрытия окна 'Строка плана поступления / ожидаемого поступления (создание) *' в течение 20 секунд

*перевод ПП в статус Новый
	Тогда открылось окно 'План поступления * от *'
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
	И я нажимаю на кнопку с именем 'ВыполнитьОсновнуюОперацию'
