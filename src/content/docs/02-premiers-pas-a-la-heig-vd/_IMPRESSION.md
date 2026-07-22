---
lang: "fr"
geometry: "top=2cm, bottom=2cm, left=2cm, right=2cm"
fontsize: "11pt"
papersize: "a4"
header-includes: |
  \usepackage{fancyhdr}

  \newcommand{\institution}{HEIG-VD}
  \newcommand{\coursename}{UPInfo 2026-2027}
  \newcommand{\session}{Août 2026}

  \pagestyle{fancy}
  \fancyhead[L]{\coursename}
  \fancyhead[R]{Nom :\hspace{4cm}}
  \fancyfoot[LO,LE]{\institution}
  \fancyfoot[CO,CE]{\thepage}
  \fancyfoot[RO,RE]{\session}
  \renewcommand{\footrulewidth}{0.4pt}

  \usepackage[table]{xcolor}
  \usepackage{multirow}
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
			\cline{2-2}
			Modèle                              &                                                                     \\
			\cline{2-2}
			Année                               &                                                                     \\
			\cline{2-2}
			Fiche produit                       &                                                                     \\
			\hline
			\multicolumn{2}{|l|}{\textbf{Spécifications techniques}} \\
			\hline
			Système d'exploitation (OS)         & $\square$ Windows \quad $\square$ macOS \quad $\square$ Linux         \\
			\cline{2-2}
			Version                             &                                                                       \\
			\cline{2-2}
			Architecture processeur (CPU)       & $\square$ x86/x64 (AMD/Intel) \quad $\square$ ARM (Apple Silicon)     \\
			\cline{2-2}
			Mémoire vive (RAM) actuelle         &                                                                       \\
			\cline{2-2}
			Mémoire vive (RAM) maximale         &                                                                       \\
			\cline{2-2}
			Stockage actuel                     &                                                                       \\
			\cline{2-2}
			Périphériques externes              & $\square$ Souris \quad $\square$ Clé USB \quad $\square$ Stockage externe \quad $\square$ Autre \\
			\cline{2-2}
			Touche(s) pour le BIOS/UEFI         &                                                                       \\
			\hline
			\multicolumn{2}{|l|}{\textbf{Comptes}} \\
			\hline
			Nom d'utilisateur OS                &                                                                       \\
			\cline{2-2}
			Nom d'utilisateur WSL               &                                                                       \\
			\cline{2-2}
			Nom d'utilisateur HES-SO (AAI)      &                                                                       \\
			\cline{2-2}
			Adresse mail HES-SO                 &                                                                       \\
			\cline{2-2}
			Adresse mail HEIG-VD                &                                                                       \\
			\cline{2-2}
			Adresse mail personnelle            &                                                                       \\
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
			                                    & $\square$ Firefox (avec uBlock Origin et Bitwarden)           \\
			                                    & $\square$ Chrome (avec uBlock Origin Lite et Bitwarden)       \\
			                                    & $\square$ Visual Studio Code                                  \\
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
			Logiciels installés et configurés   & $\square$ Secure Shell (SSH)                                               \\
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
			\hline
			\multicolumn{2}{|l|}{\textbf{Acquis du cours}} \\
			\hline
			Je suis à l'aise avec & $\square$ Connexion WiFi                                      \\
			                                            & $\square$ Accès aux e-mails                                   \\
			                                            & $\square$ Impression de documents                             \\
			                                            & $\square$ Différences composants matériels et logiciels       \\
			                                            & $\square$ Sensibilité de la casse selon l'OS                  \\
			                                            & $\square$ Différences entre les dossiers et les fichiers                        \\
			                                            & $\square$ Installation de logiciels                           \\
			                                            & $\square$ Mise à jour OS et logiciels                         \\
			                                            & $\square$ Gestion de mots de passe et 2FA                     \\
			                                            & $\square$ Création et partage d'une archive                   \\
			                                            & $\square$ Sauvegarde et restauration de documents             \\
			                                            & $\square$ Ouverture et usage d'un terminal                    \\
			\hline
			\multicolumn{2}{|l|}{\textbf{Notes personnelles}} \\
			\hline
			\multicolumn{2}{|l|}{} \\[5cm]
			\hline
		\end{tabular}}
\end{table}
```
