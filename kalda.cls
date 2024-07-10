% A class necessary for compiling the handout
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{kalda}
\LoadClass[oneside,10pt,twocolumn]{article}
\ProcessOptions\relax
\RequirePackage[dvipsnames]{xcolor}
\RequirePackage{graphicx,float}
\RequirePackage[margin=1.2in]{geometry}
\RequirePackage{booktabs,csquotes}
\RequirePackage{ifthen,import}
\RequirePackage{tikz,asymptote}
\RequirePackage{enumitem,lipsum,multicol}
\RequirePackage[sorting=none,backend=biber,style=numeric]{biblatex}
\RequirePackage{amssymb,amsfonts,amsmath,amsthm,xparse,tipa,thmtools}
\RequirePackage[hidelinks]{hyperref}
\RequirePackage{pifont}
\RequirePackage{soul,emptypage,float,caption}
\RequirePackage{fancyhdr,titlesec}
\RequirePackage[framemethod=TikZ]{mdframed}
\RequirePackage[export]{adjustbox}
\fontdimen2\font=0.6ex
\setlength{\columnsep}{10pt}
\geometry{
left=28pt,
right=28pt,
bottom=40pt,
top=70pt,
headsep=30pt,
headheight=12pt,
a4paper,
}
\hypersetup{
colorlinks=true,
linkcolor=RoyalPurple,
urlcolor=RoyalPurple,
}
\renewcommand{\sectionmark}[1]{\markboth{#1}{}}
\fancypagestyle{kalda}{
\fancyhead{}
\fancyfoot{}
\fancyhead[R]{\thepage}
\fancyhead[L]{\MakeUppercase\leftmark}
}
\makeatletter
\def\@makecaption#1#2{%
  \vskip\abovecaptionskip
  \hb@xt@\hsize{\hfil#2\hfil}%
  \vskip\belowcaptionskip}
\makeatother
\newcounter{problem}
\setcounter{problem}{0}
\newcommand{\problem}{\par\noindent\refstepcounter{problem}\label{p\theproblem}\textcolor{red}{\bfseries \theproblem}\hspace{3pt}}
\addtolength{\parskip}{3pt}
\newcommand{\ans}{\par\noindent\emph{Answer:~}}
\newcommand{\note}{\noindent\emph{~Note:~}}
\newcommand{\hint}{\noindent\emph{~Hint:~}}
\newcommand{\sub}[1]{\par\medskip\noindent\textbf{#1}}
\newcommand{\fig}[3][0]{\ifnum#1=0\begin{figure}[h!]\fi
\ifnum#1=1\begin{figure}[H]\fi
    \centering
    \includegraphics[max width=#3\textwidth]{images/#2.jpg}
    \caption{Figure \ref{fig#2}: Problem \ref{#2}}
    \label{fig#2}
\end{figure}}
\renewcommand{\maketitle}{
\newgeometry{top=70pt,bottom=0.1cm,left=50pt,right=50pt}
\begin{titlepage}
\begin{center}
\large Tartu University\\\smallskip
Tartu University School of Science\\
\vspace{95mm}
\Large Valter Kiisk\\
\vspace{35pt}
\textsc{\huge Eletromagnetism Problems}\\
\vspace{97mm}
\large Tartu 2017\\
\vspace{20mm}
\end{center}
\normalsize
\textsc{Translated by Bruno Feltran}
\hfill
Version 2.0 (22. october 2017. a.)
\end{titlepage}
\restoregeometry
}
\renewcommand{\a}{\emph{a)~}}
\renewcommand{\b}{\emph{b)~}}
\newcommand{\walk}{\emph{Walktrough.~}}
%\setlength\belowcaptionskip{-7pt}
\setlength{\parindent}{0pt}
