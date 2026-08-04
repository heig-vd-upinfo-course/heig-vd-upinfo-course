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

  \newcommand{\nametable}{%
    \begin{center}%
      \renewcommand{\arraystretch}{2}%
      \setlength{\tabcolsep}{10pt}%
      \begin{tabular}{ l p{8cm} }%
        Nom : & \\%
        \hline%
      \end{tabular}%
    \end{center}%
  }
---

<!--
# Utilisation

```sh
docker run \
  --rm --volume "$(pwd):/data" \
  --user "$(id -u):$(id -g)" \
  pandoc/latex -o UPINFO_DONNEES_SUR_MON_ORDINATEUR.pdf _IMPRESSION.md
```
-->

# Données sur mon ordinateur

```{=latex}
\begin{table}[h!]
	{\rowcolors{1}{lightgray!10}{white}
		\centering
		\begin{tabular}{|p{0.33\textwidth}|p{0.6\textwidth}|}
			\hline
			\multicolumn{2}{|l|}{\textbf{Données générales}} \\
			\hline
			Marque                              &                                                                     \\
			\hline
			Modèle                              &                                                                     \\
			\hline
			Année de sortie                     &                                                                     \\
			\hline
			Fiche produit                       &                                                                     \\
			\hline
			\multicolumn{2}{|l|}{\textbf{Spécifications techniques}} \\
			\hline
			Système d'exploitation (OS)         & $\square$ Windows \quad $\square$ macOS \quad $\square$ Linux         \\
			\hline
			Version du système d'exploitation   &                                                                       \\
			\hline
			Architecture processeur (CPU)       & $\square$ x86/x64 (AMD/Intel) \quad $\square$ ARM (Apple Silicon)     \\
			\hline
			Mémoire vive (RAM) actuelle         &                                                                       \\
			\hline
			Mémoire vive (RAM) maximale         &                                                                       \\
			\hline
			Stockage actuel                     &                                                                       \\
			\hline
			Périphériques externes              & $\square$ Souris \quad $\square$ Clé USB \quad $\square$ Stockage externe \quad $\square$ Autre \\
			\hline
			Touche(s) pour le BIOS/UEFI         &                                                                       \\
			\hline
			Version du BIOS/UEFI                &                                                                       \\
			\hline
			\multicolumn{2}{|l|}{\textbf{Comptes}} \\
			\hline
			Nom d'utilisateur OS                &                                                                       \\
			\hline
			Nom d'utilisateur WSL               &                                                                       \\
			\hline
			Nom d'utilisateur HES-SO (AAI)      &                                                                       \\
			\hline
			Nom d'utilisateur GitHub            &                                                                       \\
			\hline
			Adresse mail HES-SO                 &                                                                       \\
			\hline
			Adresse mail HEIG-VD                &                                                                       \\
			\hline
			Adresse mail GitHub                 &                                                                       \\
			\hline
			\multicolumn{2}{|l|}{\textbf{Configuration HEIG-VD}} \\
			\hline
			Logiciels installés et configurés   & $\square$ Gestionnaire de mots de passe                       \\
			                                    & $\square$ Application 2FA                                     \\
			                                    & $\square$ VPN                                                 \\
			                                    & $\square$ Pilotes d'impression                                \\
			                                    & $\square$ Terminal et shell                                   \\
			                                    & $\square$ Services de synchronisation de fichiers              \\
			                                    & $\square$ Antivirus (Windows uniquement)                      \\
			                                    & $\square$ WSL (Windows uniquement)                            \\
			                                    & $\square$ Gestionnaire de paquets (WinGet, Homebrew ou apt)   \\
			\hline
		\end{tabular}}
\end{table}
```

```{=latex}
\newpage
```

```{=latex}
\begin{table}[h!]
	{\rowcolors{1}{lightgray!10}{white}
		\centering
		\begin{tabular}{|p{0.33\textwidth}|p{0.6\textwidth}|}
			\hline
			Logiciels installés et configurés   & $\square$ Firefox (avec uBlock Origin et Bitwarden)           \\
			                                    & $\square$ Chrome (avec uBlock Origin Lite et Bitwarden)       \\
			                                    & $\square$ Visual Studio Code                                  \\
			                                    & $\square$ Secure Shell (SSH)                                               \\
			                                    & $\square$ Git et GitHub                                               \\
			                                    & $\square$ Docker                                                      \\
			                                    & $\square$ VLC                                                         \\
			                                    & $\square$ La suite Microsoft Office                                   \\
			                                    & $\square$ La suite Adobe                                              \\
			                                    & $\square$ Un client de messagerie (Thunderbird/Apple Mail/Outlook)    \\
			                                    & $\square$ Un outil pour gérer les archives (7zip/Keka)                \\
			                                    & $\square$ Un outil pour traiter des documents PDF (Acrobat Reader)    \\
			                                    & $\square$ Un outil pour sauvegarder/restaurer ses données             \\
			                                    & $\square$ Un outil de prise de notes Markdown                         \\
			                                    & $\square$ Applications par défaut et au démarrage                         \\
			\hline
			\multicolumn{2}{|l|}{\textbf{Acquis du cours}} \\
			\hline
			Je suis à l'aise avec & $\square$ Connexion WiFi                                      \\
			                                            & $\square$ Accès aux e-mails                                   \\
			                                            & $\square$ Impression et numérisation de documents                             \\
			                                            & $\square$ Différences entre les composants matériels et logiciels       \\
			                                            & $\square$ Différences entre les systèmes d'exploitation (OS)                        \\
			                                            & $\square$ Différences entre l'environnement Windows et WSL                        \\
			                                            & $\square$ Différences entre les fichiers locaux et distants                        \\
			                                            & $\square$ Notions de système de fichiers et sensibilité à la casse                        \\
			                                            & $\square$ Différences entre les dossiers et les fichiers                        \\
			                                            & $\square$ Installation de logiciels à l'aide d'un gestionnaire de paquets                          \\
			                                            & $\square$ Mise à jour du système d'exploitation et logiciels                         \\
			                                            & $\square$ Gestion de mots de passe et 2FA                     \\
			                                            & $\square$ Navigation dans le système de fichiers (GUI et terminal)             \\
			                                            & $\square$ Création et partage d'une archive                   \\
			                                            & $\square$ Prise de notes Markdown                         \\
			                                            & $\square$ Sauvegarde et restauration de documents             \\
			                                            & $\square$ Ouverture et usage d'un terminal                    \\
			                                            & $\square$ Exécution de commandes et de scripts dans un terminal             \\
			\hline
		\end{tabular}}
\end{table}
```
