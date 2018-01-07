# Dedicated-vps-docker
create docker vm with dedicated ip addr

## REQUIRE
you need a complementary ip on your server

#### DOCKER INSTALL ON DEBIAN
`apt-get update`  
`apt-get install docker-ce`

#### IMPORT OS IMAGE
`docker pull debian:jessie`

#### CREATE DOCKERFILE
`mkdir project-vm`  
`cd project-vm`  
`vim Dockerfile`  
//See Dockerfile

#### ADD on Dockerfile your configuration and build image after Dockerfile configured
`docker build -t="imageName" .`

#### DEDICATED IP ADDR
`docker network create --subnet x.x.x.0/24 ipovh`

#### GET DOCKER IMAGE
`docker images`

#### CREATE DOCKER CONTAINER
`docker create -it --net ipovh --ip yourIP --name CONTAINERNAME dockerImageID "/bin/bash"`

#### START OR STOP VM
`docker start CONTAINERNAME`  
`docker stop CONTAINERNAME`  

#### GO TO VM
`docker attach CONTAINERNAME`  

#### VM ssh installation :
`apt-get install openssh-server`
`vim /etc/ssh/sshd_config`  
add ->  
`PermitRootLogin yes`

#### Netstat installation
`apt-get install net-tools`  

#### Apache2 php5 mysql phpmyadmin
`apt-get install apache2`  
`apt-get install php5`  
`apt-get install mysql-server`  
`apt-get install phpmyadmin `  

#### For mysql if doesn't exists user
`mysql`  
`CREATE USER 'user'@'localhost' IDENTIFIED BY 'password';`  
`GRANT ALL PRIVILEGES ON *.* TO 'user'@'localhost';`  
`FLUSH PRIVILEGES;`  

#### Java8 installation
`apt-get install default-jre`  
`apt-get install default-jdk`  
`apt-get install software-properties-common`  
`add-apt-repository "deb http://ppa.launchpad.net/webupd8team/java/ubuntu xenial main"`  
`apt-get update`  
`apt-get install oracle-java8-installer` 
or  
`apt-get install oracle-java9-installer`
`javac -version`  
There can be multiple Java installations on server enter next command and choice[]  
`update-alternatives --config java`  

`Output :`  
`javac 1.8.0_111`

#### DOCKER DOCUMENTATION
https://docs.docker.com/engine/reference/commandline/docker/
