import socket
import pickle
import tkinter as tk
from tkinter import ttk, messagebox
import mysql.connector
from datetime import datetime


# Configurar el cliente de sockets
host = socket.gethostname()
port = 5510
cliente = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
cliente.connect((host, port))


#Función para recibir y mostrar los datos
def recibir_datos():
    datos = cliente.recv(4096)
    datos = pickle.loads(datos)

    for fila in datos:
        lista.insert(tk.END, fila)


# Crear la ventana de Tkinter
ventana = tk.Tk()
ventana.title("Montos")
ventana.geometry("1000x700")

# Crear una lista para mostrar los datos
lista = tk.Listbox(ventana, width=150, height=30)
lista.pack()

#Crear un botón para recibir los datos
boton_recibir = tk.Button(ventana, text="Recibir Datos", command=recibir_datos)
boton_recibir.pack()

def guardar_pago():
    print("pago guardado")

# Botón para guardar el pago
boton_pagar = tk.Button(ventana, text="Guardar Pago", command=guardar_pago)
boton_pagar.pack(pady=10)

# Iniciar la aplicación
ventana.mainloop()