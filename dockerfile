FROM debian:bullseye

# Instalar Mosquitto manualmente
RUN apt-get update && apt-get install -y mosquitto mosquitto-clients



# Exponer puertos
EXPOSE 1883 8883

# Iniciar Mosquitto
CMD ["/usr/sbin/mosquitto", "-c", "/etc/mosquitto/mosquitto.conf"]
