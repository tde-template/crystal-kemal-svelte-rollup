#   author: thibault@desaules.me
#   contributor: none
#   licence: Apache License, Version 2.0 (https://opensource.org/licenses/Apache-2.0)

# info: The FROM instruction initializes a new build stage and sets the Base Image for subsequent instructions
FROM docker.io/alpine:latest

# info: The EXPOSE instruction informs Docker that the container listens on the specified network ports at runtime
EXPOSE 5000/tcp

# info: The RUN instruction will execute any commands in a new layer on top of the current image and commit the results
RUN echo "@edge http://nl.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories
RUN echo "@edgecommunity http://nl.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories
RUN echo "@testing http://nl.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories

RUN apk update
RUN apk upgrade
RUN apk add --no-cache curl bash icu-libs krb5-libs libgcc libintl libssl1.1 libstdc++ zlib jq zlib-dev openssl-dev musl-dev libc-dev zsh starship
RUN apk add --no-cache nodejs npm
RUN apk add --no-cache crystal shards
RUN apk --purge del

RUN echo 'eval "$(starship init zsh)"' > /root/.zshrc

# info: The main purpose of a CMD is to provide defaults for an executing container
CMD [ "/bin/ash", "sleep infinity" ]
