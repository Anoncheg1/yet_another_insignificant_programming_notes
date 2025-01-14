
# Table of Contents

1.  [Docker](#org6ed8bb9)
    1.  [terms](#org43f2347)
    2.  [theory](#orgb46749f)
        1.  [network](#orgdb90620)
        2.  [security](#orgd8bc124)
        3.  [distroless](#org3f96cee)
    3.  [usage](#org257cbba)
    4.  [use cases:](#orga89e0d4)
        1.  [containers](#org20935fd)
        2.  [Exploring Docker container's file system](#org0a1c792)
        3.  [Block internet](#org89a13ce)
        4.  [Block access to LAN and out:](#orga41eaa8)
        5.  [Block access to other containers:](#org9ae9ebd)
        6.  [Block any external access:](#org9067e96)
        7.  [backup](#orga6f5335)
        8.  [volume sizes](#orgeba4996)
        9.  [monitor resource usage](#org1dc8192)
    5.  [admin usage](#org1a8ebca)
    6.  [CMD and ENTRYPOINT](#org8d45c50)
    7.  [ARG and ENV](#org1fdda65)
    8.  [links](#org444d57b)
    9.  [install](#org2fb1f14)
        1.  [Docker CE](#org56a0e05)
    10. [proxy](#org740f07e)
    11. [storage](#org9377b76)
    12. [images](#orge181639)
    13. [containers](#org9a356b1)
    14. [reuse layers](#org06bf7fd)
    15. [ENV](#org2dfc815)
    16. [multi-stage builds](#orgac2591a)
    17. [clear](#orgd971799)
    18. [tmpfs](#orgff022ff)
    19. [Dokerfile](#org4bdc7e3)
    20. [apt Dokerfile](#org53bda40)
    21. [health check for container](#org0c9f450)
2.  [docker-compose](#orgfda5f1f)
    1.  [multi-stage builds](#org0e042ab)
    2.  [swarm](#org77c7d08)
    3.  [docker-compose.yml](#orge3671c8)
    4.  [Environment variables](#orgfb7e625)
    5.  [Network](#org18c43cd)
        1.  [ex](#orge1f7fd9)
    6.  [errors](#org3b9bc7a)
    7.  [usage](#orgc3d0e8c)
    8.  [add folder (volumes)](#org9a0ffa7)
    9.  [Entrypoint and Cmd](#org8bbcdc7)
3.  [hub.docker.com](#orgddc910f)
4.  [kubernetes (K8S)](#orgc2d668b)
    1.  [theory](#orgc275b2b)
        1.  [Контейнер](#orgcf67fde)
        2.  [main features](#org88d898c)
        3.  [Microservices](#org4a4c9a1)
        4.  [Services & Endpoinds & probes](#org96f6b3c)
        5.  [PV & Provisioners & PVC](#orgabc9c37)
        6.  [CRD - add own API to kubernetes](#org290baa3)
    2.  [history](#org171980e)
    3.  [objects, components, apis](#org49bd0a3)
        1.  [Abstractions:](#orga62ec2a)
        2.  [Kubernetes Objects or API object or API resources or resource type](#org752dbe5)
        3.  [workload resources - high-level abstractions](#org2e9a84d)
        4.  [object spec](#org81beaec)
        5.  [pod lifecycle -](#org9aff46b)
        6.  [container states](#orgc5d113a)
        7.  [names and uids (all objects have)](#org3164d64)
        8.  [Labels (optional)](#orgc2dfc23)
    4.  [terms](#org217f275)
    5.  [architecture](#org4034643)
        1.  [master node](#orgf1c704a)
        2.  [worker node](#org1397ed1)
        3.  [Container Runtime Interface (CRI)](#org55a2fc4)
        4.  [istio](#org3598699)
        5.  [user namespaces](#org9c0b76d)
        6.  [links](#org527a465)
    6.  [ЦФТ обучение (to delete)](#org862b0f5)
    7.  [master and worker node (rusnarbank)](#org6fcfa3e)
        1.  [kubelet](#org2d84b78)
        2.  [есть кластеры:](#org16a430c)
    8.  [Ansible](#org45a110c)
    9.  [from image to pod:](#org50e4272)
    10. [primary/replica architecture (Master/slave):](#orgb9d483e)
    11. [CAP theorem](#org897a26a)
    12. [runC](#orgd719c54)
    13. [ReplicationControllerо](#orgad0a06c)
    14. [app logs](#org17a745a)
    15. [Helm - Пакетный менеджер](#org6b411b1)
        1.  [.helm](#org6ea868c)
        2.  [links](#org92e1412)
    16. [cluster management software](#org186d3b7)
    17. [как могут поды иметь свои IP ведь они на одной ноде](#org22b3e68)
    18. [kubectl](#orge6ede2f)
        1.  [theory](#org128ed46)
        2.  [kubectl get](#orgbd51ad8)
        3.  [Viewing and finding resources](#orgd54d9c1)
        4.  [request step by step](#org9387d84)
    19. [kubeadm](#orgb1decd8)
    20. [well-known values and paths](#org5b67983)
    21. [Installation steps](#org3e12823)
    22. [.bashrc](#orgd2219f7)
    23. [common shorts](#org25a09aa)
    24. [role-based access control (RBAC) policy](#org0d8133a)
    25. [system maintentance](#orgc36c155)
    26. [Usage My](#orgd5ba0ee)
        1.  [explore](#orge64d3da)
        2.  [manage](#org088869a)
    27. [USAGE (max prokopenko)](#org2906188)
    28. [usage](#org5cd2606)
        1.  [Обновление ресурсов](#org7b36781)
        2.  [удаление ресурсов](#org8355569)
        3.  [работа с подами, логами](#org8422efc)
        4.  [Работа с кластером](#org37a0602)
    29. [What is Krew?](#org4396a5d)
    30. [create namespace](#orgdb10b8a)
    31. [create custom resource](#orgbc9e955)
    32. [one pod per node](#orgc4d4f5a)
    33. [known errors and misleads in kubectl](#org0029c16)
    34. [Troubleshooting](#org32ae365)
    35. [DNS](#org0ef105a)
        1.  [theory](#org2ab1bfd)
        2.  [Check if my DNS service is up:](#orge4a367c)
        3.  [edit configmap for CoreDNS](#org1ab710a)
    36. [network & security](#org570854d)
    37. [links](#orgc58aec0)
5.  [REST API Documentation UIs](#orgade8a8a)
    1.  [generate OpenAPI from Flask](#org4bea816)
    2.  [Swagger - развязность](#org52c90b1)
        1.  [swagger offline](#orge71ec42)
        2.  [Specification 2.0](#orgbde7e4c)
        3.  [JSON Schema](#org66f5c9f)
    3.  [links](#org8ce3eba)

;-**- mode: Org; coding: utf-8; fill-column: 100 -**-


<a id="org6ed8bb9"></a>

# Docker

-   guide <https://docker-curriculum.com/>


<a id="org43f2347"></a>

## terms

**Image** -docker run> **Running Container** -> **Stopped Container** -docker commit> **New Image**

**parent image** - image that your image is based on (FROM)

Состоит:

-   **Docker daemon**- manages Docker containers and handles container objects - **Docker client program** -
    provides a command-line interface
-   **Container** c т.з. ч. - стандартизированный метод упаковки приложений, его конфигурациии и всех
    зависимостей в единый объект.
-   **Container** c т.з. ОС - процесс извлеченный из tarball привязанный к namespaces и контролируемый через cgroups
-   **Container** - состоит из **слоев** - слепков состояний файловой системы из image + read-write layer on
    top. Images become containers when they run on Docker Engine. при перезапуске возвращается к image
    -   UUID short and long
    -   name - by user or random
-   **Container Runtime** - software that can run containers on a host operating system or each node in
    the cluster so that Pods can run there.
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


<a id="orgb46749f"></a>

## theory


<a id="orgdb90620"></a>

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


<a id="orgd8bc124"></a>

### security

Attack surface of a container image is measured by the number of files in it, or how many megabytes of space it uses on disk.

attack surface:

-   quality of software and configuration(aka files
-   software in the direct execution path which is used in many different container images (C

libraries, web servers, encryption libraries, etc)

-   Standardizing on the exact same versions (Linux distribution and version) of this widely used
    software in the direct execution path (C libraries, web servers, encryption libraries, etc) reduces
    attack surface


<a id="org3f96cee"></a>

### distroless

a Linux distro is made up of two main components: a kernel, and a user space.

   Even in a distroless set of container images, things like the Java virtual machine, Python, and
Node.js are compiled against a C library which gives these user space programs access to low level
functions in the Linux kernel (network sockets, storage volumes, files, etc).

Linux distros exist because we just want to write applications, we don’t want to patch and maintain
 widely used libraries and infrastructure like timezone data, C libraries, etc.

FROM scratch - official container <https://docs.docker.com/build/building/base-images/>

-   itself it is empty (in that it doesn’t contain any folders or files)
-   can conain executable that will be like a process on host machine: statically compiled and self-contained.
-   You also wouldn’t be able to login to the container either as there isn’t a shell unless you explicitly add one.


<a id="org257cbba"></a>

## usage

explore:

-   docker images - list images and layers
    -   docker images | grep superset | awk '{print $1}' | xargs docker image rm
-   docker ps - containers currently running
    -   docker ps -a - was ran
-   docker logs image

-   docker pull busybox - download image
-   docker build -t fedora/jboss:1.0 . # &#x2013;tag to give a name to the image
    -   docker build image &#x2013;build-args HTTPS<sub>PROXY</sub>=172.0.0.1:8888
    -   docker build -t aa -f Dockerfile.app .
-   docker run -it debian<sub>my</sub> bash - create container based on image and attach to tty
-   docker exec -it debian<sub>my</sub> bash - connect to running
    -   docker exec -it debian<sub>my</sub> bash -c "command ; command"
    -   docker exec -w /workspace -it ps bash
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


<a id="orga89e0d4"></a>

## use cases:


<a id="org20935fd"></a>

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


<a id="org0a1c792"></a>

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


<a id="org89a13ce"></a>

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


<a id="orga41eaa8"></a>

### Block access to LAN and out:

-   docker network create -o "com.docker.network.bridge.enable<sub>ip</sub><sub>masquerade</sub>"="false" lan-restricted
-   Blocks
    -   Local LAN
    -   Internet
-   Does not block
    -   Host running docker daemon (example access to 10.0.1.10:22)


<a id="org9ae9ebd"></a>

### Block access to other containers:

-   docker network create -o "com.docker.network.bridge.enable<sub>icc</sub>"="false" icc-restricted
-   Blocks
    -   Containers accessing other containers on the same icc-restricted network.
-   Does not block
    -   Access to host running docker daemon
    -   Local LAN
    -   Internet


<a id="org9067e96"></a>

### Block any external access:

networks:
  yournetwork:
     internal: true


<a id="orga6f5335"></a>

### backup

-   volumes: tar -cvzf a.tar.gz /var/lib/docker/volumes/<volume<sub>name</sub>>
-   docker save -o ubuntu.tar ubuntu:lucid
-   docker save myimage:latest | gzip > myimage<sub>latest.tar.gz</sub>


<a id="orgeba4996"></a>

### volume sizes

    #!/bin/bash
    
    for v in $(docker volume ls | grep -v DRIVER | awk '{print $2}') ; do
       p=$(docker volume inspect $v | jq '.[].Mountpoint' | tr -d '"')
       du -sh $p


<a id="org1dc8192"></a>

### monitor resource usage

-   docker stats &#x2013;all &#x2013;no-stream &#x2013;no-trunc # memory, cpu
-   docker system df -v
-   docker status container<sub>ID</sub> #to check single container resources


<a id="org1a8ebca"></a>

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


<a id="org8d45c50"></a>

## CMD and ENTRYPOINT

docker run - require CMD or ENTRYPOINT specified in Dokerfile

both CMD and ENTRYPOINT have exec and shell form

-   ENTRYPOINT ["executable", "param1", "param2"] - exec form - recommended
-   ENTRYPOINT command param1 param2 - shell form - Ctrl + C will not stop ex. ping google.com

CMD can be used to set additional defaults that are more likely to be changed

-   ENTRYPOINT ["top", "-b"]
-   CMD ["-c"]


<a id="org1fdda65"></a>

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


<a id="org444d57b"></a>

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


<a id="org2fb1f14"></a>

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


<a id="org56a0e05"></a>

### Docker CE

<https://kifarunix.com/install-docker-ce-on-ubuntu-20-04/>

-   Docker CE (Community Edition) is the open-source, community supported version of Docker and is available for free.
-   Docker EE (Enterprise Edition) is a commercial/premium version of Docker CE and is support by Docker Inc.
    -   docker or docker-engine or docker-io
    -   $ sudo apt-get remove docker docker-engine docker.io containerd runc


<a id="org740f07e"></a>

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


<a id="org9377b76"></a>

## storage

-   <https://docs.docker.com/storage/>

by default a writable container layer.

-   volumes - on Docker *var/lib/docker/volumes* - best way - cannot be modified externaly - When you mount the
    volume into a container, this directory is what is mounted into the container
-   bind mounts - can be modified externaly

kebenrenets - The Docker image is at the root of the filesystem hierarchy, and any volumes are mounted at the
specified paths within the image.


<a id="orge181639"></a>

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


<a id="org9a356b1"></a>

## containers

Container has:
read only layers:
1 writable layer - сохраняется только если завершается нормально, в случае сбоя теряется.


<a id="org06bf7fd"></a>

## reuse layers

1.  docker build &#x2013;cache-from image0 -t image1
2.  <https://stackoverflow.com/questions/48449326/how-to-docker-reuse-layers-with-different-base-images>


<a id="org2dfc815"></a>

## ENV

<https://medium.com/google-cloud/kubernetes-configmaps-and-secrets-68d061f7ab5b>


<a id="orgac2591a"></a>

## multi-stage builds

**builder pattern** - one Dockerfile to use for development, and a slimmed-down one to use for
 production, which only contained your application and exactly what was needed to run it.

-   FROM - starts new stage
-   FROM golang:1.16 AS builder; COPY &#x2013;from=builder /go/a ./a # if stages will be reoreded
-   COPY &#x2013;from=nginx:latest /etc/nginx/nginx.conf /nginx.conf # copy from separate image


<a id="orgd971799"></a>

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


<a id="orgff022ff"></a>

## tmpfs

-   sudo mount -t tmpfs tmpfs /var/lib/docker
-   systemctl restart docker


<a id="org4bdc7e3"></a>

## Dokerfile

-   COPY local.conf . # to current directory # preffered # stripped-down version of ADD
-   ADD . /code # Too Much Magic
    -   ADD *foo.tar.gz /tmp* # autounpack
-   WORKDIR /code
-   ENV FLASK<sub>APP</sub> app.py # set env variable inside of running container
-   RUN pip3 install &#x2013;upgrade pip # run command to build image


<a id="org53bda40"></a>

## apt Dokerfile

    RUN apt-get update && apt-get install -y --no-install-recommends \
        cuda-libraries-11-8=${NV_CUDA_LIB_VERSION} \
        && rm -rf /var/lib/apt/lists/*


<a id="org0c9f450"></a>

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


<a id="orgfda5f1f"></a>

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


<a id="org0e042ab"></a>

## TODO multi-stage builds


<a id="org77c7d08"></a>

## swarm

-   docker swarm init - to enable swarm mode and make your current machine a swarm manage
-   docker-machine - инструмент который работает на базе виртуальных машин. ХЗ как что
-   docekr swarm leave


<a id="orge3671c8"></a>

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


<a id="orgfb7e625"></a>

## Environment variables

default environment variable file named .env (or &#x2013;env-file command line option):

-   TAG=v1.5

var

-   ${VARIABLE:?err} exits with an error message containing err if VARIABLE is unset or empty in the
    environment.
-   ${VARIABLE?err} exits with an error message containing err if VARIABLE is unset in the
    environment.

    web:
      environment:
        - DEBUG=1


<a id="org18c43cd"></a>

## Network

network per application

-   network name based on the “project name”, which is based on the name of the directory it lives in
    (You can override the project name with either the &#x2013;project-name flag or the COMPOSE<sub>PROJECT</sub><sub>NAME</sub>
    environment variable.)
    -   myapp<sub>default</sub>
-   container join the network under own name
    -   URL <http://web:80>
-   standalone containers can connect default network (attachable=true)
-   

ports: ["8001:5432"] - distinction between HOST<sub>PORT</sub> and CONTAINER<sub>PORT</sub>

-   service-to-service communication uses the **CONTAINER<sub>PORT</sub>**
-   **HOST<sub>PORT</sub>** is defined, the service is accessible outside the swarm as well.


<a id="orge1f7fd9"></a>

### ex

    services:
      web:
        build: .
        ports:
          - "8000:8000"
      db:
        image: postgres
        ports:
          - "8001:5432"


<a id="org3b9bc7a"></a>

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


<a id="orgc3d0e8c"></a>

## usage

-   

-   docker-compose -f docker-compose.yml up
-   docker-compose up -d
-   docker-compose down
-   docker-compose down &#x2013;volumes # and remove volumes
-   docker-compose up &#x2013;no-deps &#x2013;build <service<sub>name</sub>> - rebuild
-   docker-compose build ServiceName+1


<a id="org9a0ffa7"></a>

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


<a id="org8bbcdc7"></a>

## Entrypoint and Cmd

Override Docker ENTRYPOINT and CMD.

-   entrypoint: /code/entrypoint.sh
-   entrypoint: ["php", "-d", "memory<sub>limit</sub>=-1", "vendor/bin/phpunit"]

entrypoint: ["tail", "-f", "/dev/null"] # sleep


<a id="orgddc910f"></a>

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


<a id="orgc2d668b"></a>

# kubernetes (K8S)

[k(j)uːbərˈnɛtɪs]

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


<a id="orgc275b2b"></a>

## theory

K8s is a platform for creating, deploying and managing distributed applications.

-   container-orchestration system for automating application deployment, scaling, and management.

container orchestration system for automating application deployment, scaling, and management.  It
aims to provide a "platform for automating deployment, scaling, and operations of application
containers across clusters of hosts".

It eliminates the need for orchestration - continuously drive the
current state towards the provided desired state.

Master/slave (Primary/replica architecture) - model of asymmetric communication (data speed or
 quantity, when averaged over time, is different in one direction from the other).


<a id="orgcf67fde"></a>

### Контейнер

-   Это стандартизированный метод упаковки приложения
-   процесс повязанный к namespaces и контролируемый через cgroups


<a id="org88d898c"></a>

### main features

benefits of k8s:

-   Velocity
    -   immutability - artifact created and don't change via user modifications
    -   declarative configuration - desired state of the system
    -   onlineself-healing systems
-   scaling
    -   decoupling - each component is separated from other components by defined APIs and service load balancers.
-   abstracting your infrastructure
-   efficiency

o

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


<a id="org4a4c9a1"></a>

### Microservices

The ideal team size is the "two-pizza team" - 7-8 ppl.

The development of decoupled, service-oriented teams - each build single microservice.

The aggregation of all of these services provides the implementation of overall product's surface area.


<a id="org96f6b3c"></a>

### Services & Endpoinds & probes

apiserver -> [NODE kube-proxy -> clusterIP(iptables)->] ->Backed Pod1, Backed Pod2, Backed Pod3

clusterIP - load balancer by iptables with (probability distribution)

endpoint - address:port

if CLUSTER-IP - is not None - it is balanced.

probes?


<a id="orgabc9c37"></a>

### PV & Provisioners & PVC

PV - persistent volume - just a folder at some server.

containers don't work directly with PV, they use PVC (PV claims) - it is query for storage volume to get PV.

reclaim policy (RECLAIM) - "Delete" mean provisioner (local volume provisioner) may just remove all
 data from folder and make PV available again. "Retain" mean change state to &#x2026; and don't remove data.


<a id="org290baa3"></a>

### CRD - add own API to kubernetes

API - (kubectl get pods/alert/&#x2026;)

External Controller for logs/alerts management.


<a id="org171980e"></a>

## history

-   2003: **Borg System** - Google
-   2013: **Omega** - Google
-   2014: **Kubernetes** - Google - as an open source version of Borg
-   2015: v1.0
-   2016:
    -   First release of **Helm** the package manager of Kubernetes.
    -   **Minikube** a tool that makes it easy to run Kubernetes locally.
    -   **Kops** official project for managing production-grade Kubernetes clusters.
    -   kubeadm
    -   supports OpenAPI - Specification defines a standard interface to RESTful APIs
-   2017:
    -   Google and IBM announce **Istio**
    -   role-based access control (RBAC) authorizer
    -   Introducing **Kubeflow** - Machine Learning Stack Built for Kubernetes.
    -   **Amazon EKS** -  to run Kubernetes on AWS without needing to install, operate, and maintain your own Kubernetes control plane or nodes.
    -   **Azure AKS**
    -   the principal competitors:
        -   VMware
        -   Mesosphere, Inc.
        -   Docker, Inc.
        -   Microsoft Azure
        -   AWS
-   the hard way guilde [4](#org447ab36)


<a id="org49bd0a3"></a>

## objects, components, apis


<a id="orga62ec2a"></a>

### Abstractions:

main (kind)

-   **pod:** group of containers with shared storage and network resources - ip adress, volumes - not
    durable by default. (has hidden default container)
    -   "assigning a pod to a Node"
    -   Pods are the smallest deployable units of computing.
-   **service:** provide load balancing, naming, discovery
-   **namespace:** just group resources
-   **Ingress:** objects provice an easy-to-use fronted that can combine multiple microservices into a
    single externalized API survace area.
-   **configmap:** store yaml config as a service.
-   **container:** process, unit of service, on the same physical or virtual machine in the cluster.


<a id="org752dbe5"></a>

### Kubernetes Objects or API object or API resources or resource type

Objects - persistent entities "record of intent". has **spec** and **status**.

1.  list of objects (kind)

        kubectl api-resources # to get all accessible API resources
        kubectl api-resources -o wide | grep tfjob # to get all supported operations for object
    
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

2.  TODO kubectl get all:

    -   pod
    -   service
    -   deployment.apps
    -   replicaset.apps
    -   statefulset.apps
    -   job.batch


<a id="org2e9a84d"></a>

### workload resources - high-level abstractions

configure **controllers** that make sure the right number of the right kind of pod
 are running, to match the state you specified.

-   **Deployment:** wrapper for ReplicaSet (rolling updates (versioning)). Pods are expected to be
    interchangeable.
-   **ReplicaSet:** pods scaling (deprecated) maintain a stable set of replica Pods. (not used not manage workloads
-   **StatefulSet:** like Deployment, but maintains a sticky identity for each of its Pods. provide:
    unique network identifiers, persistent storage, graceful deployment and scaling, automated rolling
    updates. Most used to be able to make a link between its Pods and their persistent storage. Когда
    пралажение хранит данные в volume.
-   **DaemonSet:** provide facilities that are local to a specific node. Одна реплика определенного пода
    присутствовала на каждой ноде. Для служебных задач каких-то.
-   **Job/CronJob:** task one-off/repeat task. Разовая нагрузка, к примеру, мы хотим при деплои
    прилажения сделать инициализацию базы данных.

1.  Deployment

    **template** and **selector** are the only required fields of the .spec.
    
    1.  template
    
        **Pod template**


<a id="org81beaec"></a>

### object spec

Required fields

-   **apiVersion:** v1 usualy
-   **kind:** What kind of object you want to create.
-   **metadata:** Data that helps uniquely identify the object, including a name string, UID, and optional namespace
-   **spec:** unuque for every object type. What state you desire for the object

Display an explanation of a specific field

    $ kubectl explain [pods.spec.containers

Example:

    apiVersion: apps/v1  # default  version of the Kubernetes API
    kind: Deployment
    metadata: 		# uniquely identify the object - name, UID, namespace
      name: nginx-deployment
    spec: 			# state you desire for the object
      replicas: 2	# tells deployment to run 2 pods matching the template


<a id="org9aff46b"></a>

### pod lifecycle -

Pod.status(PodStatus).phase(string) - is phase

-   Pending -
-   Running - at least one of its primary containers is running, or is in starting or restarting.
-   on of:
    -   Succeeded - All containers is terminated in success
    -   Failed - any container in the Pod terminated and at least one in failure. or node dies or is disconnected
    -   Unknown - error in communicating with the node
-   Completed - status Succeeded is not a phase acutaly it is transitional state. scheduled, but not ready. Containers
    state is Terminated with Completed reason.

restartPolicy - applies to all containers:

-   Always(default) -
-   OnFailure -
-   Never -

Pod.status(PodStatus).conditions(PodCondition).type(string) - is Pod conditions:

-   PodScheduled - scheduled to a node
-   PodHasNetwork - Pod sandbox has been successfully created
-   ContainersReady - all containers are ready
-   Initialized - all **init containers** have completed successfully
-   Ready - Pod is able to serve requests

Notes:

-   Pods are only scheduled once in their lifetime - until it stops or is terminated.


<a id="orgc5d113a"></a>

### container states

-   Waiting - something required
-   Running
-   Terminated


<a id="org3164d64"></a>

### names and uids (all objects have)

-   metadata->Name - is unique for that type of resource.
-   metadata->UIDs - A Kubernetes systems-generated string to uniquely identify objects.


<a id="orgc2dfc23"></a>

### Labels (optional)

metadata->Labels - key/value pairs that are attached to objects.

can be used for:

-   to organize and to select subsets of objects

selects pods with labels:

    k get pods -l environment=production,tier=frontend
    k get pods -l 'environment in (production, qa)'
    k get pods -l 'environment,environment notin (frontend)'


<a id="org217f275"></a>

## terms

-   **workload:** app running on k8s - one or several components, you run it inside a set of pods.
    -   **workload resources:** Deployment, StatefulSet
-   **container runtime:** software that responsible for running containers.
-   **control loop:** is a non-terminating loop that regulates the state of a system. (used in controller)
-   **control plane:** set of components that run on mster nodes and control the overall state of the cluster.
-   **bootstaping:** is the process of setting up a new Kubernetes cluster from scratch.
-   **provisioning machines:** the process of creating and preparing virtual of phisical machines:
    install OS, configure network, etc.
-   **container:** executable image that contains software and all of ins dependencies
-   **ConfigMaps:** non-confidential data in key-value pairs. environment-specific configuration.
-   **Secret:** an object that contains a small amount of sensitive data such as a password. stored
    unencrypted in the API server's underlying data store (etcd). 1) as a files in a volume mounted 2)
    as a env variable 3) By the kubelet when pulling images
-   ****Pod template**:** specifications for creating Pods .spec.template included in workload resources
    such as Deployments, Jobs, and DaemonSets.
-   ****Services**:** type of object to group pods.
-   ****resources**:** types of objects, can by got by # kubectl api-resources. Defined and deployed with yaml of json files.
-   ****cluster**:** **joined** worker nodes with "control plane" which is nodes also.
    -   Кубернетис кластер, это **joined** worker nodes with "control plane" which is nodes also. Результат выполнения kubeadm init и kubeadm join, в результате которой поднимаются все необходимые сервисы на нодах и из нод формирутся кластер. К которому можно подключиться через доступ к API server. Подробная статья. <https://www.airplane.dev/blog/kubernetes-control-plane>
-   **resource:** *kind* of API object
-   **collection:** A list of instances of a resource. There are dozens of collection types (such as PodList, ServiceList, and NodeList)

-   **reconsilation loop** - user-declared desired state -> observed current state (action, observe) - у
    каждого вида рабочей нагрузки есть свой контроллер который наблюдает за текущим состоянием и
    желаемым. (kube-controller manager)


<a id="org4034643"></a>

## architecture

-   pods - ip adress, volumes - not durable by default. (has hidden default container). a set of
    running containers on your cluster
-   node - виртуальные машины в VMware. Can run(be assigned with) several pods.
-   controller - высшая обстрация над pods - CRI specification -
-   contrainer - run in pods - binary package with files
    -   Docker image Format (often)


<a id="orgf1c704a"></a>

### master node

-   API Server - communicate with **kubelets** of Nodes - управление, все к нему обращается.
-   Controller (Manager) - control loops that watch the state of your cluster. tries to move the
    current cluster state closer to the desired state.
-   Scheduler - планирование размещения pods and workloads на nodes. tracks resource allocation on each node.
-   etcd - ключ-значение хранилище - состояние кластера


<a id="org1397ed1"></a>

### worker node

-   kubelet - primary -  управляет pod'ами,их контейнерами, образами, разделами, etc.
-   cAdvisor
-   Kube-Proxy - network between pods and final users
-   pods
-   Container runtime


<a id="org55a2fc4"></a>

### Container Runtime Interface (CRI)

enables the **kubelet** to use a wide variety of container runtimes, without having a need to recompile
 the cluster components.

kubelet interacts with container runtimes via the Container Runtime Interface (CRI) or CRI API,
 which decouples the maintenance of core Kubernetes from the actual CRI implementation.

Implementations of CRI API (CRI plugins):

-   containerd <https://github.com/containerd/containerd> - can handle any container images which
    compliant with **OCI Distribution Specification**
-   CRI-O <https://github.com/cri-o/cri-o> - Open Container Initiative (OCI) for Linux containers
    (OS-level virtualization): LXD, Podman, CBL-Mariner.
-   Docker Engine - The software that hosts the containers of Dockers (by the Linux kernel and
    libvirt, LXC and systemd-nspawn)
-   Mirantis Container Runtime


<a id="org3598699"></a>

### istio

**service mesh** is a service-to-service communications between services. Is an abstraction layer over
 the underlying cluster management platform, such as Kubernete.

-   Service Mesh is the cloud native equivalent of TCP/IP, addressing application network communication,
    security and visibility issues.
-   istio is relying on Kubernetes but also scalable to virtual machine loads.
-   Istio’s core consists of a control plane and a data plane, with Envoy as the default data-plane agent.

Empower K8s: intelligent routing, automatic load balancing, fine-grained access control, traffic
 encryption, and policy enforcement. They also enable powerful observability capabilities, including
 request tracing, metric collection, and distributed logging

Istio for Kubernetes is built right into the app and keeps track of how the different parts of the
 app interact with each other.

<https://github.com/istio/istio>


<a id="org9c0b76d"></a>

### user namespaces

Linux namespaces - feature of the Linux kernel. It makes: one set of processes sees one set of
 resources while another set of processes sees a different set of resources.


<a id="org527a465"></a>

### links

-   Node and pods <https://kubernetes.io/docs/tutorials/kubernetes-basics/explore/explore-intro/>


<a id="org862b0f5"></a>

## ЦФТ обучение (to delete)

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


<a id="org6fcfa3e"></a>

## master and worker node (rusnarbank)

linux

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

master

-   kube-apiserver - API Server - все взаимодействие с k8s
-   kube-controller-manager - Controller manager - reconsilation loop
-   kube-scheduler - Scheduler - оценить на какой ноде должен быть запущен контейнер
-   etcd - distributed key-value store, у значений есть версия. Optimistic concurrency control


<a id="org2d84b78"></a>

### kubelet

<https://kubernetes.io/docs/reference/command-line-tools-reference/kubelet/>

сервис запускается в самой хостовой системе через systemd

мониторит pods


<a id="org16a430c"></a>

### есть кластеры:

1.  AML dev
2.  AML prod
3.  norma2 test 2 masters
4.  norma2 prod 3 masters

Grafana, Prometeus - мониторинг кубернетиса


<a id="org45a110c"></a>

## Ansible

Используется для развертывания подов на виртуалках. Kubernetes cluster on bare-metal or VMs.

Использует Vagrant?

Playbooks are Ansible’s configuration, deployment, and orchestration language.  playbooks are your instruction manuals


<a id="org50e4272"></a>

## from image to pod:

-   web server - gitlab registry
-   Scheduler - command to kubelet
-   kubelet use cri (Container Runtime Interface) to pull nodes


<a id="orgb9d483e"></a>

## primary/replica architecture (Master/slave):

master - one or many nodes - control plane

-   etcd - distributed key-value data store stores the configuration (like Apache ZooKeeper)
-   API server - internal and external interface - REST JSON over HTTP
-   Scheduler - запускает pods на node based on resource availability - match resource "supply" to workload "demand"
-   Controller manager - communicating with the API server to create, update, and delete the resources it
    manages (pods, service endpoints, etc.).
    -   Replication Controller - handles replication and scaling
    -   Autosclaer - use metrics from Prometheus чтобы подстроить количество репли к количеству запросов

node or Worker -

-   Kubelet - starting, stopping, and maintaining application containers organized into pods
-   Kube-proxy (network proxy and a load balancer) - routing traffic to the appropriate container
-   **Container runtime** - must implement Container Runtime Interface (CRI) - Most **container runtime environments**
    use **runc**.
    -   Docker
    -   CRI-O
    -   Containerd
    -   Other CRI runtimes: frakti

**runc** provide OCI API. Kubelet communicate with the container runtime via the CRI’s gRPC interface.


<a id="org897a26a"></a>

## CAP theorem

**it is impossible for a distributed data store to simultaneously provide more than two out of the following
 three guarantees:**

-   Consistency: Every read receives the most recent write or an error
-   Availability: Every request receives a (non-error) response, without the guarantee that it contains the most recent write
-   Partition tolerance: The system continues to operate despite an arbitrary number of messages being dropped (or delayed) by the network between nodes


<a id="orgd719c54"></a>

## runC

-   <https://habr.com/ru/company/selectel/blog/316258/>
-   libcontainer, которая по сути является частью runc, используется в Docker вместо LXC


<a id="orgad0a06c"></a>

## ReplicationControllerо

homogeneous ˌhōməˈjēnēəs - однородная система
heterogeneous *ˌhɛt(ə)rə(ʊ)ˈdʒiːnɪəs* - неоднородная система


<a id="org17a745a"></a>

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


<a id="org6b411b1"></a>

## Helm - Пакетный менеджер

Think of it like apt/yum/homebrew for Kubernetes.

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


<a id="org6ea868c"></a>

### .helm

-   Chart.yaml : This is the main file that contains the description of our chart
-   values.yaml : this is the file that contains the default values for our chart
-   templates/ : This is the directory where Kubernetes resources are defined as templates
-   .helmignore: patterns to ignore when packaging (similar in concept to .gitignore)

Template:


<a id="org92e1412"></a>

### links

-   <https://github.com/helm/helm>
-   <https://www.baeldung.com/kubernetes-helm>


<a id="org186d3b7"></a>

## cluster management software

<https://en.wikipedia.org/wiki/List_of_cluster_management_software>

-   Kubernetes - google
-   Docker Swarm
-   CoreOS
-   Mesos – Apache


<a id="org22b3e68"></a>

## как могут поды иметь свои IP ведь они на одной ноде

оверлейная сеть


<a id="orge6ede2f"></a>

## kubectl


<a id="org128ed46"></a>

### theory

Config: uses $HOME/.kube/ or $KUBECONFIG or &#x2013;kubeconfig or direct connect

to see config:

    kubectl config view

direct connect:

    kubectl get nodes \
        --server https://localhost:6443 \
        --user docker-for-desktop \
        --client-certificate my.cert \
        --client-key my.key \
        --insecure-skip-tls-verify

kubectl [command] [TYPE] [NAME] [flags]

-   **TYPE:** Specifies the resource type.
-   **flags:** Specifies optional flags. For example, you can use the -s or &#x2013;server


<a id="orgbd51ad8"></a>

### kubectl get

-   **all**

NAME                 TYPE        CLUSTER-IP   EXTERNAL-IP   PORT(S)   AGE
service/kubernetes   ClusterIP   10.96.0.1    <none>        443/TCP   307d

-   **namespaces**


<a id="orgd54d9c1"></a>

### Viewing and finding resources

    # Get commands with basic output
    kubectl get services                          # List all services in the namespace
    kubectl get pods --all-namespaces             # List all pods in all namespaces
    kubectl get pods -o wide                      # List all pods in the current namespace, with more details
    kubectl get deployment my-dep                 # List a particular deployment
    kubectl get pods                              # List all pods in the namespace
    kubectl get pod my-pod -o yaml                # Get a pod's YAML
    
    # Describe commands with verbose output
    kubectl describe nodes my-node
    kubectl describe pods my-pod
    
    # List Services Sorted by Name
    kubectl get services --sort-by=.metadata.name
    
    # List pods Sorted by Restart Count
    kubectl get pods --sort-by='.status.containerStatuses[0].restartCount'
    
    # List PersistentVolumes sorted by capacity
    kubectl get pv --sort-by=.spec.capacity.storage
    
    # Get the version label of all pods with label app=cassandra
    kubectl get pods --selector=app=cassandra -o \
      jsonpath='{.items[*].metadata.labels.version}'
    
    # Retrieve the value of a key with dots, e.g. 'ca.crt'
    kubectl get configmap myconfig \
      -o jsonpath='{.data.ca\.crt}'
    
    # Retrieve a base64 encoded value with dashes instead of underscores.
    kubectl get secret my-secret --template='{{index .data "key-name-with-dashes"}}'
    
    # Get all worker nodes (use a selector to exclude results that have a label
    # named 'node-role.kubernetes.io/control-plane')
    kubectl get node --selector='!node-role.kubernetes.io/control-plane'
    
    # Get all running pods in the namespace
    kubectl get pods --field-selector=status.phase=Running
    
    # Get ExternalIPs of all nodes
    kubectl get nodes -o jsonpath='{.items[*].status.addresses[?(@.type=="ExternalIP")].address}'
    
    # List Names of Pods that belong to Particular RC
    # "jq" command useful for transformations that are too complex for jsonpath, it can be found at https://stedolan.github.io/jq/
    sel=${$(kubectl get rc my-rc --output=json | jq -j '.spec.selector | to_entries | .[] | "\(.key)=\(.value),"')%?}
    echo $(kubectl get pods --selector=$sel --output=jsonpath={.items..metadata.name})
    
    # Show labels for all pods (or any other Kubernetes object that supports labelling)
    kubectl get pods --show-labels
    
    # Check which nodes are ready
    JSONPATH='{range .items[*]}{@.metadata.name}:{range @.status.conditions[*]}{@.type}={@.status};{end}{end}' \
     && kubectl get nodes -o jsonpath="$JSONPATH" | grep "Ready=True"
    
    # Output decoded secrets without external tools
    kubectl get secret my-secret -o go-template='{{range $k,$v := .data}}{{"### "}}{{$k}}{{"\n"}}{{$v|base64decode}}{{"\n\n"}}{{end}}'
    
    # List all Secrets currently in use by a pod
    kubectl get pods -o json | jq '.items[].spec.containers[].env[]?.valueFrom.secretKeyRef.name' | grep -v null | sort | uniq
    
    # List all containerIDs of initContainer of all pods
    # Helpful when cleaning up stopped containers, while avoiding removal of initContainers.
    kubectl get pods --all-namespaces -o jsonpath='{range .items[*].status.initContainerStatuses[*]}{.containerID}{"\n"}{end}' | cut -d/ -f3
    
    # List Events sorted by timestamp
    kubectl get events --sort-by=.metadata.creationTimestamp
    
    # List all warning events
    kubectl events --types=Warning
    
    # Compares the current state of the cluster against the state that the cluster would be in if the manifest was applied.
    kubectl diff -f ./my-manifest.yaml
    
    # Produce a period-delimited tree of all keys returned for nodes
    # Helpful when locating a key within a complex nested JSON structure
    kubectl get nodes -o json | jq -c 'paths|join(".")'
    
    # Produce a period-delimited tree of all keys returned for pods, etc
    kubectl get pods -o json | jq -c 'paths|join(".")'
    
    # Produce ENV for all pods, assuming you have a default container for the pods, default namespace and the `env` command is supported.
    # Helpful when running any supported command across all pods, not just `env`
    for pod in $(kubectl get po --output=jsonpath={.items..metadata.name}); do echo $pod && kubectl exec -it $pod -- env; done
    
    # Get a deployment's status subresource
    kubectl get deployment nginx-deployment --subresource=status


<a id="org9387d84"></a>

### request step by step

    kubectl config view - cat  /etc/kubernetes/kubelet.conf

By default, the Kubernetes API server listens on port 6443 on the first non-localhost network interface, protected by TLS.

kube-apiserver is pods


<a id="orgb1decd8"></a>

## kubeadm

**kubeadm init** and **kubeadm join** as best-practice "fast paths" for creating Kubernetes clusters.

-   **kubeadm init** to bootstrap a Kubernetes control-plane node
-   **kubeadm join** to bootstrap a Kubernetes worker node and join it to the cluster


<a id="org5b67983"></a>

## well-known values and paths

-   /etc/kubernetes/manifests as the path where kubelet should look for static Pod manifests.


<a id="org3e12823"></a>

## Installation steps

1.  Verify the MAC address and product<sub>uuid</sub> are unique for every node
    1.  ip link or ifconfig -a
    2.  cat /sys/class/dmi/id/product<sub>uuid</sub>
2.  check that required ports for master and worker nodes are open and don't blocked by firewall
3.  Installing a **container runtime**, most common:
    -   containerd - began as part of Docker
    -   CRI-O
    -   Docker Engine
    -   Mirantis Container Runtime
4.  Installing kubeadm, kubelet and kubectl
5.  Configuring a **cgroup** driver - isolates the resource usage (CPU, memory, disk I/O, etc.) of a
    collection of processes.
6.  Creating a cluster with kubeadm <https://kubernetes.io/docs/setup/production-environment/tools/kubeadm/create-cluster-kubeadm/>
    1.  install to provisioning systems such as Ansible or Terraform or on your own.
    2.


<a id="orgd2219f7"></a>

## .bashrc

apt-get install bash-completion

    ## Install
    apt-get install bash-completion
    ## Bash
    echo 'source <(kubectl completion bash)' >>~/.bashrc
    
    echo 'alias k="kubectl"' >>~/.bashrc


<a id="org25a09aa"></a>

## common shorts

-   ns	namespaces
-   componentstatuses	cs
-   configmaps	cm
-   endpoints	ep
-   events	ev
-   limitranges	limits
-   namespaces	ns
-   nodes	no
-   persistentvolumeclaims	pvc
-   persistentvolumes	pv
-   pods	po
-   replicationcontrollers	rc
-   resourcequotas	quota
-   serviceaccounts	sa
-   services	svc
-   customresourcedefinitions	crd, crds
-   daemonsets	ds
-   deployments	deploy
-   replicasets	rs
-   statefulsets	sts
-   horizontalpodautoscalers	hpa
-   cronjobs	cj
-   certificiaterequests	cr, crs
-   certificates	cert, certs
-   certificatesigningrequests	csr
-   ingresses	ing
-   networkpolicies	netpol
-   podsecuritypolicies	psp
-   replicasets	rs
-   scheduledscalers	ss
-   priorityclasses	pc
-   storageclasses	sc


<a id="org0d8133a"></a>

## role-based access control (RBAC) policy

establish what resources a given role is able to access. Implement principle of least privilege.

    kubectl auth can-i '*' '*' # allowed commands


<a id="orgc36c155"></a>

## system maintentance

kube-system - namespace for system services

    k -n kube-system get all


<a id="orgd5ba0ee"></a>

## Usage My

alias k=kubectl


<a id="orge64d3da"></a>

### explore

    kubectl config view # cat /etc/kubernetes/kubelet.conf
    kubectl cluster-info & kubectl cluster-info dump # more info
    kubectl get nodes
    kubectl describe node kube-worker-1
    k logs -n kube-system kube-apiserver... # get pod description
    
    # get containers in pod:
    kubectl get pod --namespace=kube-system coredns-d46f87476-c5r4m  -o jsonpath='{.spec.containers[*].name}'
    
    k get pods -n ml1 -o wide # get pods in namespace
    k get -n ml1 pod paramserv-worker-0 -o yaml # get yaml of pod
    k get ns # все неймспейсы
    k -n aml get all #  все в неймспейсе
    k -n aml exec -it front-77d466758c-ttpfj -- sh
    k -n aml describe pods/podname # detailed information about a resource
    k -n aml get configmap provodki-app-cm-env -o yaml # configmap for pod - Labels - ключ значение
    
    # -- #
    k get pod podname # Verify that the container is running
    k exec --stdin --tty podname -- /bin/bash	# access to pod=podname
    k exec -it podname -- /bin/bash		# access to pod=podname


<a id="org088869a"></a>

### manage

    # -- test
    k -n ml1 apply --dry-run='client' -f a.yaml: #  Must be "none", "server", or "client"
    
    # -- control resources
    k -n ml1 delete -f ./ML1/k8s/paramserv.yaml
    # force delete pod in Terminated state:
    kubectl delete pod paramserv-ps-0 -n ml1 --grace-period=0 --force
    
    k -n ml1 apply -f ./ML1/k8s/paramserv.yaml # creating a pod
    kubectl replace --force -f ./ML1/k8s/paramserv.yaml # delete + apply
    
    kubectl scale deployment [deployment_name] --replicas=0 # change count of replicas
    
    # disable node for scheduling
    kubectl label node kube-exp-w3.k8s.sumus.work GPU-
    
    # add label to pod
    kubectl label pods foo unhealthy=true


<a id="org2906188"></a>

## USAGE (max prokopenko)

    # Get-команды с основном выводом
    kubectl get services # Вывести все сервисы в пространстве имён
    kubectl get pods --all-namespaces # Вывести все поды во всех пространств имён
    kubectl get pods -o wide # Вывести все поды в текущем пространстве имён с
    подробностями
    kubectl get deployment my-dep # Вывести определённое развёртывание
    kubectl get pods # Вывести все поды в пространстве имён
    kubectl get pod my-pod -o yaml # Получить информацию по поду в формате YAML
    # Посмотреть дополнительные сведения команды с многословным выводом
    kubectl describe nodes my-node
    kubectl describe pods my-pod
    # Вывести сервисы, отсортированные по имени
    kubectl get services --sort-by=.metadata.name
    # Вывести поды, отсортированные по количеству перезагрузок
    kubectl get pods --sort-by='.status.containerStatuses[0].restartCount'
    # Вывести постоянные тома (PersistentVolumes), отсортированные по емкости
    kubectl get pv --sort-by=.spec.capacity.storage
    # Получить метку версии всех подов с меткой app=cassandra
    kubectl get pods --selector=app=cassandra -o \
    jsonpath='{.items[*].metadata.labels.version}'
    # Получить все рабочие узлы (с помощью селектора исключаем узлы с меткой 'node-role.kubernetes.io/master')
    kubectl get node --selector='!node-role.kubernetes.io/master'
    # Получить все запущенные поды в пространстве имён
    kubectl get pods --field-selector=status.phase=Running
    # Получить внешние IP-адреса (ExternalIP) всех узлов
    kubectl get nodes -o jsonpath='{.items[*].status.addresses[?(@.type=="ExternalIP")].address}'
    # Вывести имена подов, принадлежащие к определённому RC
    # Использование команды "jq" помогает упросить поиск в jsonpath, подробнее смотрите на сайте https://stedolan.github.io/jq/
    sel=${$(kubectl get rc my-rc --output=json | jq -j '.spec.selector | to_entries | .[] | "\(.key)=\(.value),"' )%? }
    echo $(kubectl get pods --selector=$sel --output=jsonpath={.items..metadata.name})
    # Показать метки всех подов (или любого другого объекта Kubernetes, которым можноприкреплять метки)
    kubectl get pods --show-labels
    
    # Получить готовые узлы
    JSONPATH='{range .items[*]}{@.metadata.name}:{range @.status.conditions[*]}
    {@.type}={@.status};{end}{end}' \
    && kubectl get nodes -o jsonpath="$JSONPATH" | grep "Ready=True"
    # Вывод декодированных секретов без внешних инструментов
    kubectl get secret my-secret -o go-template='{{range $k,$v := .data}}{{"### "}}{{$k}}{{"\n"}}
    {{$v|base64decode}}{{"\n\n"}}{{end}}'
    # Вывести все секреты, используемые сейчас в поде.
    
    kubectl get pods -o json | jq '.items[].spec.containers[].env[]?.valueFrom.secretKeyRef.name' | grep -
    v null | sort | uniq
    # Вывести все идентификаторы (containerID) контейнеров инициализации (initContainers) во
    всех подах.
    
    # Это полезно при очистке остановленных контейнеров, не удаляя при этом контейнеры
    инициализации.
    
    kubectl get pods --all-namespaces -o jsonpath='{range .items[*].status.initContainerStatuses[*]}
    {.containerID}{"\n"}{end}' | cut -d/ -f3
    # Вывести события, отсортированные по временной метке
    kubectl get events --sort-by=.metadata.creationTimestamp
    # Сравнить текущее состояние кластера с состоянием, в котором находился бы кластер в
    случае применения манифеста.
    
    kubectl diff -f ./my-manifest.yaml


<a id="org5cd2606"></a>

## usage


<a id="org7b36781"></a>

### Обновление ресурсов

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

kubectl get pod mypod -o yaml | sed 's/$image: myimage$:.\*$/\\1:v4/' | kubectl replace -f -
kubectl label pods my-pod new-label=awesome # Добавить метку
kubectl annotate pods my-pod icon-url=<http://goo.gl/XXBTWq> # Добавить аннотацию
kubectl autoscale deployment foo &#x2013;min=2 &#x2013;max=10 # Автоматически масштабировать развёртывание "foo" в диапазоне от 2 до 10 подов


<a id="org8355569"></a>

### удаление ресурсов

kubectl delete -f ./pod.json # Удалить под по типу и имени в pod.json kubectl delete pod,service baz foo # Удалить поды и сервисы с одноимёнными
именам "baz" и "foo"
kubectl delete pods,services -l name=myLabel # Удалить поды и сервисы с именем
метки myLabel
kubectl -n my-ns delete pod,svc &#x2013;all # Удалить все поды и сервисы в
пространстве имен my-ns

kubectl get pods -n mynamespace &#x2013;no-headers=true | awk '/pattern1|pattern2/{print $1}' | xargs kubectl delete -n mynamespace pod


<a id="org8422efc"></a>

### работа с подами, логами

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


<a id="org37a0602"></a>

### Работа с кластером

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


<a id="org4396a5d"></a>

## What is Krew?

Krew is the plugin manager for kubectl command-line tool.


<a id="orgdb10b8a"></a>

## create namespace

    k get ns --show-labels # with labels

    ---
    
    apiVersion: v1
    kind: Namespace
    metadata:
      # name: mlsynth
      name: ml1

    {'apiVersion': 'v1', 'kind': 'Namespace', 'metadata': {'name': 'ml1'}}


<a id="orgbc9e955"></a>

## create custom resource

    apiVersion: apiextensions.k8s.io/v1
    kind: CustomResourceDefinition
    metadata:
    name: dolphins.ship.io
    spec:
    group: ship.io
    versions:
       - name: v1
         served: true
         storage: true
         schema:
           openAPIV3Schema:
             type: object
             properties:
               spec:
                 type: object
                 properties:
                   name:
                     type: string
    scope: Namespaced
    names:
       plural: dolphins
       singular: dolphin
       kind: Dolphin
       shortNames:
       - dolphin
       categories:
       - all


<a id="orgc4d4f5a"></a>

## one pod per node

    template:
      metadata:
        labels:
          app: paramserv
      spec:
        affinity:
          podAntiAffinity:
            requiredDuringSchedulingIgnoredDuringExecution:
            - labelSelector:
                matchExpressions:
                - key: app
                  operator: In
                  values:
                  - paramserv
              topologyKey: kubernetes.io/hostname

    {'template': {'metadata': {'labels': {'app': 'paramserv'}},
                  'spec': {'affinity': {'podAntiAffinity': {'requiredDuringSchedulingIgnoredDuringExecution': [{'labelSelector': {'matchExpressions': [{'key': 'app',
                                                                                                                                                        'operator': 'In',
                                                                                                                                                        'values': ['paramserv']}]},
                                                                                                                'topologyKey': 'kubernetes.io/hostname'}]}}}}}


<a id="org0029c16"></a>

## known errors and misleads in kubectl

    k -n ml1 get all # will get pods and services


<a id="org32ae365"></a>

## Troubleshooting

-v, &#x2013;v Level number for the log level verbosity. Up to 8.

    kubectl cluster-info - Display cluster info

responses:

-   Error from server: etcdserver: request timed out
    -   no response from
-   The connection to the server kube-exp-m.clive.tk:6443 was refused - did you specify the right host or port?
    -
-   "Kubernetes control plane is running at <https://kube-exp-m.clive.tk:6443>"  "CoreDNS is running at <https://kube-exp-m.clive.tk:6443/api/v1/namespaces/kube-system/services/kube-dns:dns/proxy>"
    -   everything is allright


<a id="org0ef105a"></a>

## DNS


<a id="org2ab1bfd"></a>

### theory

**CoreDNS** is a general-purpose authoritative DNS server that can serve as cluster DNS


<a id="orge4a367c"></a>

### Check if my DNS service is up:

$ kubectl get svc &#x2013;namespace=kube-system
NAME       CLUSTER-IP   EXTERNAL-IP   PORT(S)         AGE
kube-dns   10.96.0.10   <none>        53/UDP,53/TCP   5d

Check if DNS endpoints are exposed:

$ kubectl get ep kube-dns &#x2013;namespace=kube-system
NAME       ENDPOINTS                     AGE
kube-dns   10.244.0.5:53,10.244.0.5:53   5d

Check the contents of /etc/resolv.conf in my container:
$ kubectl exec -ti busybox &#x2013; cat /etc/resolv.conf
nameserver 10.96.0.10
search default.svc.cluster.local svc.cluster.local cluster.local
options ndots:5

logs from the kube-dns container:
$ kubectl logs &#x2013;namespace=kube-system $(kubectl get pods &#x2013;namespace=kube-system -l k8s-app=kube-dns -o name) -c kubedns

kubectl rollout restart -n kube-system deployment/coredns


<a id="org1ab710a"></a>

### edit configmap for CoreDNS

-   kubectl get -n kube-system configmaps coredns -o yaml > core<sub>dns.yaml</sub>
-   kubectl replace -n kube-system -f core<sub>dns.yaml</sub>

or

-   kubectl -n kube-system edit configmap coredns


<a id="org570854d"></a>

## TODO network & security

-   cilium - networking, observability, and security solution with an eBPF-based dataplane.
-   Calico - full-blown Kubernetes “networking solution” with functionality including network policy controller, kube-proxy replacement and network traffic observability.


<a id="orgc58aec0"></a>

## links

-   docs <https://kubernetes.io/docs/>
-   guide <https://kubectl.docs.kubernetes.io/guides/>
-   api <https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.27/>
    -   template(PodTemplateSpec) <https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.27/#podtemplate-v1-core>
-   <https://github.com/kelseyhightower/kubernetes-the-hard-way> <a id="org447ab36"></a>
-   <https://kubernetes.io/ru/docs/reference/kubectl/cheatsheet/>

<https://kubernetes.io/docs/tasks/administer-cluster/dns-debugging-resolution/>


<a id="orgade8a8a"></a>

# REST API Documentation UIs

In 2015, the Swagger standard changed its name to OpenAPI. Your API documentation will be displayed
through the Swagger UI.

-   DapperDox -
-   ReDoc
-   RAML 2 HTML -


<a id="org4bea816"></a>

## generate OpenAPI from Flask

-   <https://donofden.com/blog/2020/06/14/Python-Flask-automatically-generated-Swagger-3-0-openapi-Document>
-   <https://apispec.readthedocs.io/en/latest/install.html>


<a id="org52c90b1"></a>

## Swagger - развязность

OpenAPI Specification (formerly Swagger Specification) is an API description format for REST APIs.

YAML, being a superset of JSON

Consist off

-   Swagger Editor – browser-based editor where you can write OpenAPI specs.
-   Swagger UI – renders OpenAPI specs as interactive API documentation.
-   Swagger Codegen – generates server stubs and client libraries from an OpenAPI spec.


<a id="orge71ec42"></a>

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


<a id="orgbde7e4c"></a>

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


<a id="org66f5c9f"></a>

### JSON Schema

<https://cwiki.apache.org/confluence/pages/viewpage.action?pageId=75977264>


<a id="org8ce3eba"></a>

## links

-   <https://stackoverflow.com/questions/36634281/list-of-swagger-ui-alternatives>
-   article <https://pronovix.com/blog/free-and-open-source-api-documentation-tools?platform=hootsuite>

