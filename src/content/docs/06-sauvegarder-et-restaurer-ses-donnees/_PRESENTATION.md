---
marp: true
theme: custom-marp-theme
size: 16:9
paginate: true
author: L. Delafontaine et V. Guidoux, avec l'aide de GitHub Copilot
description:
  Sauvegarder et restaurer ses données pour l'unité préparatoire d'informatique
  pour ingénierie des médias à la HEIG-VD, Suisse
url: https://heig-vd-upinfo-course.github.io/heig-vd-upinfo-course/06-sauvegarder-et-restaurer-ses-donnees/presentation.html
header: "[**Sauvegarder et restaurer ses données**][contenu-complet]"
footer:
  "[**HEIG-VD**](https://heig-vd.ch) - [UPInfo Course
  2026-2027](https://github.com/heig-vd-upinfo-course/heig-vd-upinfo-course) -
  [CC BY-SA 4.0][license]"
headingDivider: 6
math: mathjax
---

# Sauvegarder et restaurer ses données

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

Perdre ses données est une expérience frustrante, parfois catastrophique : un
disque qui lâche, un ordinateur volé, une mauvaise manipulation...

Mettre en place une **stratégie de sauvegarde** vous permet de dormir
tranquille.

## Stratégie de sauvegarde 3-2-1

La règle **3-2-1** est la stratégie de sauvegarde la plus recommandée.

Simple à retenir, elle réduit considérablement le risque de perte de données
face aux scénarios les plus courants.

![bg right:40%][illustration-strategie-de-sauvegarde-3-2-1]

### La règle 3-2-1

- **3** copies de vos données : l'original et deux sauvegardes.
- **2** supports de stockage différents : disque interne + disque externe ou
  service cloud.
- **1** copie hors site : conservée dans un lieu physique différent (chez un·e
  proche, service cloud).

Elle protège contre les pannes, incendies, vols et ransomwares (qui chiffrent
les fichiers locaux, mais pas les sauvegardes hors ligne).

### Pourquoi deux supports différents ?

Deux sauvegardes sur le même type de support (deux disques dans la même machine,
deux clés USB dans le même sac) ne protègent pas contre un incendie, un vol ou
une panne simultanée.

**Diversifier les supports réduit ce risque.**

![bg right:40%][illustration-strategie-de-sauvegarde-3-2-1]

### Pourquoi une copie hors site ?

Si votre domicile ou bureau est inaccessible (incendie, inondation), une copie
dans le cloud ou chez un·e proche reste accessible.

C'est cette copie qui **fait la différence** dans les situations les plus
graves.

![bg right:40%][illustration-strategie-de-sauvegarde-3-2-1]

### Exemple concret

| Copie | Support                            | Emplacement |
| ----- | ---------------------------------- | ----------- |
| 1     | Ordinateur (disque interne)        | Chez soi    |
| 2     | Disque dur externe                 | Chez soi    |
| 3     | Disque externe distant ou le cloud | Hors site   |

### Sauvegarde vs synchronisation

Un service de synchronisation n'est **pas** une sauvegarde à part entière.

Si vous supprimez un fichier par accident, il est supprimé partout. Une vraie
sauvegarde conserve des **instantanés** (snapshots) à différents moments, pour
revenir à une version antérieure.

![bg right:40%][illustration-sauvegarde-vs-synchronisation]

### Résumé

La règle 3-2-1 est simple et efficace :

- **3** copies,
- sur **2** supports différents,
- dont **1** hors site.

Appliquer ce principe vous protège contre la grande majorité des scénarios de
perte de données.

![bg right:40%][illustration-strategie-de-sauvegarde-3-2-1]

## Installer un outil de sauvegarde

Chaque système d'exploitation propose des outils **natifs** pour sauvegarder ses
données.

Il existe aussi des solutions **tierces** offrant plus de flexibilité.

![bg right:40%][illustration-windows] ![bg right:40%][illustration-macos]
![bg right:40% vertical][illustration-linux]

### Outils natifs

- **Windows — Historique des fichiers** : sauvegarde automatiquement les
  versions de vos fichiers sur un disque externe ou un partage réseau.
- **macOS — Time Machine** : sauvegarde automatique et incrémentale de tout le
  Mac (horaire, quotidienne, hebdomadaire).
- **Linux** : `rsync` (synchronisation en ligne de commande) ou `restic`
  (sauvegarde chiffrée et dédupliquée).

### Limites des outils natifs

- Limités à un **écosystème** (Windows, macOS, Linux), peu compatibles entre
  eux.
- Ne sauvegardent pas toujours vers des services cloud tiers.
- Fonctionnalités avancées parfois absentes (planification, compression,
  chiffrement, versions).

Suffisants pour un usage courant sur un seul système ; sinon, envisagez une
solution tierce.

### Alternatives tierces

Pour une sauvegarde flexible et multi-plateforme :

- **Duplicati** : open source, interface graphique, nombreuses destinations
  (local, FTP, S3, Backblaze B2, OneDrive, Google Drive, etc.) avec chiffrement.
- **Kopia** : sauvegarde et synchronisation, interface graphique, mêmes types de
  destinations, avec chiffrement.

### Résumé

Time Machine (macOS) et l'Historique des fichiers (Windows) sont natifs, faciles
à configurer et suffisants pour un usage courant.

Pour plus de flexibilité et le multi-plateforme, des outils comme **Duplicati**
ou **Kopia** sont de bonnes alternatives.

![bg right:40%][illustration-windows] ![bg right:40%][illustration-macos]
![bg right:40% vertical][illustration-linux]

## Identifier les fichiers à sauvegarder

Avant de sauvegarder, il faut identifier ce qui doit l'être et ce qui peut être
ignoré. Cela optimise l'espace et le temps de sauvegarde.

⚠️ Dans le doute, mieux vaut sauvegarder **trop** que risquer de perdre des
données essentielles.

![bg right:40%][illustration-identifier-les-fichiers-a-sauvegarder]

### Fichiers à sauvegarder

- **Documents personnels** : travail, projets, rapports, CV...
- **Photos et vidéos** : souvent irremplaçables.
- **Musique et fichiers audio** à conserver.
- **Configurations et paramètres** : config système, **clés SSH**, etc.
- **Données administratives et sensibles** : factures, documents légaux.
- **Favoris et signets** du navigateur (à exporter).
- **Codes de secours et clés de récupération** de l'authentification à deux
  facteurs (2FA).

### Fichiers à ignorer

- **Fichiers système et applications** : généralement réinstallables.
- **Fichiers temporaires, caches** : régénérables ou re-téléchargeables.
- **Code source et projets en cours** : normalement déjà versionnés et poussés
  sur un dépôt distant (GitHub, GitLab, etc.).

### Résumé

Concentrez-vous sur les fichiers **irremplaçables et importants**, tout en
évitant les fichiers temporaires ou facilement récupérables.

Mieux vaut sauvegarder trop que pas assez, sans pour autant encombrer
inutilement votre sauvegarde.

![bg right:40%][illustration-identifier-les-fichiers-a-sauvegarder]

## Sauvegarder ses données

Une sauvegarde n'a de valeur que si elle est effectuée **régulièrement** et
**vérifiée**.

![bg right:40%][illustration-sauvegarder-ses-donnees]

### Fréquence de sauvegarde

Elle dépend de ce que vous pouvez vous permettre de perdre :

- **Quotidienne** : documents en cours de modification active (projets, cours).
- **Hebdomadaire** : fichiers moins souvent modifiés.
- **Avant une opération risquée** : réinstallation, mise à jour majeure.

La plupart des outils automatisent cette fréquence.

### Sauvegarde incrémentale vs complète

- **Complète** : copie tous les fichiers à chaque fois. Simple, mais lente et
  volumineuse.
- **Incrémentale** : ne copie que les fichiers modifiés depuis la dernière
  sauvegarde. Plus rapide et économe en espace.

L'incrémentale est le mode de Time Machine et de la plupart des outils modernes.

### Vérifier ses sauvegardes

Une sauvegarde non testée est une sauvegarde dont on ignore si elle fonctionne.
Vérifiez régulièrement que :

- Les sauvegardes s'exécutent bien (journaux, notifications).
- Vous pouvez accéder aux fichiers sauvegardés et les ouvrir.
- La destination dispose d'assez d'espace libre.

### Résumé

Une bonne sauvegarde est **régulière, automatisée et vérifiée**.

Concentrez-vous sur vos données irremplaçables et assurez-vous que l'outil
s'exécute correctement et que les fichiers restent accessibles.

![bg right:40%][illustration-sauvegarder-ses-donnees]

## Restaurer ses données

Savoir **restaurer** ses données est aussi important que de les sauvegarder :
c'est souvent dans l'urgence qu'on en a besoin.

![bg right:40%][illustration-restaurer-ses-donnees]

### Testez la restauration

Il est utile de s'y entraîner **avant** que cela ne devienne nécessaire.

Tester la restauration au moins une fois garantit que votre sauvegarde
**fonctionne réellement**.

![bg right:40%][illustration-restaurer-ses-donnees]

## Que faire en cas de désastre

Même avec une bonne stratégie, l'imprévu arrive : panne matérielle, vol,
ransomware, suppression accidentelle sans sauvegarde.

![bg right:40%][illustration-restaurer-ses-donnees]

### Garder son calme

La première règle est de **ne pas paniquer et ne pas agir précipitamment**.

Une action précipitée (continuer à utiliser le disque, copier des fichiers)
réduit souvent les chances de récupération.

![bg right:40%][illustration-restaurer-ses-donnees]

### Suppression accidentelle

- **Avec sauvegarde** : identifiez la dernière sauvegarde contenant le fichier,
  puis restaurez-le.
- **Sans sauvegarde** : vérifiez d'abord la **corbeille**, puis un logiciel de
  récupération (**Recuva** sur Windows, **PhotoRec/TestDisk** sur macOS/Linux).

Plus vous utilisez le disque après la suppression, moins les chances de
récupération sont bonnes.

### Attaque par ransomware

Un ransomware chiffre vos fichiers et réclame une rançon. En cas d'infection :

1. **Déconnectez** l'ordinateur du réseau (Wi-Fi et câble).
2. **Ne payez pas** la rançon : aucune garantie, et cela finance le crime.
3. **Signalez** l'incident (en Suisse : `ncsc.admin.ch`).
4. Restaurez depuis une **sauvegarde hors ligne** récente.
5. Consultez `nomoreransom.org` (outils de déchiffrement gratuits).

### Panne matérielle

Si le disque est physiquement endommagé (cliquetis, non reconnu) :

- **Éteignez** l'ordinateur pour ne pas aggraver la panne.
- Ne tentez pas de le réparer vous-même si les données sont critiques.
- Consultez un·e **professionnel·le** de la récupération de données (salles
  blanches, coûteux mais efficace).

### Le meilleur remède : la prévention

Aucune récupération n'est garantie.

La seule protection fiable reste une **sauvegarde régulière, testée et hors
site**. Son coût est toujours inférieur à celui de la perte de données.

![bg right:40%][illustration-restaurer-ses-donnees]

### Résumé

Face à une perte de données, **ne pas aggraver** la situation est la première
précaution.

Une sauvegarde hors ligne récente est souvent la seule solution fiable. **La
prévention reste préférable à la récupération.**

![bg right:40%][illustration-restaurer-ses-donnees]

## Questions

<!-- _class: lead -->

Est-ce que vous avez des questions ?

## Et maintenant ?

- Installer un outil de sauvegarde et configurer votre première sauvegarde.
- Appliquer la règle **3-2-1** à vos données importantes.
- Tester une **restauration** pour vérifier que tout fonctionne.

**But** : protéger durablement vos données irremplaçables.

## À vous de jouer !

<div class="two-thirds-one-third-columns">
<div>

Appliquez le contenu "[Sauvegarder et restaurer ses données][contenu-complet]" :

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

## Sources (1/2)

- [Illustration principale][illustration-principale] par
  [Growtika](https://unsplash.com/@growtika) sur
  [Unsplash](https://unsplash.com/photos/a-computer-with-a-keyboard-and-mouse-yGQmjh2uOTg).
- [Illustration][illustration-strategie-de-sauvegarde-3-2-1] par
  [Matthieu Beaumont](https://unsplash.com/@matthieu_cabri) sur
  [Unsplash](https://unsplash.com/photos/a-very-large-array-of-electronic-equipment-in-a-room-iYnpYeyu57k).
- [Illustration][illustration-sauvegarde-vs-synchronisation] par
  [max fuchs](https://unsplash.com/@designfuchs) sur
  [Unsplash](https://unsplash.com/photos/white-clouds-and-blue-sky-f7DRB6DKdDg).
- [Illustration][illustration-windows] par
  [MicAmel Majanovicrosoft](https://unsplash.com/@just_amelo) sur
  [Unsplash](https://unsplash.com/photos/white-painted-wall-close-up-photography-r8r2I7FsaIE).
- [Illustration][illustration-macos] par
  [an_vision](https://unsplash.com/@anvision) sur
  [Unsplash](https://unsplash.com/photos/red-apple-fruit-gDPaDDy6_WE).
- [Illustration][illustration-linux] par
  [Pam Ivey](https://unsplash.com/@pamivey) sur
  [Unsplash](https://unsplash.com/photos/two-penguin-standing-c0Y30cWbyEc).
- [Illustration][illustration-identifier-les-fichiers-a-sauvegarder] par
  [Sajad Nori](https://unsplash.com/@sajadnori) sur
  [Unsplash](https://unsplash.com/photos/a-table-topped-with-lots-of-assorted-metal-objects-JGxFFCKu5wQ).
- [Illustration][illustration-sauvegarder-ses-donnees] par
  [Ruan Richard Rodrigues](https://unsplash.com/@ricdeoliveira) sur
  [Unsplash](https://unsplash.com/photos/green-and-white-abstract-painting-XKjCV0Bx59A).

## Sources (2/2)

- [Illustration][illustration-restaurer-ses-donnees] par
  [Ante Gudelj](https://unsplash.com/@antegudelj) sur
  [Unsplash](https://unsplash.com/photos/red-heart-shaped-hanging-decor-P-JX1Agg0Ts).

<!-- URLs -->

[license]:
	https://github.com/heig-vd-upinfo-course/heig-vd-upinfo-course/blob/main/LICENSE.md
[contenu-complet]:
	https://heig-vd-upinfo-course.github.io/heig-vd-upinfo-course/06-sauvegarder-et-restaurer-ses-donnees/01-introduction-et-ressources/
[contenu-complet-qr-code]:
	https://quickchart.io/qr?format=png&ecLevel=Q&size=300&margin=1&text=https://heig-vd-upinfo-course.github.io/heig-vd-upinfo-course/06-sauvegarder-et-restaurer-ses-donnees/01-introduction-et-ressources/

<!-- Illustrations -->

[illustration-principale]:
	https://images.unsplash.com/photo-1537498425277-c283d32ef9db?fit=crop&h=720
[illustration-strategie-de-sauvegarde-3-2-1]:
	https://images.unsplash.com/photo-1639066648921-82d4500abf1a?fit=crop&h=720
[illustration-sauvegarde-vs-synchronisation]:
	https://images.unsplash.com/photo-1587979245915-65f8ea21c8db?fit=crop&h=720
[illustration-windows]:
	https://images.unsplash.com/photo-1563693998336-93c10e5d8f91?fit=crop&h=720
[illustration-macos]:
	https://images.unsplash.com/photo-1568702846914-96b305d2aaeb?fit=crop&h=720
[illustration-linux]:
	https://images.unsplash.com/photo-1514125067037-8e669dd37638?fit=crop&h=720
[illustration-identifier-les-fichiers-a-sauvegarder]:
	https://images.unsplash.com/photo-1689535090647-30d91848abbf?fit=crop&h=720
[illustration-sauvegarder-ses-donnees]:
	https://images.unsplash.com/photo-1617829556054-808e90da2d5d?fit=crop&h=720
[illustration-restaurer-ses-donnees]:
	https://images.unsplash.com/photo-1594895071378-7bfc24ac55ea?fit=crop&h=720
