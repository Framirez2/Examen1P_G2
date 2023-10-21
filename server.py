import mysql.connector
import socket
import pickle

# Establecer una conexión a la base de datos en el servidor
conexion_bd = mysql.connector.connect(
    host='localhost',
    user='root',
    password='',
    database='pagos'
)


def obtener_datos_tabla():
    cursor = conexion_bd.cursor()
    consulta = "SELECT * FROM pagos_clientes"+" INNER JOIN clientes ON pagos_clientes.id_cliente = clientes.id_cliente"
    cursor.execute(consulta)
    resultados = cursor.fetchall()
    return resultados


# Configurar el servidor de sockets
host = socket.gethostname() #obetner el nombre del host
port = 5510 #asignarle un numero de puerto
servidor = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
servidor.bind((host, port))
servidor.listen(5)

print("Esperando conexiones...")

while True:
    cliente, direccion = servidor.accept()
    print(f"Conexión entrante desde {direccion}")

    # Obtener los datos de la tabla
    datos = obtener_datos_tabla()

    # Enviar los datos al cliente
    cliente.send(pickle.dumps(datos))

    cliente.close()
