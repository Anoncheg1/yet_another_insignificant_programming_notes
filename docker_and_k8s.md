
# Table of Contents

1.  [Docker](#org650afbc)
    1.  [terms](#orge3e6113)
    2.  [theory](#orgc3da648)
        1.  [network](#orgff17dae)
    3.  [usage](#org3a095fe)
    4.  [use cases:](#org8603a2e)
        1.  [containers](#org38ea08b)
        2.  [Exploring Docker container's file system](#org4af263c)
        3.  [Block internet](#org13c0607)
        4.  [Block access to LAN and out:](#orga19aef5)
        5.  [Block access to other containers:](#org35e301a)
        6.  [Block any external access:](#org4d21daf)
        7.  [backup](#orgfd559d3)
        8.  [volume sizes](#org8e4b46a)
    5.  [admin usage](#orgf79111a)
    6.  [ARG and ENV](#org8b5aaf6)
    7.  [links](#orge036f8e)
    8.  [install](#org0f28540)
        1.  [Docker CE](#org0251aad)
    9.  [proxy](#org67455df)
    10. [storage](#org82c1f27)
    11. [images](#org4662cba)
    12. [containers](#org54ad65b)
    13. [reuse layers](#orgc244ba2)
    14. [ENV](#orgcfc80b7)
    15. [multi-stage builds](#orgaffe040)
    16. [clear](#orga9569c9)
    17. [tmpfs](#org6686a52)
    18. [Dokerfile](#org32a6c58)
    19. [health check for container](#org906797a)
2.  [docker-compose](#orgfe20412)
    1.  [multi-stage builds](#orge434795)
    2.  [swarm](#org89d391c)
    3.  [docker-compose.yml](#orgbbc0ec2)
    4.  [Environment variables](#orge3043b0)
    5.  [Network](#orga07ba2c)
    6.  [errors](#orga835e1f)
    7.  [usage](#org62b1b92)
    8.  [add folder (volumes)](#orgee2ab1c)
3.  [hub.docker.com](#org3d7bb66)
4.  [kubernetes (K8S)](#orgc14d954)
    1.  [definition](#orgd07bbd2)
        1.  [Контейнер](#org92974c5)
        2.  [main features](#org9cdb6c5)
    2.  [history](#org54b8d0d)
    3.  [architecture](#orgeeb4779)
    4.  [ЦФТ обучение](#orgb799218)
    5.  [Control Plane Components - master](#orgd59b8fd)
    6.  [master and worker node](#orgd3163a3)
        1.  [kubelet](#orga4bb8f9)
    7.  [Kubernetes Objects](#org574e1ce)
        1.  [high-level abstractions](#org266a03d)
        2.  [object spec](#orge044c56)
    8.  [Ansible](#orgea297de)
    9.  [есть](#orge76308a)
    10. [from image to pod:](#org46cf5e9)
    11. [primary/replica architecture (Master/slave):](#org368cf90)
    12. [CAP theorem](#org213cf8d)
    13. [runC](#orgc7f1f87)
    14. [commands](#org2afce74)
    15. [ReplicationControllerо](#org70d2dfd)
    16. [app logs](#org5b280f7)
    17. [Helm - Пакетный менеджер](#org528c201)
        1.  [.helm](#org19a07f4)
    18. [cluster management software](#orgea84604)
    19. [как могут поды иметь свои IP ведь они на одной ноде](#orge77323a)
    20. [kubectl](#orgf6e7c03)
        1.  [kubectl get](#orgecb1f76)
    21. [USAGE (max prokopenko)](#org007e706)
    22. [Обновление ресурсов](#orga3137f7)
    23. [удаление ресурсов](#orgd08f5ad)
    24. [работа с подами, логами](#org562dd1a)
    25. [Работа с кластером](#orgdc7395c)
5.  [REST API Documentation UIs](#orgda03ad1)
    1.  [generate OpenAPI from Flask](#org242f861)
    2.  [Swagger - развязность](#org308f90d)
        1.  [swagger offline](#org13443fd)
        2.  [Specification 2.0](#org31288ba)
        3.  [JSON Schema](#orgaa38d70)
    3.  [links](#orga62ea28)

;-**- mode: Org; coding: utf-8; fill-column: 100 -**-


<a id="org650afbc"></a>

# Docker

-   guide <https://docker-curriculum.com/>


<a id="orge3e6113"></a>

## terms

**Image** -docker run> **Running Container** -> **Stopped Container** -docker commit> **New Image**

Состоит:

-   **Docker daemon**- manages Docker containers and handles container objects - **Docker client program** -
    provides a command-line interface
-   **Container** - состоит из **слоев** - слепков состояний файловой системы из image + read-write layer on
    top. Images become containers when they run on Docker Engine. при перезапуске возвращается к image
    -   UUID short and long
    -   name - by user or random
-   **Image** - read-only template used to build containers - to store and ship applications - series of
    read-only layers
-   **Docker service** - allows containers to be scaled across multiple Docker daemons - result is "swarm"
-   **Docker registr** - repository for Docker images - download ("pull") - upload ("push").  Registries can be
    public or private
-   **Docker Hub** - default registry where Docker looks for images <https://hub.docker.com/>
-   **volumes** -
-   Dockerfile - Docker can build images automatically by reading the instructions from a Dockerfile by "$docker build ."
-   **task** - container running in a service
-   **replicas** - containers or task in one service defined in docker-compose.yml


<a id="orgc3da648"></a>

## theory


<a id="orgff17dae"></a>

### network

Docker’s networking subsystem is pluggable, using drivers.

-   bridge: The default network driver.
-   host
-   overlay
-   ipvlan
-   macvlan
-   none
-   network plugins

all networs - user defined bridges


<a id="org3a095fe"></a>

## usage

-   docker pull busybox - download image
-   docker images - list images and layers
    -   docker images | grep superset | awk '{print $1}' | xargs docker image rm
-   docker build -t fedora/jboss:1.0 . # &#x2013;tag to give a name to the image
    -   docker build image &#x2013;build-args HTTPS<sub>PROXY</sub>=172.0.0.1:8888
    -   docker build -t aa -f Dockerfile.app .
-   docker run -it debian<sub>my</sub> bash - create container based on image and attach to tty
-   docker exec -it debian<sub>my</sub> bash - connect to running
    -   docker exec -it debian<sub>my</sub> bash -c "command ; command"
-   docker ps - containers currently running
    -   docker ps -a - was ran
-   docker logs image
-   docker rename ngin nginx
-   docker start/stop/kill/restart/rm nginx
-   docker events/top/stats/diff nginx
-   docker -it superset<sub>db</sub> pg<sub>dump</sub> -U superset superset > backups.sql - бэкап БД из контейнера в папку

networks

-   docker network create my-net
-   docker create &#x2013;name my-nginx &#x2013;network my-net &#x2013;publish 8080:80 nginx:latest
-   docker networks ls # show networs
-   docker network inspect NAME
-   docker network create -d bridge MyBridgeNetwork
-   docker network rm
-   docker connect MyOverlayNerwork nginx - подключение работающего контейнера к сети
-   docker run -it -d &#x2013;network=MyOverlayNetwork ngixn - подключение к сети при его запуске
-   docker network disconnect MyOverlayNerwork nginx


<a id="org8603a2e"></a>

## use cases:


<a id="org38ea08b"></a>

### containers

-   docker build -t container<sub>name</sub> .
-   docker run -d CONTAINER<sub>ID</sub><sub>REPOSITORY</sub> # execute and deattach
    -   -p, &#x2013;publish ip:[hostPort]:containerPort | [hostPort:]containerPort Publish a container's port,
        or range of ports, to the host.
        -   docker run -p 80:5000 -d web<sub>alone</sub> # 80 - host port, 5000 - container port
-   docker stop container
    -   docker ps -q | xargs docker stop  # stop all containers
-   docker pull [IMAGE] # from repository
-   docker import [URL/FILE] # Create an image from a tarball:
-   docker rm $(docker ps -a -q) - удалить все контейнеры
-   docker commit NAME REPOSITORY
-   docker logs CONTAINER<sub>ID</sub><sub>REPOSITORY</sub>
-   docker inspect logs CONTAINER<sub>ID</sub><sub>R</sub> | grep -E "LogPath" - где лог
-   docker logs containername >& ~/a
    -   nano ~/a
-   docker exec -u root -it 1db047ccc674 bash     - подключиться к уже запущенному


<a id="org4af263c"></a>

### Exploring Docker container's file system

-   <https://stackoverflow.com/questions/20813486/exploring-docker-containers-file-system>

-   docker commit CONTAINER ID mysnapshot
-   docker run -it mysnapshot /bin/sh     - запускает процесс в контейнере
-   docker exec -u root -it 1db047ccc674 bash     - подключиться к уже запущенному
    -   i - stdin
    -   t - virtual tty
    -   1db047ccc674 - running container
-   export http<sub>proxy</sub>='http://Pakhomov<sub>KA</sub>@192.168.2.252:8080'
-   export https<sub>proxy</sub>='http://Pakhomov<sub>KA</sub>@192.168.2.252:8080'
-   apt-get update
-   apt-get install emacs-nox


<a id="org13c0607"></a>

### Block internet

1.  1

    service:
      one:
        networks:

    -   internal
    -   external

    two:
      networks:

    -   internal

    networks:
      internal:
        internal: true
      external:

2.  2

    COPY entrypoint.sh /entrypoint.sh

    ENTRYPOINT ["/entrypoint.sh", "&#x2013;"]

    ACCEPT<sub>CIDR</sub>=${ALLOWED<sub>CIDR</sub>:-192.168.0.0/24}

    iptables -A INPUT -s $ACCEPT<sub>CIDR</sub> -j ACCEPT
    iptables -A INPUT -j DROP
    iptables -A OUTPUT -d $ACCEPT<sub>CIDR</sub> -j ACCEPT
    iptables -A OUTPUT -j DROP

    sudo -u app sh -c "$@"


<a id="orga19aef5"></a>

### Block access to LAN and out:

-   docker network create -o "com.docker.network.bridge.enable<sub>ip</sub><sub>masquerade</sub>"="false" lan-restricted
-   Blocks
    -   Local LAN
    -   Internet
-   Does not block
    -   Host running docker daemon (example access to 10.0.1.10:22)


<a id="org35e301a"></a>

### Block access to other containers:

-   docker network create -o "com.docker.network.bridge.enable<sub>icc</sub>"="false" icc-restricted
-   Blocks
    -   Containers accessing other containers on the same icc-restricted network.
-   Does not block
    -   Access to host running docker daemon
    -   Local LAN
    -   Internet


<a id="org4d21daf"></a>

### Block any external access:

networks:
  yournetwork:
     internal: true


<a id="orgfd559d3"></a>

### backup

-   volumes: tar -cvzf a.tar.gz /var/lib/docker/volumes/<volume<sub>name</sub>>
-   docker save -o ubuntu.tar ubuntu:lucid
-   docker save myimage:latest | gzip > myimage<sub>latest.tar.gz</sub>


<a id="org8e4b46a"></a>

### volume sizes

    #!/bin/bash

    for v in $(docker volume ls | grep -v DRIVER | awk '{print $2}') ; do
       p=$(docker volume inspect $v | jq '.[].Mountpoint' | tr -d '"')
       du -sh $p


<a id="orgf79111a"></a>

## admin usage

Комманды

-   docker ps -a - все контейнеры
-   docker image ls - все images
-   docker load -i file.tar - Load saved image
-   docker pull debian:testing
-   docker inspect [CONTAINER ID] &#x2013;  "Config": { "Entrypoint": ["/pause"],
-   docker pull storm:TAG &#x2013; download image
-   docker ps &#x2013;no-trunc &#x2013; full command
-   docker system prune &#x2013;volumes - clean unused everything

docker run [OPTIONS] IMAGE [COMMAND] [ARG&#x2026;]

Commit a container’s file changes or settings into a new image: docker commit CONTAINER ID mysnapshot

Build image and run:

-   docker build &#x2013;tag=friendlyhello .
-   docker run -p 4000:80 friendlyhello -d  - execute CMD in Dockerfile, background


<a id="org8b5aaf6"></a>

## ARG and ENV

-   ARG is only available during the build of a Docker imag
-   ENV values are available to containers, but also RUN-style commands during the Docker build
    starting with the line where they are introduced. If you set an environment variable in an
    intermediate container using bash (RUN export VARI=5 && …) it will not persist in the next
    command.

docker build . &#x2013;build-arg -t foo

FROM debian:bullseye-slim
ARG WTF
ENV WTF=$WTF
CMD echo $WTF


<a id="orge036f8e"></a>

## links

-   ANTIFAQ <https://habr.com/ru/company/southbridge/blog/452108/>
-   <https://docs.docker.com/get-started/part2/>
-   for java <https://github.com/docker/labs/tree/master/developer-tools/java/>
-   Linux virtualization ![img](https://upload.wikimedia.org/wikipedia/commons/0/09/Docker-linux-interfaces.svg)
-   building project inside docker <https://mikulskibartosz.name/how-to-build-a-project-inside-a-docker-container-fd575058bf4a>
    operating-system-level virtualization
-   Dockerfile reference <https://docs.docker.com/engine/reference/builder/>
    tool that can package an application and its dependencies in a lightweight! virtual **container**
    -   Сontainers may simplify the creation of highly distributed systems.
    -   Containers are created from "images" - read-only template


<a id="org0f28540"></a>

## install

<https://docs-stage.docker.com/engine/install/ubuntu/>
**from deb**
<https://download.docker.com/linux/ubuntu/dists/focal/stable/binary-amd64/Packages>

-   <https://download.docker.com/linux/ubuntu/dists/focal/stable/binary-amd64/>
-   pool/stable
-   wget docker-ce, docker-ce-cli and containerd.io
-   compare hashes from Package.
-   apt-get install

**from Dcoker Repository**
<https://docs-stage.docker.com/engine/install/ubuntu/>

**Installing Docker CE using Docker Installation Script**

Проверка:

-   docker run hello-world

Запускать без sudo <https://docs-stage.docker.com/engine/install/linux-postinstall/#manage-docker-as-a-non-root-user>


<a id="org0251aad"></a>

### Docker CE

<https://kifarunix.com/install-docker-ce-on-ubuntu-20-04/>

-   Docker CE (Community Edition) is the open-source, community supported version of Docker and is available for free.
-   Docker EE (Enterprise Edition) is a commercial/premium version of Docker CE and is support by Docker Inc.
    -   docker or docker-engine or docker-io
    -   $ sudo apt-get remove docker docker-engine docker.io containerd runc


<a id="org67455df"></a>

## proxy

-   ~/.docker/config.json
-   192.168.2.252 это srv-proxy

{
 "proxies":
 {
   "default":
   {
     "httpProxy": "<http://192.168.2.252:8080>",
     "httpsProxy": "<http://192.168.2.252:8080>"
   }
 }
}


<a id="org82c1f27"></a>

## storage

-   <https://docs.docker.com/storage/>

by default a writable container layer.

-   volumes - on Docker *var/lib/docker/volumes* - best way - cannot be modified externaly - When you mount the
    volume into a container, this directory is what is mounted into the container
-   bind mounts - can be modified externaly

kebenrenets - The Docker image is at the root of the filesystem hierarchy, and any volumes are mounted at the
specified paths within the image.


<a id="org4662cba"></a>

## images

Хранятся в *var/lib/docker*

-   REPOSITORY - откуда был скачен или имя, <none> - локально

image is built up from a series of layers. Each layer except the very last one is read-only.

commands:

-   docker image ls - все images
-   docker rmi $(docker images -q) - удалить все images
-   docker run PARAMETERS repository<sub>or</sub><sub>name</sub> - запускает image и делает его контенером, если его нет, то скачивает из публичного репозитория
    -   -d - deattached in background
    -   -p <host<sub>port</sub>>:<container<sub>port</sub>>


<a id="org54ad65b"></a>

## containers

Container has:
read only layers:
1 writable layer - сохраняется только если завершается нормально, в случае сбоя теряется.


<a id="orgc244ba2"></a>

## reuse layers

1.  docker build &#x2013;cache-from image0 -t image1
2.  <https://stackoverflow.com/questions/48449326/how-to-docker-reuse-layers-with-different-base-images>


<a id="orgcfc80b7"></a>

## ENV

<https://medium.com/google-cloud/kubernetes-configmaps-and-secrets-68d061f7ab5b>


<a id="orgaffe040"></a>

## multi-stage builds

**builder pattern** - one Dockerfile to use for development, and a slimmed-down one to use for
 production, which only contained your application and exactly what was needed to run it.

-   FROM - starts new stage
-   FROM golang:1.16 AS builder; COPY &#x2013;from=builder /go/a ./a # if stages will be reoreded
-   COPY &#x2013;from=nginx:latest /etc/nginx/nginx.conf /nginx.conf # copy from separate image


<a id="orga9569c9"></a>

## clear

nnterms:

-   dangling - not associated with container

remove parts not connected to running contatinters:

-   docker system/image/container/network prune -a

remove images:

-   docker image prune # dangling
-   docker image prune -a # remove all images which are not used by containers
-   docker image prune -a &#x2013;filter "until=24h" # removes older than 24 hours
-   docker rmi $(docker images -f "dangling=true" -q)
-   remove images by pattern
    -   docker images -a | grep “some<sub>pattern</sub>” | awk ‘{print $3}’ | xargs docker rmi

remove containers:

-   docker container prune # stopped containers
-   docker rm $(docker ps -q -f status=exited) # remove all the containers that are not running (exited).
-   docker rm $(docker ps -a -q)  # wipe all containers
-   remove container by pattern
    -   docker ps -a | grep “some<sub>pattern</sub>” | awk ‘{print $3}’ | xargs docker rm

remove volumes (Volumes are never removed automatically):

-   docker volume prune # remove all volumes not used by at least one container
-   docker volume prune &#x2013;filter "label!=keep" # only removes volumes which are not labelled with the keep label
-   docker volume ls -f name=syst
-   docker volume rm volume1<sub>name</sub> volume2<sub>name</sub>

remove networks:

-   docker network prune # networks which aren’t used by any containers

Prune everything:

-   docker system prune #  shortcut that prunes images, containers, and networks
-   docker system prune &#x2013;volumes # and volumes too

docker builder prune - удаление кэша сборки


<a id="org6686a52"></a>

## tmpfs

-   sudo mount -t tmpfs tmpfs /var/lib/docker
-   systemctl restart docker


<a id="org32a6c58"></a>

## Dokerfile

-   COPY local.conf . # to current directory # preffered # stripped-down version of ADD
-   ADD . /code # Too Much Magic
    -   ADD *foo.tar.gz /tmp* # autounpack
-   WORKDIR /code
-   ENV FLASK<sub>APP</sub> app.py # set env variable inside of running container
-   RUN pip3 install &#x2013;upgrade pip # run command to build image


<a id="org906797a"></a>

## health check for container

can be baked into the image definition

-   HEALTHCHECK &#x2013;interval=5s &#x2013;timeout=3s CMD curl &#x2013;fail <http://localhost:8091/pools> || exit 1
    -   &#x2013;interval=DURATION (default 30s)
    -   &#x2013;timeout=DURATION (default 30s)
    -   &#x2013;retries=N (default 3)

If health check is enabled, then the container can have three states:

-   starting
-   healthy
-   unhealthy

docker-compose.yml:

    services:
            webapp:
                    image: your-repo-name/webapp:1.0.1-nginx
                    container_name: webapp
                    network_mode: host
                    healthcheck:
                            test: mysql airflowdb -u $MYSQL_USER --password=$MYSQL_PASSWORD -e 'SELECT 1;'
                            interval: 20s
                            timeout: 60s
                            start_period: 15s
                    restart: always


<a id="orgfe20412"></a>

# docker-compose

multi-container Docker applications - for scaling - docker-compose

-   <https://docs.docker.com/get-started/part3/>
-   **Docker Compouse** - run commands on multiple containers at once
-   **Docker Swarm** - provides native clustering functionality for Docker containers. require docker-machine tool
    and VM

docker-compose.yml - несоклько инстанцев - балансировщик нагрузки работает внутри, но не снаружи.

-   **service:** conteiner in swarm - what ports it should use, how many replicas of the container should run

build 5 images-services from Docker Hub image "redis:alpine" and directories:

-   docker-compose build && docker-compose up -d
-   docker-compose up &#x2013;force-recreate &#x2013;build -d


<a id="orge434795"></a>

## TODO multi-stage builds


<a id="org89d391c"></a>

## swarm

-   docker swarm init - to enable swarm mode and make your current machine a swarm manage
-   docker-machine - инструмент который работает на базе виртуальных машин. ХЗ как что
-   docekr swarm leave


<a id="orgbbc0ec2"></a>

## docker-compose.yml

-   <https://docs.docker.com/compose/compose-file/>
-   2 chars indentation

structure:

1.  docker-compose.yaml

    version: "3.9"  # optional since v1.27.0
    services:
      web:
        build: path_to_Dockerfile
        ports:
          - "8000:5000" # host port : container port

1.  Dockerfile


<a id="orge3043b0"></a>

## Environment variables

default environment variable file named .env (or &#x2013;env-file command line option):

-   TAG=v1.5

var

-   ${VARIABLE:?err} exits with an error message containing err if VARIABLE is unset or empty in the
    environment.
-   ${VARIABLE?err} exits with an error message containing err if VARIABLE is unset in the
    environment.


<a id="orga07ba2c"></a>

## Network

network per application

-   network name based on the “project name”, which is based on the name of the directory it lives in
    (You can override the project name with either the &#x2013;project-name flag or the COMPOSE<sub>PROJECT</sub><sub>NAME</sub>
    environment variable.)
    -   myapp<sub>default</sub>
-   container join the network under own name
    -   URL <http://web:80>
-   standalone containers can connect default network (attachable=true)
-   ports: - "8001:5432" - distinction between HOST<sub>PORT</sub> and CONTAINER<sub>PORT</sub>


<a id="orga835e1f"></a>

## errors

**error: for webb  No such image: sha256**

-   docker-compose -f docker-compose-filename.yml down
-   docker-compose -f docker-compose-filename.yml up

**Credentials store error: StoreError**

-   <https://stackoverflow.com/questions/56267890/docker-compose-unable-to-start>
-   sudo rm ~/.docker/config.json
-   Create login at <https://hub.docker.com/>
-   docker login
-   docker-compose up

OR remove "credsStore wincredis" from  ~/.docker/config.json

**infinity restarts**

    version: '3'
    services:
      my-service:
        restart: on-failure:5


<a id="org62b1b92"></a>

## usage

-

-   docker-compose -f docker-compose.yml up
-   docker-compose up -d
-   docker-compose down
-   docker-compose down &#x2013;volumes # and remove volumes
-   docker-compose up &#x2013;no-deps &#x2013;build <service<sub>name</sub>> - rebuild
-   docker-compose build ServiceName+1


<a id="orgee2ab1c"></a>

## add folder (volumes)

services:

-   xxx<sub>service</sub>: volumes: - ./local:/root/container:ro

The imperative way (Docker client):

-   docker volume create [OPTIONS] [VOLUME]

Types of volumes in Docker:

-   Docker host-mounted volumes
    -   /host/path:/container/path
-   Docker named volumes
    -   named<sub>volume</sub><sub>name</sub>:/container/path
    -   types:
        -   internal - used only inside docker-compose (app)
        -   external - can be used across docker installation - must be created by the user

docker external named volume:

1.  docker volume create &#x2013;driver local &#x2013;opt type=none &#x2013;opt device=/var/opt/my<sub>website</sub>/dist &#x2013;opt
    o=bind web<sub>data</sub>
2.

    volumes:
      web_data:
        external: true


<a id="org3d7bb66"></a>

# hub.docker.com

docker image history &#x2013;no-trunc image<sub>name</sub> > image<sub>history</sub>

-   docker search
-   docker pull/push

repository

-   docker login
-   docker logout
-   docker push aa/nginx localhost:5000/myadmin/nginx
-   docker pull myregistry/nginx:master
-   docker pull eon01/nginx localhost:5000/myadmin/nginx

-   docker image history nginx
-   docker image history &#x2013;no-trunc image<sub>name</sub> > image<sub>history</sub>
-   docker inspect nginx

-   docker rmi nginx

-   docker rmi $(docker images | grep "^<none>" | awk "{print $3}") - удаление всех образов без тега (none)
-   docker commit nginx - создание образа из контейнера
-   docker tag nginx my/nginx


<a id="orgc14d954"></a>

# kubernetes (K8S)

-   Основы <https://habr.com/ru/post/258443/>
-   Concepts <https://kubernetes.io/docs/concepts/>

Процесс в K8S не может создавать под-процессы.

На мастере размещаются служемные поды

-   taind - ограничение
-

config maps - ?

bootstraping

Модули реализованы через API

-   in-tree
-   out of tree - addons - вне кодовой базы


<a id="orgd07bbd2"></a>

## definition

-   container-orchestration system for automating application deployment, scaling, and management.

container orchestration system for automating application deployment, scaling, and management.  It
aims to provide a "platform for automating deployment, scaling, and operations of application
containers across clusters of hosts".

It eliminates the need for orchestration - continuously drive the
current state towards the provided desired state.


<a id="org92974c5"></a>

### Контейнер

-   Это стандартизированный метод упаковки приложения
-   процесс повязанный к namespaces и контролируемый через cgroups


<a id="org9cdb6c5"></a>

### main features

-   service discovery and load balancing
-   storage orchistration (local storage, public cloud providers, etc)
-   automated rollouts and rollbacks (just tell the desired state) (развертывание и откат)
-   automatic bin packing (CPU and memory needs => a particular node)
-   Self-healing (liveness & readiness probes)
-   Secret and configuration management (deploy & update secrets and configuration without rebuilding
    container images)

probes

-   **liveness** - deadlock - application is running, but unable to make progress
-   **readiness** - when app is start to accept traffic. Pod is considered ready when all of its
    containers are ready.


<a id="org54b8d0d"></a>

## history

-   Go Google - from Google’s Borg


<a id="orgeeb4779"></a>

## architecture

-   Node and pods <https://kubernetes.io/docs/tutorials/kubernetes-basics/explore/explore-intro/>

-   node - виртуальные машины в VMware
-   controller - высшая обстрация над pods - CRI specification
-   pods - ip adress, volumes - not durable by default. (has hidden default container)
-   contrainer


<a id="orgb799218"></a>

## ЦФТ обучение

-   \\\srv-file\Share\DEV\\Обучение\AML

-   k create deployment nginx &#x2013;image=nginx - создать pod c одной репликой
-   k scale deployment nginx &#x2013;replicas 3  - реплики 3

pod name - nginx-(HashOfConfiguration)-randomValue

Deployments

-   случайные имена
-   чтобы мы не делали сервис будет работать

StatefulSet
DaemonSets
Job - при инициализации приложения

Services & Endpoinds & probes


<a id="orgd59b8fd"></a>

## Control Plane Components - master

1.  API server - управление все к нему обращается
2.  controller-master
3.  scheduler - планирование размещения pods and workloads
4.  etcd - ключ-значение хранилище - состояние кластера


<a id="orgd3163a3"></a>

## master and worker node

-   linux
    -   kubelet - node and master - взаимодействуют с API-сервером и подписываются на выставленные
        данных scheduler-oм
    -   kube-proxy - отвечает за настройку iptables
    -   Kubernetes CRI Container Runtime Interface
        -   на dev - docker CRI shim
        -   prod - CRI-O
    -   Addons дополнительные компоненты worker - kubectl -n kube-system get pods
        -   fluent-d - logging - Cluster-level Logging
        -   weave addon - creates a virtual network that connects containers across multiple hosts and enables their
            automatic discovery
        -   coredns addon
        -   ambasador API gateway
-   master
    -   kube-apiserver - API Server - все взаимодействие с k8s
    -   kube-controller-manager - Controller manager - reconsilation loop
    -   kube-scheduler - Scheduler - оценить на какой ноде должен быть запущен контейнер
    -   etcd - distributed key-value store, у значений есть версия. Optimistic concurrency control

**reconsilation loop** - user-declared desired state -> observed current state (action, observe)


<a id="orga4bb8f9"></a>

### kubelet

<https://kubernetes.io/docs/reference/command-line-tools-reference/kubelet/>

сервис запускается в самой хостовой системе через systemd

мониторит pods


<a id="org574e1ce"></a>

## Kubernetes Objects

-   node - Master and Workers. Master - служебный, Worker - для установки
-   pods - one or more containers share the same resources and local network - used as the unit of replication
    -   pods are scaled up and down as a unit, all containers in a pod must scale together
    -   pods should remain as small as possible, , typically holding only a main process and its tightly-coupled helper containers (side-cars)
-   Ingress -  exposes HTTP and HTTPS routes from outside the cluster to services

Once you create the object, the Kubernetes system will constantly work to ensure that object exists

-   object spec - desired state
-   object status - actual state of the object

Objects:

-   **Node** - phisical instance for kubernetes
    -   Kubelet -  process responsible for communication between the Kubernetes Master and the Node
    -   Kube-Proxy - proxy-балансировщик, простейшее перенаправление потоков TCP и UDP (round robin) между набором бэкендов
    -   A container runtime (like Docker, rkt)
-   **Pod** - has unique IP, one or more application containers(tightly coupled) (such as Docker or rkt), and some shared
    resources for those containers:
    -   Volumes - Shared storage for containers
    -   Networking, as a unique cluster IP address
    -   configmap - kubectl -n aml get configmap provodki-app-cm-env -o yaml
-   **service** - абстракция которая определяет логический объединённый набор pod и политику доступа к ним.
-   **Namespaces** - разделить кластер K8S на несколько логических - с квотами не влияя на другие

kubectl get all:

-   pod
-   service
-   deployment.apps
-   replicaset.apps
-   statefulset.apps
-   job.batch


<a id="org266a03d"></a>

### high-level abstractions

-   Deployment - wrapper for ReplicaSet (rolling updates (versioning)) (default?)
-   DaemonSet
-   StatefulSet
-   ReplicaSet - pods scaling (deprecated)
-   Job


<a id="orge044c56"></a>

### object spec

apiVersion: apps/v1  # default  version of the Kubernetes API
kind: Deployment
metadata: 		# uniquely identify the object - name, UID, namespace
	name: nginx-deployment
spec: 			# state you desire for the object
	replicas: 2	# tells deployment to run 2 pods matching the template


<a id="orgea297de"></a>

## Ansible

Используется для развертывания подов на виртуалках. Kubernetes cluster on bare-metal or VMs.

Использует Vagrant?

Playbooks are Ansible’s configuration, deployment, and orchestration language.  playbooks are your instruction manuals


<a id="orge76308a"></a>

## есть

кластеры:

1.  AML dev
2.  AML prod
3.  norma2 test 2 masters
4.  norma2 prod 3 masters

Grafana, Prometeus - мониторинг кубернетиса


<a id="org46cf5e9"></a>

## from image to pod:

-   web server - gitlab registry
-   Scheduler - command to kubelet
-   kubelet use cri (Container Runtime Interface) to pull nodes


<a id="org368cf90"></a>

## primary/replica architecture (Master/slave):

-   master - one or many nodes - control plane
    -   etcd - distributed key-value data store stores the configuration (like Apache ZooKeeper)
    -   API server - internal and external interface - REST JSON over HTTP
    -   Scheduler - запускает pods на node based on resource availability - match resource "supply" to workload "demand"
    -   Controller manager - communicating with the API server to create, update, and delete the resources it
        manages (pods, service endpoints, etc.).
        -   Replication Controller - handles replication and scaling
        -   Autosclaer - use metrics from Prometheus чтобы подстроить количество репли к количеству запросов
-   node or Worker -
    -   Kubelet - starting, stopping, and maintaining application containers organized into pods
    -   Kube-proxy (network proxy and a load balancer) - routing traffic to the appropriate container
    -   Container runtime - must implement Container Runtime Interface (CRI) - Most container runtime environments
        use **runc**
        -   Docker
        -   CRI-O
        -   Containerd
        -   Other CRI runtimes: frakti


<a id="org213cf8d"></a>

## CAP theorem

**it is impossible for a distributed data store to simultaneously provide more than two out of the following
 three guarantees:**

-   Consistency: Every read receives the most recent write or an error
-   Availability: Every request receives a (non-error) response, without the guarantee that it contains the most recent write
-   Partition tolerance: The system continues to operate despite an arbitrary number of messages being dropped (or delayed) by the network between nodes


<a id="orgc7f1f87"></a>

## runC

-   <https://habr.com/ru/company/selectel/blog/316258/>
-   libcontainer, которая по сути является частью runc, используется в Docker вместо LXC


<a id="org2afce74"></a>

## commands

-   get ns &#x2013; все неймспейсы
-   -n aml get all &#x2013; все в неймспейсе
-   -n aml exec -it front-77d466758c-ttpfj &#x2013; sh
-   -n aml describe pods &#x2013; detailed information about a resource
-   -n aml get configmap provodki-app-cm-env -o yaml &#x2013; configmap for pod - Labels - ключ значение
-   exec &#x2013; как docker exec


<a id="org70d2dfd"></a>

## ReplicationControllerо

homogeneous ˌhōməˈjēnēəs - однородная система
heterogeneous *ˌhɛt(ə)rə(ʊ)ˈdʒiːnɪəs* - неоднородная система


<a id="org5b280f7"></a>

## app logs

-   <https://vzurczak.wordpress.com/2019/02/13/using-graylog-for-centralized-logs-in-k8s-platforms-and-permissions-management/>

3 variants:

-   letting applications directly output their traces in other systems
-   collector per pod
-   collector per node - this

Two architectures for log managements:

1.  "Elastic Stack" (formerly the "ELK stack") (products for Elastic Search):
    -   Logstash - data collection and log-parsing engine
    -   Kibana - visualisation platform
    -   ?
    -   ?
2.  Graylog - three-tier architecture and scalable storage (based on Elasticsearch - its backend)

Collecting logs per node - Logstash or (FileBeat, Fluentd, Fluent Bit…)


<a id="org528c201"></a>

## Helm - Пакетный менеджер

<https://www.baeldung.com/kubernetes-helm>

-   Container: Container refers to operating system level virtualization
-   Docker: Docker is a popular program to create and run containers
-   Kubernetes: Kubernetes is a popular container orchestration program.

Helm cnsist of:

-   Tiller Server: installed within a Kubernates cluster - interacts with the Kubernetes API server to install,
    upgrade, query and remove Kubernetes resources
-   Client: command-line interface - install, upgrade and rollback charts

Charts - Kubernetes resources package

-   collection of files
-   configuration

Release - running instance of a chart


<a id="org19a07f4"></a>

### .helm

-   Chart.yaml : This is the main file that contains the description of our chart
-   values.yaml : this is the file that contains the default values for our chart
-   templates/ : This is the directory where Kubernetes resources are defined as templates
-   .helmignore: patterns to ignore when packaging (similar in concept to .gitignore)

Template:


<a id="orgea84604"></a>

## cluster management software

<https://en.wikipedia.org/wiki/List_of_cluster_management_software>

-   Kubernetes - google
-   Docker Swarm
-   CoreOS
-   Mesos – Apache


<a id="orge77323a"></a>

## как могут поды иметь свои IP ведь они на одной ноде

оверлейная сеть


<a id="orgf6e7c03"></a>

## kubectl


<a id="orgecb1f76"></a>

### kubectl get

-   **all**

NAME                 TYPE        CLUSTER-IP   EXTERNAL-IP   PORT(S)   AGE
service/kubernetes   ClusterIP   10.96.0.1    <none>        443/TCP   307d

-   **namespaces**


<a id="org007e706"></a>

## USAGE (max prokopenko)

kubectl get services # Вывести все сервисы в пространстве имён
kubectl get pods &#x2013;all-namespaces # Вывести все поды во всех пространств имён
kubectl get pods -o wide # Вывести все поды в текущем пространстве имён с
подробностями
kubectl get deployment my-dep # Вывести определённое развёртывание
kubectl get pods # Вывести все поды в пространстве имён
kubectl get pod my-pod -o yaml # Получить информацию по поду в формате YAML

kubectl describe nodes my-node
kubectl describe pods my-pod

kubectl get services &#x2013;sort-by=.metadata.name

kubectl get pods &#x2013;sort-by='.status.containerStatuses[0].restartCount'

kubectl get pv &#x2013;sort-by=.spec.capacity.storage

kubectl get pods &#x2013;selector=app=cassandra -o \\
jsonpath='{.items[\*].metadata.labels.version}'

role.kubernetes.io/master')
kubectl get node &#x2013;selector='!node-role.kubernetes.io/master'

kubectl get pods &#x2013;field-selector=status.phase=Running

kubectl get nodes -o jsonpath='{.items[\*].status.addresses[?(@.type=="ExternalIP")].address}'

сайте <https://stedolan.github.io/jq/>
sel=\({\)(kubectl get rc my-rc &#x2013;output=json | jq -j '.spec.selector | to<sub>entries</sub> | .[] | "\\(.key)=\\(.value),"' )%? }
echo $(kubectl get pods &#x2013;selector=$sel &#x2013;output=jsonpath={.items..metadata.name})

kubectl get pods &#x2013;show-labels

JSONPATH='{range .items[\*]}{@.metadata.name}:{range @.status.conditions[\*]}
{@.type}={@.status};{end}{end}' \\
&& kubectl get nodes -o jsonpath="$JSONPATH" | grep "Ready=True"

kubectl get secret my-secret -o go-template='{{range $k,$v := .data}}{{"### "}}{{$k}}{{"\n"}}
{{$v|base64decode}}{{"\n\n"}}{{end}}'

kubectl get pods -o json | jq '.items[].spec.containers[].env[]?.valueFrom.secretKeyRef.name' | grep -
v null | sort | uniq

всех подах.

инициализации.

kubectl get pods &#x2013;all-namespaces -o jsonpath='{range .items[\*].status.initContainerStatuses[\*]}
{.containerID}{"\n"}{end}' | cut -d/ -f3

kubectl get events &#x2013;sort-by=.metadata.creationTimestamp

случае применения манифеста.

kubectl diff -f ./my-manifest.yaml


<a id="orga3137f7"></a>

## Обновление ресурсов

kubectl set image deployment/frontend www=image:v2 # Плавающее обновление
контейнеров "www" развёртывания "frontend", обновление образа
kubectl rollout history deployment/frontend # Проверить историю развёртывания, включая ревизии.

kubectl rollout undo deployment/frontend # Откатиться к предыдущему
развёртыванию
kubectl rollout undo deployment/frontend &#x2013;to-revision=2 # Откатиться к определённой ревизии
kubectl rollout status -w deployment/frontend # Отслеживать статус плавающего
развёртывания "frontend" до его завершения
kubectl rollout restart deployment/frontend # Перезапуск плавающего развёртывания
"frontend"

kubectl get pod mypod -o yaml | sed 's/\(image: myimage\):.\*$/\\1:v4/' | kubectl replace -f -
kubectl label pods my-pod new-label=awesome # Добавить метку
kubectl annotate pods my-pod icon-url=<http://goo.gl/XXBTWq> # Добавить аннотацию
kubectl autoscale deployment foo &#x2013;min=2 &#x2013;max=10 # Автоматически масштабировать развёртывание "foo" в диапазоне от 2 до 10 подов


<a id="orgd08f5ad"></a>

## удаление ресурсов

kubectl delete -f ./pod.json # Удалить под по типу и имени в pod.json kubectl delete pod,service baz foo # Удалить поды и сервисы с одноимёнными
именам "baz" и "foo"
kubectl delete pods,services -l name=myLabel # Удалить поды и сервисы с именем
метки myLabel
kubectl -n my-ns delete pod,svc &#x2013;all # Удалить все поды и сервисы в
пространстве имен my-ns

kubectl get pods -n mynamespace &#x2013;no-headers=true | awk '/pattern1|pattern2/{print $1}' | xargs kubectl delete -n mynamespace pod


<a id="org562dd1a"></a>

## работа с подами, логами

kubectl logs my-pod # вывести логи пода (в stdout)
kubectl logs -l name=myLabel # вывести логи пода с меткой myLabel (в stdout) kubectl logs my-pod &#x2013;previous # вывести логи пода (в stdout) по предыдущему
экземпляру контейнера
kubectl logs my-pod -c my-container # вывести логи контейнера пода (в stdout, при работе
с несколькими контейнерами)
kubectl logs -l name=myLabel -c my-container # вывести логи пода с меткой myLabel (в stdout) kubectl logs my-pod -c my-container &#x2013;previous # вывести логи контейнера пода (в stdout, при
работе с несколькими контейнерами) по предыдущему экземпляру контейнера
kubectl logs -f my-pod # вывести логи пода в режиме реального времени (в stdout) kubectl logs -f my-pod -c my-container # вывести логи контейнера пода в режиме реального
времени (в stdout, при работе с несколькими контейнерами)
kubectl logs -f -l name=myLabel &#x2013;all-containers # вывести логи всех подов с меткой myLabel (в
stdout)
kubectl run -i &#x2013;tty busybox &#x2013;image=busybox &#x2013; sh # запустить под как интерактивную оболочку
kubectl run nginx &#x2013;image=nginx &#x2013;restart=Never -n
mynamespace # Запустить под nginx в заданном пространстве имён
kubectl run nginx &#x2013;image=nginx &#x2013;restart=Never # Запустить под nginx и записать его
спецификацию в файл pod.yaml
&#x2013;dry-run -o yaml > pod.yaml
kubectl attach my-pod -i # Прикрепить к запущенному контейнеру
kubectl port-forward my-pod 5000:6000 # Переадресовать порт 5000 в локальной машине
на порт 6000 в поде my-pod
kubectl exec my-pod &#x2013; ls / # Выполнить команду в существующем поде (в случае
одного контейнера).

kubectl exec my-pod -c my-container &#x2013; ls / # Выполнить команду в существующем поде (в
случае нескольких контейнеров)
kubectl top pod POD<sub>NAME</sub> &#x2013;containers # Показать метрики по заданному поду вместе с
его контейнерами


<a id="orgdc7395c"></a>

## Работа с кластером

kubectl config view # показать объединённые настройки kubeconfig

конфигурацию из этих файлов
KUBECONFIG=~/.kube/config:~/.kube/kubconfig2
kubectl config view

kubectl config view -o jsonpath='{.users[?(@.name `= "e2e")].user.password}'
kubectl config view -o jsonpath`'{.users[].name}' # показать первого пользователя
kubectl config view -o jsonpath='{.users[\*].name}' # получить список пользователей
kubectl config get-contexts # показать список контекстов
kubectl config current-context # показать текущий контекст (current-context) kubectl config use-context my-cluster-name # установить my-cluster-name как контекст по
умолчанию

kubectl config set-credentials kubeuser/foo.kubernetes.com &#x2013;username=kubeuser &#x2013;
password=kubepassword

kubectl config set-context &#x2013;current &#x2013;namespace=ggckad-s2

kubectl config set-context gce &#x2013;user=cluster-admin &#x2013;namespace=foo \\
&& kubectl config use-context gce
kubectl config unset users.foo # удалить пользователя foo
kubectl cordon my-node # Отметить узел my-node как неназначаемый
kubectl drain my-node # Вытеснить узел my-node, чтобы подготовиться
к эксплуатации
kubectl uncordon my-node # Отметить узел my-node как назначаемый
kubectl top node my-node # Показать метрики по заданному узлу
kubectl cluster-info # Показать адреса главного узла и сервисов
kubectl cluster-info dump # Вывести состояние текущего кластера в stdout kubectl cluster-info dump &#x2013;output-directory=/path/to/cluster-state # Вывести состояние текущего
кластера в /path/to/cluster-state

заменено указанным
kubectl taint nodes foo dedicated=special-user:NoSchedule


<a id="orgda03ad1"></a>

# REST API Documentation UIs

In 2015, the Swagger standard changed its name to OpenAPI. Your API documentation will be displayed
through the Swagger UI.

-   DapperDox -
-   ReDoc
-   RAML 2 HTML -


<a id="org242f861"></a>

## generate OpenAPI from Flask

-   <https://donofden.com/blog/2020/06/14/Python-Flask-automatically-generated-Swagger-3-0-openapi-Document>
-   <https://apispec.readthedocs.io/en/latest/install.html>


<a id="org308f90d"></a>

## Swagger - развязность

OpenAPI Specification (formerly Swagger Specification) is an API description format for REST APIs.

YAML, being a superset of JSON

Consist off

-   Swagger Editor – browser-based editor where you can write OpenAPI specs.
-   Swagger UI – renders OpenAPI specs as interactive API documentation.
-   Swagger Codegen – generates server stubs and client libraries from an OpenAPI spec.


<a id="org13443fd"></a>

### swagger offline

-   <https://github.com/swagger-api/swagger-editor>
-   index.html
-   dist/\*
-   <https://stackoverflow.com/questions/57677424/disable-generate-server-client-inside-swagger-editor>
-   <https://issue.life/questions/49515713>
-   show only <https://github.com/swagger-api/swagger-editor/issues/719>

**Create spec.js file containg Swagger JSON**  <https://stackoverflow.com/questions/30400477/how-to-open-local-files-in-swagger-ui>


    <script src='spec.js' type="text/javascript"></script>
    <script type="text/javascript">

        var url = window.location.search.match(/url=([^&]+)/);
        if (url && url.length > 1) {
          url = decodeURIComponent(url[1]);
        } else {
          url = "http://petstore.swagger.io/v2/swagger.json";
        }

    window.onload = function() {
      // Build a system
    const editor = SwaggerEditorBundle({
       // url: url,
        spec: spec,

**Hide editor**

     /**

        Styling for printing out of the editor

     */
    .Pane1,
    .topbar {
    display: none;
    }
    .SplitPane {
    position: relative !important;
    display: block !important;
    }
    .Pane2 {
    overflow-y: auto;
    width: 100% !important;
    }


<a id="org31288ba"></a>

### Specification 2.0

<https://github.com/OAI/OpenAPI-Specification/blob/master/versions/2.0.md>

-   Field Names are case sensitive:
    -   Fixed fields, which have a declared name
    -   Patterned fields, which declare a regex pattern for the field name
-   \# Comment
-   list - [] or - with \n

1.  Data Types

    <table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


    <colgroup>
    <col  class="org-left" />

    <col  class="org-left" />

    <col  class="org-left" />

    <col  class="org-left" />

    <col  class="org-left" />
    </colgroup>
    <tbody>
    <tr>
    <td class="org-left">integer</td>
    <td class="org-left">integer</td>
    <td class="org-left">int32</td>
    <td class="org-left">signed 32 bits</td>
    <td class="org-left">&#xa0;</td>
    </tr>


    <tr>
    <td class="org-left">long</td>
    <td class="org-left">integer</td>
    <td class="org-left">int64</td>
    <td class="org-left">signed 64 bits</td>
    <td class="org-left">&#xa0;</td>
    </tr>


    <tr>
    <td class="org-left">float</td>
    <td class="org-left">number</td>
    <td class="org-left">float</td>
    <td class="org-left">&#xa0;</td>
    <td class="org-left">10.1</td>
    </tr>


    <tr>
    <td class="org-left">double</td>
    <td class="org-left">number</td>
    <td class="org-left">double</td>
    <td class="org-left">&#xa0;</td>
    <td class="org-left">&#xa0;</td>
    </tr>


    <tr>
    <td class="org-left">string</td>
    <td class="org-left">string</td>
    <td class="org-left">&#xa0;</td>
    <td class="org-left">&#xa0;</td>
    <td class="org-left">"blabla"</td>
    </tr>


    <tr>
    <td class="org-left">byte</td>
    <td class="org-left">string</td>
    <td class="org-left">byte</td>
    <td class="org-left">base64 encoded characters</td>
    <td class="org-left">&#xa0;</td>
    </tr>


    <tr>
    <td class="org-left">binary</td>
    <td class="org-left">string</td>
    <td class="org-left">binary</td>
    <td class="org-left">any sequence of octets</td>
    <td class="org-left">&#xa0;</td>
    </tr>


    <tr>
    <td class="org-left">boolean</td>
    <td class="org-left">boolean</td>
    <td class="org-left">&#xa0;</td>
    <td class="org-left">&#xa0;</td>
    <td class="org-left">true false</td>
    </tr>


    <tr>
    <td class="org-left">date</td>
    <td class="org-left">string</td>
    <td class="org-left">date</td>
    <td class="org-left">As defined by full-date - RFC3339</td>
    <td class="org-left">&#xa0;</td>
    </tr>


    <tr>
    <td class="org-left">dateTime</td>
    <td class="org-left">string</td>
    <td class="org-left">date-time</td>
    <td class="org-left">As defined by date-time - RFC3339</td>
    <td class="org-left">&#xa0;</td>
    </tr>


    <tr>
    <td class="org-left">password</td>
    <td class="org-left">string</td>
    <td class="org-left">password</td>
    <td class="org-left">Used to hint UIs the input needs to be obscured.</td>
    <td class="org-left">&#xa0;</td>
    </tr>
    </tbody>
    </table>

    "file" - used by the Parameter Object and the Response Object to set the parameter type or the response as
    being a file

    **formats** -  to more finely define the data (accompanied by property)

    -   "email", "uuid", etc.,

2.  Hierarchy

    Swagger Object - root. Required subobjects:

    -   swagger: "2.0"
    -   info
        -   version: string - application API version
    -   paths - The available paths and operations for the API.

    not required:

    -   definitions Definitions Object - data types produced and consumed by operations - used by schema: \n $ref:
        "#/definitions/Order"

    1.  Paths Object

        /{path} 	Path Item Object

        -   get
        -   put
        -   post
        -   delete
        -   options
        -   head
        -   patch
        -   parameters - общие для всех операций на этом Path. Могут быть overriden на уровне операции

        **Operation Object**

        -   tags [] - for logical grouping
        -   summary - what the operation does
        -   description - GFM syntax can be used for rich text representation
        -   externalDocs
        -   operationId: "addPet" - MUST be unique among all operations described in the API - recommended to follow common
            programming naming conventions
        -   consumes: - for all parameters
            -   "application/json"
            -   "application/xml"
        -   produces: - for all responses
            -   "application/xml"
            -   "application/json"
        -   parameters - [Parameter Object]
        -   responses -  	Responses Object 	REQUIRED list of sub
        -   schemes ["http", "https"]
        -   deprecated 	boolean
        -   security - [Security Requirement Object]

        **Parameter Object**
        parameter types:

        -   /pet/{petId}: - from path petId
        -   query   (/items?id=###)
        -   header - Custom headers that are expected as part of the request.
        -   body  - payload of an HTTP - can only be one body parameter
        -   form - payload of an HTTP request when either application/x-www-form-urlencoded, multipart/form-data or both
            are used as the content type - only parameter type that can be used to send files - cannot be declared
            together with a body parameter

        fields:

        -   name string - case sensitive REQUIRED
        -   in string - parameter type "query", "header", "path", "formData" or "body" REQUIRED
        -   description - string
        -   required boolean - for path must be true
        -   schema - Schema Object - for body only

        not for body:

        -   type - REQUIRED - "string", "number", "integer", "boolean", "array" (or "file" for "formData")
        -   format - string see Data Type Formats
        -   allowEmptyValue boolean - Default false
        -   items ItemsObject - Required if type is "array"
        -   default any - MUST conform to type

        **Responses Object**

        -   status code
            -   description 	string REQUIRED
            -   schema
            -   headers
            -   examples

    2.  Schema

            definitions:
              Id:
                type: "object"
                properties:
                  id:
                    type: "integer"
                    format: "int64"
                xml:
                  name: "Id"
              Exception:
                type: "object"
                properties:
                  status:
                    type: "string"
                    example: "exception"
                  description:
                    type: "string"
                xml:
                  name: "Exception"


<a id="orgaa38d70"></a>

### JSON Schema

<https://cwiki.apache.org/confluence/pages/viewpage.action?pageId=75977264>


<a id="orga62ea28"></a>

## links

-   <https://stackoverflow.com/questions/36634281/list-of-swagger-ui-alternatives>
-   article <https://pronovix.com/blog/free-and-open-source-api-documentation-tools?platform=hootsuite>
