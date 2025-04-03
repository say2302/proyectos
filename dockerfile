# Usar la imagen oficial de Mosquitto
FROM eclipse-mosquitto:latest

# Copiar el archivo de configuración personalizado (opcional)
COPY mosquitto.conf /mosquitto/config/mosquitto.conf

# Exponer los puertos necesarios
EXPOSE 1883 


# Inspeccionar puertos en uso
RUN apt-get update && apt-get install -y net-tools
CMD ["sh", "-c", "netstat -tuln && /usr/sbin/mosquitto -c /mosquitto/config/mosquitto.conf"]

# Iniciar Mosquitto
CMD ["/usr/sbin/mosquitto", "-c", "/mosquitto/config/mosquitto.conf"]
