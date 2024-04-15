# Use a imagem oficial do Mosquitto como base
FROM eclipse-mosquitto:2.0.14

COPY mosquitto.conf /mosquitto/config/mosquitto.conf

EXPOSE 1883 9001

CMD ["/usr/sbin/mosquitto", "-c", "/mosquitto/config/mosquitto.conf"]