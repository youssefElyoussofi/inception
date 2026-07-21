to run project need follow these commands :
(note !!! that these setup is for Lunix envirement and make sure yu inside project folder)

1. `apt-get install docker.io`

2. `apt-get install docker compose`

***before run project make sure you write your ceridentials that you must need to run project without it you cannot run the project**
***you have to add it on this structure**

*secrets/db_password.txt* 

*secrets/db_root_password.txt* 

*secrets/wp_admin_password.txt*

*secrets/wp_user_password.txt*

***run project these commands need permission of sudo**

3. `make` (to run project and create all necessary files)

4. `make clean` (to stop project without delete files and folders of porject)

5. `make fclean` (to stop and remove all data and cache of the project)

