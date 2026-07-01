from flask import Flask, send_from_directory

from config import PORT
from routes.catalogo_routes import catalogo_bp
from routes.producto_routes import producto_bp
from routes.pedido_routes import pedido_bp
from routes.reporte_routes import reporte_bp
from routes.nosql_routes import nosql_bp
from routes.optimizacion_routes import optimizacion_bp

app = Flask(__name__, static_folder="public", static_url_path="")

app.register_blueprint(catalogo_bp)
app.register_blueprint(producto_bp)
app.register_blueprint(pedido_bp)
app.register_blueprint(reporte_bp)
app.register_blueprint(nosql_bp)
app.register_blueprint(optimizacion_bp)


@app.route("/")
def index():
    return send_from_directory("public", "index.html")


if __name__ == "__main__":
    print(f"\n  Restaurante API + Web (Python/Flask) en  http://localhost:{PORT}\n")
    app.run(host="0.0.0.0", port=PORT, debug=False)
