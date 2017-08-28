CREATE TABLE todo (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  details VARCHAR(300) NULL,
  priority INTEGER NOT NULL DEFAULT '1',
  created_at timestamp NOT NULL,
  completed_at timestamp NULL
);

INSERT INTO todo (title, priority, created_at) VALUES
('Yoga', 2, '2017-08-28 13:10:25-07');

INSERT INTO todo (title, details, priority, created_at) VALUES
('Cook dinner', 'Salmon burgers', 4, '2017-08-28 13:15:25-05');

INSERT INTO todo (title, details, priority, created_at) VALUES
('Grocery shopping', 'Take list with you', 3, '2017-08-28 14:00:25-05');

INSERT INTO todo (title, priority, created_at, completed_at) VALUES
('Watch TV', 5, '2017-08-28 14:02:25-05', '2017-08-28 20:00:00-00');

INSERT INTO todo (title, details, priority, created_at) VALUES
('Clean apartment', 'kitchen and bathroom', 1, '2017-08-28 14:05:00-00');

SELECT title from todo where completed_at is null;

SELECT title from todo where priority =>1;

DELETE FROM todo where completed_at is not null;