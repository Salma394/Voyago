USE Voyago;

Create TABLE user(

id int not null auto_increment primary key,
firstname varchar(50) not null,
lastname varchar(50) not null,
email varchar(100) not null,
password varchar(100) not null
);

INSERT INTO user (firstname, lastname, email, password)
VALUES
  ('Chloe', 'Smith', 'chloe.smith1234@example.com', '$cJ9n@X2'),
  ('Samuel', 'Brown', 'samuel.brown5678@example.com', 'wT3*uF9$'),
  ('Emma', 'Jones', 'emma.jones9012@example.com', 'xB7q#M5%'),
  ('Daniel', 'Wilson', 'daniel.wilson3456@example.com', 'sN2d@H6$'),
  ('Sophia', 'Davis', 'sophia.davis7890@example.com', 'fA4p$K8%'),
  ('Ethan', 'Taylor', 'ethan.taylor1234@example.com', 'gB6w#J8$'),
  ('Olivia', 'Johnson', 'olivia.johnson5678@example.com', 'hF3v$K5%'),
  ('William', 'Brown', 'william.brown9012@example.com', 'tR7q#L2%'),
  ('Isabella', 'Wilson', 'isabella.wilson3456@example.com', 'pN2d@F6$'),
  ('James', 'Davis', 'james.davis7890@example.com', 'kA9p$H8%');

select *
FROM user;
