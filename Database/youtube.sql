CREATE TABLE youtube (
  id int not null,
  full_name varchar(200) not null,
  picture_link varchar(255) not null,
  decritption varchar(500) not null,
  author varchar(200) not null,
  rate int not null,
  category varchar(255) not null,
  
  constraint pk_youtube_id PRIMARY KEY (id)
);