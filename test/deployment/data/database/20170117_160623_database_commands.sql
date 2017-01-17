SET DATABASE TRANSACTION CONTROL MVCC;
ALTER TABLE "system$session"
	ADD "csrftoken" VARCHAR_IGNORECASE(36) NULL;
CREATE INDEX "idx_system$session_sessionid" ON "system$session"
	("sessionid","id");
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('f4d19200-071c-45e5-af25-321354f0702b', 
'37f9fd49-5318-4c63-9a51-f761779b202f', 
'CSRFToken', 
'csrftoken', 
30, 
36, 
'', 
false);
INSERT INTO "mendixsystem$index" ("id", 
"table_id", 
"index_name")
 VALUES ('6127a5ae-0a96-4df5-9856-17baf94b2351', 
'37f9fd49-5318-4c63-9a51-f761779b202f', 
'idx_system$session_sessionid');
INSERT INTO "mendixsystem$index_column" ("index_id", 
"column_id", 
"sort_order", 
"ordinal")
 VALUES ('6127a5ae-0a96-4df5-9856-17baf94b2351', 
'd50c78a5-d740-4a76-a356-47659cfd515e', 
false, 
0);
CREATE TABLE "system$state" (
	"id" BIGINT NOT NULL,
	"serverid" VARCHAR_IGNORECASE(36) NULL,
	"objectid" BIGINT NULL,
	"content" VARCHAR_IGNORECASE(2147483647) NULL,
	"removed" BOOLEAN NULL,
	"sessionid" VARCHAR_IGNORECASE(36) NULL,
	PRIMARY KEY("id"));
CREATE INDEX "idx_system$state_sessionid_objectid_removed" ON "system$state"
	("sessionid","objectid","removed","id");
INSERT INTO "mendixsystem$entity" ("id", 
"entity_name", 
"table_name")
 VALUES ('e91fb9bf-5362-4b23-bfa1-e4ec4127887c', 
'System.State', 
'system$state');
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('7a969d17-cc90-480e-85b0-b96951b8ae2c', 
'e91fb9bf-5362-4b23-bfa1-e4ec4127887c', 
'ServerId', 
'serverid', 
30, 
36, 
'', 
false);
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('b604031a-9950-4d3a-b5c1-bcfe77889412', 
'e91fb9bf-5362-4b23-bfa1-e4ec4127887c', 
'ObjectId', 
'objectid', 
4, 
0, 
'0', 
false);
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('5f76c7cc-8f70-4b9b-98d4-47dc05b23fe7', 
'e91fb9bf-5362-4b23-bfa1-e4ec4127887c', 
'Content', 
'content', 
30, 
0, 
'', 
false);
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('232789b0-d35f-4a51-a8fd-e017ea67264d', 
'e91fb9bf-5362-4b23-bfa1-e4ec4127887c', 
'Removed', 
'removed', 
10, 
0, 
'false', 
false);
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('25049e59-64d2-439e-bd9d-30960a479680', 
'e91fb9bf-5362-4b23-bfa1-e4ec4127887c', 
'SessionId', 
'sessionid', 
30, 
36, 
'', 
false);
INSERT INTO "mendixsystem$index" ("id", 
"table_id", 
"index_name")
 VALUES ('31f2e3e5-7f5a-42c4-b66e-f9c44a79a539', 
'e91fb9bf-5362-4b23-bfa1-e4ec4127887c', 
'idx_system$state_sessionid_objectid_removed');
INSERT INTO "mendixsystem$index_column" ("index_id", 
"column_id", 
"sort_order", 
"ordinal")
 VALUES ('31f2e3e5-7f5a-42c4-b66e-f9c44a79a539', 
'25049e59-64d2-439e-bd9d-30960a479680', 
false, 
0);
INSERT INTO "mendixsystem$index_column" ("index_id", 
"column_id", 
"sort_order", 
"ordinal")
 VALUES ('31f2e3e5-7f5a-42c4-b66e-f9c44a79a539', 
'b604031a-9950-4d3a-b5c1-bcfe77889412', 
false, 
1);
INSERT INTO "mendixsystem$index_column" ("index_id", 
"column_id", 
"sort_order", 
"ordinal")
 VALUES ('31f2e3e5-7f5a-42c4-b66e-f9c44a79a539', 
'232789b0-d35f-4a51-a8fd-e017ea67264d', 
false, 
2);
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.0.7', 
"lastsyncdate" = '20170117 16:06:20';
