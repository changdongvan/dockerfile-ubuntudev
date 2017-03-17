from ubuntu:16.04

copy sources.list /etc/apt/sources.list
copy pip.conf /etc/pip.conf

run apt-get update && apt-get install -y \
    vim \
    python3 \
    python3-dev \
    python3-pip \
    git \
    openjdk-9-jre \
    && ln -s /usr/bin/python3 /usr/bin/python \
    && pip3 install --upgrade pip \
    && apt-get remove -y python3-pip

#    && rm -rf /var/lib/apt/lists/*

VOLUME ["/app"]
