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
			Système d'exploitation              & $\square$ Windows \quad $\square$ macOS \quad $\square$ Linux         \\
			\cline{2-2}
			Version                             &                                                                       \\
			\cline{2-2}
			Architecture                        & $\square$ x86/x64 (AMD/Intel) \quad $\square$ ARM (Apple Silicon)     \\
			\cline{2-2}
			Mémoire vive (RAM) actuelle         &                                                                       \\
			\cline{2-2}
			Mémoire vive (RAM) maximale         &                                                                       \\
			\cline{2-2}
			Stockage                            &                                                                       \\
			\cline{2-2}
			Touche(s) pour le BIOS/UEFI &                                                                       \\
			\hline
			\multicolumn{2}{|l|}{\textbf{Comptes HES-SO/HEIG-VD}} \\
			\hline
			Adresse mail HES-SO                 &                                                                       \\
			\cline{2-2}
			Nom d'utilisateur HES-SO (AAI)      &                                                                       \\
			\cline{2-2}
			Adresse mail HEIG-VD                &                                                                       \\
			\hline
			\multicolumn{2}{|l|}{\textbf{Configuration HEIG-VD}} \\
			\hline
			Logiciels installés et configurés   & $\square$ Firefox (avec uBlock Origin et Bitwarden)                  \\
			                                    & $\square$ Chrome (avec Bitwarden)                                    \\
			                                    & $\square$ Client e-mails (Outlook/Thunderbird)                       \\
			                                    & $\square$ Outil pour gérer les archives (7zip/Keka)                  \\
			                                    & $\square$ Lecteur multimedia VLC                                     \\
			                                    & $\square$ Suite Microsoft Office                                     \\
			                                    & $\square$ Suite Adobe                                                \\
			                                    & $\square$ Éditeur de code Visual Studio Code (et sa configuration)   \\
			                                    & $\square$ Outil de prise de notes Markdown                           \\
			                                    & $\square$ Antivirus (Windows uniquement)                             \\
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
			\multicolumn{2}{|l|}{\textbf{Acquis du cours}} \\
			\hline
			Je suis à l'aise avec & $\square$ Connexion WiFi                                      \\
			                                            & $\square$ Accès aux e-mails                                   \\
			                                            & $\square$ Impression de documents                             \\
			                                            & $\square$ Différences composants matériels et logiciels       \\
			                                            & $\square$ Sensibilité de la casse selon l'OS                  \\
			                                            & $\square$ Différence dossier / fichier                        \\
			                                            & $\square$ Installation de logiciels                           \\
			                                            & $\square$ Mise à jour OS et logiciels                         \\
			                                            & $\square$ Gestion de mots de passe et 2FA                     \\
			                                            & $\square$ Création et partage d'une archive                   \\
			                                            & $\square$ Sauvegarde et restauration de documents             \\
			                                            & $\square$ Ouverture et usage d'un terminal                    \\
			\hline
			J'ai réalisé les éléments suivants          & $\square$ Connexion au Wi-Fi HEIG-VD                          \\
			                                            & $\square$ Connexion au Wi-Fi eduroam                          \\
			                                            & $\square$ Installation/configuration des imprimantes + test   \\
			\hline
			\multicolumn{2}{|l|}{\textbf{Notes personnelles}} \\
            \hline
            \multicolumn{2}{|l|}{} \\[10cm]
			\hline
		\end{tabular}}
\end{table}
```
