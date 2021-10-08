-- 
-- Created by SQL::Translator::Producer::SQLite
-- Created on Thu Nov 12 11:55:13 2020
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
