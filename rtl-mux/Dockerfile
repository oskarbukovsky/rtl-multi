FROM debian:bookworm-slim

# Install dependencies and build rtlsdr_mux
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
      build-essential git libevent-dev libusb-1.0-0-dev ca-certificates && \
    update-ca-certificates && \
    rm -rf /var/lib/apt/lists/* && \
    git clone https://github.com/d03n3rfr1tz3/rtlmux.git /opt/rtlmux && \
    cd /opt/rtlmux && \
    make

# Copy entrypoint
COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
