FROM golang:latest as build
LABEL maintainer="nsheridan@gmail.com"
ARG SRC_DIR=/go/src/github.com/nsheridan/cashier
WORKDIR ${SRC_DIR}
ADD . ${SRC_DIR}
RUN CGO_ENABLED=0 GOOS=linux make install-cashierd

FROM stefanfritsch/baseimage_statup:0.11
LABEL maintainer="stefan.fritsch@stat-up.com"
WORKDIR /cashier
COPY --from=build /go/bin/cashierd /
