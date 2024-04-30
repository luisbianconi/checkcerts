# Usar a imagem base busybox
FROM alpine:latest

# Configurar a pasta de trabalho
WORKDIR /usr/src/app

# Install curl and other necessary utilities
RUN apk update && \
    apk add --no-cache curl

# Copiar o script para o container
COPY checkcerts.sh .
COPY sites.txt .

# Dar permissão de execução para o script
RUN chmod +x checkcerts.sh

# Comando para executar o script ao iniciar o container
CMD ["sh", "/usr/src/app/checkcerts.sh"]

