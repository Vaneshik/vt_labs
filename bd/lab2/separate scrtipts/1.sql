SELECT "Н_ЛЮДИ"."ИД", "Н_ВЕДОМОСТИ"."ЧЛВК_ИД"
FROM "Н_ЛЮДИ"
         LEFT JOIN "Н_ВЕДОМОСТИ" ON "Н_ЛЮДИ"."ИД" = "Н_ВЕДОМОСТИ"."ЧЛВК_ИД"
WHERE "Н_ЛЮДИ"."ФАМИЛИЯ" > 'Ёлкин'
  AND "Н_ВЕДОМОСТИ"."ЧЛВК_ИД" = 142390
  AND "Н_ВЕДОМОСТИ"."ЧЛВК_ИД" = 117219;
