﻿#language: ru

@tree

Функционал: Создание элементов справочника Номенклатура в цикле  

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Создание элементов справочника Номенклатура в цикле
И я закрываю все окна клиентского приложения
И Я запоминаю значение выражения '0' в переменную "Инд"
И я делаю 10 раз
	И Я запоминаю значение выражения '$Инд$+1' в переменную "Инд"
	И Я запоминаю значение выражения '"Номенклатура " + $Инд$' в переменную "НаименованиеНоменклатуры"
	И Я запоминаю значение выражения 'StrReplace(New UUID,"-","")' в переменную "НовыйУИД"
	И Я запоминаю значение выражения '"e1cib/data/Catalog.Items?ref="+$НовыйУИД$' в переменную "НоваяСсылка"


	И я проверяю или создаю для справочника "Items" объекты с обмен данными загрузка истина:
		| 'Ref'           | 'DeletionMark' | 'ItemType'                                                          | 'Unit'                                                          | 'MainPricture'                          | 'Vendor'                                                           | 'ItemID' | 'Description_en'             | 'Description_ru'             |
		| '$НоваяСсылка$' | 'False'        | 'e1cib/data/Catalog.ItemTypes?ref=b762b13668d0905011eb76684b9f6879' | 'e1cib/data/Catalog.Units?ref=b762b13668d0905011eb76684b9f687b' | 'ValueStorage:AQEIAAAAAAAAAO+7v3siVSJ9' | 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d794d' | '58792'  | '$НаименованиеНоменклатуры$' | '$НаименованиеНоменклатуры$' |
	
И В командном интерфейсе я выбираю 'Продажи' 'Номенклатура'
Тогда открылось окно 'Номенклатура'
	
	
