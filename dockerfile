# Usar la imagen oficial de Mosquitto
FROM eclipse-mosquitto:latest



# Exponer los puertos necesarios
EXPOSE 1883 8883

# Iniciar Mosquitto
CMD ["/usr/sbin/mosquitto", "-c", "/mosquitto/config/mosquitto.conf"]
