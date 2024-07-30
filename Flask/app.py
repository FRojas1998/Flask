from flask import Flask , jsonify
import psutil

app = Flask(__name__)


@app.route('/')
def get_metrics():
    cpu_percent = psutil.cpu_percent()
    ram_percent = psutil.virtual_memory().percent

    metrics = {
        'CPU del Sistema en (%)': cpu_percent,
        'RAM del Sistema en (%)': ram_percent
    }

    return jsonify(metrics)

if __name__ == '__main__':
    
    app.run(host='0.0.0.0', port=8080, debug=True)

#if __name__ == '__main__':
    #app.run(debug=True)
#    app.run(debug=True)
