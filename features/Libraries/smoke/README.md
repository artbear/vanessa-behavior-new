#Дымовое тестирование 

Для возможностей запуска дымового тестирования можно использовать данную обработку, как пример сниппетов для генерации feature файлов и использования сниппетов. 
В обработке используется несколько сниппетов:

```
Я открываю произвольную форму 'Обработка.Произвольная.ФормаПроизвольная'
```

Данный сниппет получает форму, открывает ее и потом закрывает. В теории проверяем возможность работы процедур "ПриСозданииНаСервере" и "ПриОткрытии"

Для справочников и документов дополнительно расшираяется открытие с указанием в виде параметра "Ключ" ссылкой на сущесвующий элемент и или новый элемент 

Я открываю форму справочника 'Справочник.Склады.Форма.ФормаЭлемента' для нового элемента
И Я открываю форму справочника 'Справочник.Склады.Форма.ФормаЭлемента'  для существующего элемента
```

В случаи появления форм, которым необходимы параметры, используем:
```
Я открываю произвольную форму 'Справочник.ПричиныВозникновенияПретензий.Форма.ФормаСписка' со свойством 'АвтоТест' и значением '1'
```

#Быстрый старт для типовых конфигураций

Для быстрого старта необходимо открыть данныю обработку в режиме предприятия и нажать кнопку "ГенерацияПоПодстемам", после генерации необходимых feature файлов, предложит выбрать каталог где будут созданны feature файлы в разрезе подсистем. 
Файлы создаются по верхнему уровню подсистемы, включают все входящие рекурсивно формы в данную подсистему. Этог достаточно для первого старта, в дальнейшем предполагается, что при добавлении новых форм разработчик сам подкорретирует feature файл с необходимой подсистемой. 
Для типовых конфигураций, не все формы могут открываться нормально, поэтому проганяем тесты и где необходимо добавляем "с исключением 'Тру ля-ля'" , где 'Тру ля-ля' часть текста исключения которое будет при открытии формы. В случаи, если будет другое исключение, то тест упадет.
Предполагается, что перегинарация для типовых конфигураций будет происходить только для репозитория git вы всегда сможете увидеть только добавленные формы в фича файлах, а те которые исправляли сможете вернуть на правильное поведение. 
