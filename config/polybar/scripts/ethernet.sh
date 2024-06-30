#!/bin/sh

# Obtener la interfaz de red Ethernet activa
interface=$(ip link show | grep -i 'broadcast' | grep -v 'docker' | grep -v 'lxcbr0' | awk -F ': ' '{print $2}')

# Verificar si se encontró una interfaz válida
if [ -z "$interface" ]; then
    echo "No se pudo encontrar una interfaz de red activa."
    exit 1
fi

# Obtener la dirección IP de la interfaz seleccionada
ether=$(ip a s $interface | awk '/inet / {print $2}' | cut -d '/' -f 1)

# Verificar si se encontró una dirección IP válida
if [ -z "$ether" ]; then
    echo "No se pudo encontrar una dirección IP para la interfaz $interface."
    exit 1
fi

# Mostrar la dirección IP en la salida estándar (para verificar)
echo "111.222.333.444" # Comment out this line if you want to display your IP in Polybar

#echo "$ether" # Uncomment this line if you want to display your IP in Polybar
