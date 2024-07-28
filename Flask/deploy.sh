#!/bin/bash

# Crear una imagen Docker de la aplicación
#docker build -t dockerflask /c/Users/felip/flask

# Iniciar un contenedor Docker con la aplicación
#docker run -d -p 5000:5000 dockerflask

# Asegurar que el contenedor se inicie automáticamente al reiniciar el servidor
#sudo systemctl enable docker
#sudo systemctl start docker
#docker run -d --name dockerflask --restart unless-stopped -p 5000:5000 dockerflask


# Nombre de la imagen y del contenedor
IMAGE_NAME="dockerflask"
CONTAINER_NAME="Contenedor_dockerflask"

# Paso 1: Crear la imagen Docker de la aplicación
echo "Construyendo la imagen Docker..."
docker build -t $IMAGE_NAME /c/Users/felip/flask

# Paso 2: Verificar si el contenedor ya está en ejecución y detenerlo
if [ "$(docker ps -q -f name=$CONTAINER_NAME)" ]; then
    echo "Deteniendo el contenedor existente..."
    docker stop $CONTAINER_NAME
fi

# Paso 3: Verificar si el contenedor existe y eliminarlo
if [ "$(docker ps -aq -f name=$CONTAINER_NAME)" ]; then
    echo "Eliminando el contenedor existente..."
    docker rm $CONTAINER_NAME
fi

# Paso 4: Iniciar un nuevo contenedor con la aplicación
echo "Iniciando el contenedor..."
docker run -d --name $CONTAINER_NAME --restart unless-stopped -p 8080:8080 $IMAGE_NAME

# Paso 5: Confirmar que el contenedor está en ejecución
if [ "$(docker ps -q -f name=$CONTAINER_NAME)" ]; then
    echo "El contenedor se ha iniciado correctamente y está configurado para reiniciarse automáticamente."
else
    echo "Hubo un error al iniciar el contenedor."
fi
