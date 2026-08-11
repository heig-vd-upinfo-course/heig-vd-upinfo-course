---
marp: true
theme: custom-marp-theme
size: 16:9
paginate: true
author: L. Delafontaine et V. Guidoux, avec l'aide de GitHub Copilot
description:
  Prendre des notes Markdown pour l'unité préparatoire d'informatique pour
  ingénierie des médias à la HEIG-VD, Suisse
url: https://heig-vd-upinfo-course.github.io/heig-vd-upinfo-course/07-prendre-des-notes-markdown/presentation.html
header: "[**Prendre des notes Markdown**][contenu-complet]"
footer:
  "[**HEIG-VD**](https://heig-vd.ch) - [UPInfo Course
  2026-2027](https://github.com/heig-vd-upinfo-course/heig-vd-upinfo-course) -
  [CC BY-SA 4.0][license]"
headingDivider: 6
math: mathjax
---

# Prendre des notes Markdown

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

**Markdown** est un langage de balisage léger : il permet d'écrire du texte mis
en forme avec une syntaxe simple et lisible (documentation, `README`, wikis,
blogs, prise de notes).

C'est un investissement minimal pour un bénéfice durable : vous l'utiliserez
tout au long de votre formation et de votre carrière.

## Présentation de Markdown

Créé en 2004 par John Gruber et Aaron Swartz, Markdown sépare le **contenu** de
la **mise en forme**.

Un fichier `.md` est un simple fichier texte, ouvrable partout et facile à
**versionner avec Git**. L'entièreté de ce site et les présentations sont
d'ailleurs écrites en Markdown.

![bg right:40% w:70%](https://upload.wikimedia.org/wikipedia/commons/4/48/Markdown-mark.svg)

### Syntaxe de base

La mise en forme est indiquée par des symboles spéciaux appelés **balises**, qui
entourent le texte.

Voyons les balises les plus courantes.

![bg right:40% w:70%](https://upload.wikimedia.org/wikipedia/commons/4/48/Markdown-mark.svg)

#### Titres

Le nombre de `#` détermine le niveau du titre (de 1 à 6) :

```markdown
# Titre de niveau 1

## Titre de niveau 2

### Titre de niveau 3
```

### Mise en évidence

Il est possible de mettre du texte en **gras**, en _italique_ ou ~~barré~~ :

```markdown
**Texte en gras** _Texte en italique_ ~~Texte barré~~
```

Cela permet de mettre en avant des mots ou des phrases importantes dans vos
notes.

#### Listes

Trois types de listes : non ordonnée, ordonnée, avec cases à cocher.

<div class="two-columns">
<div>

```markdown
- Élément de liste non ordonnée
- Autre élément

1. Premier élément
2. Deuxième élément

- [ ] Case à cocher non cochée
- [x] Case à cocher cochée
```

</div>
<div>

- Élément de liste non ordonnée
- Autre élément

1. Premier élément
2. Deuxième élément

- [ ] Case à cocher non cochée
- [x] Case à cocher cochée

</div>
</div>

#### Liens et images (1/2)

```markdown
[Texte du lien](https://exemple.com)

![Texte alternatif](https://github.com/[...]/paperclip.png)
```

Le texte alternatif s'affiche si l'image ne peut pas être chargée.

Les liens et images acceptent des chemins **absolus** (URL) ou **relatifs**
(fichier du projet).

#### Liens et images (2/2)

[Texte du lien](https://exemple.com)

![w:400px](https://github.com/heig-vd-upinfo-course/heig-vd-upinfo-course/blob/main/src/assets/paperclip.png?raw=true)

#### Code (1/2)

Code en ligne : entourez le texte de backticks.

```markdown
Voici une commande `ls -la` dans le texte.
```

**Résultat**

Voici une commande `ls -la` dans le texte.

#### Code (2/2)

Bloc de code avec coloration : trois backticks + le langage.

````markdown
```python
print("Bonjour le monde")
```
````

**Résultat**

```python
print("Bonjour le monde")
```

#### Tableaux

Des barres verticales `|` séparent les colonnes ; les `:` gèrent l'alignement.

```markdown
| Colonne A | Colonne B | Colonne C |
| :-------- | :-------: | --------: |
| Gauche    |  Centre   |    Droite |
```

| Colonne A | Colonne B | Colonne C |
| :-------- | :-------: | --------: |
| Gauche    |  Centre   |    Droite |

#### Citations

```markdown
> Ceci est une citation.
```

**Résultat**

> Ceci est une citation.

#### Séparateur horizontal

Un séparateur horizontal s'obtient avec trois tirets sur une ligne :

```markdown
---
```

### Variantes de Markdown

Plusieurs variantes existent selon les plateformes :

- **CommonMark** : spécification standardisée, la référence.
- **GitHub Flavored Markdown (GFM)** : cases à cocher, tableaux, coloration
  syntaxique.
- **MDX** : Markdown enrichi de composants JSX, utilisé sur ce site.

Les différences sont mineures pour un usage courant.

### Résumé

Markdown est simple à apprendre : quelques symboles suffisent pour structurer la
grande majorité des documents.

C'est un format **universel, portable** et conçu pour rester lisible même sans
rendu graphique.

![bg right:40% w:70%](https://upload.wikimedia.org/wikipedia/commons/4/48/Markdown-mark.svg)

## Questions

<!-- _class: lead -->

Est-ce que vous avez des questions ?

## Et maintenant ?

- Choisir un outil (Visual Studio Code ou Obsidian) et prenez vos notes en
  Markdown.
- S'entraîner-vous à la syntaxe de base (titres, listes, liens, code, tableaux).
- Exporter une note en PDF (extension ou Pandoc).

**But** : adopter Markdown comme format durable pour vos notes.

## À vous de jouer !

<div class="two-thirds-one-third-columns">
<div>

Appliquez le contenu "[Prendre des notes Markdown][contenu-complet]" :

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

<!-- URLs -->

[license]:
	https://github.com/heig-vd-upinfo-course/heig-vd-upinfo-course/blob/main/LICENSE.md
[contenu-complet]:
	https://heig-vd-upinfo-course.github.io/heig-vd-upinfo-course/07-prendre-des-notes-markdown/01-introduction-et-ressources/
[contenu-complet-qr-code]:
	https://quickchart.io/qr?format=png&ecLevel=Q&size=300&margin=1&text=https://heig-vd-upinfo-course.github.io/heig-vd-upinfo-course/07-prendre-des-notes-markdown/01-introduction-et-ressources/

<!-- Illustrations -->

[illustration-principale]:
	https://images.unsplash.com/photo-1537498425277-c283d32ef9db?fit=crop&h=720
