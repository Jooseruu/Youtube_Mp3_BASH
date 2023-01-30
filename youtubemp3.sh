#!/bin/bash


echo " ██╗░░░██╗░█████╗░██╗░░░██╗████████╗██╗░░░██╗██████╗░███████╗███╗░░░███╗██████╗░██████╗░ ";
echo " ╚██╗░██╔╝██╔══██╗██║░░░██║╚══██╔══╝██║░░░██║██╔══██╗██╔════╝████╗░████║██╔══██╗╚════██╗ ";
echo " ░╚████╔╝░██║░░██║██║░░░██║░░░██║░░░██║░░░██║██████╦╝█████╗░░██╔████╔██║██████╔╝░█████╔╝ ";
echo " ░░╚██╔╝░░██║░░██║██║░░░██║░░░██║░░░██║░░░██║██╔══██╗██╔══╝░░██║╚██╔╝██║██╔═══╝░░╚═══██╗ ";
echo " ░░░██║░░░╚█████╔╝╚██████╔╝░░░██║░░░╚██████╔╝██████╦╝███████╗██║░╚═╝░██║██║░░░░░██████╔╝ ";
echo " ░░░╚═╝░░░░╚════╝░░╚═════╝░░░░╚═╝░░░░╚═════╝░╚═════╝░╚══════╝╚═╝░░░░░╚═╝╚═╝░░░░░╚═════╝░ ";

#Se descargará utilizando url del video en cuestión, esta parte de aquí "$1" se utiliza como un marcador de posición.
#para cuando se ejecute se reemplace por la url del video. Evidentemente "--extract-audio" indica que se extraera el audio del video.
#"--audio-format"  se utilizará para decidir el formato en el que se codificará el audio en este caso mp3.
youtube-dl --extract-audio --audio-format mp3 "$1"

