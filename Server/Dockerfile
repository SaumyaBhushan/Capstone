FROM openjdk:8-jdk-slim
LABEL author = "Saumya"
COPY Server.java .
RUN javac Server.java

FROM openjdk:8u292-jre-slim-buster
WORKDIR /usr/src/app
COPY --from=0 /Server.class .
VOLUME /severdata
CMD ["java","Server"]