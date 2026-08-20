---
lang: "fr"
geometry: "top=2.5cm, bottom=2cm, left=2cm, right=2cm"
fontsize: "11pt"
papersize: "a4"
header-includes: |
  \usepackage{fancyhdr}
  \usepackage{multirow}
  \usepackage[table]{xcolor}
  \usepackage{xurl}

  \makeatletter
  \renewcommand{\texttt}[1]{\path{#1}}
  \renewcommand{\section}{%
    \@startsection{section}{1}{\z@}%
      {-3.5ex \@plus -1ex \@minus -.2ex}%
      {2.3ex \@plus .2ex}%
      {\normalfont\Huge\bfseries\centering}%
  }
  \renewcommand{\subsection}{%
    \@startsection{subsection}{2}{\z@}%
      {-3.25ex \@plus -1ex \@minus -.2ex}%
      {1.5ex \@plus .2ex}%
      {\normalfont\Large\bfseries\centering}%
  }
  \let\oldsubsection\subsection
  \renewcommand{\subsection}[1]{%
    \oldsubsection{#1}%
    \vspace{-0.6em}%
    \noindent\rule{\linewidth}{0.4pt}%
    \vspace{0.8em}%
  }
  \makeatother

  \newcommand{\institution}{HEIG-VD}
  \newcommand{\coursename}{UPInfo 2026-2027}
  \newcommand{\session}{Août 2026}

  \pagestyle{fancy}
  \fancyhead[L]{\coursename}
  \fancyhead[R]{Nom :\hspace{6cm}}
  \fancyfoot[LO,LE]{\institution}
  \fancyfoot[CO,CE]{\thepage}
  \fancyfoot[RO,RE]{\session}
  \renewcommand{\footrulewidth}{0.4pt}

  \renewcommand{\arraystretch}{1.5}
  \setlength{\tabcolsep}{10pt}

  \newcommand{\answerbox}[1]{%
    \begin{center}%
    \fbox{\parbox[t][#1][t]{0.985\textwidth}{~}}%
    \end{center}%
  }
---

<!--
# Utilisation

```bash
docker run \
  --rm --volume "$(pwd):/data" \
  --user "$(id -u):$(id -g)" \
  pandoc/latex -o UPINFO_EVALUATION_DES_ACQUIS.pdf _IMPRESSION.md
```
-->

# Évaluation des acquis

Utilisez ce document pour évaluer vos acquis sur le contenu de ce cours. Vous
pouvez trouver réponses aux questions dans le contenu complet du cours
disponible sur le site dédié.

Vous pouvez répondre aux questions sur papier ou profiter de cette occasion pour
vous entraîner avec Markdown.

Si vous souhaitez imprimer ce document, vous pouvez emprunter le badge du corps
enseignant pour accéder aux imprimantes de la HEIG-VD.

## Premiers pas à la HEIG-VD

### Question 1

Quel est le but d'un gestionnaire de mots de passe ? Pourquoi est-il important
d'en utiliser un ?

### Question 2

Quelles sont la ou les bonnes pratiques pour créer un mot de passe sécurisé ?

### Question 3

Quel est le but d'une application 2FA ? Pourquoi est-il important d'en utiliser
une ?

### Question 4

Qu'est-ce qui différencie un mot de passe d'un code 2FA ? Pourquoi est-il
important d'utiliser les deux pour sécuriser vos comptes ?

## Composants matériels et logiciels d'un ordinateur

### Question 5

Quels sont le ou les rôles du processeur (CPU) ?

### Question 6

Quels sont le ou les rôles de la mémoire vive (RAM) ?

### Question 7

Quels sont le ou les rôles du stockage (disque dur (HDD) ou solid-state drive
(SSD)) ?

### Question 8

Quelles sont la ou les différences entre la mémoire vive (RAM) et le stockage
(disque dur (HDD) ou solid-state drive (SSD)) ?

### Question 9

Une personne vous indique qu'elle a 512 Go de RAM et 16 Go de stockage sur son
ordinateur. Que pouvez-vous en conclure ?

<!--
### Quels sont le ou les rôles de la carte mère ?

### Quels sont le ou les rôles des périphériques externes ?

### Quels sont le ou les rôles de la carte graphique (GPU) ?

### Quels sont le ou les rôles du BIOS/UEFI ?
-->

### Question 10

Quels sont le ou les rôles du système d'exploitation ?

### Question 11

Quelles familles de systèmes d'exploitation avez-vous découvertes dans ce cours
? Donnez un exemple pour chacune d'entre elles.

### Question 12

Quelles sont la ou les différences entre une interface graphique (GUI) et une
interface en ligne de commande (CLI) ?

### Question 13

Quelles sont la ou les différences entre un compte utilisateur standard et un
compte administrateur ?

### Question 14

Sur macOS ou Linux, quel est le rôle de la commande `sudo` ? Pourquoi est-il
important de l'utiliser avec précaution ?

## Communications réseaux et Internet

### Question 15

Quels sont le ou les rôles d'un client ?

### Question 16

Quels sont le ou les rôles d'un serveur ?

### Question 17

Quels sont le ou les rôles d'une adresse IP ?

### Question 18

Qu'est-ce qu'un réseau local ? Quelle est la différence entre un réseau local et
Internet ?

### Question 19

Comment un client et un serveur communiquent-ils entre eux sur Internet ?

<!--
### Quels sont le ou les rôles d'un serveur DHCP ?

### Quels sont le ou les rôles d'un serveur DNS ?
-->

## Configurer son système d'exploitation et ses applications

### Question 20

Quelle est la différence entre un fichier, un dossier et une archive ? Donnez un
exemple pour chacun d'entre eux.

### Question 21

Qu'est-ce qu'une extension de fichier ? Qu'est-ce qu'un fichier caché ?

Pour chacune de ces notions, donnez un exemple et expliquez comment les
identifier sur votre système d'exploitation et comment les afficher/masquer.

### Question 22

Quelles sont la ou les différences entre un terminal et un shell ?

### Question 23

Quels sont le ou les rôles d'un gestionnaire de paquets ?

## Sauvegarder et restaurer ses données

### Question 24

Quelle est la règle des 3-2-1 pour la sauvegarde de données ? Pourquoi est-il
important de la suivre ?

### Question 25

Donnez un exemple concret de stratégie de sauvegarde que vous pourriez mettre en
place pour vos données personnelles, en suivant la règle des 3-2-1.

### Question 26

Que devons-nous faire pour nous assurer que notre sauvegarde est fonctionnelle
et que nous pourrons restaurer nos données en cas de problème ?

## Prendre des notes Markdown

### Question 27

Quelles sont la ou les différences entre un fichier Markdown et un fichier texte
classique (par exemple, un fichier Word) ?

### Question 28

Quelles sont les différentes balises Markdown que vous avez apprises dans ce
cours ? Donnez un exemple pour chacune d'entre elles.

## Travailler avec le terminal

### Question 29

Que faut-il faire pour être capable d'exécuter un script shell sur votre système
d'exploitation ? Donnez un exemple de commande pour exécuter un script shell
nommé `script.sh` dans le répertoire courant.

### Question 30

Soit l'arborescence de fichiers suivante :

```text
/home/alice/
|-- Documents/
|   |-- projet1/
|   `-- projet2/
|       `-- fichier.txt
|-- Images/
`-- Musique/
```

Répondez aux questions suivantes :

1. Quel est le chemin absolu vers le fichier `fichier.txt` ?
2. Quel est le chemin relatif vers le fichier `fichier.txt` si nous sommes dans
   le répertoire `/home/alice/Documents/projet2` ?
3. Quel est le chemin relatif vers le fichier `fichier.txt` si nous sommes dans
   le répertoire `/home/alice/Documents/projet1` ?
4. Quelle commande permet de créer un nouveau répertoire nommé `projet3` dans le
   répertoire `/home/alice/Documents` ?
5. Quelle commande permet de supprimer le répertoire `projet1` et tout son
   contenu ?
6. Quelle commande permet de copier le fichier `fichier.txt` dans le répertoire
   `/home/alice/Documents/projet2` ?
7. Quelle commande permet de déplacer le fichier `fichier.txt` dans le
   répertoire `/home/alice/Documents/projet2` ?
8. Quelle commande permet de lister les fichiers et répertoires dans le
   répertoire `/home/alice/Documents` ?
9. Quelle commande permet de changer le répertoire courant pour aller dans le
   répertoire `/home/alice/Images` si nous sommes dans le répertoire
   `/home/alice/Documents` ?
10. Quelle commande permet de créer un fichier vide nommé `nouveau_fichier.txt`
    dans le répertoire `/home/alice/Documents/projet2` ?
11. Quelle commande permet de supprimer le fichier `nouveau_fichier.txt` dans le
    répertoire `/home/alice/Documents/projet2` ?
12. Quelle commande permet de renommer le fichier `fichier.txt` en
    `ancien_fichier.txt` dans le répertoire `/home/alice/Documents/projet2` ?
13. Quelle commande permet de visualiser le contenu du fichier `fichier.txt`
    dans le répertoire `/home/alice/Documents/projet2` ?
