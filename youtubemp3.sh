#!/bin/bash


echo " ██╗░░░██╗░█████╗░██╗░░░██╗████████╗██╗░░░██╗██████╗░███████╗███╗░░░███╗██████╗░██████╗░ ";
echo " ╚██╗░██╔╝██╔══██╗██║░░░██║╚══██╔══╝██║░░░██║██╔══██╗██╔════╝████╗░████║██╔══██╗╚════██╗ ";
echo " ░╚████╔╝░██║░░██║██║░░░██║░░░██║░░░██║░░░██║██████╦╝█████╗░░██╔████╔██║██████╔╝░█████╔╝ ";
echo " ░░╚██╔╝░░██║░░██║██║░░░██║░░░██║░░░██║░░░██║██╔══██╗██╔══╝░░██║╚██╔╝██║██╔═══╝░░╚═══██╗ ";
echo " ░░░██║░░░╚█████╔╝╚██████╔╝░░░██║░░░╚██████╔╝██████╦╝███████╗██║░╚═╝░██║██║░░░░░██████╔╝ ";
echo " ░░░╚═╝░░░░╚════╝░░╚═════╝░░░░╚═╝░░░░╚═════╝░╚═════╝░╚══════╝╚═╝░░░░░╚═╝╚═╝░░░░░╚═════╝░ ";


#Para hacer uso del script necesitaremos descargarnos el paquete de youtube-dl, para ello preguntamos primero al usuario si lo quiere descargar.

read -p "¿Quieres descargar el paquete youtube-dl? (Y/n): " respuesta
sleep 2
if [ "$respuesta" == "Y" ]; then
  sudo apt-get update
  sudo apt-get install youtube-dl
  echo "Paquete youtube-dl instalado."
else
  echo "No se instaló el paquete youtube-dl."
fi

read -p "¿Quieres descargar el paquete smplayer ? (Y/n): " respuesta
sleep 2
if [ "$respuesta" == "Y" ]; then
  sudo snap install smplayer
  echo "Paquete smplayer instalado."
else
  echo "No se instaló el paquete smplayer."
fi

#Se descargará utilizando url del video en cuestión, esta parte de aquí "$1" se utiliza como un marcador de posición.
#para cuando se ejecute se reemplace por la url del video. Evidentemente "--extract-audio" indica que se extraera el audio del video.
#"--audio-format"  se utilizará para decidir el formato en el que se codificará el audio en este caso mp3.

youtube-dl --extract-audio --audio-format mp3 "$1"

#'ls' Busca todos los archivos en el directorio actual que terminan en .mp3 y los lista en la terminal.
# La salida de este comando se utiliza como argumento para el comando mv, que renombra el archivo MP3.
file=$(ls *.mp3) 

# Renombra el archivo MP3 con el nombre del video de YouTube
# 'mv' se utiliza para mover un archivo a otra ubicación pero esta vez lo utilizaremos para renombrar el archivo los argumentos file y new_name son dos variables
# que contienen el viejo y el nuevo nombre
new_name=$(youtube-dl --get-title "$1").mp3
mv "$file" "$new_name" 

