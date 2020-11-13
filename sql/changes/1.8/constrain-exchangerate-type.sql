
-- Fix existing, faulty data before constraining the column

UPDATE exchangerate_type
   SET builtin = FALSE
 WHERE builtin IS NULL;

UPDATE exchangerate_type
   SET description = ''
 WHERE description IS NULL;

ALTER TABLE exchangerate_type ALTER COLUMN builtin SET DEFAULT FALSE;
ALTER TABLE exchangerate_type ALTER COLUMN builtin SET NOT NULL;
ALTER TABLE exchangerate_type ALTER COLUMN description SET DEFAULT '';
ALTER TABLE exchangerate_type ALTER COLUMN description SET NOT NULL;
