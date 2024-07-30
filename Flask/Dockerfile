FROM python:latest  #Se ocupa la imagen con la versión más nueva de python

LABEL autor="Felipe Rojas"   #autor del Dockerfile

WORKDIR /app    #Directorio de Trabajo

COPY requirements.txt requirements.txt       #Se copia el archivo en el directorio de trabajo

RUN pip install -r requirements.txt        #Se instalan las dependencias de la aplicación

COPY . .   #Copiando el codigo de la aplicación en el directorio.

#EXPOSE 5000
EXPOSE 8080   #Se expone la aplicación en el puerto especifico

CMD ["python", "app.py"]     #Se ejecuta la aplicación
