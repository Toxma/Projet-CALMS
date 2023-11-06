# Documentation Projet CALMS

---

## TOC

- [Documentation Projet CALMS](#documentation-projet-calms)
  - [TOC](#toc)
  - [Environnement de départ](#environnement-de-départ)
  - [Exercice 1 : Exécution avec chroot](#exercice-1--exécution-avec-chroot)
  - [Exercice 2 : Exécution sous LXC](#exercice-2--exécution-sous-lxc)
  - [Exercice 3 : Exécution sous systemd-nspawn](#exercice-3--exécution-sous-systemd-nspawn)

---

## Environnement de départ

- Machine crée via Vagrant (./Vagrant/Vagrantfile)

```bash
vagrant@zdeploy:~$ neofetch
       _,met$$$$$gg.          vagrant@zdeploy
    ,g$$$$$$$$$$$$$$$P.       ---------------
  ,g$$P"     """Y$$.".        OS: Debian GNU/Linux 11 (bullseye) x86_64
 ,$$P'              `$$$.     Host: VirtualBox 1.2
',$$P       ,ggs.     `$$b:   Kernel: 5.10.0-26-amd64
`d$$'     ,$P"'   .    $$$    Uptime: 11 mins
 $$P      d$'     ,    $$P    Packages: 492 (dpkg)
 $$:      $$.   -    ,d$$'    Shell: bash 5.1.4
 $$;      Y$b._   _,d$P'      Resolution: preferred
 Y$$.    `.`"Y$$$$P"'         Terminal: /dev/pts/0
 `$$b      "-.__              CPU: AMD Ryzen 5 5600 (2) @ 3.499GHz
  `Y$$                        GPU: 00:02.0 VMware SVGA II Adapter
   `Y$$.                      Memory: 72MiB / 1970MiB
     `$$b.
       `Y$$b.                                         
          `"Y$b._                                     
              `"""
```

---

## Exercice 1 : Exécution avec chroot

- On rend le script exécutable en utilisant la commade `chmod +x exo1.sh`
- On voit désormais grâce à `ls -l` que les permissions du script permettent de l'exécuter

```bash
vagrant@zdeploy:~$ chmod +x exo1.sh 
vagrant@zdeploy:~$ ls -l
total 4
-rwxr-xr-x 1 vagrant vagrant 921 Nov  6 22:29 exo1.sh
```

- On lance le script grâce à la commande `./exo1.sh`
- Ce script va permettre :
  - Crée l'arborescence ci-dessous
  - Copier les binaires de **bash**, **ls** et **msnake**
  - Mettre les droits sur le binaire msnake
  - Copier les librairies nécessaires de **/lib** et **/lib64**
  - Copier les librairies du terminal présentent dans **/lib/terminfo**

```bash
vagrant@zdeploy:~$ tree exo1
exo1
├── bin
│   ├── bash
│   ├── ls
│   └── msnake
├── lib
│   ├── libc.so.6
│   ├── libdl.so.2
│   ├── libncurses.so.6
│   ├── libpcre2-8.so.0
│   ├── libpthread.so.0
│   ├── libselinux.so.1
│   ├── libtinfo.so.6
│   └── terminfo
│       ├── E
│       │   ├── Eterm
│       │   └── Eterm-color -> Eterm
│       ├── a
│       │   └── ansi
│       ├── c
│       │   ├── cons25
│       │   ├── cons25-debian
│       │   └── cygwin
│       ├── d
│       │   └── dumb
│       ├── h
│       │   └── hurd
│       ├── l
│       │   └── linux
│       ├── m
│       │   ├── mach
│       │   ├── mach-bold
│       │   ├── mach-color
│       │   ├── mach-gnu
│       │   └── mach-gnu-color
│       ├── p
│       │   └── pcansi
│       ├── r
│       │   ├── rxvt
│       │   ├── rxvt-basic
│       │   ├── rxvt-m -> rxvt-basic
│       │   ├── rxvt-unicode
│       │   └── rxvt-unicode-256color
│       ├── s
│       │   ├── screen
│       │   ├── screen-256color
│       │   ├── screen-256color-bce
│       │   ├── screen-bce
│       │   ├── screen-s
│       │   ├── screen-w
│       │   ├── screen.xterm-256color
│       │   └── sun
│       ├── t
│       │   ├── tmux
│       │   └── tmux-256color
│       ├── v
│       │   ├── vt100
│       │   ├── vt102
│       │   ├── vt220
│       │   └── vt52
│       ├── w
│       │   ├── wsvt25
│       │   └── wsvt25m
│       └── x
│           ├── xterm
│           ├── xterm-256color
│           ├── xterm-color
│           ├── xterm-debian -> xterm
│           ├── xterm-mono
│           ├── xterm-r5
│           ├── xterm-r6
│           ├── xterm-vt220
│           └── xterm-xfree86
└── lib64
    └── ld-linux-x86-64.so.2
```

- Une fois l'arborescence créée ainsi que les fichiers nécessaires copiés nous allons créer le chroot
- Pour se faire, il faut utiliser la commande `sudo chroot exo1 msnake`, ceci va :
  - Créer le chroot dans le fichier exo1
  - Lancer le binaire msnake

```bash
vagrant@zdeploy:~$ sudo chroot exo1/ msnake
```

![Alt text](images/msnake.png)

>Tout fonctionne comme prévu. On peut désormais jouer à snake !!!

---

## Exercice 2 : Exécution sous LXC

---

## Exercice 3 : Exécution sous systemd-nspawn

---
