FROM stefanfritsch/baseimage_statup:0.11
LABEL maintainer="stefan.fritsch@stat-up.com"

COPY --from=nsheridan/cashier /cashierd /usr/bin/cashierd

RUN mkdir -p /etc/service/cashier
COPY run /etc/service/cashier/run
RUN chmod 0755 /etc/service/cashier/run
