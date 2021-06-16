FROM pataquets/ubuntu:xenial

RUN \
  apt-get update && \
  DEBIAN_FRONTEND=noninteractive \
    apt-get install -y \
      libgl1-mesa-glx \
      mame \
      mame-extra \
      mame-tools \
      mesa-utils \
  && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/*

ENTRYPOINT [ "/usr/games/mame" ]
