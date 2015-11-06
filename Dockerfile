FROM cap10morgan/busybase:latest
MAINTAINER qy

RUN opkg-install --nodeps conntrack-tools libnetfilter-conntrack libnfnetlink libmnl

ENTRYPOINT ["conntrack -D -p udp;conntrack -F"]
CMD []
