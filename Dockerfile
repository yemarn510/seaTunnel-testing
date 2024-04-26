FROM openjdk:8

ENV SEATUNNEL_VERSION="2.3.3"
COPY ./apache-seatunnel-${SEATUNNEL_VERSION} /opt/apache-seatunnel-${SEATUNNEL_VERSION}
WORKDIR /opt
RUN mv apache-seatunnel-${SEATUNNEL_VERSION} seatunnel
WORKDIR /opt/seatunnel
ENTRYPOINT ["sh","-c"," bin/seatunnel.sh --config $config  -e local"]