create table todos1(
  id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  details TEXT NULL,
  priority INTEGER DEFAULT 1 NOT NULL,
  created_at DATETIME NOT NULL,
  completed_at DATETIME NULL
);


INSERT INTO todos1 (title, details, priority, created_at) VALUES ('Do work', 'This is my work', 3,  '1986-05-20 9:32:7');
INSERT INTO todos1 (title, details, priority, created_at, completed_at) VALUES ('Do alot ofwork', 'This is my work', 5,  '1986-05-20 10:32:16', '2000-05-20 08:30:10');
INSERT INTO todos1 (title, details, priority, created_at) VALUES ('Do some work', 'This is her work', 8,  '1986-05-20 7:20:10');
INSERT INTO todos1 (title, details, priority, created_at) VALUES ('Do more work', 'This is your work', 1,  '1986-05-20 12:22:19');
INSERT INTO todos1 (title, details, priority, created_at) VALUES ('Do a little work', 'This is his work', 2,  '1986-05-20 13:35:13');
SELECT * FROM todos1 WHERE completed_at IS NULL;
SELECT * FROM todos1 WHERE priority > 1;
UPDATE todos1 SET completed_at = '2005-15-08 12:30:04' WHERE id = 5;
DELETE FROM todos1 WHERE completed_at IS NOT NULL;
