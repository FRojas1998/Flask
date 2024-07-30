#biblioteca flask y para crear una respuesta json
from flask import Flask , jsonify

#biblioteca para mostrar información del sistema
import psutil

app = Flask(__name__)

#ruta para la aplicación y función que obtiene las métricas
@app.route('/')
def get_metrics():
    cpu_percent = psutil.cpu_percent()
    ram_percent = psutil.virtual_memory().percent

    metrics = {
        'CPU del Sistema en (%)': cpu_percent,
        'RAM del Sistema en (%)': ram_percent
    }

    return jsonify(metrics)

#ejecución de la aplicación
if __name__ == '__main__':
    #app.run(debug=True)
    app.run(debug=True)
