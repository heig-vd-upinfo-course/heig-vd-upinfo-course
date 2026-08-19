---
lang: "fr"
geometry: "top=2.5cm, bottom=2cm, left=2cm, right=2cm"
fontsize: "11pt"
papersize: "a4"
header-includes: |
  \usepackage{fancyhdr}
  \usepackage{multirow}
  \usepackage[table]{xcolor}

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

## Premiers pas à la HEIG-VD

### Quel est le but d'un gestionnaire de mots de passe ? Pourquoi est-il important d'en utiliser un ?

```{=latex}
\answerbox{8cm}
```

### Quelles sont la ou les bonnes pratiques pour créer un mot de passe sécurisé ?

```{=latex}
\answerbox{8cm}
```

### Quel est le but d'une application 2FA ? Pourquoi est-il important d'en utiliser une ?

```{=latex}
\answerbox{8cm}
```

## Composants matériels et logiciels d'un ordinateur

### Quels sont le ou les rôles du processeur (CPU) ?

```{=latex}
\answerbox{8cm}
```

### Quels sont le ou les rôles de la mémoire vive (RAM) ?

```{=latex}
\answerbox{8cm}
```

### Quels sont le ou les rôles du stockage (disque dur (HDD) ou solid-state drive (SSD)) ?

```{=latex}
\answerbox{8cm}
```

### Une personne vous indique qu'elle a 512 Go de RAM et 16 Go de stockage sur son ordinateur. Que pouvez-vous en conclure ?

```{=latex}
\answerbox{8cm}
```

<!--
### Quels sont le ou les rôles de la carte mère ?

### Quels sont le ou les rôles des périphériques externes ?

### Quels sont le ou les rôles de la carte graphique (GPU) ?

### Quels sont le ou les rôles du BIOS/UEFI ?
-->

### Quels sont le ou les rôles du système d'exploitation ?

```{=latex}
\answerbox{8cm}
```

### Quelles sont la ou les différences entre une interface graphique (GUI) et une interface en ligne de commande (CLI) ?

```{=latex}
\answerbox{8cm}
```

### Quelles sont la ou les différences entre un compte utilisateur·trice standard et un compte administrateur ?

```{=latex}
\answerbox{8cm}
```

### Sur macOS ou Linux, quel est le rôle de la commande `sudo` ? Pourquoi est-il important de l'utiliser avec précaution ?

```{=latex}
\answerbox{8cm}
```

## Communications réseaux et Internet

### Quels sont le ou les rôles d'un client ?

```{=latex}
\answerbox{8cm}
```

### Quels sont le ou les rôles d'un serveur ?

```{=latex}
\answerbox{8cm}
```

### Quels sont le ou les rôles d'une adresse IP ?

```{=latex}
\answerbox{8cm}
```

### Qu'est-ce qu'un réseau local ? Quelle est la différence entre un réseau local et Internet ?

```{=latex}
\answerbox{8cm}
```

### Comment un client et un serveur communiquent-ils entre eux sur Internet ?

```{=latex}
\answerbox{8cm}
```

<!--
### Quels sont le ou les rôles d'un serveur DHCP ?

### Quels sont le ou les rôles d'un serveur DNS ?
-->

## Configurer son système d'exploitation et ses applications

```{=latex}
\answerbox{8cm}
```

### Quelles sont la ou les différences entre un terminal et un shell ?

```{=latex}
\answerbox{8cm}
```

### Quels sont le ou les rôles d'un gestionnaire de paquets ?

```{=latex}
\answerbox{8cm}
```

## Sauvegarder et restaurer ses données

### Quelle est la règle des 3-2-1 pour la sauvegarde de données ? Pourquoi est-il important de la suivre ?

```{=latex}
\answerbox{8cm}
```

### Que devons-nous faire pour nous assurer que notre sauvegarde est fonctionnelle et que nous pourrons restaurer nos données en cas de problème ?

```{=latex}
\answerbox{8cm}
```

## Prendre des notes Markdown

### Quelles sont la ou les différences entre un fichier Markdown et un fichier texte classique (par exemple, un fichier Word) ?

```{=latex}
\answerbox{8cm}
```

### Quelles sont les différentes balises Markdown que vous avez apprises dans ce cours ? Donnez un exemple pour chacune d'entre elles.

```{=latex}
\answerbox{8cm}
```

## Travailler avec le terminal

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
   le répertoire `/home/alice/Documents/projet2/` ?
3. Quel est le chemin relatif vers le fichier `fichier.txt` si nous sommes dans
   le répertoire `/home/alice/Documents/projet1/` ?
4. Quelle commande permet de créer un nouveau répertoire nommé `projet3` dans le
   répertoire `/home/alice/Documents/` ?
5. Quelle commande permet de supprimer le répertoire `projet1` et tout son
   contenu ?
6. Quelle commande permet de copier le fichier `fichier.txt` dans le répertoire
   `/home/alice/Documents/projet2/` ?
7. Quelle commande permet de déplacer le fichier `fichier.txt` dans le
   répertoire `/home/alice/Documents/projet2/` ?
8. Quelle commande permet de lister les fichiers et répertoires dans le
   répertoire `/home/alice/Documents/` ?
9. Quelle commande permet de changer le répertoire courant pour aller dans le
   répertoire `/home/alice/Images/` si nous sommes dans le répertoire
   `/home/alice/Documents/` ?
10. Quelle commande permet de créer un fichier vide nommé `nouveau_fichier.txt`
    dans le répertoire `/home/alice/Documents/projet2/` ?
11. Quelle commande permet de supprimer le fichier `nouveau_fichier.txt` dans le
    répertoire `/home/alice/Documents/projet2/` ?
12. Quelle commande permet de renommer le fichier `fichier.txt` en
    `ancien_fichier.txt` dans le répertoire `/home/alice/Documents/projet2/` ?
13. Quelle commande permet de visualiser le contenu du fichier `fichier.txt`
    dans le répertoire `/home/alice/Documents/projet2/` ?

```{=latex}
\answerbox{8cm}
```
