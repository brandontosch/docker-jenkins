FROM alpine:latest

RUN apk add --update \
#    openssh \
    openjdk8 \
    openssh-client 
#    bash \
#    openssl \
#    ca-certificates \
#    unzip \
#    sshpass

RUN rm -rf /tmp/* /var/cache/apk/*

#RUN mkdir /var/run/sshd
#RUN adduser -D -h /home/jenkins -s /bin/sh -G wheel -u 1000 jenkins 
#RUN echo 'jenkins:jenkins' | chpasswd

RUN echo "jenkins:x:28427589:28427589::/home/jenkins:" >> /etc/passwd \
 && echo "jenkins:!:$(($(date +%s) / 60 / 60 / 24)):0:99999:7:::" >> /etc/shadow \
 && echo "jenkins:x:28427589:" >> /etc/group \
 && mkdir /home/jenkins \
 && chown jenkins: /home/jenkins

#RUN ssh-keygen -f /etc/ssh/ssh_host_rsa_key -N '' -t rsa
#RUN ssh-keygen -f /etc/ssh/ssh_host_dsa_key -N '' -t dsa
#RUN ssh-keygen -f /etc/ssh/ssh_host_ecdsa_key -N '' -t ecdsa
#RUN ssh-keygen -f /etc/ssh/ssh_host_ed25519_key -N '' -t ed25519

#ADD *.crt /usr/local/share/ca-certificates/
#RUN update-ca-certificates

RUN mkdir -p /var/jenkins/tools
RUN chown jenkins /var/jenkins/tools
VOLUME /var/jenkins/tools

EXPOSE 22
CMD ["/usr/sbin/sshd","-D"]
