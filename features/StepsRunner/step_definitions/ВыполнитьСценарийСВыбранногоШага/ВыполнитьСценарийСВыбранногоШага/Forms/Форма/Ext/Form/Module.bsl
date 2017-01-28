﻿//начало текста модуля

///////////////////////////////////////////////////
//Служебная часть
///////////////////////////////////////////////////

&НаКлиенте
// контекст фреймворка Vanessa-Behavior
Перем Ванесса;
 
&НаКлиенте
// Структура, в которой хранится состояние сценария между выполнением шагов. Очищается перед выполнением каждого сценария.
Перем Контекст Экспорт;
 
&НаКлиенте
// Структура, в которой можно хранить служебные данные между запусками сценариев. Существует, пока открыта форма Vanessa-Behavior.
Перем КонтекстСохраняемый Экспорт;

&НаКлиенте
// Служебная функция.
Функция ДобавитьШагВМассивТестов(МассивТестов,Снипет,ИмяПроцедуры,ПредставлениеТеста = Неопределено,Транзакция = Неопределено,Параметр = Неопределено)
	Структура = Новый Структура;
	Структура.Вставить("Снипет",Снипет);
	Структура.Вставить("ИмяПроцедуры",ИмяПроцедуры);
	Структура.Вставить("ИмяПроцедуры",ИмяПроцедуры);
	Структура.Вставить("ПредставлениеТеста",ПредставлениеТеста);
	Структура.Вставить("Транзакция",Транзакция);
	Структура.Вставить("Параметр",Параметр);
	МассивТестов.Добавить(Структура);
КонецФункции

&НаКлиенте
// Функция экспортирует список шагов, которые реализованы в данной внешней обработке.
Функция ПолучитьСписокТестов(КонтекстФреймворкаBDD) Экспорт
	Ванесса = КонтекстФреймворкаBDD;
	
	ВсеТесты = Новый Массив;

	//описание параметров
	//Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,Снипет,ИмяПроцедуры,ПредставлениеТеста,Транзакция,Параметр);

	ДобавитьШагВМассивТестов(ВсеТесты,"ВФормеОткрытогоVanessaBehavoirЯУстановилФлагОбъекта(Парам01)","ВФормеОткрытогоVanessaBehavoirЯУстановилФлагОбъекта","И в форме открытого VanessaBehavoir я установил флаг объекта ""СохранятьКонтекстыПередВыполнениемШагов""");
	ДобавитьШагВМассивТестов(ВсеТесты,"ВФормеОткрытогоVanessaBehavoirЯУстановилВторомуШагуПервогоСценарияФлаг(Парам01)","ВФормеОткрытогоVanessaBehavoirЯУстановилВторомуШагуПервогоСценарияФлаг","И в форме открытого VanessaBehavoir я установил второму шагу первого сценария флаг ""ВыполнятьСценарийСЭтогоШага""");
	ДобавитьШагВМассивТестов(ВсеТесты,"ЗначениеСлужебнойЭкспортнойПеременнойУОткрытогоVanessaBehavoirРавно(Парам01)","ЗначениеСлужебнойЭкспортнойПеременнойУОткрытогоVanessaBehavoirРавно","И значение служебной экспортной переменной у открытого VanessaBehavoir равно 5");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯУстановилСпециальнуюСлужебнуюЭкспортнуюПеременнуюСлужебнаяПеременнаяУОткрытогоVanessaBehavoirРавной(Парам01)","ЯУстановилСпециальнуюСлужебнуюЭкспортнуюПеременнуюСлужебнаяПеременнаяУОткрытогоVanessaBehavoirРавной","И я установил специальную служебную экспортную переменную СлужебнаяПеременная у открытого VanessaBehavoir равной 0");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВТестируемомЭкземпляреЯУстановилТекущуюСтрокуДерева(Парам01)","ВТестируемомЭкземпляреЯУстановилТекущуюСтрокуДерева","И в тестируемом экземпляре я установил текущую строку дерева 4");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВТестируемомЭкземпляреЯВыполнилКомандуУстановитьБрейкпоинт()","ВТестируемомЭкземпляреЯВыполнилКомандуУстановитьБрейкпоинт","И в тестируемом экземпляре я выполнил команду установить брейкпоинт");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВТестируемомЭкземпляреЯНажалНаКнопку(Парам01)","ВТестируемомЭкземпляреЯНажалНаКнопку","И в тестируемом экземпляре я нажал на кнопку ""ВыполнитьСценарии""");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВТестируемомЭкземпляреВПеременнойКонтекстСохраняемыйЗначениеСлужебнойПеременнойРавно(Парам01)","ВТестируемомЭкземпляреВПеременнойКонтекстСохраняемыйЗначениеСлужебнойПеременнойРавно","И в тестируемом экземпляре в переменной КонтекстСохраняемый значение служебной переменной равно 1");

	Возврат ВсеТесты;
КонецФункции
	
&НаСервере
// Служебная функция.
Функция ПолучитьМакетСервер(ИмяМакета)
	ОбъектСервер = РеквизитФормыВЗначение("Объект");
	Возврат ОбъектСервер.ПолучитьМакет(ИмяМакета);
КонецФункции
	
&НаКлиенте
// Служебная функция для подключения библиотеки создания fixtures.
Функция ПолучитьМакетОбработки(ИмяМакета) Экспорт
	Возврат ПолучитьМакетСервер(ИмяМакета);
КонецФункции



///////////////////////////////////////////////////
//Работа со сценариями
///////////////////////////////////////////////////

&НаКлиенте
// Процедура выполняется перед началом каждого сценария
Процедура ПередНачаломСценария() Экспорт
	Сообщить("ВыполнитьСценарийСВыбранногоШага.ПередНачаломСценария");
КонецПроцедуры

&НаКлиенте
// Процедура выполняется перед окончанием каждого сценария
Процедура ПередОкончаниемСценария() Экспорт
	//безусловное закрытие формы если она осталась
	Попытка
	    ОткрытаяФормаVanessaBehavoir = Контекст.ОткрытаяФормаVanessaBehavoir;
		ОткрытаяФормаVanessaBehavoir.Закрыть();
	Исключение
	
	КонецПопытки;
КонецПроцедуры



///////////////////////////////////////////////////
//Реализация шагов
///////////////////////////////////////////////////

&НаКлиенте
//И в форме открытого VanessaBehavoir я установил флаг объекта "СохранятьКонтекстыПередВыполнениемШагов"
//@ВФормеОткрытогоVanessaBehavoirЯУстановилФлагОбъекта(Парам01)
Процедура ВФормеОткрытогоVanessaBehavoirЯУстановилФлагОбъекта(ИмяФлага) Экспорт
	Контекст.ОткрытаяФормаVanessaBehavoir.Объект.СохранятьКонтекстыПередВыполнениемШагов = Истина;
КонецПроцедуры


&НаКлиенте
//И в форме открытого VanessaBehavoir я установил второму шагу первого сценария флаг "ВыполнятьСценарийСЭтогоШага"
//@ВФормеОткрытогоVanessaBehavoirЯУстановилВторомуШагуПервогоСценарияФлаг(Парам01)
Процедура ВФормеОткрытогоVanessaBehavoirЯУстановилВторомуШагуПервогоСценарияФлаг(ИмяПараметра) Экспорт
	СтрокиДерева = Контекст.ОткрытаяФормаVanessaBehavoir.Объект.ДеревоТестов.ПолучитьЭлементы();
	СтрокиДерева = СтрокиДерева[0].ПолучитьЭлементы();//фича
	СтрокиДерева = СтрокиДерева[0].ПолучитьЭлементы();//сценарий
	СтрокиДерева = СтрокиДерева[0].ПолучитьЭлементы();//шаги
	
	Контекст.ОткрытаяФормаVanessaBehavoir.Элементы.ДеревоТестов.ТекущаяСтрока = СтрокиДерева[1].ПолучитьИдентификатор();
	Контекст.ОткрытаяФормаVanessaBehavoir.ПроцУстановитьПометкуВыполнятьСценарийСЭтогоШага();
	//СтрокиДерева[1][ИмяПараметра] = Истина;
	//Сообщить("СтрокиДерева.Количество() = " + СтрокиДерева.Количество());
КонецПроцедуры

&НаКлиенте
//И в тестируемом экземпляре в переменной КонтекстСохраняемый значение служебной переменной равно 5
//@ВТестируемомЭкземпляреВПеременнойКонтекстСохраняемыйЗначениеСлужебнойПеременнойРавно(Парам01)
Процедура ВТестируемомЭкземпляреВПеременнойКонтекстСохраняемыйЗначениеСлужебнойПеременнойРавно(Зн) Экспорт
	Ванесса.ПроверитьРавенство(Контекст.ОткрытаяФормаVanessaBehavoir.ОбъектКонтекстСохраняемый.СлужебныйПараметр,Зн,"Неверное значение служебной переменной в КонтекстСохраняемый.");
КонецПроцедуры


&НаКлиенте
//И я установил специальную служебную экспортную переменную СлужебнаяПеременная у открытого VanessaBehavoir равной 0
//@ЯУстановилСпециальнуюСлужебнуюЭкспортнуюПеременнуюСлужебнаяПеременнаяУОткрытогоVanessaBehavoirРавной(Парам01)
Процедура ЯУстановилСпециальнуюСлужебнуюЭкспортнуюПеременнуюСлужебнаяПеременнаяУОткрытогоVanessaBehavoirРавной(Зн) Экспорт
	Контекст.ОткрытаяФормаVanessaBehavoir.СлужебнаяПеременная = 0;
КонецПроцедуры

&НаКлиенте
//И значение служебной экспортной переменной у открытого VanessaBehavoir равно 5
//@ЗначениеСлужебнойЭкспортнойПеременнойУОткрытогоVanessaBehavoirРавно(Парам01)
Процедура ЗначениеСлужебнойЭкспортнойПеременнойУОткрытогоVanessaBehavoirРавно(Зн) Экспорт
	Ванесса.ПроверитьРавенство(Контекст.ОткрытаяФормаVanessaBehavoir.СлужебнаяПеременная,Зн,"Неверное значение служебной экспортной переменной.");
КонецПроцедуры

&НаКлиенте
Процедура ПолучитьМассивИДРекурсивно(МассивИД,СтрокиДерева)
	Для Каждого СтрокаДерева Из СтрокиДерева Цикл
		МассивИД.Добавить(СтрокаДерева);
		ПолучитьМассивИДРекурсивно(МассивИД,СтрокаДерева.ПолучитьЭлементы())
	КонецЦикла;	
КонецПроцедуры

&НаКлиенте
//И в тестируемом экземпляре я установил текущую строку дерева 4
//@ВТестируемомЭкземпляреЯУстановилТекущуюСтрокуДерева(Парам01)
Процедура ВТестируемомЭкземпляреЯУстановилТекущуюСтрокуДерева(НомерСтроки) Экспорт
	МассивИД = Новый Массив;
	ПолучитьМассивИДРекурсивно(МассивИД,Контекст.ОткрытаяФормаVanessaBehavoir.Объект.ДеревоТестов.ПолучитьЭлементы());
	//СтрокиДерева = Контекст.ОткрытаяФормаVanessaBehavoir.Объект.ДеревоТестов.ПолучитьЭлементы();
	//СтрокиДерева = СтрокиДерева[0].ПолучитьЭлементы();//фича
	//СтрокиДерева = СтрокиДерева[0].ПолучитьЭлементы();//сценарий
	//СтрокиДерева = СтрокиДерева[0].ПолучитьЭлементы();//шаги
	//
	Контекст.ОткрытаяФормаVanessaBehavoir.Элементы.ДеревоТестов.ТекущаяСтрока = МассивИД[НомерСтроки-1].ПолучитьИдентификатор();
КонецПроцедуры

&НаКлиенте
//И в тестируемом экземпляре я выполнил команду установить брейкпоинт
//@ВТестируемомЭкземпляреЯВыполнилКомандуУстановитьБрейкпоинт()
Процедура ВТестируемомЭкземпляреЯВыполнилКомандуУстановитьБрейкпоинт() Экспорт
	Контекст.ОткрытаяФормаVanessaBehavoir.ОбработатьУстановкуСнятиеБрейкпоинта();
КонецПроцедуры

&НаКлиенте
//И в тестируемом экземпляре я нажал на кнопку "ВыполнитьСценарии"
//@ВТестируемомЭкземпляреЯНажалНаКнопку(Парам01)
Процедура ВТестируемомЭкземпляреЯНажалНаКнопку(ИмяПроцедуры) Экспорт
	ОткрытаяФормаVanessaBehavoir = Контекст.ОткрытаяФормаVanessaBehavoir;
	Выполнить("ОткрытаяФормаVanessaBehavoir." + ИмяПроцедуры +"();");
КонецПроцедуры
