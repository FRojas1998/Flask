FROM python:latest  

LABEL autor="Felipe Rojas"   

WORKDIR /app    

COPY requirements.txt requirements.txt       

RUN pip install -r requirements.txt        

COPY . .   

#EXPOSE 5000
EXPOSE 8080   

CMD ["python", "app.py"]     
