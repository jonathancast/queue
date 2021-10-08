-- 
-- Created by SQL::Translator::Producer::SQLite
-- Created on Fri Oct  8 18:25:50 2021
-- 

;
BEGIN TRANSACTION;
--
-- Table: "items"
--
CREATE TABLE "items" (
  "id" INTEGER PRIMARY KEY NOT NULL,
  "category" text,
  "url" text NOT NULL
);
COMMIT;
