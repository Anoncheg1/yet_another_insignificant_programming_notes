
# Table of Contents

1.  [Docker](#orgdb30ce3)
    1.  [terms](#org28202bb)
    2.  [theory](#org07c9b41)
        1.  [network](#orgc5198ad)
        2.  [security](#orgd1d3b0c)
        3.  [distroless](#org604c7a0)
        4.  [When not to use Docker](#orgc4f4262)
    3.  [usage](#org09494d1)
    4.  [use cases:](#org58a847e)
        1.  [containers](#org5890f77)
        2.  [Exploring Docker container's file system](#org02c1569)
        3.  [Block internet](#org05d2296)
        4.  [Block access to LAN and out:](#org283c523)
        5.  [Block access to other containers:](#org47c20e5)
        6.  [Block any external access:](#org6e8eab6)
        7.  [backup](#orga1ed077)
        8.  [volume sizes](#orga11ad5a)
        9.  [monitor resource usage](#org02632a4)
    5.  [admin usage](#org0d6b8eb)
    6.  [CMD and ENTRYPOINT](#org8605802)
    7.  [ARG and ENV](#org1d15e7c)
    8.  [links](#orgbdf69ab)
    9.  [install](#org6e91a67)
        1.  [Docker CE](#orge39e479)
    10. [proxy](#orgea43d2d)
    11. [storage](#orgb5e0e64)
    12. [images](#orgbe873fc)
    13. [containers](#orgba8e373)
    14. [reuse layers](#orgd246617)
    15. [multi-stage builds](#org7bdbee0)
    16. [clear](#orgd1fa068)
    17. [tmpfs](#org9246654)
    18. [Dokerfile](#org471ab41)
    19. [apt Dokerfile](#org1118b4c)
    20. [health check for container](#orgf32f395)
    21. [Volumes, mount points (Bind mounts),](#org6daa8f7)
    22. [Development Containers or dev containers or .devcontainer directory](#org4365566)
    23. [DockerHub - publish](#orgb6cc02a)
    24. [troubleshooting](#org5b0dc7e)
2.  [docker-compose](#org9811788)
    1.  [multi-stage builds](#orgd1e2154)
    2.  [swarm](#org8a58932)
    3.  [docker-compose.yml](#orga32e5c7)
    4.  [Environment variables](#org3be7c20)
    5.  [Network](#orge98207e)
        1.  [ex](#org716636f)
    6.  [errors](#orgaa1a64e)
    7.  [usage](#org7025402)
    8.  [add folder (volumes)](#orge5ae098)
    9.  [Entrypoint and Cmd](#org21425ec)
3.  [hub.docker.com](#org4c45cf3)
4.  [devops](#org079f44d)
5.  [MLflow - experiment tracking](#org56b46dd)
    1.  [Features](#orgfde713c)
6.  [ClearML - experiment tracking](#orgb5ce880)
7.  [Mage - data pipeline tool](#orgeea5059)
8.  [kubernetes (K8S)](#orge9b87bf)
    1.  [theory](#orgc516b2e)
        1.  [Контейнер](#org6e19f37)
        2.  [main features](#org1be8b8e)
        3.  [Microservices](#org2be66a0)
        4.  [Services & Endpoinds & probes](#org7225633)
        5.  [PV & Provisioners & PVC](#org1ec5fa7)
        6.  [CRD - add own API to kubernetes](#org6aa41f0)
    2.  [history](#org00753b2)
    3.  [objects, components, apis](#org5db741c)
        1.  [Abstractions:](#org53e5dc1)
        2.  [Kubernetes Objects or API object or API resources or resource type](#org454c132)
        3.  [workload resources - high-level abstractions](#org5ab2a74)
        4.  [object spec](#org07f5725)
        5.  [pod lifecycle -](#org234e93a)
        6.  [container states](#org747cfda)
        7.  [names and uids (all objects have)](#orgd1b09f2)
        8.  [Labels (optional)](#org96a67b6)
    4.  [terms](#orgf49c8ac)
    5.  [architecture](#orgc53ebb0)
        1.  [master node](#org28b7adf)
        2.  [worker node](#orgb3e7205)
        3.  [Container Runtime Interface (CRI)](#org386debe)
        4.  [istio](#org988f58f)
        5.  [user namespaces](#org78d7da6)
        6.  [links](#orgf956eec)
    6.  [ЦФТ обучение (to delete)](#org988332b)
    7.  [master and worker node (rusnarbank)](#org3d7efb6)
        1.  [kubelet](#org84884db)
        2.  [есть кластеры:](#orgac52975)
    8.  [Ansible](#org1cb67fb)
    9.  [from image to pod:](#orgae61172)
    10. [primary/replica architecture (Master/slave):](#orgaddc8a8)
    11. [CAP theorem](#org2483081)
    12. [runC](#org6aa9d6a)
    13. [ReplicationControllerо](#org06beef7)
    14. [app logs](#org5c8e76d)
    15. [Helm - Пакетный менеджер](#org7f850ca)
        1.  [.helm](#org8264a06)
        2.  [links](#org4769088)
    16. [cluster management software](#org6f29496)
    17. [как могут поды иметь свои IP ведь они на одной ноде](#org548e7d0)
    18. [kubectl](#orgffc0e2b)
        1.  [theory](#orga5b9bde)
        2.  [kubectl get](#org592d7a7)
        3.  [Viewing and finding resources](#org2153b32)
        4.  [request step by step](#org40486db)
    19. [kubeadm](#org83c0b72)
    20. [well-known values and paths](#org39509a4)
    21. [Installation steps](#orga92ecd1)
    22. [.bashrc](#org6112cff)
    23. [common shorts](#orgd7cd17c)
    24. [role-based access control (RBAC) policy](#org7ce2fa8)
    25. [system maintentance](#orga7babab)
    26. [Usage My](#org7df6185)
        1.  [explore](#orga1e91d7)
        2.  [manage](#org4e1dfa6)
    27. [USAGE (max prokopenko)](#orgb107d8b)
    28. [usage](#orga00fbf0)
        1.  [Обновление ресурсов](#orgcd89375)
        2.  [удаление ресурсов](#org9ad7c34)
        3.  [работа с подами, логами](#org0bd4122)
        4.  [Работа с кластером](#org20ec8c3)
    29. [What is Krew?](#org18606c4)
    30. [create namespace](#org00f16a6)
    31. [create custom resource](#orgc83bb55)
    32. [one pod per node](#orgf395a5f)
    33. [known errors and misleads in kubectl](#org0af0924)
    34. [Troubleshooting](#orgefc95a9)
    35. [DNS](#orga2ada66)
        1.  [theory](#org593f43a)
        2.  [Check if my DNS service is up:](#org0506310)
        3.  [edit configmap for CoreDNS](#org0b0e1cd)
    36. [network & security](#org18afbc9)
    37. [links](#org2210592)
9.  [Ansible and Terraform - infrastructure automation tools](#orgf9ffa4e)
    1.  [theory](#org6d48bdf)
    2.  [Ansible vs Terraform](#orga4f83f9)
    3.  [Terraform](#org23fbd7d)
        1.  [theory](#orgf720472)
        2.  [files](#orgc697a57)
        3.  [steps:](#org0496893)
        4.  [modules](#org3c9049e)
    4.  [Ansible](#org2892b85)
    5.  [Terraform with Ansible together](#org4d08bab)
10. [Onnx - Apache License 2.0, Python C++](#org3033486)
    1.  [features](#orgf0734b3)
    2.  [dependencies](#org00f231c)
    3.  [convertions](#orgca445c6)
    4.  [installation:](#org83a7fbe)
    5.  [ONNX Model Zoo](#orgaa850e7)
    6.  [backends](#org8830fcb)
    7.  [links:](#orgd43bd2b)
11. [Onnx runtime - Microsoft - MIT license](#org964aeef)
    1.  [dependencies - execution-providers (backend)](#orgdb20e9a)
12. [Onnx runtime - ncnn](#orgc5290df)
13. [onnx runtime build](#org98e9445)
    1.  [onnx runtime](#org81e937d)
    2.  [onnxruntime-bin](#org6fc9393)
    3.  [onnxruntime dependencies](#orgdd24c4d)
14. [PyTorch](#orgdc9471c)
        1.  [caffe2 gentoo dependencies](#org6540d9c)
15. [PyTorch vs Tensorflow](#org4951144)
16. [ML project tasks](#org1b87335)
17. [Redis](#orge936683)
    1.  [history](#org713d47a)
    2.  [features](#org8d706f6)
    3.  [terms ](#orgbd5e1c7)
    4.  [license](#orgc8c6192)
    5.  [Distribution](#org2d67aa5)
    6.  [Modules - Redisearch](#orgb951bb0)
        1.  [from sources](#org11fd401)
        2.  [debian](#org98c6f52)
        3.  [test module load](#org7f40d87)
        4.  [dependencies](#org1a8b67e)
    7.  [Data types](#orgb4cb452)
    8.  [Hashes](#orgda6bdad)
    9.  [Transactions](#orgd1c4532)
    10. [dependencies runtime](#org4413fd3)
    11. [init](#org4d25c9f)
    12. [Best Practices](#org4f452ea)
    13. [Python - connector - dev-python/redis](#orge259cac)
    14. [commands](#org93a4a04)
        1.  [retrive](#org6beaf85)
        2.  [set](#orge72db33)
        3.  [comment](#orga704f87)
    15. [tools](#org9e86ba6)
    16. [Indexes](#org06eb4fb)
    17. [distributed usage](#orgf72238c)
        1.  [Scaling](#org36c81eb)
        2.  [replication](#org7f20a37)
        3.  [Lock](#orge5bec49)
        4.  [commands](#org097a74d)
    18. [ORM](#org4befbba)
    19. [architect schema - usecase](#orgc83220b)
        1.  [Sorting](#org911394e)
    20. [timeouts for cluster](#org3c0c47f)
    21. [Get a range of keys with redis?](#org0e74453)
    22. [modules](#org592c860)
    23. [Vector database](#org5543fc1)
        1.  [RedisVL - MIT](#org2e84f9d)
        2.  [redis-py or dev-python/redis - MIT](#orged88493)
        3.  [RedisGraph (obsolate)](#org39b975a)
        4.  [links](#orgacf29c5)
    24. [Knowledge Graph implementation on vanila Redis](#orge1c76d9)
        1.  [nlp](#org2934ad6)
        2.  [code](#orgc653522)
    25. [Emacs integration](#org041efc7)
    26. [Feature Store](#orga2c608b)
    27. [links](#org8207c93)
18. [Spark, Hadoop, Hive](#org9e36025)
19. [REST API Documentation UIs](#org3ce47b3)
    1.  [generate OpenAPI from Flask](#orgf03bc17)
    2.  [Swagger - развязность](#org8967acb)
        1.  [swagger offline](#orgfac99f6)
        2.  [Specification 2.0](#org66a219c)
        3.  [JSON Schema](#org630c3f7)
    3.  [links](#orgf9130d0)

;-**- mode: Org; coding: utf-8; fill-column: 100 -**-

<https://github.com/visenger/awesome-mlops>

<https://www.datacamp.com/cheat-sheet/category/data-engineering>


<a id="orgdb30ce3"></a>

# Docker

-   guide <https://docker-curriculum.com/>


<a id="org28202bb"></a>

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


<a id="org07c9b41"></a>

## theory


<a id="orgc5198ad"></a>

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


<a id="orgd1d3b0c"></a>

### security

Attack surface of a container image is measured by the number of files in it, or how many megabytes of space it uses on disk.

attack surface:

-   quality of software and configuration(aka files
-   software in the direct execution path which is used in many different container images (C

libraries, web servers, encryption libraries, etc)

-   Standardizing on the exact same versions (Linux distribution and version) of this widely used
    software in the direct execution path (C libraries, web servers, encryption libraries, etc) reduces
    attack surface


<a id="org604c7a0"></a>

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


<a id="orgc4f4262"></a>

### When not to use Docker

When use:

1.  Your development team is not set in stone
2.  Your software runs in different environments
3.  Your software grows and consists of many bits and pieces
4.  You want your software to be scalable and handle more users
5.  Your hosting infrastructure may change in the future and you don’t want to be locked
6.  You do some proof of concepts and test new technologies for your software

When to avoid Docker?

1.  Your software product is a desktop application
2.  Your project is relatively small and simple
3.  Your development team consists of one developer
4.  You are looking for a solution to speed up your application
5.  Your development team consist mostly of MacBook users
6.  Your team don’t know how to use Docker properly


<a id="org09494d1"></a>

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


<a id="org58a847e"></a>

## use cases:


<a id="org5890f77"></a>

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


<a id="org02c1569"></a>

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


<a id="org05d2296"></a>

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


<a id="org283c523"></a>

### Block access to LAN and out:

-   docker network create -o "com.docker.network.bridge.enable<sub>ip</sub><sub>masquerade</sub>"="false" lan-restricted
-   Blocks
    -   Local LAN
    -   Internet
-   Does not block
    -   Host running docker daemon (example access to 10.0.1.10:22)


<a id="org47c20e5"></a>

### Block access to other containers:

-   docker network create -o "com.docker.network.bridge.enable<sub>icc</sub>"="false" icc-restricted
-   Blocks
    -   Containers accessing other containers on the same icc-restricted network.
-   Does not block
    -   Access to host running docker daemon
    -   Local LAN
    -   Internet


<a id="org6e8eab6"></a>

### Block any external access:

networks:
  yournetwork:
     internal: true


<a id="orga1ed077"></a>

### backup

-   volumes: tar -cvzf a.tar.gz /var/lib/docker/volumes/<volume<sub>name</sub>>
-   docker save -o ubuntu.tar ubuntu:lucid
-   docker save myimage:latest | gzip > myimage<sub>latest.tar.gz</sub>


<a id="orga11ad5a"></a>

### volume sizes

    #!/bin/bash
    
    for v in $(docker volume ls | grep -v DRIVER | awk '{print $2}') ; do
       p=$(docker volume inspect $v | jq '.[].Mountpoint' | tr -d '"')
       du -sh $p


<a id="org02632a4"></a>

### monitor resource usage

-   docker stats &#x2013;all &#x2013;no-stream &#x2013;no-trunc # memory, cpu
-   docker system df -v
-   docker status container<sub>ID</sub> #to check single container resources


<a id="org0d6b8eb"></a>

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


<a id="org8605802"></a>

## CMD and ENTRYPOINT

docker run - require CMD or ENTRYPOINT specified in Dokerfile

both CMD and ENTRYPOINT have exec and shell form

-   ENTRYPOINT ["executable", "param1", "param2"] - exec form - recommended
-   ENTRYPOINT command param1 param2 - shell form - Ctrl + C will not stop ex. ping google.com

CMD can be used to set additional defaults that are more likely to be changed

-   ENTRYPOINT ["top", "-b"]
-   CMD ["-c"]

If no ENTRYPOINT is specified, CMD sets the default command to be executed.


<a id="org1d15e7c"></a>

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

ENV <https://medium.com/google-cloud/kubernetes-configmaps-and-secrets-68d061f7ab5b>


<a id="orgbdf69ab"></a>

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


<a id="org6e91a67"></a>

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


<a id="orge39e479"></a>

### Docker CE

<https://kifarunix.com/install-docker-ce-on-ubuntu-20-04/>

-   Docker CE (Community Edition) is the open-source, community supported version of Docker and is available for free.
-   Docker EE (Enterprise Edition) is a commercial/premium version of Docker CE and is support by Docker Inc.
    -   docker or docker-engine or docker-io
    -   $ sudo apt-get remove docker docker-engine docker.io containerd runc


<a id="orgea43d2d"></a>

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


<a id="orgb5e0e64"></a>

## storage

-   <https://docs.docker.com/storage/>

by default a writable container layer.

-   volumes - on Docker *var/lib/docker/volumes* - best way - cannot be modified externaly - When you mount the
    volume into a container, this directory is what is mounted into the container
-   bind mounts - can be modified externaly

kebenrenets - The Docker image is at the root of the filesystem hierarchy, and any volumes are mounted at the
specified paths within the image.


<a id="orgbe873fc"></a>

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


<a id="orgba8e373"></a>

## containers

Container has:
read only layers:
1 writable layer - сохраняется только если завершается нормально, в случае сбоя теряется.


<a id="orgd246617"></a>

## reuse layers

1.  docker build &#x2013;cache-from image0 -t image1
2.  <https://stackoverflow.com/questions/48449326/how-to-docker-reuse-layers-with-different-base-images>


<a id="org7bdbee0"></a>

## multi-stage builds

**builder pattern** - one Dockerfile to use for development, and a slimmed-down one to use for
 production, which only contained your application and exactly what was needed to run it.

-   FROM - starts new stage
-   FROM golang:1.16 AS builder; COPY &#x2013;from=builder /go/a ./a # if stages will be reoreded
-   COPY &#x2013;from=nginx:latest /etc/nginx/nginx.conf /nginx.conf # copy from separate image


<a id="orgd1fa068"></a>

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

remove all images:

    docker rmi -f $(docker images -aq)


<a id="org9246654"></a>

## tmpfs

-   sudo mount -t tmpfs tmpfs /var/lib/docker
-   systemctl restart docker


<a id="org471ab41"></a>

## Dokerfile

-   COPY local.conf . # to current directory # preffered # stripped-down version of ADD
-   ADD . /code # Too Much Magic
    -   ADD *foo.tar.gz /tmp* # autounpack
-   WORKDIR /code
-   ENV FLASK<sub>APP</sub> app.py # set env variable inside of running container
-   RUN pip3 install &#x2013;upgrade pip # run command to build image


<a id="org1118b4c"></a>

## apt Dokerfile

    RUN apt-get update && apt-get install -y --no-install-recommends \
        cuda-libraries-11-8=${NV_CUDA_LIB_VERSION} \
        && rm -rf /var/lib/apt/lists/*


<a id="orgf32f395"></a>

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


<a id="org6daa8f7"></a>

## Volumes, mount points (Bind mounts),

mount <https://docs.docker.com/storage/bind-mounts/>

-   -v or &#x2013;volume syntax, but are encouraged to use &#x2013;mount, because research has shown it to be
    easier to use.
-   docker run -v /root/proj-ds:/opt -t ds

volume <https://docs.docker.com/storage/volumes/>

-   VOLUME /app/data - a volume named /app/data is created within the container, and any data stored
    in that directory will be persisted even if the container is stopped or deleted.
-   Volumes are easier to back up or migrate than bind mounts.


<a id="org4365566"></a>

## Development Containers or dev containers or .devcontainer directory

-   <https://containers.dev/>
-   <https://docs.github.com/en/codespaces/setting-up-your-project-for-codespaces/adding-a-dev-container-configuration/introduction-to-dev-containers>

PyCharm <https://www.jetbrains.com/help/pycharm/connect-to-devcontainer.html>


<a id="orgb6cc02a"></a>

## DockerHub - publish

    docker build -t mlops-zoomcamp-model:2024-3.10.13-slim .
    docker tag mlops-zoomcamp-model:2024-3.10.13-slim agrigorev/zoomcamp-model:mlops-2024-3.10.13-slim
    
    docker login --username USERNAME
    docker push agrigorev/zoomcamp-model:mlops-2024-3.10.13-slim


<a id="org5b0dc7e"></a>

## troubleshooting

Building Dokcer image fails with failed to fetch anonymous token,

-   connect: network is unreachable.


<a id="org9811788"></a>

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


<a id="orgd1e2154"></a>

## TODO multi-stage builds


<a id="org8a58932"></a>

## swarm

-   docker swarm init - to enable swarm mode and make your current machine a swarm manage
-   docker-machine - инструмент который работает на базе виртуальных машин. ХЗ как что
-   docekr swarm leave


<a id="orga32e5c7"></a>

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


<a id="org3be7c20"></a>

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


<a id="orge98207e"></a>

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


<a id="org716636f"></a>

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


<a id="orgaa1a64e"></a>

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


<a id="org7025402"></a>

## usage

-   

-   docker-compose -f docker-compose.yml up
-   docker-compose up -d
-   docker-compose down
-   docker-compose down &#x2013;volumes # and remove volumes
-   docker-compose up &#x2013;no-deps &#x2013;build <service<sub>name</sub>> - rebuild
-   docker-compose build ServiceName+1


<a id="orge5ae098"></a>

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


<a id="org21425ec"></a>

## Entrypoint and Cmd

Override Docker ENTRYPOINT and CMD.

-   entrypoint: /code/entrypoint.sh
-   entrypoint: ["php", "-d", "memory<sub>limit</sub>=-1", "vendor/bin/phpunit"]

entrypoint: ["tail", "-f", "/dev/null"] # sleep


<a id="org4c45cf3"></a>

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


<a id="org079f44d"></a>

# TODO devops

<https://github.com/MichaelCade/90DaysOfDevOps>

-   [SRE vs ITIL vs DevOps](theory)
-   [DevOps](theory)


<a id="org56b46dd"></a>

# MLflow - experiment tracking

focuses on tracking hyperparameters, metrics, and models but does not offer the same level of data and computational environment tracking as ClearML


<a id="orgfde713c"></a>

## Features

-   **Logging or Tracking:** logging parameters, code versions, metrics, and output files when running your machine learning code
    -   Can log to file or a server.
-   **Model Registry:** versioning, model store, APIs, and UI, model lineage, versioning, aliasing,
    tagging, and annotations.
-   UI: limited visualization capabilities
-   supports reproducibility but may require more manual effort


<a id="orgb5ce880"></a>

# ClearML - experiment tracking

more complex variant of MLflow

-   track data and the computational environment, including versioning datasets and managing
    unstructured data effectively. It also provides features like Hyper-datasets for managing large
    files and ensuring data lineage
-   UI: detailed view of tasks can be overwhelming for new users
-   full reproducibility of experiments


<a id="orgeea5059"></a>

# Mage - data pipeline tool

with a strong focus on data integration, transformation, and pipeline management.

features:

-   Data Integration and Synchronization - both real-time and batch data pipelines using Python, SQL
-   Interactive Code and UI
-   Pipeline Management - thousands of pipelines without the complexity of tools like Airflow
-   Scalability and Deployment - supports deployment on various cloud platforms like AWS, GCP, Azure, and DigitalOcean using Terraform templates
-   Observability and Monitoring - built-in monitoring, alerting, and observability features through an intuitive UI


<a id="orge9b87bf"></a>

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


<a id="orgc516b2e"></a>

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


<a id="org6e19f37"></a>

### Контейнер

-   Это стандартизированный метод упаковки приложения
-   процесс повязанный к namespaces и контролируемый через cgroups


<a id="org1be8b8e"></a>

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


<a id="org2be66a0"></a>

### Microservices

The ideal team size is the "two-pizza team" - 7-8 ppl.

The development of decoupled, service-oriented teams - each build single microservice.

The aggregation of all of these services provides the implementation of overall product's surface area.


<a id="org7225633"></a>

### Services & Endpoinds & probes

apiserver -> [NODE kube-proxy -> clusterIP(iptables)->] ->Backed Pod1, Backed Pod2, Backed Pod3

clusterIP - load balancer by iptables with (probability distribution)

endpoint - address:port

if CLUSTER-IP - is not None - it is balanced.

probes?


<a id="org1ec5fa7"></a>

### PV & Provisioners & PVC

PV - persistent volume - just a folder at some server.

containers don't work directly with PV, they use PVC (PV claims) - it is query for storage volume to get PV.

reclaim policy (RECLAIM) - "Delete" mean provisioner (local volume provisioner) may just remove all
 data from folder and make PV available again. "Retain" mean change state to &#x2026; and don't remove data.


<a id="org6aa41f0"></a>

### CRD - add own API to kubernetes

API - (kubectl get pods/alert/&#x2026;)

External Controller for logs/alerts management.


<a id="org00753b2"></a>

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
-   the hard way guilde [4](#org0c833bd)


<a id="org5db741c"></a>

## objects, components, apis


<a id="org53e5dc1"></a>

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


<a id="org454c132"></a>

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


<a id="org5ab2a74"></a>

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


<a id="org07f5725"></a>

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


<a id="org234e93a"></a>

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


<a id="org747cfda"></a>

### container states

-   Waiting - something required
-   Running
-   Terminated


<a id="orgd1b09f2"></a>

### names and uids (all objects have)

-   metadata->Name - is unique for that type of resource.
-   metadata->UIDs - A Kubernetes systems-generated string to uniquely identify objects.


<a id="org96a67b6"></a>

### Labels (optional)

metadata->Labels - key/value pairs that are attached to objects.

can be used for:

-   to organize and to select subsets of objects

selects pods with labels:

    k get pods -l environment=production,tier=frontend
    k get pods -l 'environment in (production, qa)'
    k get pods -l 'environment,environment notin (frontend)'


<a id="orgf49c8ac"></a>

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


<a id="orgc53ebb0"></a>

## architecture

-   pods - ip adress, volumes - not durable by default. (has hidden default container). a set of
    running containers on your cluster
-   node - виртуальные машины в VMware. Can run(be assigned with) several pods.
-   controller - высшая обстрация над pods - CRI specification -
-   contrainer - run in pods - binary package with files
    -   Docker image Format (often)


<a id="org28b7adf"></a>

### master node

-   API Server - communicate with **kubelets** of Nodes - управление, все к нему обращается.
-   Controller (Manager) - control loops that watch the state of your cluster. tries to move the
    current cluster state closer to the desired state.
-   Scheduler - планирование размещения pods and workloads на nodes. tracks resource allocation on each node.
-   etcd - ключ-значение хранилище - состояние кластера


<a id="orgb3e7205"></a>

### worker node

-   kubelet - primary -  управляет pod'ами,их контейнерами, образами, разделами, etc.
-   cAdvisor
-   Kube-Proxy - network between pods and final users
-   pods
-   Container runtime


<a id="org386debe"></a>

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


<a id="org988f58f"></a>

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


<a id="org78d7da6"></a>

### user namespaces

Linux namespaces - feature of the Linux kernel. It makes: one set of processes sees one set of
 resources while another set of processes sees a different set of resources.


<a id="orgf956eec"></a>

### links

-   Node and pods <https://kubernetes.io/docs/tutorials/kubernetes-basics/explore/explore-intro/>


<a id="org988332b"></a>

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


<a id="org3d7efb6"></a>

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


<a id="org84884db"></a>

### kubelet

<https://kubernetes.io/docs/reference/command-line-tools-reference/kubelet/>

сервис запускается в самой хостовой системе через systemd

мониторит pods


<a id="orgac52975"></a>

### есть кластеры:

1.  AML dev
2.  AML prod
3.  norma2 test 2 masters
4.  norma2 prod 3 masters

Grafana, Prometeus - мониторинг кубернетиса


<a id="org1cb67fb"></a>

## Ansible

Используется для развертывания подов на виртуалках. Kubernetes cluster on bare-metal or VMs.

Использует Vagrant?

Playbooks are Ansible’s configuration, deployment, and orchestration language.  playbooks are your instruction manuals


<a id="orgae61172"></a>

## from image to pod:

-   web server - gitlab registry
-   Scheduler - command to kubelet
-   kubelet use cri (Container Runtime Interface) to pull nodes


<a id="orgaddc8a8"></a>

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


<a id="org2483081"></a>

## CAP theorem

**it is impossible for a distributed data store to simultaneously provide more than two out of the following
 three guarantees:**

-   Consistency: Every read receives the most recent write or an error
-   Availability: Every request receives a (non-error) response, without the guarantee that it contains the most recent write
-   Partition tolerance: The system continues to operate despite an arbitrary number of messages being dropped (or delayed) by the network between nodes


<a id="org6aa9d6a"></a>

## runC

-   <https://habr.com/ru/company/selectel/blog/316258/>
-   libcontainer, которая по сути является частью runc, используется в Docker вместо LXC


<a id="org06beef7"></a>

## ReplicationControllerо

homogeneous ˌhōməˈjēnēəs - однородная система
heterogeneous *ˌhɛt(ə)rə(ʊ)ˈdʒiːnɪəs* - неоднородная система


<a id="org5c8e76d"></a>

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


<a id="org7f850ca"></a>

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


<a id="org8264a06"></a>

### .helm

-   Chart.yaml : This is the main file that contains the description of our chart
-   values.yaml : this is the file that contains the default values for our chart
-   templates/ : This is the directory where Kubernetes resources are defined as templates
-   .helmignore: patterns to ignore when packaging (similar in concept to .gitignore)

Template:


<a id="org4769088"></a>

### links

-   <https://github.com/helm/helm>
-   <https://www.baeldung.com/kubernetes-helm>


<a id="org6f29496"></a>

## cluster management software

<https://en.wikipedia.org/wiki/List_of_cluster_management_software>

-   Kubernetes - google
-   Docker Swarm
-   CoreOS
-   Mesos – Apache


<a id="org548e7d0"></a>

## как могут поды иметь свои IP ведь они на одной ноде

оверлейная сеть


<a id="orgffc0e2b"></a>

## kubectl


<a id="orga5b9bde"></a>

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


<a id="org592d7a7"></a>

### kubectl get

-   **all**

NAME                 TYPE        CLUSTER-IP   EXTERNAL-IP   PORT(S)   AGE
service/kubernetes   ClusterIP   10.96.0.1    <none>        443/TCP   307d

-   **namespaces**


<a id="org2153b32"></a>

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


<a id="org40486db"></a>

### request step by step

    kubectl config view - cat  /etc/kubernetes/kubelet.conf

By default, the Kubernetes API server listens on port 6443 on the first non-localhost network interface, protected by TLS.

kube-apiserver is pods


<a id="org83c0b72"></a>

## kubeadm

**kubeadm init** and **kubeadm join** as best-practice "fast paths" for creating Kubernetes clusters.

-   **kubeadm init** to bootstrap a Kubernetes control-plane node
-   **kubeadm join** to bootstrap a Kubernetes worker node and join it to the cluster


<a id="org39509a4"></a>

## well-known values and paths

-   /etc/kubernetes/manifests as the path where kubelet should look for static Pod manifests.


<a id="orga92ecd1"></a>

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


<a id="org6112cff"></a>

## .bashrc

apt-get install bash-completion

    ## Install
    apt-get install bash-completion
    ## Bash
    echo 'source <(kubectl completion bash)' >>~/.bashrc
    
    echo 'alias k="kubectl"' >>~/.bashrc


<a id="orgd7cd17c"></a>

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


<a id="org7ce2fa8"></a>

## role-based access control (RBAC) policy

establish what resources a given role is able to access. Implement principle of least privilege.

    kubectl auth can-i '*' '*' # allowed commands


<a id="orga7babab"></a>

## system maintentance

kube-system - namespace for system services

    k -n kube-system get all


<a id="org7df6185"></a>

## Usage My

alias k=kubectl


<a id="orga1e91d7"></a>

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


<a id="org4e1dfa6"></a>

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


<a id="orgb107d8b"></a>

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


<a id="orga00fbf0"></a>

## usage


<a id="orgcd89375"></a>

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


<a id="org9ad7c34"></a>

### удаление ресурсов

kubectl delete -f ./pod.json # Удалить под по типу и имени в pod.json kubectl delete pod,service baz foo # Удалить поды и сервисы с одноимёнными
именам "baz" и "foo"
kubectl delete pods,services -l name=myLabel # Удалить поды и сервисы с именем
метки myLabel
kubectl -n my-ns delete pod,svc &#x2013;all # Удалить все поды и сервисы в
пространстве имен my-ns

kubectl get pods -n mynamespace &#x2013;no-headers=true | awk '/pattern1|pattern2/{print $1}' | xargs kubectl delete -n mynamespace pod


<a id="org0bd4122"></a>

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


<a id="org20ec8c3"></a>

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


<a id="org18606c4"></a>

## What is Krew?

Krew is the plugin manager for kubectl command-line tool.


<a id="org00f16a6"></a>

## create namespace

    k get ns --show-labels # with labels

    ---
    
    apiVersion: v1
    kind: Namespace
    metadata:
      # name: mlsynth
      name: ml1

    {'apiVersion': 'v1', 'kind': 'Namespace', 'metadata': {'name': 'ml1'}}


<a id="orgc83bb55"></a>

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


<a id="orgf395a5f"></a>

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


<a id="org0af0924"></a>

## known errors and misleads in kubectl

    k -n ml1 get all # will get pods and services


<a id="orgefc95a9"></a>

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


<a id="orga2ada66"></a>

## DNS


<a id="org593f43a"></a>

### theory

**CoreDNS** is a general-purpose authoritative DNS server that can serve as cluster DNS


<a id="org0506310"></a>

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


<a id="org0b0e1cd"></a>

### edit configmap for CoreDNS

-   kubectl get -n kube-system configmaps coredns -o yaml > core<sub>dns.yaml</sub>
-   kubectl replace -n kube-system -f core<sub>dns.yaml</sub>

or

-   kubectl -n kube-system edit configmap coredns


<a id="org18afbc9"></a>

## TODO network & security

-   cilium - networking, observability, and security solution with an eBPF-based dataplane.
-   Calico - full-blown Kubernetes “networking solution” with functionality including network policy controller, kube-proxy replacement and network traffic observability.


<a id="org2210592"></a>

## links

-   docs <https://kubernetes.io/docs/>
-   guide <https://kubectl.docs.kubernetes.io/guides/>
-   api <https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.27/>
    -   template(PodTemplateSpec) <https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.27/#podtemplate-v1-core>
-   <https://github.com/kelseyhightower/kubernetes-the-hard-way> <a id="org0c833bd"></a>
-   <https://kubernetes.io/ru/docs/reference/kubectl/cheatsheet/>

<https://kubernetes.io/docs/tasks/administer-cluster/dns-debugging-resolution/>


<a id="orgf9ffa4e"></a>

# Ansible and Terraform - infrastructure automation tools

see <theory>


<a id="org6d48bdf"></a>

## theory

Configuration Drift - difference between the desired and actual state of your configuration.

-   Ansible relies on idempotent tasks and continuous execution without maintaining a persistent state of the infrastructure.
-   Terraform relies on a stored state to detect and manage drift, emphasizing a declarative approach to infrastructure as code.


<a id="orga4f83f9"></a>

## Ansible vs Terraform

**Ansible** - *Terraform*

-   Type
    -   **Configuration management tool**
        -   *Orchestration tool*
-   Syntax - **YAML** *HCL*
-   Language - **Procedural** *Declarative*
-   Default approach
    -   **Immutable infrastructure** and mutation supported.
        -   *Immutable infrastructure*
-   Cloud support - **All clouds** *All clouds*
-   Lifecycle (state) management
    -   **Does not support**
        -   *Depends on the lifecycle and state management*
-   Packaging and templating
    -   **Provides complete support**
        -   *Provides partial support*
-   Capabilities
    -   **Provisioning and configuring**
        -   Provisioning and configuring
-   Agentless **Yes** *Yes* - **SSH** *Providers API and SSH*
-   Masterless **Yes** *Yes* - “state” information not require server.
-   License - **Open Source** *Business Source License (BUSL)*
-   Writen in - **Python, shell** *Go*
-   Configuration language - **YAML and Jinja templates** *HashiCorp Configuration Language (HCL)*

Orchestration tools ensure that an environment is in its desired state continuously.

Terraform :

-   infrastructure provisioning
-   managing cloud resources
-   implementing infrastructure changes
-   enabling infrastructure as code practices.

Ansible :

-   configuration management
-   application deployment
-   continuous delivery
-   server provisioning
-   automating repetitive system administration tasks.

Terraform - more user-fiendly, good scheduling capabilities.


<a id="org23fbd7d"></a>

## Terraform


<a id="orgf720472"></a>

### theory

Pretend to be abstracted from cloud providers.

OpenTofu is an open-source version of Terraform

Playbook, Inventory -> Ansible Management Node -> SSH to machines

-   Inventory:  IP addresses, databases, servers, and other details.
-   Playbook: set of Plays - a set of tasks to run on a specific host or group of hosts.

**Providesrs** - terraform plugins for cloud proveder API


<a id="orgc697a57"></a>

### files

Terraform manifests.

Main directory - Terraform uses this directory to store

-   required plugins
-   modules (pre-written configurations)
-   information about the real infrastructure it created.

main.tf

Terraform state files - log  information about the resources.

-   to compare infrastructure to the code and make any adjustments as necessary.

Configuration files (\\\*.tf) -> Terraform Core -> State files (\\\*.tfstate)


<a id="org0496893"></a>

### steps:

1.  base

    1.  create main direcoty
    2.  create main.tf
        1.  terraform validate - syntax checking
    3.  terraform init - download “provider”. also execute “terraform get”.
        -   safe to run multiple times
        -   terraform init -from-module=MODULE-SOURCE - given module will be copied into the target directory
        -   do:
            -   backend state initialization (local by default) -backend=false
            -   module installation -get=false
            -   Plugin Installation - most published separately <https://registry.terraform.io/> or in a third-party provider registry
    4.  terraform plan - review plan
        -   Reads the current state of any already-existing remote objects to make sure that the Terraform state is up-to-date.
        -   Compares the current configuration to the prior state and noting any differences.
        -   Proposes a set of change actions that should, if applied, make the remote objects match the configuration.
    5.  terraform apply - review plan and create infrastructure.
    6.  terraform refresh - update states file
    7.  terraform destroy
    
    <https://developer.hashicorp.com/terraform/intro/core-workflow>

2.  provider

    project configuration page -> Terraform
    
    1.  Project ID
    2.  Username
    3.  User Domain ID
    4.  Region Name


<a id="org3c9049e"></a>

### modules


<a id="org2892b85"></a>

## Ansible

Ansible - better security and ACL functionality.

Ansible bad with logical dependencies, orchestration services, and interconnected applications.

-   inventory file
-   playbooks -  manifest files that describe what needs to be done on the desired machine.

Analogs:

-   chef, puppet


<a id="org4d08bab"></a>

## Terraform with Ansible together

Terraform managing infrastructure and Ansible handling configuration changes.

-   Terraform first to create, for example, a virtual machine and then use Ansible to install
    necessary applications on that machine.
-   two options: either use Terraform’s output as input for Ansible’s inventory or instruct Terraform to execute Ansible.


<a id="org3033486"></a>

# Onnx - Apache License 2.0, Python C++

ecosystem - Open Neural Network Exchange

**Python programming**: <python-ds>


<a id="orgf0734b3"></a>

## features

-   optimized for numerical computation
-   ONNX Runtime provides a high-performance **inference** engine that can run on various platforms and
    devices, including cloud and edge environments.
-   Interoperability: move models between different deep learning frameworks
-   simplify model development and deploying by allowing collaboration between many researches.


<a id="org00f231c"></a>

## dependencies

equery g onnx

Protobuff - serializing structured data. ONNX uses protobuf to serialize the graph into one single block.

-   <https://github.com/protocolbuffers/protobuf.git>
-   dev-python/protobuf-python

build tools:

-   dev-python/pybind11 - Seamless operability between C++11 and Python
-   dev-cpp/abseil-cpp - C++ code is collected from Google's own C++ code base
-   dev-lang/python-3.12.3-r1  (dev-lang/python) amd64
-   dev-python/gpep517-16  (>=dev-python/gpep517-15) amd64  [python<sub>targets</sub><sub>python3</sub><sub>10</sub>(-)? python<sub>targets</sub><sub>python3</sub><sub>11</sub>(-)? python<sub>targets</sub><sub>python3</sub><sub>12</sub>(-)?]
-   dev-python/setuptools-70.2.0-r1  (>=dev-python/setuptools-69.0.3) amd64  [python<sub>targets</sub><sub>python3</sub><sub>10</sub>(-)? python<sub>targets</sub><sub>python3</sub><sub>11</sub>(-)? python<sub>targets</sub><sub>python3</sub><sub>12</sub>(-)?]
-   app-alternatives/ninja-1  (app-alternatives/ninja) amd64
-   dev-build/cmake-3.28.5  (>=dev-build/cmake-3.20.5) amd64


<a id="orgca445c6"></a>

## convertions

built-in:

-   sklearn-onnx: converts models from scikit-learn,
-   tensorflow-onnx: converts models from tensorflow,
-   onnxmltools: converts models from lightgbm, xgboost, pyspark, libsvm
-   torch.onnx: converts model from pytorch.

-   built-in <https://github.com/onnx/onnxmltools>
-   <https://github.com/nixiesearch/onnx-convert>
-   <https://github.com/xenova/transformers.js/tree/main/scripts>


<a id="org83a7fbe"></a>

## installation:

-   pip install onnx


<a id="orgaa850e7"></a>

## ONNX Model Zoo

<https://github.com/onnx/models/tree/main>


<a id="org8830fcb"></a>

## backends

<https://github.com/onnx/onnx/blob/main/docs/ImplementingAnOnnxBackend.md>

unified (Python) backend interface at onnx/backend/base.py that require implementation.

-   <https://onnx.ai/backend-scoreboard/index_dev.html>

backends that not fully complied:
<https://onnx.ai/supported-tools.html#deployModel>

tensorflow
<https://github.com/onnx/onnx-tensorflow/blob/main/README.md>

dev-libs/ncnn  <https://github.com/Tencent/ncnn/>


<a id="orgd43bd2b"></a>

## links:

-   <https://packages.gentoo.org/packages/sci-libs/onnx>
-   <https://github.com/onnx/onnx>


<a id="org964aeef"></a>

# Onnx runtime - Microsoft - MIT license

ONNX Runtime - implementation of “onnx.backend.base”

-   <https://onnxruntime.ai/docs/api/python/auto_examples/plot_backend.html>
-   <https://onnx.ai/onnx/api/backend.html#onnx.backend.base.Backend>

links

-   <https://github.com/Microsoft/onnxruntime>
-   building <https://onnxruntime.ai/docs/build/inferencing.html>

implementation:

-   onnxruntime: ONNX + MLAS (Microsoft Linear Algebra Subprograms)
-   onnxruntime-gpu: ONNX + MLAS + CUDA

ONNX Runtime supports models in formats:

-   ONNX
-   ORT - Open Neural Network Exchange Runtime, format optimized for memory and disk-constrained
    environments, such as mobile and web applications. require Convert ONNX models to ORT format.

installation:

-   pip install onnxruntime

steps:

1.  python -m pip install cmake
2.  ./build.sh &#x2013;config Release &#x2013;build &#x2013;build<sub>shared</sub><sub>lib</sub> &#x2013;parallel &#x2013;compile<sub>no</sub><sub>warning</sub><sub>as</sub><sub>error</sub>
    &#x2013;skip<sub>submodule</sub><sub>sync</sub> &#x2013;allow<sub>running</sub><sub>as</sub><sub>root</sub>

submodules

-   emsdk <https://github.com/emscripten-core/emsdk.git>
-   libprotobuf-mutator <https://github.com/google/libprotobuf-mutator.git>
-   onnx <https://github.com/onnx/onnx.git>


<a id="orgdb20e9a"></a>

## dependencies - execution-providers (backend)

<https://onnxruntime.ai/docs/execution-providers/>


<a id="orgc5290df"></a>

# Onnx runtime - ncnn

optimized for the mobile platform

emerge &#x2013;ask dev-libs/ncnn  <https://github.com/Tencent/ncnn/>

<https://github.com/Tencent/ncnn/blob/master/docs/how-to-use-and-FAQ/use-ncnn-with-pytorch-or-onnx.md>

convert PyTorch or ONNX to NNC:

-   pnnx
-   <https://github.com/pnnx/pnnx>


<a id="org98e9445"></a>

# onnx runtime build

<https://hacktivis.me/git/overlay/file/sci-libs/onnxruntime/onnxruntime-1.9.1.ebuild.html>

require

-   cudnn
-   migraphx - AMD's graph optimization engine.
-   onednn -  oneAPI Deep Neural Network Library (oneDNN) - Apache 2.0
-   tensorrt - NVIDIA® TensorRT™ - Apache-2.0 license


<a id="org81e937d"></a>

## onnx runtime

<https://github.com/stefantalpalaru/gentoo-overlay>

    onnxruntime-9999.ebuild file might look like:
    
    ebuild
    # Copyright 1999-2024 Gentoo Foundation
    # Distributed under the terms of the GNU General Public License v2
    
    EAPI=8
    
    inherit git-r3
    
    EGIT_REPO_URI="https://github.com/microsoft/onnxruntime.git"
    
    DESCRIPTION="ONNX Runtime is a cross-platform inference and training machine-learning accelerator"
    HOMEPAGE="https://github.com/microsoft/onnxruntime"
    LICENSE="MIT"
    
    DEPEND="dev-python/numpy
            dev-python/pip"
    
    src_prepare() {
        # Prepare the build environment
        python_setup
    }
    
    src_compile() {
        # Run the build script
        ./build.sh --config Release --build_shared_lib --parallel --build_wheel
    }
    
    src_install() {
        # Install the built wheel file
        pip_install dist/*.whl
    }


<a id="org6fc9393"></a>

## onnxruntime-bin

    https://github.com/gentoo/gentoo/tree/9181a6e9540cbfe6a684dc8945c0a20ae5c36749/sci-libs/onnxruntime-bin


<a id="orgdd24c4d"></a>

## onnxruntime dependencies

<https://data.gpo.zugaina.org/cg/sci-libs/onnxruntime/onnxruntime-1.18.0-r1.ebuild>

dev-libs/date-3.0.1

-   <https://packages.gentoo.org/packages/dev-libs/date>

coloredlogs - dev-python/coloredlogs
flatbuffers -
numpy >= 1.21.6
packaging
protobuf
sympy


<a id="orgdc9471c"></a>

# PyTorch


<a id="org6540d9c"></a>

### caffe2 gentoo dependencies

numpy flash

cuda distributed fbgemm flash gloo mkl mpi nnpack numpy onednn openblas opencl openmp qnnpack rocm xnnpack

-   fbgemm
    -   dev-libs/FBGEMM
    -   <https://github.com/pytorch/FBGEMM>
    -   FB (Facebook) + GEMM (General Matrix-Matrix Multiplication)
    -   low-precision, high-performance matrix-matrix multiplications and convolution library for server-side inference.
-   flash
    -   USE<sub>FLASH</sub><sub>ATTENTION</sub>, no dependencies
    -   technique designed to optimize transformer models. Beta in Pytorch.
-   gloo
    -   sci-libs/gloo[cuda?]
    -   <https://github.com/facebookincubator/gloo/>
    -   communication for multi-machine training
-   mkl
    -   sci-libs/mkl
    -   <https://github.com/oneapi-src/oneMKL>
    -   works with multiple devices (backends) using device-specific libraries underneath (including
        CPU)
-   mpi
    -   virtual/mpi
    -   sys-cluster/openmpi
    -   <https://github.com/open-mpi/ompi>
    -   Message Passing Interface
-   nnpack
    -   sci-libs/NNPACK
    -   <https://github.com/Maratyszcza/NNPACK/>
    -   acceleration package for neural network computations - convnet layers for multi-core CPUs.
-   qnnpack
    -   ! sci-libs/QNNPACK
    -   dev-cpp/gemmlowp
        -   <https://github.com/google/gemmlowp/>
        -   Low-precision matrix multiplication
-   onednn
    -   sci-libs/ideep
        -   <https://github.com/intel/ideep>
        -   Chainer module using Intel’s Math Kernel Library for Deep Neural Networks (MKL-DNN).
        -   accelerate DNN computations on Intel architectures, such as CPUs and GPUs.
        -   Chainer is an open-source deep learning framework developed by Preferred Networks and the
            Japanese government.
-   openblas
    -   sci-libs/openblas
    -   <https://github.com/xianyi/OpenBLAS>
    -   optimized Basic Linear Algebra Subprograms (BLAS) library
-   opencl
    -   virtual/opencl
-   openmp
    -   USE<sub>OPENMP</sub>, no dependencies
-   xnnpack
    -   sci-libs/XNNPACK
    -   <https://github.com/google/XNNPACK/>
    -   High-efficiency floating-point neural network inference operators for CPU: ARM, x86 and x86-64, etc.

additional dependencies:

-   dev-cpp/opentelemetry-cpp
    -   dev-libs/thrift - C++ bindings for Apache Thrift

<https://github.com/oneapi-src/oneDNN>


<a id="org4951144"></a>

# PyTorch vs Tensorflow

Computational Graphs

-   PyTorch - Dynamic - more flexibility and ease of use, particularly in research and rapid
    prototyping scenarios. However, this dynamic nature can introduce some overhead, especially when
    scaling to very large models or data sizes. Less optimized for production.
-   Tensorflow - Static - better optimization for production environments, enabling TensorFlow to
    excel in large-scale and complex neural network architectures. This includes optimizations like
    operator fusion, which reduces memory reads and kernel launch overhead.
    -   TensorFlow 2.x - eager execution is the default. Offers a hybrid approach.  Allowing developers
        to use dynamic graphs for development and debugging, and then optimize the code by converting it
        into static graphs for production or performance-critical parts of the model.


<a id="org1b87335"></a>

# ML project tasks

-   Data Gathering
-   Preprocessing
-   Team Collaboration - ClearML
-   Experiment Management - experiment versioning, hyperparameter tuning,  model management
    -   ClearML
-   versioning
-   hyperparameter tuning
-   Experiment Management and tracking
    -   hyperparameter tuning
    -   experiment tracking
    -   Automated Pipelines
    -   model versioning
-   Model Development and Training
-   Model Evaluation and Deployment
-   Data Collection and Preprocessing

Small

-   versioning: notebooks, spreadsheets, git.
-   hyperparameter tuning: Manual or basic hyperparameter tuning using GridSearchCV or RandomSearchCV.
-   Basic Evaluation Metrics: Using metrics like accuracy, precision, recall, and F1-score to evaluate
    model performance.

Medium

-   automate experiment tracking:  ClearML, DagsHub, or Kaggle
-   Advanced Hyperparameter Tuning: Using tools like Hyperopt or Optuna
-   Evaluation Metrics: Using a range of evaluation metrics and techniques, including cross-validation
    and model interpretability.
-   Managed Deployment: Models are deployed using managed services like Docker and Kubernetes for
    containerization and orchestration.
-   Team Collaboration: defined roles, using collaboration tools like GitHub, Slack, and tasks
    management software. Regular Meetings, sprint planning and issue tracking.

Large

-   Large-Scale Data Gathering: Involves collecting, processing, and managing large-scale datasets,
    often using big data technologies like Apache Hadoop and Apache Spark.
-   Advanced data preprocessing, including distributed processing, data warehousing, and complex
    feature engineering.
-   sophisticated ML algorithms such as deep learning models, ensemble methods, and transfer learning.
-   Scalable Infrastructure: Models are trained on large-scale cloud infrastructure or on-premises
    clusters, utilizing distributed computing and GPU acceleration.
-   Comprehensive Experiment Tracking: Advanced experiment tracking, model versioning, and
    hyperparameter optimization using tools like ClearML, Vertex AI, or DagsHub.
-   Automated Pipelines: Use of CI/CD pipelines to automate the entire ML workflow from data
    preparation to model deployment.
-   Robust Evaluation Metrics: Using advanced evaluation techniques, including A/B testing, model
    interpretability, and continuous monitoring of model performance.
-   Cross-Functional Teams
-   detailed role assignments, and formal project management methodologies to ensure seamless
    collaboration and knowledge sharing.


<a id="orge936683"></a>

# Redis


<a id="org713d47a"></a>

## history

-   2009  open-source project under the BSD license
-   In 2018, Redis Labs have all rights
-   2021 - 6.2 internode encryption
-   In 2021, Redis Labs rebranded itself simply as "Redis".
-   2022 - 7.0 Auto Tiering, RESP3 support, and sharded pub/sub
-   7.2-7.4 Active-Active database management, full TLS 1.3 support
-   since Redis 7.4, the project is dual-licensed under the Redis Source Available License (RSALv2)
    and the Server Side Public License (SSPLv1).

Redis OSS


<a id="org8d706f6"></a>

## features

-   in-memory caching and fast data retrieval.
-   keys are binary safe; this means that you can use any binary sequence as a key
-   some commands support cursor
-   clustering - master-replica model mainly.

Used for

-   **caching**, **queuing**, **event processing**
-   sub storage for the main database.

Nones:

-   Redis usually processes the requests in a single thread

Bloom filter - determine whether an element is a member of a set. “has this been seen before?”.

-   It can return false positives (i.e., it might say an element is in the set when it is not), but
    it never returns false negatives (i.e., it will never say an element is not in the set when it
    actually is).
-   hash: to determine one of distributed Database.
-   How: large set of numbered buckets, to putting Cat - Cat hashes to identifiers 3, 4, and 10, we
    fill that buckets. To check if Dock is in we calc 3 hashes and check if bucket was filled.


<a id="orgbd5e1c7"></a>

## terms <a id="org195593c"></a>

-   **name or key:** name of hash; HSET <name/key> <key/field> <value>
-   **key or field:** (attribute within the hash), may be of type: strings, hashes, lists, sets, sorted sets, and more
-   **value:** 

-   **H,S,Z prefix:** Sets, Hash, Sorted Set types
-   **M prefix:** command accept multiple values
-   schema


<a id="orgc8c6192"></a>

## license

old RSALv2, new  SSPLv1 - permissive non-copyleft license. Not approved by Open Source Initiative (OSI).

-   SSPLv1 is a copyleft license based on GPLv3.

RSALv2 - Users cannot commercialize the software or provide it as a managed service.

SSPLv1 - If you provide the product as a service, you must publicly release any modifications and the source
  code of your management layers under SSPLv1. This ensures that any service built around the
  software must also make its source code available

Limitation for individuals:

-   You may not commercialize the software or provide it to others as a managed service.
-   You may not remove or obscure any licensing, copyright, or other notices of the licensor in the
    software[1][3].
-   if you make the software available to third parties as a service, you must release the source code
    for the entirety of the service. However, this does not apply to individual non-commercial
    use. Individuals can use Redis without needing to release any source code.

The restrictions mainly target commercial and cloud service providers who wish to offer Redis as a
 managed service.


<a id="org2d67aa5"></a>

## Distribution

Redis OSS was renamed Redis Community Edition (CE) with the v7.4 release.

-   **Redis Community Edition** (CE) - dual-licensed for newer versions, features:
    -   in-memory data structures
    -   replication
    -   Lua scripting
-   **Redis Stack** is an extension of Redis:
    -   RedisJSON, RedisGraph, RedisSearch
    -   for document storage, graph databases, and full-text search

Redis Stack and its modules, which were previously licensed separately, will be integrated into the
 core Redis distribution starting with Redis 8. This means that advanced data types and processing
 engines will be available by default in future versions of Redis, making the separate Redis Stack
 build unnecessary


<a id="orgb951bb0"></a>

## Modules - Redisearch

-   <https://github.com/RediSearch/RediSearch>
-   <https://redis.io/docs/stack/search/>
-   <https://forum.redis.io/c/modules/redisearch>
-   <https://redis.io/docs/latest/develop/interact/search-and-query/>

Debian: apt install redis-server redis-redisearch

origin/2.10 commit 496a1596d437b6114b92f46deba1dc3bd9eedb12


<a id="org11fd401"></a>

### from sources

From <https://github.com/redis/redis/tree/unstable/modules>

SRC<sub>DIR</sub> = src
MODULE<sub>VERSION</sub> = 2.10 # branch for release v2.10.7
MODULE<sub>REPO</sub> = <https://github.com/redisearch/redisearch>
TARGET<sub>MODULE</sub> = $(SRC_DIR)/bin/$(FULL<sub>VARIANT</sub>)/search-community/redisearch.so

<https://github.com/RediSearch/RediSearch/archive/refs/tags/v2.10.7.tar.gz>

mkdir -p $(SRC<sub>DIR</sub>)
git clone &#x2013;recursive &#x2013;depth 1 &#x2013;branch $(MODULE<sub>VERSION</sub>) $(MODULE<sub>REPO</sub>) $(SRC<sub>DIR</sub>)

Installing Prerequisites:
cd install
./install<sub>script.sh</sub> sudo
./install<sub>boost.sh</sub> 1.83.0

    # Create a build directory
    mkdir build
    cd build
    
    # Run CMake to generate build files
    cmake .. -DCMAKE_BUILD_TYPE=RelWithDebInfo
    
    # Build the software
    make build
    
    # Optionally, build with specific flags (e.g., coordinator)
    make build COORD=1
    
    # Run tests
    make test
    
    # Clean build artifacts
    make clean
    
    # Run Redis with RediSearch
    make run

make build COORD=1  # For Redis Community Edition Coordinator
or
make all


<a id="org98c6f52"></a>

### debian

<https://salsa.debian.org/janitor-team/proposed/pkg-redisearch/-/tree/debian/sid/debian?ref_type=heads>

src/redisearch.so usr/lib/redis/modules


<a id="org7f40d87"></a>

### test module load

redis-cli MODULE LOAD /etc/redisearch.so
redis-cli MODULE LIST

\#!/bin/sh
set -eu
service redis-server restart
sleep 5
redis-cli LOAD MODULE /usr/lib/redis/modules/redisearch.so


<a id="org1a8b67e"></a>

### dependencies

CMakeLists.txt \\
	deps/friso/CMakeLists.txt \\
	deps/phonetics/CMakeLists.txt \\
	deps/snowball/CMakeLists.txt \\ - big
	deps/rmutil/CMakeLists.txt

1.  snowball

    string processing language for creating stemming algorithms for use in Information Retrieval
    
    Stemming maps different forms of the same word to a common "stem" - for example, the English stemmer
     maps connection, connections, connective, connected, and connecting to connect.
    
    Snowball 2.1.0 (2021-01-21)
    
    tag v2.1.0
    
    libstemmer<sub>c</sub> <https://snowballstem.org/dist/libstemmer_c-2.1.0.tar.gz>
    
    -   <https://snowballstem.org/>
    -   <https://github.com/snowballstem>
    -   <https://github.com/snowballstem/snowball>


<a id="orgb4cb452"></a>

## Data types

-   **String:** to store some Real-time Analytics, caching, configurations.
-   **List:** message **queues** for job processing FIFO, Leaderboards, **Event** Logging.
-   **Set:** for detecting duplicates: user IDs or product IDs, for **intersection or union** operations in
    recommendation systems or social network analysis, Rate Limiting by storing unique identifiers of users
-   **Sorted set:** Ranking Systems, Task Scheduling where they ordered by priority, Geo Hashing to index
    locations based on latitude and longitude. **One-to-many, many-to-many relationship**
-   **Hash:** to store user profiles, **objects**, session data, Event Tracking with TTL, Fraud Detection
    to count number of events per hour for the last 48 hours.

others:

-   Stream
-   Bitmap
-   Bitfield
-   Geospatial

Structure:

-   **String:** key-value (not ordered); set, get
-   **List:** key-linked lists; add to head or to tail.
-   **Set:** key-members (not ordered); add, rem
-   **Sorted set:** key-((member,score)..); When more than one string has the same score, the strings are
    ordered lexicographically. zadd O(log(N)), ZREVRANK O(log(N)), ZRANGE and ZSCAN - to get
-   **Hash:** key - ((filed, value)&#x2026;)


<a id="orgda6bdad"></a>

## Hashes

Has ability to set TTL (a time-to-live) per key but not per field.

Retrive:

-   HKEYS key
-   HVALS key
-   HGETALL key
-   HGET key field
-   HMGET key filed [field &#x2026; ]

Set:

-   HSET key field value [field value &#x2026;]

Every hash can store up to 4,294,967,295 (2<sup>32</sup> - 1) field-value pairs.

Benefits versus Stirngs:

-   Strings is flat list of key-value pairs. Hashes is name-key-value.
-   We need just one Redis HMGET command per entity as opposed to multiple GET calls if features of
    the entity were stored as individual key-value pairs.
-   Ability to store all fields of object at the same node in cluster.

The downside, however, of using Redis hashes is that expiration times (TTLs) can only be set at the
 top level key.


<a id="orgd1c4532"></a>

## Transactions

a single isolated operation.

-   MULTI - enter
-   EXEC - commit
-   DISCARD - flush the transaction queue and will exit the transaction.
-   WATCH - make the EXEC conditional

if some command failed all the other commands will be executed even if some command fails during the
 transaction.

Redis does not support rollbacks.


<a id="org4413fd3"></a>

## dependencies runtime

-   dev-libs/jemalloc -  general-purpose scalable concurrent allocator, malloc(3) implementation
-   dev-util/google-perftools -  fastest malloc we’ve seen; works particularly well with threads

and STL.


<a id="org4d25c9f"></a>

## init

1.  edit /etc/redis/redis.conf
2.  redis-server - two ways:
    -   redis-server /etc/redis/6379.confredis.conf - Run the server with a configuration file
    -   redis-server &#x2013;dbfilename myredis.db - passing changed default options of /etc/redis/redis.conf with &#x2013; two slashes
        -   &#x2013;save "600 1 30 10 6 100" will not be used

<https://www.mankier.com/1/redis-server>


<a id="org4f452ea"></a>

## Best Practices

In Redis, you don’t need schemas or column names, but you do need to figure out how your data is
 best represented in terms of simple key-value strings, lists, hashes, sets, or sorted sets.

-   For example, storing a million jobs in a list, but then needing to retieve jobs based on
    alphabetical order will kill your Redis performance. You need to use appropriate data structures
    for appropriate use cases.

In traditional RDBS: Table scans are O(N) while fully indexed queries are O(lg N).

You should keep in mind RUGSS:

-   **retrieval:** think before ways to retieve. Custom Indexing
-   storage
-   size
-   growth
-   user access.

bp

-   Regularly **back up your Redis** database to prevent data loss in case of server failures.
-   Monitor your Redis instance’s performance and adjust the **dbfilename** frequency **or dir path** as
    needed to balance persistence and performance. ??
-   Consider using a more descriptive file name for better organization and tracking purposes.
-   Very long keys are not a good idea. For instance a key of 1024 bytes is a bad idea not only
    memory-wise, but also because the lookup of the key in the dataset may require several costly
    key-comparisons. Even when the task at hand is to match the existence of a large value, hashing it
    (for example with SHA1) is a better idea, especially from the perspective of memory and bandwidth.
-   Very short keys are often not a good idea. There is little point in writing "u1000flw" as a key if
    you can instead write "user:1000:followers". The latter is more readable and the added space is
    minor compared to the space used by the key object itself and the value object. While short keys
    will obviously consume a bit less memory, your job is to find the right balance.
-   Try to stick with a schema. For instance "object-type:id" is a good idea, as in "user:1000". Dots
    or dashes are often used for multi-word fields, as in "comment:4321:reply.to" or
    "comment:4321:reply-to".
-   The maximum allowed key size is 512 MB.
-   It is more space effective to represent a “set” data structure
    as a map/dict in Redis (SET vs HASH). In our case, the majority of our SET sizes will be below the
    default value for **hash<sub>max</sub><sub>ziplist</sub><sub>entries</sub>** which is 512. And, in the scenario where the SET size
    exceeds this configured value (which we do run into sometimes), we can be confident that our
    existing and new HASHes will not be affected.
-   Redis will store hashes (via "hset" or similar) in an optimized way if the hash does end up having
    more than **hash-max-ziplist-entries** entries, or if each the values are smaller than
    **hash-max-ziplist-values** 64 bytes.
-   Be cautious when using KEYS command (or its equivalent methods in clients) especially in
    production environments because this command can negatively affect performance if it returns a
    large number of keys. It's generally better to use scan-based commands like scan<sub>iter</sub>.
-   Always close the redis connection when it's no longer needed.

<https://matt.sh/thinking-in-redis-part-one>


<a id="orge259cac"></a>

## Python - connector - dev-python/redis

    redis-server --dbfilename dump.rdb --port 6379 --maxclients 1


<a id="org93a4a04"></a>

## commands

pipeline - r.pipeline(); pipe.execute()


<a id="org6beaf85"></a>

### retrive

1.  KEYS and SMEMBERS (get all valus of sorted set by key) that may block the server.

    KEYS pattern
    
    -   O(N) with N being the number of keys
    -   glob patterns supported

2.  GET - strings

    O(1)
    
    -   GET retrieves a string value.
    -   MGET retrieves multiple string values in a single operation.
        
        An error is returned if the value stored at key is not a string, because GET only handles string values.

3.  SCAN - get with cursor, incrementally iterate over a collection of elements.

    SCAN - O(1)-O(N) - SSCAN, HSCAN, ZSCAN

4.  ZRANGE - scorted set

    ZRANGE key start stop [BYSCORE | BYLEX] [REV] [LIMIT offset count]
      [WITHSCORES]
    
    -   by default - index range query - first, second
    -   BYSCORE -
    -   BYLEX


<a id="orge72db33"></a>

### set

1.  SET - string, Getting and setting Strings

    SET key value [NX | XX] [GET] [EX seconds | PX milliseconds |
      EXAT unix-time-seconds | PXAT unix-time-milliseconds | KEEPTTL]
    
    -   SET stores a string value.
    -   SETNX stores a string value only if the key doesn't already exist. Useful for implementing locks.

2.  HSET - hash - Redis hashes are record types structured as collections of field-value pairs.

    -   HSET <name/key> <key/field> <value> [field value &#x2026;] - sets multiple fields of the hash
    -   HGET <name> <key> - Return the value of \`\`key\`\` within the hash \`\`name\`\`
    -   HKEYS <name> - Return the list of keys within hash \`\`name\`\`
    -   hgetall(self, name: str) -> dict
    
    HSET - Sets the specified fields to their respective values
    Set **key** to **value** within hash **name**. see [17.3](#org195593c)
    
    -   **mapping:** accepts a dict of key/value pairs that will be added to hash \`\`name\`\`.
    -   **items:** accepts a list of key/value pairs that will be added to hash \`\`name\`\`.  Returns the
        number of fields that were added.
    
    <https://redis.io/docs/latest/develop/data-types/hashes/>

3.  LPUSH - list -  at the head

    LPUSH key element [element &#x2026;]


<a id="orga704f87"></a>

### comment

    ECHO "Setting foo to bar"


<a id="org9e86ba6"></a>

## tools

<https://redis.io/clients>

-   **redis-server:** main
-   **redis-sentinel:** monitors Redis instances and can automatically failover to a replica if the master instance fails.
-   **redis-cli:** This is the Redis command-line interface. It allows you to interact with Redis
    instances, execute commands, and monitor their status. You can use it to check the configuration,
    monitor the replication status, and execute commands like INFO, ROLE, and MONITOR.
-   **redis-check-aof:** This tool checks the integrity of the Append-Only File (AOF) used for
    persistence in Redis. It helps ensure that the AOF is consistent and can be used to recover the
    dataset in case of a failure.
-   **redis-check-rdb:** This tool checks the integrity of the Redis Database (RDB) snapshots used for
    persistence in Redis. It helps ensure that the RDB snapshots are consistent and can be used to
    recover the dataset in case of a failure.


<a id="org06eb4fb"></a>

## TODO Indexes

FLAT VS HNSW INDEXING

<https://redis.io/learn/howtos/solutions/vector/getting-started-vector>

Redis VSS capability  - a new feature of the RediSearch module.

-   It allows developers to store a vector just as easily as any other field in a Redis hash
-   <https://redis.io/blog/build-intelligent-apps-redis-vector-similarity-search/>
    -   <https://github.com/RedisAI/vecsim-demo>
    -   
    
    -   <https://github.com/RedisAI/vecsim-demo>

<https://redis.io/blog/redisearch-2-build-modern-applications-interactive-search/>    -

-   RediSearch 2.0 - module for Redis: querying, indexing, and full-text search engine
    -   Evolution: Pure key-value (unstructured key) -> Redis (sub values of key) -> RediSearch (indexes
        on key structures, query language)
    -   aggregations, highlights, stemming, and spelling correction.


<a id="orgf72238c"></a>

## distributed usage

types:

-   Master-Slave Replication - for high availability and fault tolerance
-   Sharding - dividing - for horizontal scaling
-   Redis Cluster - automatic sharding, replication, and failover. each responsible for a subset of
    the key space, uses a hash function to determine which node to store a given key.
-   Distributed Caching - clients can query any node to retrieve the data


<a id="org36c81eb"></a>

### Scaling

<https://redis.io/docs/latest/operate/oss_and_stack/management/scaling/>

TCP: 6379, cluster bus port 16379

hash slot

-   16384 hash slots.
-   Every node in a Redis Cluster is responsible for a subset of the hash slots ex. 0-5500
-   to compute the hash slot for a given key, we simply take the CRC16 of the key modulo 16384.
-   HASH<sub>SLOT</sub> = CRC16(key) mod 16384

hash tags - force multiple keys to be part of the same hash slot

-   curly braces ({ and }) are signifiers of a hashtag and the string between these two characters is
    put through the CRC16 hashing function.:
    -   user-profile:{1234} - CRC16(‘1234’) mod 16384
    -   user-session:{1234} - CRC16(‘1234’) mod 16384

master-replica model - A, B, C masters and A1, B1, C1 replicas.

-   **maximum window** is amount of writes that master accept, ???, side will have stopped accepting writes.
-   **node timeout** - After node timeout has elapsed, a master node is considered to be failing, and can be replaced by one of its replicas.
-   inimal cluster that works as expected must contain at least three master nodes.

to connect to several master nodes we need cluster aware client:

-   <https://redis.io/docs/latest/develop/connect/clients/>

1.  <https://redis-py.readthedocs.io/en/stable/clustering.html>

    attempts to establish a connection to one of the provided startup nodes.
    
        from redis.cluster import RedisCluster as Redis
        from redis.cluster import ClusterNode
        nodes = [ClusterNode('localhost', 6379), ClusterNode('localhost', 6378)]
        rc = Redis(startup_nodes=nodes)

2.  utils/create-cluster directory in the Redis distribution - start a big number of Redis instances

    configured to run in cluster mode. Allow manual testing.
    
    -   <https://github.com/redis/redis/blob/unstable/utils/create-cluster/create-cluster>
    -   replace:
        -   $BIN<sub>PATH</sub>/redis-server with /usr/sbin/redis-server
        -   $BIN<sub>PATH</sub>/redis-cli with /usr/bin/redis-cli
        -   exit 0 with “# exit 0”
        -   NODES=6 with NODES=3
        -   REPLICAS=1 with REPLICAS=0
        -   tail -f **.log  with tail -f ${PORT%?}**.log
        -   ADDITIONAL<sub>OPTIONS</sub>="&#x2013;cluster-require-full-coverage no &#x2013;repl-timeout 60"
        -   wrap bottom “echos” with if [ -z "$1" ]; then &#x2026;.. fi
        -   add as a last line: echo "--------------------------&#x2013;&#x2014;"
    -   . create-cluster.sh start # 3 nodes created
    -   . create-cluster.sh create

3.  links

    -   <https://redis.io/docs/latest/operate/oss_and_stack/management/scaling/>
    -   article <https://severalnines.com/blog/hash-slot-resharding-and-rebalancing-redis-cluster/>
    -   article <https://severalnines.com/blog/hash-slot-vs-consistent-hashing-redis/>


<a id="org7f20a37"></a>

### replication

<https://redis.io/docs/latest/operate/oss_and_stack/management/replication/>


<a id="orge5bec49"></a>

### Lock

Distributed Lock Manager - to organise access to shared resources. runs in every machine in a
 cluster, with an identical copy of a cluster-wide lock database.

Redlock - DLM, proposed algorithm by Redis.

-   client send lock to multiple Redis instances. lock is successfully acquired when more than half of
    these instances agree . client send GET and DEL command  on all the instances involved
-   takes into account the lock validity time, retry on failure, lock extension, and many other
    aspects, which makes it a robust and reliable solution for distributed locking.

links

-   <https://redis.io/docs/latest/develop/use/patterns/distributed-locks/>
-   <https://redis.io/glossary/distributed-events/>


<a id="org097a74d"></a>

### commands

Basic nodes in short:

    redis-cli -p 7000 cluster nodes

Advanced statistic:

    redis-cli -p 30001 CLUSTER SHARDS

Obsolate:

    redis-cli -p 30001 CLUSTER SLOTS

Execute command at every master node. Allow to find keys location.

    redis-cli --cluster call localhost:30001 KEYS "*"

Hash name is used as a hash tag.


<a id="org4befbba"></a>

## ORM

<https://github.com/redis/redis-om-python/>

FastAPI integration <https://github.com/redis/redis-om-python/blob/main/docs/fastapi_integration.md>


<a id="orgc83220b"></a>

## architect schema - usecase


<a id="org911394e"></a>

### Sorting

Set

    multi
    HSET redishop:items:Handcrafted-Trees-Mug price 99
    sadd redishop:all-items Handcrafted-Trees-Mug
    exec

“#” is a pattern to GET the element itself

    SORT redishop:all-items BY redishop:items:*->price GET # GET redishop:items:*->price

Sorted Set

    zadd redishop:priceIndex 10.99 Handcrafted-Trees-Mug
    ZRANGEBYSCORE redishop:priceIndex 15 17 WITHSCORES


<a id="org3c0c47f"></a>

## timeouts for cluster

Close the connection after a client is idle for N seconds (0 to disable)

    timeout 0

Master send PINGs to its replicas:

    repl-ping-replica-period 10

1.  Bulk transfer I/O during SYNC, from the point of view of replica.
2.  Master timeout from the point of view of replicas (data, pings).
3.  Replica timeout from the point of view of masters (REPLCONF ACK pings).

    repl-timeout 60

RedisCluster(AbstractRedisCluster, RedisClusterCommands)

-   <file:///usr/lib/python3.12/site-packages/redis/cluster.py>
-   cluster<sub>error</sub><sub>retry</sub><sub>attempts</sub>, default is 3 for CLUSTERDOWN
-   reinitialize<sub>steps</sub>, default =5
    -   number of MOVED errors that need to occur before reinitializing the whole cluster topology.
-   retry Retry(default<sub>backoff</sub>(), 0)


<a id="org0e74453"></a>

## Get a range of keys with redis?

1.  (2 query) sorted set, with unix timestamps or incremental id
    1.  Sorted sets are implemented via a dual-ported data structure containing both a skip list and a hash table
    2.  Add: O(log(N))
    3.  set: ZADD racer<sub>scores</sub> 8 "Sam-Bodden" 10 "Royce" 6 "Ford" 14 "Prickett"
    4.  get: ZRANGE racer<sub>scores</sub> 0 -1 withscores
    5.  <https://redis.io/docs/latest/develop/data-types/sorted-sets/>
2.  MGET key1 key2 key3 &#x2026; or HMGET key field [field &#x2026;]
3.  (not working for cluster print(list(rc.scan<sub>iter</sub>('id:\*', count=100))) # slow?
4.  put Ids into sorted set then use mget to get values out
    -   if your keys are hashes then you need to issue multiple hget, but the advantage is that you can pull out
        specific parts of the object that you actually need instead of everything. It is very fast in practice.
5.  (fastest, not working in cluster) SORT with list, set or sorted set <https://redis.io/docs/latest/commands/sort/> <https://stackoverflow.com/questions/3329408/is-there-mget-analog-for-redis-hashes>
    -   hset hash:1 name fish1 # HSET key field value [field value &#x2026;]
    -   hset hash:1 type fish2
    -   sadd animals 1 # SADD key member [member &#x2026;] Add the specified members to the set stored at key.
    -   sort animals get # return
6.  keys - not working for clusters
7.  (to get values after getting keys) pipeline: pipe = conn.pipeline() pipe.hgetall('foo') pipe.hgetall('bar') pipe.hgetall('zar') hash1, hash2, hash3 = pipe.execute()
8.  (for cluster) redis-cli &#x2013;cluster call -p 30001 KEYS "\*" ; Python: rc.keys(target<sub>nodes</sub>=Redis.ALL<sub>NODES</sub>)

SortedSet is a collection of unique strings (members) ordered by an associated score.

-   ZADD adds a new member and associated score to a sorted set. If the member already exists, the score is updated.
-   ZRANGE returns members of a sorted set, sorted within a given range.
-   ZRANK returns the rank of the provided member, assuming the sorted is in ascending order.
-   ZREVRANK returns the rank of the provided member, assuming the sorted set is in descending order.

ZRANGE key start stop [BYSCORE | BYLEX] [REV] [LIMIT offset count] [WITHSCORES]

-   WITHSCORES output lines:  1) "Ford"  2) "6"  3) "Sam-Bodden"  4) "8"
-   O(log(N)+M) with N being the number of elements in the sorted set and M the number of elements returned.

SORT key [BY pattern] [LIMIT offset count] [GET pattern [GET pattern  &#x2026;]] [ASC | DESC] [ALPHA] [STORE destination]

-   O(N+M\*log(M)) where N is the number of elements in the list or set to sort, and M the number of returned
    elements. When the elements are not sorted, complexity is O(N).

SADD key member [member &#x2026;]

Avoid using the KEYS command to fetch keys on large databases as it may block the server until it's completed.

    hset hash:{1}:1 name fish1
    hset hash:{1}:2 name donkey
    hset hash:{1}:3 name horse
    hset hash:{1}:1 type fish2
    hset hash:{1}:2 type mammal
    hset hash:{1}:3 type mammal
    sadd animals:{1} 1
    sadd animals:{1} 2
    sadd animals:{1} 3
    sort animals get # get hash:*->name get hash:*->type

    from redis.cluster import RedisCluster as Redis
    from redis.cluster import ClusterNode
    
    nodes = [ClusterNode('localhost', pport) for pport in range(30001,30003)]
    rc = Redis(startup_nodes=nodes, decode_responses=True,
               socket_connect_timeout=2) # 2 seconds timeout
    print(rc.ping(target_nodes=Redis.RANDOM))
    # print(rc.set("id:{1-10}:1", "Name1"))
    # print(rc.get("id:{1-10}:1"))
    print(list(rc.scan_iter('id:*')))
    print(rc.keys())


<a id="org592c860"></a>

## modules

<https://redis.io/docs/latest/develop/reference/modules/>

Redis modules are dynamic libraries that can be loaded into Redis at startup, or using the MODULE LOAD command.

-   redis.conf: loadmodule /path/to/mymodule.so
-   MODULE LOAD /path/to/mymodule.so
-   MODULE LIST
-   MODULE UNLOAD mymodule


<a id="org5543fc1"></a>

## Vector database

support querying strategies

-   k-nearest neighbor (KNN)
-   vector range queries
-   metadata filters.

index types: FLAT and HNSW vector.


<a id="org2e84f9d"></a>

### RedisVL - MIT

Python client designed for AI applications

-   <https://github.com/redis/redis-vl-python>
-   <https://www.redisvl.com/>

require:

-   Redis Stack

hf = HFTextVectorizer(model="sentence-transformers/all-mpnet-base-v2")

-   438 MB
-   768 dimensional

VertexAI

-   <https://cloud.google.com/vertex-ai/generative-ai/docs/embeddings/get-text-embeddings>
-   768-dimensional
-   REST support

<https://dashboard.cohere.com/welcome/register>


<a id="orged88493"></a>

### redis-py or dev-python/redis - MIT

    import redis
    from redis.commands.search.field import TagField, VectorField
    from redis.commands.search.indexDefinition import IndexDefinition, IndexType
    from redis.commands.search.query import Query
    
    r = redis.Redis(host="localhost", port=6379)
    
    INDEX_NAME = "index"                              # Vector Index Name
    DOC_PREFIX = "doc:"                               # RediSearch Key Prefix for the Index
    
    def create_index(vector_dimensions: int):
        try:
            # check to see if index exists
            r.ft(INDEX_NAME).info()
            print("Index already exists!")
        except:
            # schema
            schema = (
                TagField("tag"),                       # Tag Field Name
                VectorField("vector",                  # Vector Field Name
                    "FLAT", {                          # Vector Index Type: FLAT or HNSW
                        "TYPE": "FLOAT32",             # FLOAT32 or FLOAT64
                        "DIM": vector_dimensions,      # Number of Vector Dimensions
                        "DISTANCE_METRIC": "COSINE",   # Vector Search Distance Metric
                    }
                ),
            )
    
            # index Definition
            definition = IndexDefinition(prefix=[DOC_PREFIX], index_type=IndexType.HASH)
    
            # create Index
            r.ft(INDEX_NAME).create_index(fields=schema, definition=definition)
    
    
    # define vector dimensions
    VECTOR_DIMENSIONS = 2
    
    # --------------------create the index ---------------
    create_index(vector_dimensions=VECTOR_DIMENSIONS)
    
    # -------------------- adding vector -----------------
    import numpy as np
    
    # instantiate a redis pipeline
    pipe = r.pipeline()
    
    # define some dummy data
    objects = [ # name is a key
        {"name": "a", "tag": "foo"},
        {"name": "b", "tag": "foo"},
        {"name": "c", "tag": "bar"},
    ]
    
    # write data
    for obj in objects:
        # define key
        key = f"doc:{obj['name']}"
        # create a random "dummy" vector
        obj["vector"] = np.random.rand(VECTOR_DIMENSIONS).astype(np.float32).tobytes()
        # HSET - overwrite or create new
        pipe.hset(key, mapping=obj) # key="doc:a",
    
    res = pipe.execute()
    
    a = np.array([0,1], dtype=np.float32).tobytes()
    print(a)

    b'\x00\x00\x00\x00\x00\x00\x80?'

    

-   <https://vishnudeva.medium.com/redis-as-a-vector-database-rediscloud-2a444c478f3d>
-   <https://redis-py.readthedocs.io/en/stable/examples/search_vector_similarity_examples.html>


<a id="org39b975a"></a>

### RedisGraph (obsolate)

-   <https://github.com/RedisGraph/RedisGraph>
-   <https://redis.io/docs/latest/operate/oss_and_stack/stack-with-enterprise/deprecated-features/graph/>

After January 31, 2025, RedisGraph commands will be disabled on Redis Enterprise Cloud.

Based on the Property Graph Model

-   nodes and relationships may have attributes

Graphs represented as sparse adjacency matrices

Cypher as query language - queries translated into linear algebra expressions

uses sparse adjacency matrices to represent graphs.

-   adjacency matrix M - rows represent source nodes while matrix columns represent destination nodes.

1.  arch

    graph with two relationships types: visits and friend
    
    Matrices:
    
    -   THE adjacency matrix - marking every connection within the graph
    -   visit matrix - marking visit connections
    -   friend matrix - marking friend connections


<a id="orgacf29c5"></a>

### links

-   empty <https://redis.com/solutions/use-cases/vector-database/>
    -   <https://redis.io/docs/latest/develop/interact/search-and-query/advanced-concepts/vectors/>
-   <https://redis.io/docs/latest/develop/interact/search-and-query/indexing/>
-   <https://redis.io/docs/latest/commands/ft.create/>
-   <https://redis.io/docs/latest/develop/get-started/vector-database/>

-   <https://redis-py.readthedocs.io/en/stable/examples/search_vector_similarity_examples.html>


<a id="orge1c76d9"></a>

## Knowledge Graph implementation on vanila Redis

Key Points

-   Sets for Relationships: Using sets for relationships ensures fast membership tests and additions.
-   Pipelining: Pipelining reduces the number of round-trips to the server, improving overall performance.
-   BFS Algorithm: The BFS algorithm ensures efficient traversal of the graph to find entities within N hops.
-   Optimized Retrieval: Using SMEMBERS for retrieving all members of a set in a single command optimizes the retrieval process.


<a id="org2934ad6"></a>

### nlp

Knowledge graphs are one of the best ways to connect and make sense out of information from
 different data sources, following the motto of one of the vendors— “It’s about things not strings”.

<https://redis.io/learn/howtos/nlp>


<a id="orgc653522"></a>

### code

    import redis
    
    # Connect to Redis
    r = redis.Redis(host='localhost', port=6379, db=0)
    
    # Function to create an entity
    def create_entity(entity_id, entity_type, properties):
        r.hset(f"{entity_type}:{entity_id}", mapping=properties)
        return entity_id
    
    # Function to create a relationship between entities
    def create_relationship(entity_id1, entity_id2, relationship_type):
        r.sadd(f"{relationship_type}:{entity_id1}", entity_id2)
        r.sadd(f"{relationship_type}:{entity_id2}", entity_id1)
        return True
    
    # Define a function to query entities by property
    def query_entities_by_property(entity_type, property_name, property_value):
        # Use Redis Search to index entity properties
        index_name = f"{entity_type}:{property_name}"
        r.ft(index_name).add_doc(json.dumps({property_name: property_value}))
        results = r.ft(index_name).search(property_value)
        return results
    
    # Define a function to query relationships between entities
    def query_relationships(entity_id1, entity_id2, relationship_type):
        # Use a set to store relationships
        relationships = r.smembers(f"{relationship_type}:{entity_id1}")
        return entity_id2 in relationships
    
    def get_entity_properties(entity_id, entity_type):
        return r.hgetall(f"{entity_type}:{entity_id}")
    
    # Function to retrieve entities with N hops using BFS
    def get_entities_with_n_hops(entity_id, relationship_type, n):
        visited = set()
        queue = [(entity_id, 0)]
        result = []
    
        while queue:
            current_entity, current_hop = queue.pop(0)
            if current_entity not in visited:
                visited.add(current_entity)
                if current_hop < n:
                    result.append(current_entity)
                    for next_entity in r.smembers(f"{relationship_type}:{current_entity}"):
                        queue.append((next_entity, current_hop + 1))
                elif current_hop == n:
                    result.append(current_entity)
    
        return result
    
    # Function to retrieve relationships
    def get_relationships(entity_id, relationship_type):
        return r.smembers(f"{relationship_type}:{entity_id}")
    
    
    # Create entities
    entity_id1 = create_entity(1, "Person", {"name": "John", "age": 30})
    entity_id2 = create_entity(2, "Person", {"name": "Jane", "age": 25})
    entity_id3 = create_entity(3, "Person", {"name": "Bob", "age": 35})
    
    # Create relationships
    create_relationship(entity_id1, entity_id2, "Friend")
    create_relationship(entity_id2, entity_id3, "Friend")
    create_relationship(entity_id3, entity_id1, "Friend")
    
    # Retrieve entities connected to entity_id1 with 2 hops
    connected_entities = get_entities_with_n_hops(entity_id1, "Friend", 2)
    print(connected_entities)
    
    # Using pipelining for efficient retrieval
    with r.pipeline() as pipe:
        pipe.smembers(f"Friend:{entity_id1}")
        pipe.smembers(f"Friend:{entity_id2}")
        result = pipe.execute()
    print(result)
    
    print(get_entity_properties(entity_id1, "Person"))
    
    # Query entities by property
    results = query_entities_by_property("Person", "age", 30)
    print(results)
    
    # Query relationships between entities
    relationships = query_relationships(entity_id1, entity_id2, "Friend")
    print(relationships)


<a id="org041efc7"></a>

## Emacs integration

-   eredis <https://github.com/justinhj/eredis>
    -   dash-0
    -   article <https://justinhj.github.io/2018/11/19/eredis-updated-emacs-redis-api.html>
-   ob-redis <https://repo.or.cz/ob-redis.git>
-   redis <https://github.com/emacs-pe/redis.el>
    -   comint mode for \`redis-cli'.


<a id="orga2c608b"></a>

## TODO Feature Store

-   DoorDash - for large scale feature store for high throughput, batch random reads
-   materialized from the offline stores (S3, Snowflake, and Redshift) dbt + RedShift - to online
    store (Redis). Features are also ingested into the online store from streaming sources (Kafka topics).
-   Feast + Java gRPC server and with Redis as the online store

<https://redis.io/blog/feature-stores-for-real-time-artificial-intelligence-and-machine-learning/>


<a id="org8207c93"></a>

## links

<https://medium.com/@stockholmux/the-node-redis-series-e812085c917f>


<a id="org9e36025"></a>

# TODO Spark, Hadoop, Hive

see <file:///home/u/docsmy_short/modified/bi>


<a id="org3ce47b3"></a>

# REST API Documentation UIs

In 2015, the Swagger standard changed its name to OpenAPI. Your API documentation will be displayed
through the Swagger UI.

-   DapperDox -
-   ReDoc
-   RAML 2 HTML -


<a id="orgf03bc17"></a>

## generate OpenAPI from Flask

-   <https://donofden.com/blog/2020/06/14/Python-Flask-automatically-generated-Swagger-3-0-openapi-Document>
-   <https://apispec.readthedocs.io/en/latest/install.html>


<a id="org8967acb"></a>

## Swagger - развязность

OpenAPI Specification (formerly Swagger Specification) is an API description format for REST APIs.

YAML, being a superset of JSON

Consist off

-   Swagger Editor – browser-based editor where you can write OpenAPI specs.
-   Swagger UI – renders OpenAPI specs as interactive API documentation.
-   Swagger Codegen – generates server stubs and client libraries from an OpenAPI spec.


<a id="orgfac99f6"></a>

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


<a id="org66a219c"></a>

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


<a id="org630c3f7"></a>

### JSON Schema

<https://cwiki.apache.org/confluence/pages/viewpage.action?pageId=75977264>


<a id="orgf9130d0"></a>

## links

-   <https://stackoverflow.com/questions/36634281/list-of-swagger-ui-alternatives>
-   article <https://pronovix.com/blog/free-and-open-source-api-documentation-tools?platform=hootsuite>

