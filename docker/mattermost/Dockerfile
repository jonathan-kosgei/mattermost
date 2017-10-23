FROM ubuntu:16.04

ENV VERSION 4.3.1

RUN apt-get update &&\
    apt-get install -y \
    wget &&\
    wget https://releases.mattermost.com/${VERSION}/mattermost-${VERSION}-linux-amd64.tar.gz &&\
    tar -xvzf mattermost*.gz &&\
    mv mattermost /opt &&\
    mkdir /opt/mattermost/data &&\
    useradd --system --user-group mattermost &&\
    chown -R mattermost:mattermost /opt/mattermost &&\
    chmod -R g+w /opt/mattermost

ADD config.json /opt/mattermost/config/config.json

WORKDIR /opt/mattermost/bin

USER mattermost

ENTRYPOINT /opt/mattermost/bin/platform