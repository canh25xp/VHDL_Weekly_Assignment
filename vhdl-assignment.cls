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
\RequirePackage{fancyhdr}
\RequirePackage{blindtext}

% =============Settings=============
\geometry{
    margin=2cm,
    headheight=15pt
    }

\ctikzset{logic ports=ieee}

\author{Ngo Van Canh}

\setcounter{secnumdepth}{0}
\newcounter{ProblemCounter}
\setcounter{ProblemCounter}{1}

\pagestyle{fancy}
\fancyhead{} % clear all header fields
\fancyhead[L]{Digital Design using VHDL}
\fancyhead[R]{Prof. Vo Le Cuong}

% =============Problem Environment=============
\newenvironment{problem}[2][-1]{
    \ifnum#1>0
        \setcounter{ProblemCounter}{#1}
    \fi
    \section{Problem \arabic{ProblemCounter} : #2}
    }{\stepcounter{ProblemCounter}}