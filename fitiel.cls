%%% Nepovinná šablona pro projekty IEL, upravená pro projekt IDM %%%
%%% Verze: 2021/11 %%%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{fitiel}[IDM Project class]

\pdfminorversion=7


% základní třída, odvozujeme ze třídy article
\LoadClass[a4paper,11pt]{article}


% nastavení parametrů
\newif\ifczech \let\ifczech\iftrue
\newif\ifslovak \let\ifslovak\iffalse
\newif\ifenglish \let\ifenglish\iffalse

\DeclareOption{english}{\let\ifenglish\iftrue\let\ifczech\iffalse}
\DeclareOption{slovak}{\let\ifslovak\iftrue\let\ifczech\iffalse}
\DeclareOption*{}
\ProcessOptions\relax


% odstranění čísla částí (sections) z nadpisů
\renewcommand{\@seccntformat}[1]{}


%% základní balíčky - šablona
\RequirePackage{ifthen}


%% základní balíčky - dokument
\RequirePackage[left=2cm,right=2cm,top=2cm,bottom=2.5cm]{geometry}
\RequirePackage{graphicx}
\RequirePackage{float}
\RequirePackage{tabto}
\usepackage{multicol}
\usepackage{amsmath}
\usepackage{enumitem}


% utf-8
\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{inputenc}


% matematika
\RequirePackage{amsmath}
\RequirePackage{amsfonts}

\providecommand{\abs}[1]{\lvert#1\rvert} 
\providecommand{\norm}[1]{\lVert#1\rVert}


% klikatelné odkazy (sekce v obsahu)
\RequirePackage[unicode]{hyperref}


% jednotky
\usepackage{siunitx}


% hlavička
\usepackage[czech]{babel}
\newcommand{\logo}{
    \includegraphics[scale=0.1,keepaspectratio]{fig/logo_cz.png}
}


% užitečné příkazy
\newcommand{\todo}[1]{\textcolor{red}{\textbf{[[#1]]}}}
\newcommand{\comment}[1]{}
