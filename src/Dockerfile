FROM hypriot/rpi-node

LABEL maintainer "Aleksandr Bochev <red.avtovo@gmail.com>"

#=============
# Set WORKDIR
#=============
WORKDIR /root

RUN apt-get update && \
    apt-get install -y gammu && \
    npm update npm && \
    npm install -g boxcar-cli
#    npm cache clean && \
#    apt-get remove --purge -y npm && \
#    apt-get autoremove --purge -y && \
#    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
#    apt-get clean

COPY scripts/entry-point.sh /root/
RUN chmod +x /root/entry-point.sh
ENTRYPOINT /root/entry-point.sh