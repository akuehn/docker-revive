[![Revive](https://img.shields.io/badge/Revive%20AdServer-4.1.3-brightgreen.svg)]()
[![Docker Pulls](https://img.shields.io/docker/pulls/delermando/docker-revive.svg?maxAge=2592000)]() [![Docker Layers](https://images.microbadger.com/badges/image/delermando/docker-revive.svg)](http://microbadger.com/images/delermando/locust-load-test:1.0 "Get your own image badge on microbadger.com") [![Docker Version](https://images.microbadger.com/badges/version/delermando/docker-revive.svg)](http://microbadger.com/images/delermando/locust-load-test:1.0 "Get your own version badge on microbadger.com") 

# Docker-Revive  
## Introduction
This is a simple project to up  the Revive AdServer quickly using docker. 

- **docker/** - Contains the same files based on docker-compose syntax to config how docker will execute the containers
- **mysql/** - Initially, it Is a empty folder that is mapped to the mysql container, when the mysql container is running it will write the files within this folder, so you do not lose the data when the container is removed
- **server/** - Contains a configuration file for nginx, this file is mapped to docker container to be read to nginx

## Requirements  
- **docker** (https://docs.docker.com/engine/installation/linux/debian/)  
- **docker-compose** (https://docs.docker.com/compose/install/)  

## Instalation
**1 Step:** Clone this project and access the project folder  
`git clone git@github.com:akuehn/docker-revive.git`  
`cd docker-revive` 	

**2 Step:** Install last Revive Adserver Application   
`./entry.sh` 

**3 Step:** Run docker stack  
`docker-compose up -d`

**4 Step:** Access `locahost:8080` on browser. 

**6 Step:** Accept the terms. Now should display the database connection setup

**7 Step:** Fill the fields with your database credentials. Example:  
- **Database Name:** (You choose a name)  
- **username:** root  
- **password:** root  
- **hostname:** revive-mysql

**8 Step:** Enjoy

## Credits

[@Delermando](https://github.com/Delermando/docker-revive)
[@YPCrumble](https://github.com/YPCrumble/docker-revive)