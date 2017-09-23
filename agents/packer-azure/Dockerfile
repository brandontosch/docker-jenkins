FROM jenkins-slave-git

RUN apk add --update \ 
    curl \
    gcc \
    python \
    openssl-dev \
    libffi-dev \
    python-dev \
    musl-dev \
    make
    
RUN rm -rf /tmp/* /var/cache/apk/*

ADD installazurecli.sh .
RUN chmod +x installazurecli.sh
RUN ./installazurecli.sh

RUN ln -sf /var/jenkins/tools/packer /usr/bin/packer

CMD ["/usr/sbin/sshd","-D"]
