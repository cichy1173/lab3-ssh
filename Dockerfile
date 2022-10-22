# syntax=docker/dockerfile:1.2

FROM alpine

RUN apk add --no-cache openssh-client git

RUN mkdir -p -m 0600 ~/.ssh && ssh-keyscan github.com >> ~/.ssh/known_hosts

RUN mkdir ~/Simpleweb
RUN --mount=type=ssh git clone git@github.com:cichy1173/Simpleweb_lab.git ~/Simpleweb/
