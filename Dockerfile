FROM ubuntu

RUN apt-get update -y && apt-get upgrade -y && apt-get install curl vim  docker.io -y



