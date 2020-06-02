FROM openjdk:8

ARG spigot_version
ENV SPIGOT_VERSION $spigot_version

RUN mkdir /buildtools

RUN wget -q -P /buildtools https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar

WORKDIR /buildtools
RUN java -Xmx1024M -jar BuildTools.jar --rev ${spigot_version}

VOLUME /data
WORKDIR /data

EXPOSE 25565 25575 8123

COPY eula.txt /data
COPY init.sh /
RUN cp /buildtools/spigot-${SPIGOT_VERSION}.jar /spigot.jar

ENTRYPOINT ["/init.sh"]
