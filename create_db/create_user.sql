create user 'sesemesuser'@'localhost' identified by 'sesemesuser3306';

grant all privileges on sesemes.* to 'sesemesuser'@'localhost' with grant option;
grant trigger on sesemes.* to 'sesemesuser'@'localhost';

flush privileges;