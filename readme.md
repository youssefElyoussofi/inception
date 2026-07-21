### This project has been created as part of the 42 curriculum by yoel-you

## Description

the propose of the project to create infrastructure using program call Docker that run 3 services each one isolate from other one and that cause help for production and share project between team without need to explain how to setup envirement 
docker breaking the breadge of that problem and let all team members work directly and quickly on their machines (windozs / Lunix / mac)
on project laso it's add security level up by letting all services isolated .

## instructions

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

## Resources

- [book Docker Deep Dive by Nigel Poulton](https://ebooks.karbust.me/Technology/Docker%20Deep%20Dive%20-%20Nigel%20Poulton.pdf) read few chapters
- ask ai about sh commands and to understand deeply how services work (ex. why we need configurate file for nginx )
- 

