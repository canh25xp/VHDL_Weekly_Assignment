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
\RequirePackage{hyperref}

% =============Settings=============
\geometry{
    margin=2cm,
    headheight=15pt
    }

\setlength{\parindent}{0pt}

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

% =============Commands=============
\newcommand{\note}[1]{\noindent\textit{NOTE : #1}}

% =============Shapes=============
\tikzset{mux_4_to_1/.style={muxdemux, muxdemux def={NL=4, NB=2, NR=1}}}
\tikzset{decoder_3_to_8/.style={muxdemux, muxdemux def={NL=3, NB=0, NT=0, NR=8, Rh=8, w=4}}}
\tikzset{encoder_8_to_3/.style={muxdemux, muxdemux def={NL=8, NB=0, NT=0, NR=3, Rh=8, w=4}}}
\tikzset{D_FF/.style={flipflop, flipflop def={t1=D, t6=Q, t4={\ctikztextnot{Q}},td=rst, c2=1}}}
\tikzset{T_FF/.style={flipflop, flipflop def={t1=T, t6=Q, t4={\ctikztextnot{Q}},td=rst, c2=1}}}
\tikzset{SR_FF/.style={flipflop, flipflop def={t1=S, t3=R, t6=Q, t4={\ctikztextnot{Q}},td=rst, c2=1}}}
\tikzset{JK_FF/.style={flipflop, flipflop def={t1=J, t3=K, t6=Q, t4={\ctikztextnot{Q}},td=rst, c2=1}}}