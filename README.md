# Sección1: Python

Se crea una carpeta llamada Flask y dentro se ejecuta un entorno virtual en python para gestionar dependencias y configuraciones de proyectos de manera aislada.

Windows             |  macOS/Linux
:-------------------------:|:-------------------------:
py -3 -m venv env   |  python3 -m venv env


Para activar el entorno virtual dentro de la carpeta Flask

Windows             |  macOS/Linux
:-------------------------:|:-------------------------:
env\Scripts\activate   |  . env/bin/activate



- Luego se instala Flask: **pip install FLask**
- Se instalará automáticamente las dependencias necesarias para ejecutar la aplicación Flask con **pip install -r requirements.txt**
- Por ultimo se ejecuta con el comando **python app.py**  



# Sección2: Docker
- Primero se crea el archivo Dockerfile con la finalidad de crear un directorio de trabajo y agregar las diferentes dependencias para dockerizar la aplicación y correrla en un puerto específico.



# Sección3: Shell Script
- Crear el archivo deploy.sh en donde se va a crear una imagen Docker de la aplicación, iniciar un contenedor Docker y	asegurar que el contenedor se inicie automáticamente al reiniciar el servidor.

- Lo siguiente es cambiar los permisos del archivo deploy.sh con el comando **chmod +x deploy.sh** y ejecutarlo **./deploy.sh**

# Sección4: Automatización CI/CD
- Crear un archivo .github/workflows/main.yml para automatizar el proceso de construcción y pruebas.
- Donde se van a extraer el código del repositorio en el directorio raíz para luego instalar las dependencias, construir la imagen a partir de un código fuente, se ejecuta el contenedor basado en la imagen a trabajar en el puerto específico y desplegar la imagen hacia dockerhub con su etiqueta.
  
# Información Relevante
-Todos los archivos están comentados.
