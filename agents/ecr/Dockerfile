FROM jenkins-agent-git

RUN apk add --no-cache \
    py-pip \
    curl \
    libseccomp-dev \
    shadow-uidmap \
    sudo

RUN pip install awscli --upgrade 

RUN export IMG_SHA256="6b7b660fa0a4c4ab10aa2c2d7d586afdbc70cb33644995b0ee0e7f77ddcc2565" \
    && curl -fSL "https://github.com/genuinetools/img/releases/download/v0.5.4/img-linux-amd64" -o "/usr/local/bin/img" \
	&& echo "${IMG_SHA256}  /usr/local/bin/img" | sha256sum -c - \
	&& chmod a+x "/usr/local/bin/img"

RUN ln -s /usr/local/bin/img /usr/local/bin/docker

RUN echo "jenkins ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

CMD ["/usr/sbin/sshd","-D"]
