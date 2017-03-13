﻿# language: ru


Функционал: Передача во вложенный сценарий таблиц
	Как Разработчик
	Я Хочу чтобы я мог во вложенный сценарий передавать параметры типа таблица
	Чтобы мне было проще писать сложные сценарии


Сценарий: Передача одной таблицы в структуру сценария: в секцию примеров, хотя есть таблица в секции шагов

	Когда я установил в КонтекстСохраняемый значение "СлужебнаяПеременная" равное 0
	И я удалил из переменной КонтекстСохраняемый все значения у которых в имени содержится строка "Значение"
	И     Я вызываю шаг из соседней ФИЧИ содержащей структуру сценария где я буду заменять секцию только примеров, хотя есть шаг принимающий таблицу
	 | |
	 
	 | Параметр | Значение  |
	 | Значение1 | 10       |
	 | Значение2 | 20       |
	 | Значение3 | 30       |
	 
	Тогда В КонтекстСохраняемый есть значение "ЗначениеШаги" равное 1
	Тогда В КонтекстСохраняемый есть значение "Значение1" равное 10
	Тогда В КонтекстСохраняемый есть значение "Значение2" равное 20
	Тогда В КонтекстСохраняемый есть значение "Значение3" равное 30
	
	
Сценарий: Передача двух таблиц в структуру сценария: в секцию шагов и в секцию примеров

	Когда я установил в КонтекстСохраняемый значение "СлужебнаяПеременная" равное 0
	И я удалил из переменной КонтекстСохраняемый все значения у которых в имени содержится строка "Значение"
	И     Я вызываю шаг из соседней ФИЧИ содержащей структуру сценария где я буду заменять секцию примеров и таблицу в секции шагов
	 | ЗначениеШаги | 100       |
	 
	 | Параметр | Значение  |
	 | Значение1 | 10       |
	 | Значение2 | 20       |
	 | Значение3 | 30       |
	 
	Тогда В КонтекстСохраняемый есть значение "ЗначениеШаги" равное 100
	Тогда В КонтекстСохраняемый есть значение "Значение1" равное 10
	Тогда В КонтекстСохраняемый есть значение "Значение2" равное 20
	Тогда В КонтекстСохраняемый есть значение "Значение3" равное 30
	
	
	
	
Сценарий: Передача одной таблицы в структуру сценария в секцию примеров

	Когда я установил в КонтекстСохраняемый значение "СлужебнаяПеременная" равное 0
	И я удалил из переменной КонтекстСохраняемый все значения у которых в имени содержится строка "Значение"
	И     Я вызываю шаг из соседней ФИЧИ содержащей структуру сценария где я буду заменять секцию примеров
	 | Параметр | Значение  |
	 | Значение1 | 10       |
	 | Значение2 | 20       |
	 | Значение3 | 30       |
	 
	Тогда В КонтекстСохраняемый есть значение "Значение1" равное 10
	Тогда В КонтекстСохраняемый есть значение "Значение2" равное 20
	Тогда В КонтекстСохраняемый есть значение "Значение3" равное 30
	
	
	
	
Сценарий: Передача одной таблицы в структуру сценария в секцию шагов

	Когда я установил в КонтекстСохраняемый значение "СлужебнаяПеременная" равное 0
	И я удалил из переменной КонтекстСохраняемый все значения у которых в имени содержится строка "Значение"
	
	И     Я вызываю шаг из соседней ФИЧИ содержащей структуру сценария у которой есть таблица в секции шагов
	 | Значение1 | 10       |
	 
	 
	 
	Тогда В КонтекстСохраняемый есть значение "Значение1" равное 10
	Тогда В КонтекстСохраняемый есть значение "ЗначениеСтруктура" равное 100
	
	
	
Сценарий: Передача двух таблиц из трех во вложенный сценарий

	Когда я установил в КонтекстСохраняемый значение "СлужебнаяПеременная" равное 0
	И я удалил из переменной КонтекстСохраняемый все значения у которых в имени содержится строка "Значение"
	И     Я вызываю шаг из соседней в котором есть три таблицы и параметр "НовыйПараметр" типа строка
	 | Значение1 | 10       |
	 | Значение2 | 20       |
	 
	 ||
	 
	 | Значение5 | 50       |
	 | Значение6 | 60       |
	 
	 
	Тогда В КонтекстСохраняемый есть значение "Значение1" равное 10
	Тогда В КонтекстСохраняемый есть значение "Значение2" равное 20
	Тогда В КонтекстСохраняемый есть значение "Значение3" равное 3
	Тогда В КонтекстСохраняемый есть значение "Значение4" равное 4
	Тогда В КонтекстСохраняемый есть значение "Значение5" равное 50
	Тогда В КонтекстСохраняемый есть значение "Значение6" равное 60
	
	
Сценарий: Передача четырех таблиц во вложенный сценарий

	Когда я установил в КонтекстСохраняемый значение "СлужебнаяПеременная" равное 0
	И я удалил из переменной КонтекстСохраняемый все значения у которых в имени содержится строка "Значение"
	И     Я вызываю шаг из соседней в котором есть четыре таблицы и параметр "НовыйПараметр" типа строка
	 | Значение1 | 10       |
	 | Значение2 | 20       |
	 
	 
	 
	 | Значение3 | 30       |
	 | Значение4 | 40       |
	 
	 | Значение5 | 50       |
	 | Значение6 | 60       |
	 
	 | Значение7 | 70       |
	 | Значение8 | 80       |
	 
	 
	Тогда В КонтекстСохраняемый есть значение "Значение1" равное 10
	Тогда В КонтекстСохраняемый есть значение "Значение2" равное 20
	Тогда В КонтекстСохраняемый есть значение "Значение3" равное 30
	Тогда В КонтекстСохраняемый есть значение "Значение4" равное 40
	Тогда В КонтекстСохраняемый есть значение "Значение5" равное 50
	Тогда В КонтекстСохраняемый есть значение "Значение6" равное 60
	Тогда В КонтекстСохраняемый есть значение "Значение7" равное 70
	Тогда В КонтекстСохраняемый есть значение "Значение8" равное 80
	
	
Сценарий: Передача трех таблиц во вложенный сценарий

	Когда я установил в КонтекстСохраняемый значение "СлужебнаяПеременная" равное 0
	И я удалил из переменной КонтекстСохраняемый все значения у которых в имени содержится строка "Значение"
	И     Я вызываю шаг из соседней в котором есть три таблицы и параметр "НовыйПараметр" типа строка
	 | Значение1 | 10       |
	 | Значение2 | 20       |
	 
	 | Значение3 | 30       |
	 | Значение4 | 40       |
	 
	 | Значение5 | 50       |
	 | Значение6 | 60       |
	 
	Тогда В КонтекстСохраняемый есть значение "Значение1" равное 10
	Тогда В КонтекстСохраняемый есть значение "Значение2" равное 20
	Тогда В КонтекстСохраняемый есть значение "Значение3" равное 30
	Тогда В КонтекстСохраняемый есть значение "Значение4" равное 40
	Тогда В КонтекстСохраняемый есть значение "Значение5" равное 50
	Тогда В КонтекстСохраняемый есть значение "Значение6" равное 60
	
	
			

Сценарий: Передача одной таблицы во вложенный сценарий

	Когда я установил в КонтекстСохраняемый значение "СлужебнаяПеременная" равное 0
	И я удалил из переменной КонтекстСохраняемый все значения у которых в имени содержится строка "Значение"
	И     Я вызываю шаг из соседней в котором есть одна таблица и параметр "НовыйПараметр" типа строка
	 | Значение1 | 10       |
	 | Значение2 | 20       |
	Тогда В КонтекстСохраняемый есть значение "Значение1" равное 10
	Тогда В КонтекстСохраняемый есть значение "Значение2" равное 20
	
	
