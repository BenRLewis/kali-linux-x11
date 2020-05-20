FROM kalilinux/kali-rolling
RUN apt-get update
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get install -y xterm synapse kali-linux-default kali-desktop-lxde
ENV DISPLAY=:1
COPY startup.sh /startup.sh
RUN chmod +x  /startup.sh

CMD /startup.sh
