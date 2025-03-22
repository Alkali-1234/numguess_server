BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "uid" (
    "id" bigserial PRIMARY KEY,
    "games" json NOT NULL
);


--
-- MIGRATION VERSION FOR numguess
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('numguess', '20250321124614158', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20250321124614158', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240516151843329', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240516151843329', "timestamp" = now();


COMMIT;
