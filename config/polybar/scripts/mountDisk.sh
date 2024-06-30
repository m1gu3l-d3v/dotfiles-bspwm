#!/bin/bash
mkdir -p /media/$(whoami)

# Obtener el nombre de usuario
username=$(whoami)

# Nombre del disco para montar
disco="sda"

disk_used=$(df / | awk 'NR==2 {gsub("^/dev/", "", $1); print substr($1, 1, length($1)-2)}')

# Guardar los nombres de los discos en un arreglo
mapfile -t disk_names < <(lsblk -o NAME,TYPE,MOUNTPOINT | awk -v disk_used="$disk_used" '$2 == "disk" && !($1 "p" NR) ~ "^(|/|/home)" && $1 != disk_used {print $1}')

# Imprimir cada resultado en una línea separada y crear el menú
echo "Seleccione un disco para montar (Control + c para cancelar):"
for i in "${!disk_names[@]}"; do
    echo "$((i+1)). ${disk_names[i]}"
done

# Leer la selección del usuario
read -rp "Elija un disco: " choice

# Verificar si la entrada es un número entero
if [[ "$choice" =~ ^[0-9]+$ ]]; then
    echo "El disco es un número entero."

    # Obtener el disco seleccionado
    index=$((choice - 1))

    # Verificar si el índice está dentro del rango válido
    if (( index >= 0 && index < ${#disk_names[@]} )); then
        # Asignar el disco seleccionado
        disco="${disk_names[index]}"

        # Debugging: Imprimir el disco seleccionado
        echo "El disco seleccionado es: $disco"
    else
        echo "Error: El número ingresado está fuera del rango."
    fi
else
    echo "El disco es un string."

    # Obtener el disco seleccionado
    disco="$choice"

    # Debugging: Imprimir el disco seleccionado
    echo "El disco seleccionado es: $disco"
fi

# Obtener la primera partición más grande del disco dado
partition=$(lsblk -o NAME,SIZE -nr /dev/${disco} | grep -v part | sort -k 2 -h -r | awk 'NR==2 {print $1}')

# Montar la partición más grande si no está montada
if ! grep -qs "/media/${username}" /proc/mounts; then
    sudo mount /dev/${partition} "/media/${username}/"
    echo "La partición más grande (${partition}) ha sido montada en /media/${username}/."
else
    echo "La partición más grande (${partition}) ya está montada en /media/${username}/."
fi
sleep 3
