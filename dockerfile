# Usar la imagen oficial de Mosquitto
FROM eclipse-mosquitto:latest

# Copiar el archivo de configuración personalizado (opcional)
COPY mosquitto.conf /mosquitto/config/mosquitto.conf

# Exponer los puertos necesarios
EXPOSE 1883 8883

# Iniciar Mosquitto
CMD ["/usr/sbin/mosquitto", "-c", "/mosquitto/config/mosquitto.conf"]
