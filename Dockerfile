FROM resin/rpi-raspbian:jessie-20160511

RUN apt-get update && apt-get -y install xfce4 xinit xserver-xorg iceweasel

COPY devices.conf /usr/share/X11/xorg.conf.d/
COPY xfce4 /root/.config/xfce4/

WORKDIR /usr/src/app
COPY start.sh .

ENV INITSYSTEM=on

CMD ./start.sh
