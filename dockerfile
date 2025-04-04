# Usar la imagen oficial de Mosquitto
FROM eclipse-mosquitto:latest
# Instalar iptables
RUN apt-get install -y iptables

# Bloquear conexiones locales al puerto 1883
RUN iptables -A INPUT -p tcp --dport 1883 -s 127.0.0.1 -j DROP

# Exponer los puertos necesarios
EXPOSE 1883 8883

# Iniciar Mosquitto
CMD ["/usr/sbin/mosquitto", "-c", "/mosquitto/config/mosquitto.conf"]
