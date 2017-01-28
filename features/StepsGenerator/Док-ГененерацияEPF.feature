﻿# language: ru

@IgnoreOnCIMainBuild
@DocumentationBuild
@tree

Функционал: Инструкция по генерации EPF файла
	Как Разработчик
	Я Хочу чтобы я мог создавать по feature файлам EPF файлы
	Чтобы я мог потом в этих EPF файлах реализовать нужные мне шаги
 
Контекст:
	Дано Я убедился что служебный EPF для проверки генерации EPF удален
	Дано Я открываю Vanessa-Behavior в TestClient без загрузки сохраненных настроек

	
Сценарий: Генерация нового EPF по feature файлу и перегенерация после добавления новых шагов
	Для начала загрузим тестовый feature файл в Vanessa-Behavior
			Когда Я нажимаю на кнопку Загрузить одну фичу
			Тогда в открывшемся окне я указываю путь к фиче "Support\Instructions\Core\ДляГенерацииEPF.feature"
	И Затем создадим EPF по feature файлу
			И     я перехожу к закладке "Генератор EPF"
			И     я изменяю флаг "Генерировать управляемую форму"
			И     я изменяю флаг "Создавать области при генерации кода"
			И     я нажимаю на кнопку "Создать и обновить шаблоны обработок"
			И     В каталоге появилась обработка "Support\Instructions\Core\step_definitions\ДляГенерацииEPF.epf"
	Теперь откроем EPF в конфигураторе
			Тогда я запускаю конфигуратор служебной базы 
			И я открываю в конфигураторе файл "Support\Instructions\Core\step_definitions\ДляГенерацииEPF.epf"
			И я открываю основную форму обработки
			И я перехожу на закладку Модуль
			И я сворачиваю область Служебные функции
	Обратите внимание. Для каждого из трёх шагов сценария было создано по одной процедуре.
			И я перехожу к процедуре "ЯУказалПервоеСлагаемое"
			И я выделяю в тексте 9 строк
	Теперь изменим наш feature файл
		И я перехожу в сеанс 1С TestClient
		И я открываю feature файл в редакторе
		И я удаляю строку которая содержит текст "Тогда я получу сумму"
		И я набираю текст "	Тогда сумма будет меньше 20"
		И я сохраняю изменения в файле
		и я закрываю текстовый редактор
		
	И Затем пересоздадим EPF
			И     Я нажимаю на кнопку Перезагрузить Сценарии
			И     Я очищаю окно сообщений пользователю
			И     я перехожу к закладке "Генератор EPF"
			И     я нажимаю на кнопку "Создать и обновить шаблоны обработок"
			И     Я жду окончания обработки перегенерации EPF
			
	Теперь посмотрим что изменилось в модуле обработки
			И я перехожу в конфигуратор служебной базы 
			И обратите внимание "Обратите внимание: чтобы увидеть изменения в epf надо переоткрыть файл обработки."
			И я закрываю обработку открытую в конфигураторе
			И я открываю в конфигураторе файл "Support\Instructions\Core\step_definitions\ДляГенерацииEPF.epf"
			И я открываю основную форму обработки
			И я перехожу на закладку Модуль
			И я сворачиваю область Служебные функции
			
	И обратите внимание 'Обратите внимание: процедура "ЯПолучуСуммуСлагаемых(Парам01)" осталась в модуле.'
	И обратите внимание 'И появилась новая процедура "СуммаБудетМеньше(Парам01)"'
	И я перехожу к процедуре "СуммаБудетМеньше"
	И обратите внимание 'Таким образом добавление шага в feature файл вызвало добавление процедуры в epf файл.'
	И обратите внимание 'Спасибо за внимание!'

	

	
	
	
	
