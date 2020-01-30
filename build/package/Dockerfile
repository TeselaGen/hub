FROM golang:1.13.4-buster AS build-env

ENV CGO_ENABLED=0

RUN /script/build -o /tmp/hub


FROM alpine/git:1.0.7

COPY --from=build-env /tmp/hub /usr/local/bin/hub

ENTRYPOINT /usr/local/bin/hub
