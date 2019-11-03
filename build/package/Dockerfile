FROM golang:1.13.4-buster AS build-env

COPY . /src

WORKDIR /src

ENV CGO_ENABLED=0

RUN /src/script/build -o /tmp/hub


FROM alpine/git:1.0.7

COPY --from=build-env /tmp/hub /usr/local/bin/hub

ENTRYPOINT /usr/local/bin/hub
