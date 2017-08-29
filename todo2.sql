INSERT INTO todo (title, priority, created_at) VALUES
('Empty litter box', 1, '2017-08-29 11:20:00-00'), ('Pack for beach', 6, '2017-08-29 11:21:00-00'),
('Do laundry', 5, '2017-08-29 11:22:00-00'), ('Read book', 8, '2017-08-29 11:22:00-00'),
('Do homework', 3, '2017-08-29 11:23:00-00');

INSERT INTO todo (title, priority, created_at, completed_at) VALUES
('Wash car', 10, '2017-08-29 11:20:00-00', '2017-08-29 19:00:00-00'), ('Brush cat', 12, '2017-08-29 11:25:00-00', '2017-08-29 19:10:00-00'),
('Take out trash', 20, '2017-08-29 11:30:00-00', '2017-08-29 19:15:00-00'), ('Read magazine', 18, '2017-08-29 11:26:00-00', '2017-08-29 19:20:00-00'),
('Write blog', 3, '2017-08-29 11:27:00-00', '2017-08-29 19:30:00-00');

INSERT INTO todo (title, details, priority, created_at) VALUES
('Go through makeup', 'Throw away old stuff', 17, '2017-08-29 11:30:00-00'), ('Do dishes', 'clean dirty ones', 6, '2017-08-29 11:45:00-00'),
('Clean shoes', 'got mud on them', 5, '2017-08-29 11:39:00-00'), ('Read blogs', 'new posts up', 8, '2017-08-29 11:27:00-00'),
('Mow grass', 'getting long', 9, '2017-08-29 11:45:00-00');

INSERT INTO todo (title, priority, created_at) VALUES
('Watch Siesta Key', 3, '2017-08-29 11:29:05-00'), ('Watch Ballers', 10, '2017-08-29 11:30:02-00'),
('Record Harry Potter', 19, '2017-08-29 11:31:00-00'), ('Read Harry Potter', 20, '2017-08-29 11:32:00-00'),
('Prepare project', 11, '2017-08-29 11:31:07-00');

select * from todo where completed_at is null and priority = 3;

select * from todo where completed_at is null order by priority asc;

select * from todo where created_at > current_date - interval '30 days' order by priority asc;

select * from todo where priority = 1 order by created_at desc limit 1;
