version: "3"
services:
  mosquitto:
    image: eclipse-mosquitto:latest
    container_name: mosquitto
    environment:
      - TZ=Europe/Madrid    
    volumes:
      - /home/pi/volumes/mosquitto/config:/mosquitto/config
      - /home/pi/volumes/mosquitto/data:/mosquitto/data
      - /home/pi/volumes/mosquitto/log:/mosquitto/log
    ports:
      - 1883:1883
      - 9001:9001
    restart: unless-stopped
