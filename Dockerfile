FROM pataquets/ubuntu:trusty

RUN \
  echo "deb http://archive.ubuntu.com/ubuntu trusty multiverse" | \
    tee /etc/apt/sources.list.d/multiverse.list && \
  apt-get update && \
  DEBIAN_FRONTEND=noninteractive \
    apt-get install -y \
      mame \
  && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/*
