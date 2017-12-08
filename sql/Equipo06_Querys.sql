-- Obtener el promedio de créditos de los usuarios gratuitos
SELECT AVG("users"."total_credits") FROM "users" WHERE "users"."member_type" = 0

-- Obtener la suma de meses totales de los usuarios con cuenta pagada
SELECT SUM("users"."months_of_membership") FROM "users" WHERE "users"."member_type" IN (1, 2)

-- Obtener la fecha de creación de los usuarios que tengan rentada la película Coco
SELECT "users"."created_at" FROM "users" INNER JOIN "rent_items" ON "rent_items"."id" = "users"."id" INNER JOIN movies ON movies.id = rent_items.movie_id WHERE (title = "Coco")

-- Obtener la fecha de estreno más antigua de las películas
SELECT MIN("movies"."release_date") FROM "movies"

-- Obtener el email del usuario con la mayor cantidad de créditos
SELECT email FROM "users" WHERE total_credits = (
  SELECT MAX("users"."total_credits") FROM "users"
)

-- Devolver tabla con contador de cuentas y el tipo de cuenta que contó
SELECT COUNT(id), member_type FROM "users" GROUP BY member_type

-- Devolver el número de películas sin devolverse por grupo, siempre y cuando sea de quienes hayan tenido más de 3 meses de suscripcion
SELECT COUNT("movies"."id"), member_type FROM "users" 
INNER JOIN "rent_items" ON "rent_items"."id" = "users"."id"
WHERE "rent_items".return_date
GROUP BY member_type

-- Devolver 8 premieres ordenadas de manera ascendente por su fecha de creación
SELECT "premieres".* FROM "premieres" ORDER BY created_at LIMIT 8 

-- Devolver los emails de usuarios que tengan 3 o más películas pasadas de fecha de devolución agrupados por
--SELECT email FROM "users" INNER JOIN "rent_items" ON "rent_items"."id" = "users"."id"