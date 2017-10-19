FROM jenkins-agent-git

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

ADD installazurecli_alpine.sh .
RUN chmod +x installazurecli_alpine.sh
RUN ./installazurecli_alpine.sh

CMD ["/usr/sbin/sshd","-D"]
