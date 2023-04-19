USE Voyago;

Create TABLE user(

id int not null auto_increment primary key,
firstname varchar(50) not null,
lastname varchar(50) not null,
email varchar(100) not null,
password varchar(100) not null
UNIQUE KEY email_unique (email)
);

select *
FROM user;
