# BSPWM

Este repositorio contiene mi configuración personalizada para el gestor de ventanas BSPWM. Incluye plantillas para varios esquemas de colores que generan temas con integración a:

- Bspwm
- Polybar
- Dunst
- Alacritty
- Rofi
- Ly Display Manager
- GTK [(oomox - themix-gui)](https://github.com/themix-project/themix-gui)
- QT [(oomox - themix-gui)](https://github.com/themix-project/themix-gui)

## Instalación

Para instalar y configurar BSPWM, sigue estos pasos:
##### Nota: [installer.sh](https://github.com/m1gu3l-d3v/dotfiles/blob/main/installer.sh) solo funcionara en **Linux Debian** y sus distribuciones derivadas, pero usted puede copiar los archivos de puntos en sus ubicaciones respectivas, el installer.sh deberia funcionar si usted comenta las partes que impliquen el uso de gestor de paquetes(sudo apt install) y hacerlo con su distro respectiva.

1. Clona este repositorio en tu directorio home:

    ```bash
    cd ~/ && git clone https://github.com/m1gu3l-d3v/dotfiles && cd ~/dotfiles
    ```

2. Otorga permisos de ejecución al script de instalación:

    ```bash
    chmod +x installer.sh
    ```

3. Ejecuta el script de instalación:

    ```bash
    ./installer.sh
    ```
4. Utilidades basicas (100% opcionales):
   ```bash
   sudo apt install xfce4-settings thunar-archive-plugin scrot tty-clock btop neofetch neovim wget geany ristretto mpv libreoffice libreoffice-gtk3
   ```

## Temas Disponibles

Puedes elegir entre los siguientes temas ejecutando cualquiera de las siguientes líneas en la terminal:

- Catppuccin Frappe
  ```bash
  colorscheme CatppuccinFrappe
  ```
  ![](https://github.com/m1gu3l-d3v/dotfiles/blob/main/screnshots/CatppuccinFrappe1.png)
  ![](https://github.com/m1gu3l-d3v/dotfiles/blob/main/screnshots/CatppuccinFrappe2.png)
  ![](https://github.com/m1gu3l-d3v/dotfiles/blob/main/screnshots/CatppuccinFrappe3.png))

- Catppuccin Latte
  ```bash
  colorscheme CatppuccinLatte
  ```
  ![](https://github.com/m1gu3l-d3v/dotfiles/blob/main/screnshots/CatppuccinLatte1.png))
  ![](https://github.com/m1gu3l-d3v/dotfiles/blob/main/screnshots/CatppuccinLatte2.png))
  ![](https://github.com/m1gu3l-d3v/dotfiles/blob/main/screnshots/CatppuccinLatte3.png))

- Catppuccin Machiato
  ```bash
  colorscheme CatppuccinMachiato
  ```
  ![](https://github.com/m1gu3l-d3v/dotfiles/blob/main/screnshots/CatppuccinMachiato1.png))
  ![](https://github.com/m1gu3l-d3v/dotfiles/blob/main/screnshots/CatppuccinMachiato2.png))
  ![](https://github.com/m1gu3l-d3v/dotfiles/blob/main/screnshots/CatppuccinMachiato3.png))

- Catppuccin Mocha
  ```bash
  colorscheme CatppuccinMocha
  ```
  ![](https://github.com/m1gu3l-d3v/dotfiles/blob/main/screnshots/CatppuccinMocha1.png))
  ![](https://github.com/m1gu3l-d3v/dotfiles/blob/main/screnshots/CatppuccinMocha2.png))
  ![](https://github.com/m1gu3l-d3v/dotfiles/blob/main/screnshots/CatppuccinMocha3.png))

- Dracula
  ```bash
  colorscheme Dracula
  ```
  ![](https://github.com/m1gu3l-d3v/dotfiles/blob/main/screnshots/Dracula1.png))
  ![](https://github.com/m1gu3l-d3v/dotfiles/blob/main/screnshots/Dracula2.png))
  ![](https://github.com/m1gu3l-d3v/dotfiles/blob/main/screnshots/Dracula3.png))

- Everblush
  ```bash
  colorscheme Everblush
  ```
  ![](https://github.com/m1gu3l-d3v/dotfiles/blob/main/screnshots/Everblush1.png))
  ![](https://github.com/m1gu3l-d3v/dotfiles/blob/main/screnshots/Everblush2.png))
  ![](https://github.com/m1gu3l-d3v/dotfiles/blob/main/screnshots/Everblush3.png))

- Everforest
  ```bash
  colorscheme Everforest
  ```
  ![](https://github.com/m1gu3l-d3v/dotfiles/blob/main/screnshots/Everforest1.png))
  ![](https://github.com/m1gu3l-d3v/dotfiles/blob/main/screnshots/Everforest2.png))
  ![](https://github.com/m1gu3l-d3v/dotfiles/blob/main/screnshots/Everforest3.png))

- Gruvbox Dark
  ```bash
  colorscheme GruvboxDark
  ```
  ![](https://github.com/m1gu3l-d3v/dotfiles/blob/main/screnshots/GruvboxDark1.png))
  ![](https://github.com/m1gu3l-d3v/dotfiles/blob/main/screnshots/GruvboxDark2.png))
  ![](https://github.com/m1gu3l-d3v/dotfiles/blob/main/screnshots/GruvboxDark3.png))

- Gruvbox Material
  ```bash
  colorscheme GruvboxMaterial
  ```
  ![](https://github.com/m1gu3l-d3v/dotfiles/blob/main/screnshots/GruvboxMaterial1.png))
  ![](https://github.com/m1gu3l-d3v/dotfiles/blob/main/screnshots/GruvboxMaterial2.png))
  ![](https://github.com/m1gu3l-d3v/dotfiles/blob/main/screnshots/GruvboxMaterial3.png))

- Monokai Pro Ristretto
  ```bash
  colorscheme MonokaiProRistretto
  ```
  ![](https://github.com/m1gu3l-d3v/dotfiles/blob/main/screnshots/MonokaiProRistretto1.png))
  ![](https://github.com/m1gu3l-d3v/dotfiles/blob/main/screnshots/MonokaiProRistretto2.png))
  ![](https://github.com/m1gu3l-d3v/dotfiles/blob/main/screnshots/MonokaiProRistretto3.png))

- Monokai Pro
  ```bash
  colorscheme MonokaiPro
  ```
  ![](https://github.com/m1gu3l-d3v/dotfiles/blob/main/screnshots/MonokaiPro1.png))
  ![](https://github.com/m1gu3l-d3v/dotfiles/blob/main/screnshots/MonokaiPro2.png))
  ![](https://github.com/m1gu3l-d3v/dotfiles/blob/main/screnshots/MonokaiPro3.png))

- Nord
  ```bash
  colorscheme Nord
  ```
  ![](https://github.com/m1gu3l-d3v/dotfiles/blob/main/screnshots/Nord1.png))
  ![](https://github.com/m1gu3l-d3v/dotfiles/blob/main/screnshots/Nord2.png))
  ![](https://github.com/m1gu3l-d3v/dotfiles/blob/main/screnshots/Nord3.png))

- OneDark
  ```bash
  colorscheme OneDark
  ```
  ![](https://github.com/m1gu3l-d3v/dotfiles/blob/main/screnshots/OneDark1.png))
  ![](https://github.com/m1gu3l-d3v/dotfiles/blob/main/screnshots/OneDark2.png))
  ![](https://github.com/m1gu3l-d3v/dotfiles/blob/main/screnshots/OneDark3.png))

- RosePine
  ```bash
  colorscheme RosePine
  ```
  ![](https://github.com/m1gu3l-d3v/dotfiles/blob/main/screnshots/RosePine1.png))
  ![](https://github.com/m1gu3l-d3v/dotfiles/blob/main/screnshots/RosePine2.png))
  ![](https://github.com/m1gu3l-d3v/dotfiles/blob/main/screnshots/RosePine3.png))


## Atajos de teclado

<table>
    <tr>
        <th>Teclas</th>
        <th>Acción</th>
    </tr>
    <tr>
        <td><kbd>super</kbd> + <kbd>Return</kbd></td>
        <td>Alacritty</td>
    </tr>
    <tr>
        <td><kbd>super</kbd> + <kbd>d</kbd></td>
        <td>Rofi para lanzar programas</td>
    </tr>
    <tr>
        <td><kbd>super</kbd> + <kbd>ctrl</kbd> + <kbd>d</kbd></td>
        <td>Rofi para ver ventanas abiertas</td>
    </tr>
    <tr>
        <td><kbd>super</kbd> + <kbd>alt</kbd> + <kbd><kbd>q</kbd> / <kbd>r</kbd></kbd></td>
        <td>Cerrar/Reiniciar BSPWM</td>
    </tr>
    <tr>
        <td><kbd>super</kbd> + <kbd><kbd>q</kbd> / <kbd>shift</kbd> + <kbd>q</kbd></kbd></td>
        <td>Cerrar/Matar la ventana actual</td>
    </tr>
    <tr>
        <td><kbd>super</kbd> + <kbd><kbd>t</kbd> / <kbd>shift</kbd> + <kbd>t</kbd> / <kbd>f</kbd> / <kbd>m</kbd> / <kbd>s</kbd></kbd></td>
        <td>Modificar el estado de la ventana a tiled/pseudo_tiled/fullscreen/monocle/float</td>
    </tr>
    <tr>
        <td><kbd>super</kbd> + <kbd><kbd>z</kbd> / <kbd>shift</kbd> + <kbd>z</kbd></kbd></td>
        <td>Enfocar la siguiente/anterior ventana</td>
    </tr>
    <tr>
        <td><kbd>super</kbd> + <kbd><kbd>[</kbd> / <kbd>]</kbd></kbd></td>
        <td>Cambiar al escritorio anterior/siguiente en el monitor actual</td>
    </tr>
    <tr>
        <td><kbd>super</kbd> + <kbd><kbd>Left</kbd> / <kbd>Down</kbd> / <kbd>Up</kbd> / <kbd>Right</kbd></kbd></td>
        <td>Mover el enfoque de la ventana a la direccion especificada</td>
    </tr>
    <tr>
        <td><kbd>super</kbd> + <kbd>shift</kbd> + <kbd><kbd>Left</kbd> / <kbd>Down</kbd> / <kbd>Up</kbd> / <kbd>Right</kbd></kbd></td>
        <td>enviar la ventana enfocada a la direccion especificada</td>
    </tr>
    <tr>
        <td><kbd>super</kbd> + <kbd>1-9</kbd></td>
        <td>Cambiar al escritorio especificado 1-9</td>
    </tr>
    <tr>
        <td><kbd>super</kbd> + <kbd>1-9</kbd></td>
        <td>Mover la ventana enfocada al escritorio 1-9</td>
    </tr>
    <tr>
        <td><kbd>super</kbd> + <kbd>grave</kbd></td>
        <td>Enfocar la última ventana utilizada</td>
    </tr>
    <tr>
        <td><kbd>super</kbd> + <kbd>shift</kbd> + <kbd>Tab</kbd></td>
        <td>Enfocar el último escritorio utilizado</td>
    </tr>
    <tr>
        <td><kbd>super</kbd> + <kbd>alt</kbd> + <kbd><kbd>Left</kbd> / <kbd>Down</kbd> / <kbd>Up</kbd> / <kbd>Right</kbd></kbd></td>
        <td>Ajustar la posición de la ventana en la dirección especificada</td>
    </tr>
    <tr>
        <td><kbd>super</kbd> + <kbd>alt</kbd> + <kbd>shift</kbd> + <kbd><kbd>Left</kbd> / <kbd>Down</kbd> / <kbd>Up</kbd> / <kbd>Right</kbd></kbd></td>
        <td>Contraer la ventana flotante moviendo uno de sus lados hacia adentro</td>
    </tr>
    <tr>
        <td><kbd>super</kbd> + <kbd>ctrl</kbd> + <kbd><kbd>Left</kbd> / <kbd>Down</kbd> / <kbd>Up</kbd> / <kbd>Right</kbd></kbd></td>
        <td>Preseleccionar la dirección de la ventana proxima en abrirse</td>
    </tr>
    <tr>
        <td><kbd>super</kbd> + <kbd>ctrl</kbd> + <kbd>1-9</kbd></td>
        <td>Ajustar la relación de preselección de la ventana</td>
    </tr>
    <tr>
        <td><kbd>super</kbd> + <kbd>ctrl</kbd> + <kbd>space</kbd></td>
        <td>Cancelar la preselección de la ventana actual</td>
    </tr>
    <tr>
        <td><kbd>XF86MonBrightness <kbd><kbd>Up</kbd> / <kbd>Down</kbd></kbd></td>
        <td>Aumentar/Disminuir el brillo de la pantalla</td>
    </tr>
    <tr>
        <td><kbd>super</kbd> + <kbd>w</kbd></td>
        <td>Firefox</td>
    </tr>
    <tr>
        <td><kbd>super</kbd> + <kbd>n</kbd></td>
        <td>Thunar</td>
    </tr>
    <tr>
        <td><kbd>super</kbd> + <kbd><kbd>a</kbd> / <kbd>shift</kbd> + <kbd>a</kbd> / <kbd>ctrl</kbd> + <kbd>a</kbd></kbd></td>
        <td>Scrot select/full/window screenshot mode</td>
    </tr>
    <tr>
        <td><kbd>super</kbd> + <kbd>e</kbd></td>
        <td>Neovim</td>
    </tr>
    <tr>
        <td><kbd>super</kbd> + <kbd><kbd>y</kbd> / <kbd>shift</kbd> + <kbd>y</kbd></kbd></td>
        <td>Sysfetch / Neofetch</td>
    </tr>
    <tr>
        <td><kbd>super</kbd> + <kbd>c</kbd></td>
        <td>Clock</td>
    </tr>
    <tr>
        <td><kbd>super</kbd> + <kbd>shift</kbd> + <kbd>p</kbd></td>
        <td>Mostrar/Ocultar la barra polybar</td>
    </tr>
    <tr>
        <td><kbd>super</kbd> + <kbd>p</kbd></td>
        <td>Menú de reinicio y apagado</td>
    </tr>
</table>

### ¡Usted puede importar su propio esquema de colores! Para generar uno, debe crear un archivo en `~/.config/colorschemes/colors/NombreEsquema.sh` similar a:

  ```sh
  colorbg='#1e1e2e'
  colorfg='#a6adc8'
  colormain1='#cba6f7'
  color0='#45475a'
  color1='#f38ba8'
  color2='#a6e3a1'
  color3='#f9e2af'
  color4='#89b4fa'
  color5='#f5c2e7'
  color6='#94e2d5'
  color7='#bac2de'
  color8='#585b70'
  color9='#f38ba8'
  color10='#a6e3a1'
  color11='#f9e2af'
  color12='#89b4fa'
  color13='#f5c2e7'
  color14='#94e2d5'
  color15='#a6adc8'
  ```
### Luego podra generarlo corriendo:
  ```bash
  colorscheme NombreEsquema
  ```
