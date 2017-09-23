FROM jenkins-slave-alpine

RUN apk add --update \
    git

RUN rm -rf /tmp/* /var/cache/apk/*

CMD ["/usr/sbin/sshd","-D"]
