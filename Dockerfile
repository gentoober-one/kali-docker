FROM kalilinux/kali-rolling

LABEL maintainer="gentoober@tutanota.com"
LABEL description="Imagem headless do Kali Linux com mirror oficial"

ENV DEBIAN_FRONTEND=noninteractive

SHELL ["/bin/bash", "-c"]

RUN echo "deb http://http.kali.org/kali kali-rolling main non-free contrib" > /etc/apt/sources.list \
    && apt update \
    && apt -y install --no-install-recommends \
        kali-linux-headless \
        net-tools \
        iputils-ping \
        curl \
        wget \
        git \
        openssh-client \
        iproute2 \
        vim \
        bash-completion \
        tmux \
        lsof \
        dnsutils \
        sudo \
    && apt clean \
    && rm -rf /var/lib/apt/lists/*

ARG USER=kali
ARG UID=1000
ARG GID=1000

RUN groupadd -g $GID $USER \
    && useradd -m -u $UID -g $GID -s /bin/bash $USER \
    && echo "$USER ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers \
    && chown -R $USER:$USER /home/$USER

USER $USER
WORKDIR /home/$USER

CMD ["/bin/bash"]

