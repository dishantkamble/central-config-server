FROM openjdk:19-jdk-alpine
LABEL AUTHOR="dishantk@gmail.com"
COPY target/central-config-server-1.0.0.SNAPSHOT.jar /opt/central-config-server/lib/
ENTRYPOINT ["/usr/bin/java"]
CMD ["-jar", "/opt/central-config-server/lib/central-config-server-1.0.0.SNAPSHOT.jar"]
VOLUME /var/lib/central-application-configurations
EXPOSE 8888