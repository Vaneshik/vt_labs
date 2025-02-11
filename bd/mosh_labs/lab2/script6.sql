SELECT Н_УЧЕНИКИ.ГРУППА AS Номер_группы,
       Н_ЛЮДИ.ФАМИЛИЯ,
       Н_ЛЮДИ.ИМЯ,
       Н_ЛЮДИ.ОТЧЕСТВО,
       Н_УЧЕНИКИ.ИД AS Номер,
       Н_УЧЕНИКИ.СОСТОЯНИЕ,
       Н_УЧЕНИКИ.П_ПРКОК_ИД AS Номер_пункта_приказа
FROM Н_УЧЕНИКИ
JOIN Н_ЛЮДИ ON Н_ЛЮДИ.ИД = Н_УЧЕНИКИ.ЧЛВК_ИД
WHERE Н_УЧЕНИКИ.ИД IN(
    SELECT Н_УЧЕНИКИ.ИД
    FROM Н_УЧЕНИКИ
    JOIN Н_ПЛАНЫ ON Н_ПЛАНЫ.ИД = Н_УЧЕНИКИ.ПЛАН_ИД
    JOIN Н_ФОРМЫ_ОБУЧЕНИЯ ON Н_ПЛАНЫ.ФО_ИД = Н_ФОРМЫ_ОБУЧЕНИЯ.ИД
   WHERE Н_ФОРМЫ_ОБУЧЕНИЯ.НАИМЕНОВАНИЕ = 'Заочная'
      AND Н_УЧЕНИКИ.НАЧАЛО = '2012-09-01 00:00:00'
      AND Н_ПЛАНЫ.КУРС = 1
);

