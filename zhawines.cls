% Initialisation of the zhawines document class based on scrreport
% -----------------------------------------------------------------
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{zhawines}[2015/02/26 ZHAW InES Standard Report]
\LoadClass[oneside,10pt,parskip=half]{scrreprt}


% Definition of special options for the class
% -----------------------------------------------------------------

% Language settings to use babel correctly and adapt the title page
% and references
\DeclareOption{ngerman}{
  \PassOptionsToClass{ngerman}{babel}
}

\DeclareOption{english}{
  \PassOptionsToClass{english}{babel}
}

\ProcessOptions

% Definition of the used packages (special packages add in teh 
% specific document)
% -----------------------------------------------------------------
\usepackage{graphicx}
\usepackage[utf8]{inputenc}
\usepackage{geometry}
% enable for showing the geometry (and add "\layout" after "\begin{document}")
%\usepackage[showframe]{geometry}
\usepackage{layout}
\usepackage{ifthen}
\usepackage{url}
\usepackage{scrpage2}
\usepackage{scrhack}
\usepackage{listings}
\usepackage{pdfpages}
\usepackage{enumitem}
%\setlist{noitemsep} % no extra space around list items
\setlist{nosep} % no extra space around lists and around list items

% Definition of the layout of the document, pagesize and headings
% -----------------------------------------------------------------

\geometry{a4paper, top=30mm, left=30mm, right=25mm, bottom=30mm,headsep=10mm,footskip=10mm}

\renewcommand*{\chapterheadstartvskip}{\vspace{0.5cm}}
%\renewcommand*{\chapterheadendvskip}{\vspace{0.5cm}}

\renewcommand*{\chaptermarkformat}{} % remove the chapter number from the header
\renewcommand*{\sectionmarkformat}{}

\newcommand{\headings}{
	\pagestyle{scrheadings}
	\pagenumbering{arabic}

	%header / footer 
	\clearscrheadfoot
	\automark[section]{chapter}
	\renewcommand{\chapterpagestyle}{scrheadings}
	\ohead{\headmark}
	\ihead{Projektarbeit}



	\ofoot{\thepage}
	%\ifoot{\the\day.\the\month.\the\year}
	%\setfootsepline{0.4pt}
	%\setheadsepline{0.4pt}
}


% Redefinition of the \maketitle command to create the ZHAW
% title page, added an email parameter (\email)
% -----------------------------------------------------------------
\newcommand{\Email}{info.ines@zhaw.ch}
\newcommand{\email}[1]{\renewcommand{\Email}{#1}}
\renewcommand{\and}{\\}  % separate the authors with a line break

% Commands for the additional roles for Bachelor Thesis
\newcommand{\Betreuer}{Hans Betreuer}
\newcommand{\betreuer}[1]{\renewcommand{\Betreuer}{#1}}
\newcommand{\Nebenbetreuer}{Fritz Nebelbetreuer}
\newcommand{\nebenbetreuer}[1]{\renewcommand{\Nebenbetreuer}{#1}}


\renewcommand{\maketitle}{
\thispagestyle{empty}
\pagestyle{empty}

% ignore header and footer space for the title page
\vspace*{-1in}%
\enlargethispage{.5in}%

% Place the logo on top left
\begin{flushleft}
	\ifthenelse{\equal{\languagename}{\string ngerman}}
	{\includegraphics[height=30mm]{images/logos/de-zhaw-ines-rgb.png}}
	{\includegraphics[height=30mm]{images/logos/en-zhaw-ines-rgb.png}} 
\end{flushleft}

\vskip 2em

% Title of the report
\begin{flushleft}
    {\normalfont\sffamily\Large{\@subtitle}}\\   % Number of project
    \vspace*{0.4cm}
    {\setlength{\baselineskip}{2em} \normalfont\sffamily\Huge{\@title}} % Title of project
\end{flushleft}

\vskip 2em

% front page image
\includegraphics[width=\textwidth]{images/simulation_original_19.png}

\vfill % Align following lines to the bottom of the page

% School and Institute
\begin{flushleft}
    \normalfont\sffamily\Large
	\ifthenelse{\equal{\languagename}{\string ngerman}}
	{\textsc{Zürcher Hochschule \\ für Angewandte Wissenschaften}}
	{\textsc{Zurich University of Applied Sciences}} \\
    \vspace*{0.4cm}
    \normalsize
    \textsc{Institute of Embedded Systems}
\end{flushleft}

% Authors and Date
{
\normalfont\sffamily
\renewcommand{\arraystretch}{2} % add more space between the rows
\begin{tabular}{@{} p{3cm} l @{}}
\ifthenelse{\equal{\languagename}{\string ngerman}}{Autorin}{Author} & \parbox[t]{5cm}{\@author} \\
\ifthenelse{\equal{\languagename}{\string ngerman}}{Hauptbetreuer}{betr} & \parbox[t]{5cm}{\betreuer} \\
\ifthenelse{\equal{\languagename}{\string ngerman}}{Nebenbetreuer}{neben} & \parbox[t]{5cm}{\nebenbetreuer} \\
 & \\
\ifthenelse{\equal{\languagename}{\string ngerman}}{Datum}{dat} & \parbox[t]{5cm}{\@date}
\end{tabular}
}

% Second page with the contact information
\newpage
\begin{flushleft}
\ifthenelse{\equal{\languagename}{\string ngerman}}{\textbf{Kontakt Adresse}}{\textbf{Contact Information}}\newline
c/o Inst. of Embedded Systems (InES)\newline
Zürcher Hochschule für Angewandte Wissenschaften \newline
Technikumstrasse 22\newline
CH-8401 Winterthur\newline
\newline
Tel.: +41 (0)58 934 75 25\newline
Fax.: +41 (0)58 935 75 25\newline
\newline
E-Mail: \Email\newline
Homepage: \url{http://www.ines.zhaw.ch}\newline
\end{flushleft}
\pagebreak
}



% Code Listing
% -----------------------------------------------------------------

%listing colors
\definecolor{lgray}{RGB}{250,250,250}
\definecolor{lgreen}{RGB}{63,127,95}
\definecolor{lred}{RGB}{127,0,85}
\definecolor{lblue}{RGB}{42,0,255}


\lstset{		
		basicstyle=\small\ttfamily,
		frame=none,
		numbers=none,	
		numberstyle=\tiny,
		numberblanklines=true,
		captionpos=b,
		extendedchars=true,
		float=ht,
		showtabs=false,
		tabsize=4,
		showspaces=false,
		showstringspaces=false,
		breaklines=true,
		backgroundcolor=\color{white},
		keywordstyle=\color{lred}\bfseries, 
		commentstyle=\color{lgreen}\ttfamily,
		stringstyle=\color{lblue},
		xleftmargin=0.0cm,
		xrightmargin=0.0cm
}

\lstloadlanguages{C++}  % language

% Document formatting
% -----------------------------------------------------------------

\renewcommand{\labelitemi}{$-$} % dashes instead of bullets for the lists
\renewcommand{\labelitemii}{$-$} % dashes instead of bullets for the lists