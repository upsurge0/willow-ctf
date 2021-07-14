FROM debian:buster-slim

RUN apt-get update && apt-get install socat -y

RUN mkdir /exit
COPY start.sh /exit/start.sh
COPY run.sh /exit/run.sh
COPY flag.txt /exit/flag.txt

RUN useradd user -d /exit
RUN chown user:user /exit/flag.txt

EXPOSE 2112

ENTRYPOINT ["bash","/exit/start.sh"]
