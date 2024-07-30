# Sección1: Python

Se crea una carpeta llamada Flask y dentro se ejecuta un entorno virtual en python para gestionar dependencias y configuraciones de proyectos de manera aislada.

Windows             |  macOS/Linux
:-------------------------:|:-------------------------:
py -3 -m venv env   |  python3 -m venv env


Para activar el entorno virtual dentro la carpeta Flask

Windows             |  macOS/Linux
:-------------------------:|:-------------------------:
env\Scripts\activate   |  . env/bin/activate



- Luego se instala Flask: **pip install FLask**
- Se instalará automáticamente las dependencias necesarias para ejecutar la aplicación Flask con **pip install -r requirements.txt**
- Por ultimo se ejecuta con el comando **python app.py**  



# Sección2: Docker
- Primero se crea el archivo Dockerfile.



# Sección3: Shell Script
- Crear el archivo deploy.sh
- Lo siguiente es cambiar los permisos del archivo deploy.sh con el comando **chmod +x deploy.sh** y ejecutarlo **./deploy.sh**

# Sección4: Automatización CI/CD
- Crear un archivo .github/workflows/main.yml para automatizar el proceso de construcción y pruebas.
