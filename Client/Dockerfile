FROM openjdk:8-jdk-slim
LABEL author = "Saumya"
COPY Client.java .
RUN javac Client.java

FROM openjdk:8u292-jre-slim-buster
WORKDIR /usr/src/app
ENV ip=172.60.0.12
COPY --from=0 /Client.class .
VOLUME /clientdata
CMD  java Client ${ip}
