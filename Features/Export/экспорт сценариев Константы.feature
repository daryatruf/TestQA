﻿#language: ru
@дерево
@ExportScenarios

Функционал: экспорт сценариев Константы

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: экспорт сценариев Константы

	И я перезаполняю константу "SSLIMAP" значением "False"

	И я перезаполняю константу "SSLPOP3" значением "False"

	И я перезаполняю константу "SSLSMTP" значением "False"

	И я перезаполняю константу "ИспользоватьIMAP" значением "False"

	И я перезаполняю константу "РаботаСТорговымОборудованием" значением "False"

	И я перезаполняю константу "ТолькоЗащищеннаяАутентификацияIMAP" значением "False"

	И я перезаполняю константу "ТолькоЗащищеннаяАутентификацияPOP3" значением "False"

	И я перезаполняю константу "ТолькоЗащищеннаяАутентификацияSMTP" значением "False"

	И я перезаполняю константу "УчетПоСкладам" значением "True"