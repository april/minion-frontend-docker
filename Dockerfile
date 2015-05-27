# Start with Ubuntu 14.04 (LTS), and build a Minion install up from there
FROM ubuntu:14.04
MAINTAINER April King <april@twoevils.org>
ENV MINION_FRONTEND /opt/minion/minion-frontend
EXPOSE 8080
RUN apt-get update && apt-get install -y build-essential \
    curl \
    git \
    libcurl4-openssl-dev \
    python \
    python-dev \
    python-setuptools \
    stunnel

# Install minion-frontend
RUN git clone https://github.com/marumari/minion-frontend.git ${MINION_FRONTEND}
RUN cd ${MINION_FRONTEND}; python setup.py develop

# Connect to the named Docker container
RUN mkdir /etc/minion
COPY frontend.json /etc/minion/frontend.json

# Start it up!
CMD minion-frontend -a 0.0.0.0
