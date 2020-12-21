FROM debian:9
WORKDIR /opt/coin
RUN apt update && apt install -y wget unzip
RUN wget https://github.com/Conflux-Chain/conflux-rust/releases/download/v1.1.0/conflux_linux_v1.1.0.zip -O tmp.zip && \
  unzip tmp.zip && mv run/conflux . && rm -rf tmp.zip run/
COPY ./tethys.toml /opt/coin

# cleanup
RUN apt remove -y unzip && apt autoremove -y && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["/opt/coin/conflux"]
CMD ["--config", "/opt/coin/tethys.toml", "--full"]
