\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{vhdl-assignment}[2023 VHDL Assignment]
\LoadClass[12pt, a4paper]{article}

% =============Packages=============
\RequirePackage{graphicx}
\RequirePackage[label=corner]{karnaugh-map}
\RequirePackage{mathtools}
\RequirePackage{circuitikz}
\RequirePackage{geometry}
\RequirePackage{multicol}
\RequirePackage{multirow}
\RequirePackage{float}
\RequirePackage{listings}
\RequirePackage{subcaption}
\RequirePackage{extramarks}

% =============Settings=============
\geometry{margin=2cm}

\ctikzset{logic ports=ieee}

\author{Ngo Van Canh}

% =============Create Problem Sections=============
\newcommand{\enterProblemHeader}[1]{
    \nobreak\extramarks{}{Problem \arabic{#1} continued on next page\ldots}\nobreak{}
    \nobreak\extramarks{Problem \arabic{#1} (continued)}{Problem \arabic{#1} continued on next page\ldots}\nobreak{}
}

\newcommand{\exitProblemHeader}[1]{
    \nobreak\extramarks{Problem \arabic{#1} (continued)}{Problem \arabic{#1} continued on next page\ldots}\nobreak{}
    \stepcounter{#1}
    \nobreak\extramarks{Problem \arabic{#1}}{}\nobreak{}
}

\setcounter{secnumdepth}{0}
\newcounter{ProblemCounter}
\setcounter{ProblemCounter}{1}
\nobreak\extramarks{Problem \arabic{ProblemCounter}}{}\nobreak{}

% =============Problem Environment=============
\newenvironment{problem}[2][-1]{
    \ifnum#1>0
        \setcounter{ProblemCounter}{#1}
    \fi
    \section{Problem \arabic{ProblemCounter} : #2}
    \enterProblemHeader{ProblemCounter}
    }
    {
    \exitProblemHeader{ProblemCounter}
    }