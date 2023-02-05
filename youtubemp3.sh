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

#Para cuando se ejecute se reemplace por la url del video. Evidentemente "--extract-audio" indica que se extraera el audio del video.
#"--audio-format"  se utilizará para decidir el formato en el que se codificará el audio en este caso mp3.

# Preguntar al usuario el link de YouTube que desea descargar
read -p "Introduce el enlace de YouTube que deseas descargar: " link

# Descargar el video de YouTube como mp3
youtube-dl --extract-audio --audio-format mp3 $link
