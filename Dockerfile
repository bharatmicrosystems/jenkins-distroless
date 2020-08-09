ARG version
FROM ubuntu AS build-env
ARG version
RUN echo $version
RUN cd /tmp && apt update -y && apt install -y wget curl && wget http://mirrors.jenkins.io/war-stable/${version}/jenkins.war

FROM gcr.io/distroless/java:8
ARG user=jenkins
ARG group=jenkins
ARG uid=1000
ARG gid=1000
ARG http_port=8080
ARG agent_port=50000
WORKDIR /var/lib/jenkins
ENV JENKINS_HOME=/var/lib/jenkins
VOLUME /var/lib/jenkins
# for main web interface:
EXPOSE ${http_port}
# will be used by attached slave agents:
EXPOSE ${agent_port}
COPY --from=build-env /tmp/jenkins.war /app/jenkins.war
WORKDIR /app
CMD ["jenkins.war"]
