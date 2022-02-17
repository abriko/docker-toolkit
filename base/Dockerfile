FROM alpine:3

ENV SHELL=/bin/bash

RUN  set -ex \
      && apk add --no-cache --update \
      # Basic shell stuff
      bash \
      bash-completion \
      readline \
      grep \
      gawk \
      tree \
      # Interacting with the networks
      curl \
      wget \
      jq \
      drill \
      nmap \
      netcat-openbsd \
      socat \
      mtr \
      bind-tools \
      # Monitoring / Shell tools
      htop \
      mc \
      # Development tools
      vim \
      tmux \
      git \
      tig \
      # Scripting languages
      python3 \
      # Container
      docker-cli \
  && curl -L -o /usr/bin/kubectl \
    "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" \
  && rm -rf /tmp/* /var/tmp/* /var/cache/apk/* /var/cache/distfiles/*


COPY dotfiles/* /root/
CMD ["bash"]
