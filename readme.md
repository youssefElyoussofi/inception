### *This project has been created as part of the 42 curriculum by yoel-you*

## Description

the propose of the project to create infrastructure using program call Docker that run 3 services each one isolate from other one and that cause help for production and share project between team without need to explain how to setup envirement 
docker breaking the bridge of that problem and let all team members work directly and quickly on their machines (windozs / Lunix / mac)
on project laso it's add security level up by letting all services isolated .
you will see docker as virtual machine but not it's isolated but still use host os kernel the trick is docker give each container process isolated that think his in new os cannot see other files programs but iy's actually just empty box created by kernel that give us this power so docker not magic it's just use features that's already exist on kernel and automate empty box for us to think it's new so here the question come why not virtual machine and do this answer easy for perfrmance runnning container take few seconds because kernel still see it as box with independent process and network and volumes .
there's also docker compose which just an feature pluggin of docker instead of running each container separated and create network for them and typing lot of commands here's the rule of docker compose come and solve that by managing all that in one file .yml or .yaml and make easy for use to link network and volumes between container and configurate each service.
while this isolation that we talk about need everything so for need any password login we need to pass it with start phase so we can pass it by envirement when we use process inside container can cat directly from terminal because it's exist on terminal while container running but there's more secure feature which is secrets it's work only on start phase when scripts setup secrets files loads on ram then we cat it on init scripts when containers starts 

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

