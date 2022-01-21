#   author: thibault@desaules.me
#   contributor: none
#   licence: Apache License, Version 2.0 (https://opensource.org/licenses/Apache-2.0)

FROM alpine:3.15

# info: copy base scripts to the created folder
COPY install.sh /root/install.sh
COPY run.sh /root/run.sh

# info: run script to prepare env
RUN /bin/ash /root/install.sh

# info: command to run
CMD [ "/bin/ash", "/root/run.sh" ]
