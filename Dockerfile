FROM        phusion/baseimage:focal-1.0.0alpha1-amd64
RUN         apt update
RUN         apt install -y bash git
RUN         git clone https://github.com/hicommonwealth/edgeware-node.git
RUN         ["cp", "-R", "/edgeware-node/chains", "/usr/local/bin/chains"]
# ADD         ./dist/v3.0.8/edgeware-linux /usr/local/bin/
ADD         https://github.com/hicommonwealth/edgeware-node/releases/download/v3.0.8/edgeware-linux /usr/local/bin/
RUN         ["mv", "/usr/local/bin/edgeware-linux", "/usr/local/bin/edgeware"]
RUN rm -rf /usr/lib/python* && \
    mkdir -p /root/.local/share && \
	ln -s /root/.local/share /data
RUN         ["chmod", "+x", "/usr/local/bin/edgeware"]
WORKDIR     /usr/local/bin
CMD         ["edgeware", "--chain", "edgeware", "--ws-external"]
