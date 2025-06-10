FROM ubuntu:noble

ARG spigot_version
ENV SPIGOT_VERSION $spigot_version

RUN apt update
RUN apt upgrade -y
RUN apt install -y wget git openjdk-21-jdk
RUN mkdir /buildtools

RUN wget -q -P /buildtools https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar

WORKDIR /buildtools
RUN java -jar BuildTools.jar --rev ${spigot_version}

VOLUME /data
WORKDIR /data

EXPOSE 25565 25575 8123

COPY eula.txt /data
COPY init.sh /
RUN cp /buildtools/spigot-${SPIGOT_VERSION}.jar /spigot.jar

ENTRYPOINT ["/init.sh"]
