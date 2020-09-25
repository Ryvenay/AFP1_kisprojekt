//// -- Tables and References

// Creating tables
Table Spotify{
  id int [pk, increment] // auto-increment
  full_name varchar(200)
  picture_link varchar
  decritption varchar(500)
  author varchar (200)
  rate int
  category varchar
  
}

Table Youtube {
  id int [pk, increment] // auto-increment
  full_name varchar(200)
  picture_link varchar
  decritption varchar(500)
  author varchar (200)
  rate int
  category varchar
 }