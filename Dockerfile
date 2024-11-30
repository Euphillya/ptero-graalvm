# Utiliser l'image GraalVM 21
FROM        --platform=$TARGETOS/$TARGETARCH ghcr.io/graalvm/jdk-community:21

LABEL       author="Euphyllia Bierque" maintainer="<bierque.euphyllia@gmail.com>"

RUN        apt-get update && apt-get install -y curl ca-certificates openssl git tar bash sqlite fontconfig && rm -rf /var/lib/apt/lists/*

USER        container
ENV         USER=container HOME=/home/container
WORKDIR     /home/container

WORKDIR     /home/container

CMD         [ "/bin/bash", "/entrypoint.sh" ]
