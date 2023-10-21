\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{vhdl-assignment}[2023 VHDL Assignment]
\LoadClass[12pt, a4paper]{article}
% =====================================================
% Packages
% =====================================================
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
\RequirePackage{xcolor}
\RequirePackage{titling}

% =====================================================
% Settings
% =====================================================
% Modify title : suppress author in maketitle
\pretitle{\begin{center}\LARGE}
\posttitle{\par\end{center}\vskip0.5em}
\preauthor{}
\postauthor{}
\predate{\begin{center}\large}
\postdate{\par\end{center}}
\author{}

% Set page size and margin
\geometry{
    margin=2cm,
    headheight=15pt
    }

\setlength{\parindent}{0pt}

% Set logic gate style
\ctikzset{logic ports=ieee}

% Set problem counter
\setcounter{secnumdepth}{0}
\newcounter{MyCounter}
\setcounter{MyCounter}{1}

% Set header
\pagestyle{fancy}
\fancyhead{}
\fancyhead[L]{Digital Design using VHDL}
\fancyhead[R]{Prof. Vo Le Cuong}

% Define custom colors
\definecolor{codegreen}{rgb}{0,0.6,0}
\definecolor{codepurple}{rgb}{0.58,0,0.82}

% Set code highlight style
\lstdefinestyle{code_highlight}{
    backgroundcolor=\color{white},
    commentstyle=\color{codegreen},
    keywordstyle=\color{magenta},
    numberstyle=\tiny\color{gray},
    stringstyle=\color{cyan},
    basicstyle=\ttfamily\footnotesize,
    breakatwhitespace=false,
    breaklines=true,
    captionpos=b,
    keepspaces=true,
    numbers=left,
    numbersep=5pt,
    showspaces=false,
    showstringspaces=false,
    showtabs=false,
    tabsize=2,
    frame=lines
    }

\lstset{style=code_highlight}

% Set hyperlink style
\hypersetup{
    colorlinks=true,
    urlcolor=cyan
}

% =====================================================
% Problem Environment
% =====================================================
\newenvironment{problem}[2][-1]{
    \ifnum#1>0
    \setcounter{MyCounter}{#1}
    \fi
    \section{Problem \arabic{MyCounter} : #2}
    }{\stepcounter{MyCounter}}
    
% =====================================================
% Project Environment
% =====================================================
% Project and Problem should not be use simultaneously
\newenvironment{project}[2][-1]{
    \ifnum#1>0
    \setcounter{MyCounter}{#1}
    \fi
    \section{Project \arabic{MyCounter} : #2}
    }{\stepcounter{MyCounter}}

% =====================================================
% Commands
% =====================================================
% Create note
\newcommand{\note}[1]{\noindent\textit{NOTE : #1}}

% Listing verilog code. This command makes sure every lines of code stay in the same page
\newcommand{\verilog}[2][Verilog code]{
    \noindent\begin{minipage}{\linewidth}
        \lstinputlisting[language=Verilog, caption=#1]{#2}
    \end{minipage}

}

% =====================================================
% Shapes
% =====================================================
\tikzset{mux_4_to_1/.style={muxdemux, muxdemux def={NL=4, NB=2, NR=1}}}
\tikzset{decoder_3_to_8/.style={muxdemux, muxdemux def={NL=3, NB=0, NT=0, NR=8, Rh=8, w=4}}}
\tikzset{encoder_8_to_3/.style={muxdemux, muxdemux def={NL=8, NB=0, NT=0, NR=3, Rh=8, w=4}}}

% Flip-flops with reset signal
\tikzset{D_FF/.style={flipflop, flipflop def={t1=D, t6=Q, t4={\ctikztextnot{Q}},td=rst, c2=1}}}
\tikzset{T_FF/.style={flipflop, flipflop def={t1=T, t6=Q, t4={\ctikztextnot{Q}},td=rst, c2=1}}}
\tikzset{SR_FF/.style={flipflop, flipflop def={t1=S, t3=R, t6=Q, t4={\ctikztextnot{Q}},td=rst, c2=1}}}
\tikzset{JK_FF/.style={flipflop, flipflop def={t1=J, t3=K, t6=Q, t4={\ctikztextnot{Q}},td=rst, c2=1}}}

% T Flip-flops with negative edge-triggerd clock
\tikzset{T_FF_neg/.style={flipflop, flipflop def={t1=T, t6=Q, t4={\ctikztextnot{Q}},td=rst, c2=1, n2=1}}}