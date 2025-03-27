FROM ubuntu
WORKDIR /app
RUN apt update && apt install -y fortune-mod cowsay netcat-openbsd
ENV PATH="/usr/games:${PATH}"
COPY wisecow.sh .
EXPOSE 4499
RUN chmod +x wisecow.sh
CMD ["./wisecow.sh"]