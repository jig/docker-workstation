FROM debian:jessie
MAINTAINER Jordi Íñigo

ENV TERM linux
RUN apt-get -y update

# Download general prerequisites
RUN apt-get -y install emacs24-nox byobu curl wget 
RUN byobu-ctrl-a emacs
ADD tmux /.byobu/.tmux

VOLUME /home/me
WORKDIR /home/me

CMD ["/bin/bash"]
