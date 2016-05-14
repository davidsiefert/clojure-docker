FROM ubuntu:15.04

RUN apt-get update && apt-get install -y tar curl openjdk-8-jdk emacs24-nox && java -version
RUN curl -Lv 'https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein' -o /usr/local/bin/lein && chmod +x /usr/local/bin/lein
RUN useradd -m --shell /bin/bash dev

USER dev
WORKDIR /home/dev
RUN lein -v

CMD /bin/bash