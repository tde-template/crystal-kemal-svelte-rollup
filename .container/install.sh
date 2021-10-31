#!/bin/ash

#     author: thibault@desaules.me
#     contributor: none
#     licence: Apache License, Version 2.0 (https://opensource.org/licenses/Apache-2.0)

# info: add edge repositories
echo "@edge http://nl.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories
echo "@edgecommunity http://nl.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories
echo "@testing http://nl.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories

# info: update and install mandatory package
apk update
apk upgrade
apk add --no-cache curl bash icu-libs krb5-libs libgcc libintl libssl1.1 libstdc++ zlib jq zlib-dev openssl-dev musl-dev libc-dev
apk add --no-cache nodejs npm
apk add --no-cache crystal shards
apk --purge del
