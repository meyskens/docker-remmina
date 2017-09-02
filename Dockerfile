FROM ubuntu:artful

RUN apt-get update && apt-get install -y software-properties-common

RUN apt-get install -y ubuntu-restricted-extras ttf-mscorefonts-installer

RUN apt-add-repository -y ppa:remmina-ppa-team/remmina-next &&\
    apt-get update &&\
    apt-get install -y remmina remmina-plugin-rdp libfreerdp-plugins-standard

CMD remmina