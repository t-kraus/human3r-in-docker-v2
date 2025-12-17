FROM ubuntu:24.04

RUN apt-get update && apt-get install -y adduser sudo unzip git python3-pip python3-venv python3 cmake locales && rm -rf /var/lib/apt/lists/* \
	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
ENV LANG en_US.utf8

#RUN useradd -m docker && echo "docker:docker" | chpasswd && adduser docker sudo
RUN echo 'export PATH="/usr/local/cuda/bin:$PATH"' >> /home/ubuntu/.bashrc
WORKDIR /workspace
USER ubuntu
