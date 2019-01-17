FROM stefanfritsch/baseimage_statup:0.11
LABEL maintainer="stefan.fritsch@stat-up.com"

RUN mkdir -p /etc/service/cashier
COPY --from=nsheridan/cashier /cashierd /etc/service/cashier/cashierd
