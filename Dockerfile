FROM ubuntu

RUN apt-get update && apt-get install -y\
                            apt-transport-https \
                            ca-certificates \
                            curl \
                            gnupg-agent \
                            software-properties-common \
                            gnupg2 \
    && curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -\
    &&add-apt-repository \
        "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
        $(lsb_release -cs) \
        stable"\
    && curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -\
    && echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | tee -a /etc/apt/sources.list.d/kubernetes.list \
    && apt-get update \
    && apt-get install -y kubelet kubeadm kubectl\
    && apt-mark hold kubelet kubeadm kubectl

CMD [ "tail", "-f", "/dev/null"]


