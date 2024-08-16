FROM debian:bookworm-slim

RUN apt update && apt-get install -y curl vim clangd
RUN curl -fsSL https://raw.githubusercontent.com/arduino/arduino-cli/master/install.sh | sh

ADD . /poc_renesas_uno
WORKDIR /poc_renesas_uno

RUN ./tools/install_lib.sh
RUN ./tools/verify.sh

CMD ["/bin/bash"]
