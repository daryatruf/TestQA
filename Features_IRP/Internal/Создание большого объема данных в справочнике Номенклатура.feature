#language: ru
@tree

Функционал: создание большого объема данных (Номенклатура)

Как Тестировщик я хочу
создать большое количество элементов в справочнике Номенклатура
чтобы использовать их для нагрузочного тестирования

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

	Сценарий: создание большого объема данных (Номенклатура)
		И Я запоминаю значение выражения "1" в переменную "Шаг"
		И я делаю 10 раз
			И Я запоминаю значение выражения '$Шаг$ + 1' в переменную "Шаг"
			И Я запоминаю значение выражения '"Номенклатура" + $Шаг$' в переменную "Номенклатура"
			И Я запоминаю значение выражения '"Item" + $Шаг$' в переменную "Item"
			И я проверяю или создаю для справочника "Items" объекты:
				| 'Ref'                                                               | 'DeletionMark' | 'Code' | 'ItemType'                                                          | 'Unit'                                                          | 'MainPricture'                          | 'Vendor'                                                           | 'ItemID' | 'PackageUnit' | 'Description_en' | 'Description_hash' | 'Description_ru' | 'Description_tr' | 'Height' | 'Length' | 'Volume' | 'Weight' | 'Width' |
				| '{"e1cib/data/Catalog.Items?ref=" + StrReplace(New UUID, "-", "")}' | 'False'        |        | 'e1cib/data/Catalog.ItemTypes?ref=b762b13668d0905011eb76684b9f6878' | 'e1cib/data/Catalog.Units?ref=b762b13668d0905011eb76684b9f687b' | 'ValueStorage:AQEIAAAAAAAAAO+7v3siVSJ9' | 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d794d' | ''       | ''            | '$Item$'         | ''                 | '$Номенклатура$' | ''               |          |          |          |          |         |
			И я перезаполняю для объекта табличную часть "AddAttributes":
				| 'Ref'                                                               | 'Property'                                                                                           | 'Value'                                                                                 |
				| '{"e1cib/data/Catalog.Items?ref=" + StrReplace(New UUID, "-", "")}' | 'e1cib/data/ChartOfCharacteristicTypes.AddAttributeAndProperty?ref=b762b13668d0905011eb766bf96b275d' | 'e1cib/data/Catalog.AddAttributeAndPropertyValues?ref=b762b13668d0905011eb766bf96b2760' |
		