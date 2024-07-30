#!/bin/bash

# Nombre de la imagen y del contenedor
IMAGE_NAME="dockerflask"
CONTAINER_NAME="contenedor_dockerflask"

# Crear imagen Docker de la aplicación
echo "Construyendo la imagen Docker..."
docker build -t $IMAGE_NAME /c/Users/felip/gitFlask/Flask

# Verificar si el contenedor ya está en ejecución y detenerlo
if [ "$(docker ps -q -f name=$CONTAINER_NAME)" ]; then
    echo "Detener contenedor existente..."
    docker stop $CONTAINER_NAME
fi

# Verificar si el contenedor existe y eliminarlo
if [ "$(docker ps -aq -f name=$CONTAINER_NAME)" ]; then
    echo "Eliminar contenedor existente..."
    docker rm $CONTAINER_NAME
fi

# Iniciar nuevo contenedor con la aplicación
echo "Iniciando el contenedor..."
docker run -d --name $CONTAINER_NAME --restart unless-stopped -p 8080:8080 $IMAGE_NAME

# Confirmar que el contenedor está en ejecución
if [ "$(docker ps -q -f name=$CONTAINER_NAME)" ]; then
    echo "El contenedor se inicia y se reinicia automáticamente."
else
    echo "Hubo un error al iniciar el contenedor."
fi
