﻿//начало текста модуля

///////////////////////////////////////////////////
//Служебные функции и процедуры
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
	//ДобавитьШагВМассивТестов(ВсеТесты,Снипет,ИмяПроцедуры,ПредставлениеТеста,Транзакция,Параметр);

	//все шаги устаревшие
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯЗадаюСистемныеПараметрыСчитыванияМакетаНачСтрНачКолКолСтрКолКол(Парам01,Парам02,Парам03,Парам04)","ЯЗадаюСистемныеПараметрыСчитыванияМакетаНачСтрНачКолКолСтрКолКол","Когда Я задаю системные параметры считывания макета НачСтр 1 НачКол 1 КолСтр 100 КолКол 20");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯЗадаюПараметрыСчитыванияМакетаНачСтрНачКолКолСтрКолКол(Парам01,Парам02,Парам03,Парам04)","ЯЗадаюПараметрыСчитыванияМакетаНачСтрНачКолКолСтрКолКол","Когда Я задаю параметры считывания макета НачСтр 1 НачКол 1 КолСтр 100 КолКол 20");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯЗадаюПараметрыЧтенияОбластиМакета(Парам01)","ЯЗадаюПараметрыЧтенияОбластиМакета","Когда Я задаю параметры чтения области макета ""R1C1:R100C20""");

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
	
КонецПроцедуры

&НаКлиенте
// Процедура выполняется перед окончанием каждого сценария
Процедура ПередОкончаниемСценария() Экспорт
	
КонецПроцедуры



///////////////////////////////////////////////////
//Реализация шагов
///////////////////////////////////////////////////

&НаКлиенте
//Когда Я задаю системные параметры считывания макета НачСтр 1 НачКол 1 КолСтр 100 КолКол 20
//@ЯЗадаюСистемныеПараметрыСчитыванияМакетаНачСтрНачКолКолСтрКолКол(Парам01,Парам02,Парам03,Парам04)
Процедура ЯЗадаюСистемныеПараметрыСчитыванияМакетаНачСтрНачКолКолСтрКолКол(НачСтр,НачКол,КолСтр,КолКол) Экспорт
	Возврат;
	
	Ванесса.СчитываниеМакетаНачСтр = НачСтр;
	Ванесса.СчитываниеМакетаНачКол = НачКол;
	Ванесса.СчитываниеМакетаКолСтр = КолСтр;
	Ванесса.СчитываниеМакетаКолКол = КолКол;
КонецПроцедуры

&НаКлиенте
//Когда Я задаю системные параметры считывания макета НачСтр 1 НачКол 1 КолСтр 100 КолКол 20
//@ЯЗадаюПараметрыСчитыванияМакетаНачСтрНачКолКолСтрКолКол(Парам01,Парам02,Парам03,Парам04)
Процедура ЯЗадаюПараметрыСчитыванияМакетаНачСтрНачКолКолСтрКолКол(НачСтр,НачКол,КолСтр,КолКол) Экспорт
	ЯЗадаюСистемныеПараметрыСчитыванияМакетаНачСтрНачКолКолСтрКолКол(НачСтр,НачКол,КолСтр,КолКол);
КонецПроцедуры

&НаКлиенте
//Когда Я задаю параметры чтения области макета "R1C1:R100C20"
//@ЯЗадаюПараметрыЧтенияОбластиМакета(Парам01)
Процедура ЯЗадаюПараметрыЧтенияОбластиМакета(ИмяОбласти) Экспорт
	Возврат;
	
	НачСтр = -1;
	НачКол = -1;
	КолСтр = -1;
	КолКол = -1;
	Попытка
		Ванесса.ПолучитьПараметрыОбластиМакета(ИмяОбласти,НачСтр,НачКол,КолСтр,КолКол);
	Исключение
		ВызватьИсключение "Не верный формат области <" + ИмяОбласти + ">. " + ОписаниеОшибки();
	КонецПопытки;
	
	ЯЗадаюСистемныеПараметрыСчитыванияМакетаНачСтрНачКолКолСтрКолКол(НачСтр,НачКол,КолСтр,КолКол);
КонецПроцедуры

//окончание текста модуля