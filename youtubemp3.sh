#!/bin/bash


echo " ██╗░░░██╗░█████╗░██╗░░░██╗████████╗██╗░░░██╗██████╗░███████╗███╗░░░███╗██████╗░██████╗░ ";
echo " ╚██╗░██╔╝██╔══██╗██║░░░██║╚══██╔══╝██║░░░██║██╔══██╗██╔════╝████╗░████║██╔══██╗╚════██╗ ";
echo " ░╚████╔╝░██║░░██║██║░░░██║░░░██║░░░██║░░░██║██████╦╝█████╗░░██╔████╔██║██████╔╝░█████╔╝ ";
echo " ░░╚██╔╝░░██║░░██║██║░░░██║░░░██║░░░██║░░░██║██╔══██╗██╔══╝░░██║╚██╔╝██║██╔═══╝░░╚═══██╗ ";
echo " ░░░██║░░░╚█████╔╝╚██████╔╝░░░██║░░░╚██████╔╝██████╦╝███████╗██║░╚═╝░██║██║░░░░░██████╔╝ ";
echo " ░░░╚═╝░░░░╚════╝░░╚═════╝░░░░╚═╝░░░░╚═════╝░╚═════╝░╚══════╝╚═╝░░░░░╚═╝╚═╝░░░░░╚═════╝░ ";


#Para hacer uso del script necesitaremos descargarnos el paquete de youtube-dl, para ello preguntamos primero al usuario si lo quiere descargar.

read -p "¿Quieres descargar el paquete youtube-dl? (Y/n): " respuesta
if [ "$respuesta" == "Y" ]; then
  sudo apt-get update
  sudo apt-get install youtube-dl
  echo "Paquete youtube-dl instalado."
else
  echo "No se instaló el paquete youtube-dl."
fi

#Se descargará utilizando url del video en cuestión, esta parte de aquí "$1" se utiliza como un marcador de posición.
#para cuando se ejecute se reemplace por la url del video. Evidentemente "--extract-audio" indica que se extraera el audio del video.
#"--audio-format"  se utilizará para decidir el formato en el que se codificará el audio en este caso mp3.

youtube-dl --extract-audio --audio-format mp3 "$1"

