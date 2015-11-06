FROM cap10morgan/busybase:latest
MAINTAINER qy

RUN apk update
RUN apk add --nodeps conntrack-tools libnetfilter_conntrack libnfnetlink libmnl

ENTRYPOINT ["conntrack -D -p udp;conntrack -F"]
CMD []
