FROM ubuntu:22.04
RUN apt update
RUN apt install -y xinput usbutils
RUN rm -rf /var/lib/apt/lists/*
COPY entrypoint.sh /root/entrypoint.sh
WORKDIR /root
ENTRYPOINT [ "./entrypoint.sh" ]