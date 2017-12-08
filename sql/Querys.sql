-- Obtener el promedio de créditos de los usuarios gratuitos
SELECT AVG("users"."total_credits") FROM "users" WHERE "users"."member_type" = 0

-- Obtener la suma de meses totales de los usuarios con cuenta pagada
SELECT SUM("users"."months_of_membership") FROM "users" WHERE "users"."member_type" IN (1, 2)

-- Obtener el email de los usuarios que tengan rentada la película Coco
SELECT email FROM "users" INNER JOIN "rent_items" ON "rent_items"."id" = "users"."id" INNER JOIN movies ON movies.id = rent_items.movie_id WHERE (title = "Coco")

-- Obtener la fecha de estreno más antigua de las películas
SELECT MIN("movies"."release_date") FROM "movies"

-- Obtener el email del usuario con la mayor cantidad de créditos
