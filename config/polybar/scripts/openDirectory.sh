#!/bin/bash

# Directorio de búsqueda
search_directory="$HOME"

# Término de búsqueda proporcionado como argumento
search_term="$1"

# Buscar directorios no ocultos en el directorio de inicio del usuario
search_results=$(find "$search_directory" -maxdepth 1 -not -path '*/\.*' ! -path "$HOME" -type d -iname "*$search_term*" -printf "%f\n")

# Mostrar resultados en Rofi
selected_item=$(echo "$search_results" | rofi -dmenu -i -p "Buscar directorios en $search_directory: ")

# Verificar si se seleccionó un elemento y mostrarlo
if [ -n "$selected_item" ]; then
    full_path=$(find "$search_directory" -maxdepth 1 -not -path '*/\.*' ! -path "$HOME" -type d -iname "$selected_item")
    echo "$full_path"
    # Abrir Thunar en el directorio seleccionado
    thunar "$full_path" &
fi
