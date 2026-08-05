---
marp: true
theme: custom-marp-theme
size: 16:9
paginate: true
author: L. Delafontaine et V. Guidoux, avec l'aide de GitHub Copilot
description:
  Travailler avec le terminal pour l'unité préparatoire d'informatique pour
  ingénierie des médias à la HEIG-VD, Suisse
url: https://heig-vd-upinfo-course.github.io/heig-vd-upinfo-course/08-travailler-avec-le-terminal/presentation.html
header: "[**Travailler avec le terminal**][contenu-complet]"
footer:
  "[**HEIG-VD**](https://heig-vd.ch) - [UPInfo Course
  2026-2027](https://github.com/heig-vd-upinfo-course/heig-vd-upinfo-course) -
  [CC BY-SA 4.0][license]"
headingDivider: 6
math: mathjax
---

# Travailler avec le terminal

<!--
_class: lead
_paginate: false
-->

[<img src="https://raw.githubusercontent.com/primer/octicons/refs/heads/main/icons/mark-github-24.svg" style="vertical-align: middle; width: 32px;" alt="GitHub logo"> `github.com/heig-vd-upinfo-course`](https://github.com/heig-vd-upinfo-course/heig-vd-upinfo-course)

[Visualiser le contenu complet sur le site dédié][contenu-complet].

<small>L. Delafontaine et V. Guidoux, avec l'aide de
[GitHub Copilot](https://github.com/features/copilot).</small>

<small>Ce travail est sous licence [CC BY-SA 4.0][license].</small>

![bg opacity:0.05][illustration-principale]

## Retrouvez le contenu complet de cette présentation sur le site dédié

<!-- _class: lead -->

_Cette présentation est un résumé du contenu complet disponible sur le site
dédié._

_Pour plus de détails, retrouvez le [contenu complet][contenu-complet] ou en
cliquant sur l'en-tête de ce document._

## Introduction

<!-- _class: lead -->

Le terminal est l'un des outils les plus **puissants** d'un ordinateur : il
permet d'interagir directement avec le système, d'automatiser des tâches et
d'utiliser des outils sans interface graphique.

Il peut sembler intimidant, mais quelques commandes suffisent pour la majorité
des opérations courantes.

## Anatomie d'un terminal

Un terminal est une interface en ligne de commande (Command Line Interface) qui
permet de saisir des commandes textuelles pour interagir avec le système.

Travailler avec le terminal est composé de plusieurs éléments qu'il est
important de comprendre pour l'utiliser efficacement.

![bg right:40% vertical][illustration-terminal]

### Structure de l'invite de commande

```bash
alice@monpc:~/Documents$
```

- `alice` : le nom d'utilisateur·trice.
- `monpc` : le nom de la machine.
- `~/Documents` : le répertoire courant (`~` = dossier personnel).
- `$` : marque le début de votre saisie de commande.

### Les commentaires

```bash
# Ceci est un commentaire, il n'est pas exécuté
pwd
# La commande précédente affiche le répertoire courant
```

Un commentaire commence par `#` et n'est **pas exécuté**. Il sert à expliquer
une commande, surtout dans la documentation et les scripts.

### Options et arguments

```bash
ls [-l] <chemin-du-dossier>
```

- Une **option** modifie le comportement (ex. `-l` affiche les détails). Souvent
  facultative, notée entre crochets `[]`.
- Un **argument** est une valeur passée à la commande (ex. un chemin). À
  remplacer vous-même, souvent noté entre chevrons `<>`.

### Trouver de l'aide

La majorité des commandes disposent d'une aide intégrée :

```bash
# Affiche l'aide (souvent aussi -h)
ls --help

# Ouvre le manuel complet de la commande
man ls
```

Dans `man` : flèches pour naviguer, `/` pour rechercher, `q` pour quitter.

### Raccourcis clavier utiles

- **Copier** : `Ctrl + Shift + C` (`Cmd + C` sur macOS).
- **Coller** : `Ctrl + Shift + V` (`Cmd + V` sur macOS).
- **Début de ligne** : `Ctrl + A`.
- **Fin de ligne** : `Ctrl + E`.
- **Naviguer entre les mots** : `Ctrl + flèches gauche/droite`.

### Quitter une commande ou un programme

Certains programmes bloquent la saisie (comme `man`) en attendant une action.

- `Ctrl + C` : interrompt et termine le programme en cours.
- `q` : quitte de nombreux programmes ("quit").
- `Ctrl + D` : envoie une fin de fichier (selon le programme).

### Résumé

Le terminal est un outil puissant pour interagir avec le système.

Comprendre l'invite de commande, les symboles, les commentaires, les options et
les arguments vous permet d'exécuter des commandes et de gérer votre système
efficacement.

![bg right:40% vertical][illustration-terminal]

## Naviguer dans l'arborescence de fichiers

Naviguer dans l'arborescence est la **première compétence** à acquérir : toutes
les autres commandes s'appuient dessus.

### Chemins absolus et relatifs

- **Chemin absolu** : depuis la racine (`/` sur macOS/Linux, `C:\` sur Windows),
  emplacement fixe.
- **Chemin relatif** : par rapport au répertoire courant.

Raccourcis : `.` (répertoire courant), `..` (répertoire parent), `~` (dossier
personnel), `-` (répertoire précédent).

### Commandes de navigation essentielles

Il existe trois commandes fondamentales pour naviguer dans l'arborescence de
fichiers :

- `pwd` : affiche le répertoire courant.
- `ls` : liste les fichiers et dossiers.
- `cd` : change de répertoire.

![bg right:40% vertical][illustration-terminal]

#### `pwd` - afficher le répertoire courant

```bash title="Terminal Bash/Zsh"
# Affiche le répertoire courant
pwd
```

`pwd` (Print Working Directory) affiche le chemin absolu du dossier dans lequel
vous vous trouvez actuellement.

#### `ls` - lister le contenu d'un dossier

```bash title="Terminal Bash/Zsh"
# Liste les fichiers et dossiers du répertoire courant
ls

# Liste les fichiers et dossiers du répertoire courant avec des détails
ls -l

# Liste les fichiers et dossiers du répertoire courant,
# y compris les fichiers cachés
ls -a

# Liste le contenu d'un dossier spécifique
ls /home/alice/Documents
```

#### `cd` - changer de répertoire

```bash title="Terminal Bash/Zsh"
# Aller dans le dossier Documents (relatif)
cd Documents

# Aller dans le dossier Documents (absolu)
cd /home/alice/Documents

# Remonter d'un niveau dans l'arborescence
cd ..

# Remonter de deux niveaux dans l'arborescence
cd ../..

# Aller dans le dossier personnel de l'utilisateur·trice
cd ~
```

### Autocomplétion avec `Tab`

La touche `Tab` est votre meilleure alliée : elle complète automatiquement les
noms de fichiers, dossiers et commandes.

```bash
cd Doc<Tab>   # Complète en « cd Documents/ » si le dossier existe
```

Si plusieurs correspondances existent, appuyez **deux fois** sur `Tab` pour
toutes les afficher.

### Historique des commandes

Le terminal conserve un historique des commandes saisies :

- **Flèche haut / bas** : parcourir l'historique.
- `Ctrl + R` : rechercher dans l'historique par mot-clé.
- `history` : afficher toutes les commandes de l'historique.

### Résumé

`pwd`, `ls` et `cd` forment le **trio fondamental** de la navigation.

Maîtriser les chemins absolus et relatifs, ainsi que l'autocomplétion par `Tab`,
rend le travail en ligne de commande fluide et rapide.

![bg right:40% vertical][illustration-terminal]

## Manipulation de fichiers

Après la navigation, voici les commandes les plus utiles pour manipuler fichiers
et dossiers, et afficher leur contenu.

![bg right:40% vertical][illustration-terminal]

### Créer, copier, déplacer ou supprimer des fichiers (1/3)

⚠️ `rm` supprime **définitivement**, sans corbeille. Prudence avec `rm -r` : il
n'y a pas de "Ctrl+Z".

```bash
# Créer un dossier
mkdir mon-dossier

# Créer un dossier et tous les dossiers parents nécessaires
mkdir -p chemin/vers/dossier

# Créer un fichier vide
touch fichier.txt
```

### Créer, copier, déplacer ou supprimer des fichiers (2/3)

```bash
# Copier un fichier d'une source vers une destination
cp source.txt destination.txt

# Copier un dossier et son contenu d'une source vers une destination
# (l'option -r est nécessaire pour copier récursivement)
cp -r dossier-source/ copie-du-dossier-source/

# Déplacer ou renommer un fichier
mv ancien-nom.txt nouveau-nom.txt

# Déplacer un fichier vers un autre dossier
mv fichier.txt ~/Documents/
```

### Créer, copier, déplacer ou supprimer des fichiers (3/3)

```bash
# Supprimer un fichier
rm fichier.txt

# Supprimer un dossier et son contenu
# (l'option -r est nécessaire pour supprimer récursivement)
rm -r dossier/

# Supprimer un dossier et son contenu avec confirmation pour chaque fichier
rm -ri dossier/
```

### Afficher le contenu d'un fichier

```bash title="Terminal Bash/Zsh"
# Affiche le contenu d'un fichier
cat fichier.txt

# Affiche le contenu d'un fichier avec pagination (quitter avec q)
less fichier.txt

# Affiche les 20 premières lignes d'un fichier
head -20 fichier.txt

# Affiche les 20 dernières lignes d'un fichier
tail -20 fichier.txt
```

### Rechercher des fichiers et du texte dans des fichiers (1/2)

```bash title="Terminal Bash/Zsh"
# Chercher un fichier par nom (ici, tous les fichiers .md dans le dossier courant)
find . -name "*.md"

# Chercher un fichier par nom dans le dossier personnel
# (ici, un fichier nommé "rapport.pdf")
find ~ -name "rapport.pdf"

# Chercher du texte dans des fichiers (ici, le mot "mot" dans fichier.txt)
grep "mot" fichier.txt
```

### Rechercher des fichiers et du texte dans des fichiers (2/2)

```bash
# Chercher du texte dans tous les fichiers d'un dossier
# (ici, le mot "erreur" dans le dossier logs/)
grep -r "erreur" logs/

# Afficher le numéro de ligne où le texte est trouvé dans un fichier
grep -n "TODO" *.py
```

### Résumé

Un ensemble restreint de commandes suffit pour la plupart des tâches courantes :

`mkdir`, `touch`, `cp`, `mv`, `rm`, `cat`, `grep`, `find`.

![bg right:40% vertical][illustration-terminal]

## Écrire et modifier des fichiers

Parfois, on ne peut pas utiliser un éditeur graphique (comme lors d'une
connexion à un serveur distant via SSH).

On utilise alors un éditeur en ligne de commande : **nano** (simple) ou **Vim**
(puissant, mais courbe d'apprentissage plus raide).

![bg right:40% vertical][illustration-terminal]

### Éditer avec `nano`

```bash
nano fichier.txt   # Ouvre le fichier dans l'éditeur nano
```

Dans l'interface de `nano`, le symbole `^` représente la touche `Ctrl` :

- `Ctrl + O` : enregistrer le fichier.
- `Ctrl + X` : quitter l'éditeur.

### Résumé

Un éditeur graphique comme Visual Studio Code est généralement plus agréable
dans l'usage quotidien.

Mais savoir utiliser un éditeur en ligne de commande est important quand
l'interface graphique n'est pas disponible ou pour éditer rapidement des
fichiers de configuration simples.

![bg right:40% vertical][illustration-terminal]

## Écrire et exécuter un script simple

Un **script** est un fichier texte contenant une séquence de commandes exécutées
automatiquement par le shell.

Il permet d'**automatiser** des tâches répétitives et d'enchaîner des opérations
en une seule commande.

![bg right:40% vertical][illustration-terminal]

### Créer un script Bash

Un script Bash a l'extension `.sh` :

```bash
#!/usr/bin/env bash
echo "Hello, world !"
```

La première ligne (`#!/usr/bin/env bash`) est le **shebang** : elle indique quel
interpréteur utiliser pour exécuter le script.

### Rendre un script exécutable

Par défaut, un fichier texte n'est pas exécutable. On lui donne la permission
d'exécution avec `chmod` ("change mode") :

```bash
chmod +x mon-script.sh
```

L'option `+x` ajoute la permission d'exécution. Sans elle : erreur "Permission
denied".

### Exécuter un script

Une fois le script exécutable :

```bash
./mon-script.sh
```

Le `./` indique que le script se trouve dans le **répertoire courant**.

### Variables

Une **variable** est un espace de stockage qui contient une valeur (texte,
nombre, etc.) :

```bash
#!/usr/bin/env bash
NOM="Alice"
echo "Bonjour, $NOM !"
```

On utilise le `$` devant le nom de la variable pour lire sa valeur.

Le script affiche : `Bonjour, Alice !`.

### Variables d'environnement

Prédéfinies par le système (ou l'utilisateur·trice), elles sont disponibles dans
tous les scripts et commandes sans avoir à les définir. Exemples :

```bash
#!/usr/bin/env bash
echo "Répertoire personnel : $HOME"
echo "Connecté·e en tant que : $USER"
```

`HOME` contient le répertoire personnel, `USER` le nom du compte connecté.

### Résumé

Écrire des scripts est une compétence clé pour **automatiser** les tâches
répétitives.

Un script Bash commence par un shebang, s'exécute après un `chmod +x`, et peut
utiliser des variables et d'autres structures que vous étudierez dans de futurs
cours.

![bg right:40% vertical][illustration-terminal]

## Questions

<!-- _class: lead -->

Est-ce que vous avez des questions ?

## Et maintenant ?

- Prendre en main le terminal et les commandes de base.
- Écrire un premier script Bash et l'exécuter.
- Valider la configuration du cours à l'aide de ce script.

**But** : gagner en aisance et en efficacité en ligne de commande et valider la
configuration de votre environnement de travail.

## À vous de jouer !

<div class="two-thirds-one-third-columns">
<div>

Appliquez le contenu "[Travailler avec le terminal][contenu-complet]" :

- Lisez le contenu et les instructions.
- Appliquez les exercices pratiques.
- Si vous ne finissez pas en classe, finissez le contenu à la maison.

N'hésitez pas à vous entraidez ou nous solliciter si vous avez des difficultés.

</div>
<div class="center">

[![contenu-complet-qr-code]][contenu-complet]

[heig-vd-upinfo-course.github.io/heig-vd-upinfo-course][contenu-complet]

</div>
</div>

## Sources

- [Illustration principale][illustration-principale] par
  [Growtika](https://unsplash.com/@growtika) sur
  [Unsplash](https://unsplash.com/photos/a-computer-with-a-keyboard-and-mouse-yGQmjh2uOTg).
- [Illustration][illustration-terminal] par
  [Gabriel Heinzer](https://unsplash.com/@6heinz3r) sur
  [Unsplash](https://unsplash.com/photos/text-4Mw7nkQDByk).

<!-- URLs -->

[license]:
	https://github.com/heig-vd-upinfo-course/heig-vd-upinfo-course/blob/main/LICENSE.md
[contenu-complet]:
	https://heig-vd-upinfo-course.github.io/heig-vd-upinfo-course/08-travailler-avec-le-terminal/01-introduction-et-ressources/
[contenu-complet-qr-code]:
	https://quickchart.io/qr?format=png&ecLevel=Q&size=300&margin=1&text=https://heig-vd-upinfo-course.github.io/heig-vd-upinfo-course/08-travailler-avec-le-terminal/01-introduction-et-ressources/

<!-- Illustrations -->

[illustration-principale]:
	https://images.unsplash.com/photo-1537498425277-c283d32ef9db?fit=crop&h=720
[illustration-terminal]:
	https://images.unsplash.com/photo-1629654297299-c8506221ca97?fit=crop&h=720
