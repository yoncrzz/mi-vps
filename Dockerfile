FROM ubuntu:22.04

# Instalar dependencias
RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    curl \
    wget \
    git \
    nano \
    unzip \
    tmate \
    net-tools \
    openssh-client \
    && rm -rf /var/lib/apt/lists/*

# Instalar Railway CLI
RUN curl -fsSL https://railway.app/install.sh | sh

# Agregar Railway CLI al PATH
ENV PATH="/root/.railway/bin:${PATH}"

# Exponer puerto web
EXPOSE 8080

# Comando por defecto: servidor web
CMD ["python3", "-m", "http.server", "8080"]
