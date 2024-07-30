#Se ocupa la imagen con la versión más nueva de python
FROM python:latest  

#autor del Dockerfile
LABEL autor="Felipe Rojas"   

#Directorio de Trabajo
WORKDIR /app    

#Se copia el archivo en el directorio de trabajo
COPY requirements.txt requirements.txt       

#Se instalan las dependencias de la aplicación
RUN pip install -r requirements.txt        

#Copiando el codigo de la aplicación en el directorio.
COPY . .   

#Se expone la aplicación en el puerto especifico
EXPOSE 8080   

#Se ejecuta la aplicación
CMD ["python", "app.py"]     
















<<<<<<< HEAD
CMD ["python", "app.py"] 
=======
>>>>>>> 8684e5b970c01a9d2583eb74902cad041f29be0f
