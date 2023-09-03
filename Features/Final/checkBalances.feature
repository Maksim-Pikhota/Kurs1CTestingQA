﻿#language: ru

@tree

Функционал: Проверка отчета Остатки товаров

Как Тестировщик я хочу
сформировать отчет Остатки товаров 
чтобы проверить правильность формирования отчета   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Подготовительный сценарий
	Когда Загрузка поступлений

Сценарий: Проверка отчета Остатки товаров	

* Проверка без отбора		
	И я закрываю все окна клиентского приложения	
	И В командном интерфейсе я выбираю 'Продажи' 'Остатки товаров'
	Тогда открылось окно 'Остатки товаров'
	И я нажимаю на кнопку с именем 'ФормаСтандартныеНастройки'
	И я нажимаю на кнопку с именем 'ФормаНастройкиОтчета'
	Тогда открылось окно 'Настройки отчета "Остатки товаров"'
	И из выпадающего списка с именем "КомпоновщикНастроекПользовательскиеНастройкиЭлемент0Значение" я выбираю точное значение 'Начало этого дня'
	И я нажимаю на кнопку с именем 'ФормаЗакончитьРедактирование'	
	Тогда открылось окно 'Остатки товаров'
	И Пауза 5	
	И я нажимаю на кнопку с именем 'ФормаСформировать'
	И я жду когда в табличном документе "Результат" заполнится ячейка "R11C5" в течение 5 секунд
	Дано Табличный документ "Результат" равен макету "ItemBalances" по шаблону
		
* Проверка с отбором по товару и складу
	И я закрываю все окна клиентского приложения
	И В командном интерфейсе я выбираю 'Товарные запасы' 'Остатки товаров'
	Тогда открылось окно 'Остатки товаров'	
	И я нажимаю на кнопку с именем 'ФормаСтандартныеНастройки'
	И я нажимаю на кнопку с именем 'ФормаНастройкиОтчета'
	Тогда открылось окно 'Настройки отчета "Остатки товаров"'
	И из выпадающего списка с именем "КомпоновщикНастроекПользовательскиеНастройкиЭлемент0Значение" я выбираю точное значение 'Начало этого дня'
	И я нажимаю кнопку выбора у поля с именем "КомпоновщикНастроекПользовательскиеНастройкиЭлемент1Значение"
	Тогда открылось окно 'Товары'
	И я нажимаю на кнопку с именем 'ФормаСписок'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование' |
		| '000000031' | 'Босоножки'    |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	Тогда открылось окно 'Настройки отчета "Остатки товаров"'
	И из выпадающего списка с именем "КомпоновщикНастроекПользовательскиеНастройкиЭлемент2Значение" я выбираю точное значение 'Большой'
	И я нажимаю на кнопку с именем 'ФормаЗакончитьРедактирование'
	Тогда открылось окно 'Остатки товаров'	
	И Пауза 5	
	И я нажимаю на кнопку с именем 'ФормаСформировать'	
	И я жду когда в табличном документе "Результат" заполнится ячейка "R8C3" в течение 5 секунд
	Дано Табличный документ "Результат" равен макету "SandalsBalance" по шаблону

	
	

	
	
	


	
	
	
	