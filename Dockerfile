FROM ubuntu:22.04

# Instalar dependencias básicas
RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    curl \
    wget \
    nano \
    net-tools \
    tmate \
    openssh-client \
    && rm -rf /var/lib/apt/lists/*

# Exponer puerto web
EXPOSE 8080

# Levantar un servidor web simple
CMD python3 -m http.server 8080
