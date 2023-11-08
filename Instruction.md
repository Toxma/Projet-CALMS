# Énoncé évaluation cours CALMS

---

## TOC

- [Énoncé évaluation cours CALMS](#énoncé-évaluation-cours-calms)
  - [TOC](#toc)
  - [Exercice 1: Exécution avec chroot](#exercice-1-exécution-avec-chroot)
  - [Exercice 2: Exécution sous lxc](#exercice-2-exécution-sous-lxc)
  - [Exercice 3: Exécution sous systemd-nspawn](#exercice-3-exécution-sous-systemd-nspawn)
  - [Conseils](#conseils)

---

- La manipulation se déroulera sous une Debian 11/12 sur la plateforme PC x86_64 ou aarch64.

## Exercice 1: Exécution avec chroot

>Dans ce premier point, j'ai besoin d'exécuter le programme msnake fourni dans un conteneur minimal, avec uniquement les bibliothèques permettant de faire fonctionner le bash et le programme msnake. Attention, ce dernier nécessite la base de terminfo habituellement stockée dans /etc/terminfo ou /lib/terminfo. Je dois pouvoir lancer le chroot, me promener dans l'arborescence et exécuter msnake sans en sortir.

1. Rédiger une documentation et les commandes qui permettent d'y arriver.
2. Fournissez un script shell implémentant ces commandes

>On doit pouvoir exécuter le programme msnake en faisant bash # chroot exo1 msnake
>
>Documents à rendre: La documentation et le script

---

## Exercice 2: Exécution sous lxc

>Cette fois, nous avons besoin d'évaluer le fonctionnement d'un logiciel sous la distribution Alpine. Nous allons donc créer un conteneur lxc Alpine dans sa version la plus récente. Et vous allez, à l'intérieur du conteneur, télécharger le paquet neofetch et l'installer sur la machine. Dans la documentation, affichez le résultat du programme neofetch.

1. Rédigez une documentation qui explique comment vous avez fait
2. La documentation doit me permettre de refaire votre manipulation

---

## Exercice 3: Exécution sous systemd-nspawn

>Pour finir, on veut à nouveau exécuter neoftech, mais dans un conteneur Debian Stretch(version 9) Buster (version 10) avec systemd-nspawn. Debian Stretch est une vieille version de Debian, et il n'est pas conseillé de l'installer de façon autonome. C'est pour ça qu'on le fera dans un conteneur.

1. Installez les outils liés à systemd-nspawn
2. Créez une arborescence Debian version 10
3. Lancez systemd-nspawn
4. Une documentation qui me permet de refaire la manipulation sur ma machine

---

## Conseils

>Attention, je n'effectuerai la correction QUE sous une Debian 11 ou 12. Assurez-vous de bien préparer l'exercice depuis une Debian 11 ou 12. Ou sur une Ubuntu 22.04 LTS.

- Les seuls rendus que vous devez me faire sont:
  - Exercice 1: Documentation et un seul script shell
  - Exercice 2: Une documentation
  - Exercice 3: Une documentation

>Il faudra déposer le projet sur Pepal dans les délais impartis.

---
