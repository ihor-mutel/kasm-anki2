FROM kasmweb/terminal:1.12.0-rolling

USER root

RUN apt-get update \
    && apt-get install -y sudo \
    && echo 'kasm-user ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers \
    && rm -rf /var/lib/apt/list/*

RUN apt install anki -y

USER 1000

#ENTRYPOINT /usr/bin/anki