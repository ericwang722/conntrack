FROM cap10morgan/busybase:latest
MAINTAINER qy

RUN apt update
RUN apt add --nodeps conntrack-tools libnetfilter_conntrack libnfnetlink libmnl

ENTRYPOINT ["conntrack -D -p udp;conntrack -F"]
CMD []
