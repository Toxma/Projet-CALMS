#!/bin/bash
#Ce script a pour but de créer tout l'environnement de notre chroot
#Une fois ce script joué nous avons juste à lancer la commande sudo chroot exo1/ msnake

#Création de l'arborescence du chroot
mkdir -p ~/exo1/{bin,lib,lib64,lib/terminfo}

#Copie des binaires de bash et ls
cp /bin/bash /bin/ls /tmp/msnake ~/exo1/bin

#Changement des droits sur msnake afin de l'exécuter
chmod 755 ~/exo1/bin/msnake

#Copie des librairies de /lib
sudo cp \
  /lib/x86_64-linux-gnu/libncurses.so.6 \
  /lib/x86_64-linux-gnu/libpthread.so.0 \
  /lib/x86_64-linux-gnu/libpcre2-8.so.0 \
  /lib/x86_64-linux-gnu/libselinux.so.1 \
  /lib/x86_64-linux-gnu/libtinfo.so.6 \
  /lib/x86_64-linux-gnu/libdl.so.2 \
  /lib/x86_64-linux-gnu/libc.so.6 \
  ~/exo1/lib

#Copie des librairies de /lib64

sudo cp /lib64/ld-linux-x86-64.so.2 ~/exo1/lib64

#Copie des informations du terminal
sudo cp -r /lib/terminfo/* ~/exo1/lib/terminfo/