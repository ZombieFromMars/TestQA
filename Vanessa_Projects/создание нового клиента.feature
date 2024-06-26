﻿#language: ru

@tree

Функционал: Проверка создания клиента

Как Оператор я хочу
создать клиента 
чтобы вести клиентскую базу   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Проверка создания клиента
* Открытие формы создания клиента
	И В командном интерфейсе я выбираю 'Продажи' 'Контрагенты'
	Тогда открылось окно 'Контрагенты'
	И я нажимаю на кнопку с именем 'ФормаСоздать'	
* Заполнение наименования клиента
	И в поле с именем 'Наименование' я ввожу текст 'Новый Контрагент'
	И из выпадающего списка с именем "ВидЦен" я выбираю точное значение 'Оптовая'
* Заполнение номера телефона клиента
	И в поле с именем 'Телефон' я ввожу текст '+79639786398'
	И я перехожу к закладке с именем "АдресаИКонтакты"	
* Сохранение
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
* Проверка сохранения по коду
И Я запоминаю значение поля "Код" как "$Код$"
И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
И я жду закрытия окна 'Контрагент новый (Контрагент)' в течение 20 секунд
Тогда таблица "Список" содержит строки:
			| 'Код'       |
			| '$Код$' |
		



