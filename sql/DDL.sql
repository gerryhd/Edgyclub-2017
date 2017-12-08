CREATE TABLE "users" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
  "email" varchar DEFAULT '' NOT NULL,
  "encrypted_password" varchar DEFAULT '' NOT NULL,
  "reset_password_token" varchar,
  "reset_password_sent_at" datetime, 
  "remember_created_at" datetime, 
  "sign_in_count" integer DEFAULT 0 NOT NULL, 
  "current_sign_in_at" datetime, 
  "last_sign_in_at" datetime, 
  "current_sign_in_ip" varchar, 
  "last_sign_in_ip" varchar, 
  "confirmation_token" varchar,
  "confirmed_at" datetime, 
  "confirmation_sent_at" datetime, 
  "unconfirmed_email" varchar, 
  "months_of_membership" integer DEFAULT 0,
  "total_credits" integer DEFAULT 50, 
  "member_type" integer DEFAULT 0, --enum implementation
  "created_at" datetime NOT NULL, 
  "updated_at" datetime NOT NULL
);

CREATE UNIQUE INDEX "index_users_on_email" ON "users" ("email");

CREATE TABLE "movies" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, 
  "title" varchar NOT NULL, 
  "description" text, 
  "release_date" datetime, 
  "slug" varchar NOT NULL, 
  "image" varchar, 
  "available" boolean DEFAULT 't', 
  "created_at" datetime NOT NULL, 
  "updated_at" datetime NOT NULL
);

CREATE UNIQUE INDEX "index_movies_on_slug" ON "movies" ("slug")

CREATE TABLE "admins" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, 
  "email" varchar DEFAULT '' NOT NULL, 
  "encrypted_password" varchar DEFAULT '' NOT NULL, 
  "reset_password_token" varchar, 
  "reset_password_sent_at" datetime, 
  "sign_in_count" integer DEFAULT 0 NOT NULL, 
  "current_sign_in_at" datetime, 
  "last_sign_in_at" datetime, 
  "current_sign_in_ip" varchar, 
  "last_sign_in_ip" varchar, 
  "failed_attempts" integer DEFAULT 0 NOT NULL, 
  "unlock_token" varchar, 
  "locked_at" datetime, 
  "created_at" datetime NOT NULL, 
  "updated_at" datetime NOT 
);

CREATE TABLE "rent_items" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, 
  "movie_id" integer, 
  "user_id" integer, 
  "return_date" date NOT NULL, 
  "created_at" datetime NOT NULL, 
  "updated_at" datetime NOT NULL, 
  CONSTRAINT "fk_rails_98477779ea"
FOREIGN KEY ("movie_id")
  REFERENCES "movies" ("id")
, CONSTRAINT "fk_rails_063e95d1d8"
FOREIGN KEY ("user_id")
  REFERENCES "users" ("id")
);

CREATE  INDEX "index_rent_items_on_movie_id" ON "rent_items" ("movie_id");
CREATE  INDEX "index_rent_items_on_user_id" ON "rent_items" ("user_id");

CREATE TABLE "premieres" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, 
  "title" varchar NOT NULL, 
  "description" text, 
  "prem_date" date NOT NULL, 
  "slug" varchar NOT NULL, 
  "created_at" datetime NOT NULL, 
  "updated_at" datetime NOT 
);

CREATE TABLE "premiere_tickets" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, 
  "user_id" integer NOT NULL, 
  "premiere_id" integer NOT NULL, 
  "created_at" datetime NOT NULL, 
  "updated_at" datetime NOT NULL, 
  CONSTRAINT "fk_rails_0e8c5b7196"
FOREIGN KEY ("user_id")
  REFERENCES "users" ("id")
, CONSTRAINT "fk_rails_7c11852ae5"
FOREIGN KEY ("premiere_id")
  REFERENCES "premieres" ("id")
);

CREATE  INDEX "index_premiere_tickets_on_user_id" ON "premiere_tickets" ("user_id");



