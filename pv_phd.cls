%---------------------------------------------------------------------------------------
% Class File:           pv_phd.cls
% Original Author:      Carlos Pavon
% Created:              January 2020
% Last Modified:        24/05/2025
%
% Description:
%   A customizable LaTeX class for PhD theses at the
%   Università degli Studi di Salerno within the
%   National PhD on Photovoltaics.
%
% Usage:
%   Free for non-commercial academic use. 
%   Modifiable and shareable within the National PhD on Photovoltaics program.
%   Recommended for official submissions and archiving purposes.
%
%---------------------------------------------------------------------------------------

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{pv_phd}[2025/05/24 v1.0 PhD Thesis Class - Photovoltaics Program]

%---------------------------------------------------------------------------------------
% BASE CLASS
%---------------------------------------------------------------------------------------
\LoadClass[b5paper,10pt,twoside,openright]{book}

%---------------------------------------------------------------------------------------
% BASIC DOCUMENT SETUP AND ENCODING
%---------------------------------------------------------------------------------------
\RequirePackage[utf8]{inputenc}         % Input encoding for special characters
\RequirePackage[T1]{fontenc}            % Hyphenation and character display
\RequirePackage{lmodern}                % Load scalable Latin Modern fonts
\RequirePackage[margin=2.5cm, bindingoffset=1cm]{geometry}  % Sets page margins
\linespread{1.5}                        % Sets line spacing

%---------------------------------------------------------------------------------------
% MATHEMATICS & SYMBOLS
%---------------------------------------------------------------------------------------
\RequirePackage{amsmath}                % Features for mathematical equations
\RequirePackage{amssymb}                % Additional mathematical symbols
\RequirePackage{amsfonts}               % Provides additional math fonts
\RequirePackage{gensymb}                % Symbols like degree, permille, etc.
\RequirePackage{latexsym}               % Provides additional LaTeX symbols

%---------------------------------------------------------------------------------------
% REFERENCING AND LINKS
%---------------------------------------------------------------------------------------
\RequirePackage{cite}                   % Citation handling and formatting
\RequirePackage[hidelinks]{hyperref}    % Hyperlinks within the document
\newcommand{\figref}[1]{Fig.~\ref{#1}}  % References for Figures
\newcommand{\tabref}[1]{Tab.~\ref{#1}}  % References for Tables
\newcommand{\equref}[1]{Eq.~\ref{#1}}   % References for Equations

%---------------------------------------------------------------------------------------
% GRAPHICS AND IMAGES
%---------------------------------------------------------------------------------------
\RequirePackage{graphicx}               % For including images
\RequirePackage{pdfpages}               % For including PDF
\RequirePackage{svg}                    % Enables inclusion of SVG images
\RequirePackage{float}                  % Provides enhanced control over float placement
\graphicspath{{./Figures/}}             % Specifies the default directory for figures

%---------------------------------------------------------------------------------------
% CAPTIONS PERSONALIZATION
%---------------------------------------------------------------------------------------
\RequirePackage[font=small,skip=1pt,labelfont=sf,textfont=normalfont]{caption}
\RequirePackage{subcaption}             % Create subfigures and subtables

%---------------------------------------------------------------------------------------
% ALGORITHMS AND CODE LISTINGS
%---------------------------------------------------------------------------------------
\RequirePackage{algorithmic}            % Tools for typesetting pseudocode algorithms
\RequirePackage{listings}               % Formatting of source code listings

%---------------------------------------------------------------------------------------
% TEXT, COLORS, AND TABLES
%---------------------------------------------------------------------------------------
\RequirePackage{textcomp}               % Additional text symbols (€, ©, ™)
\RequirePackage{xcolor}                 % Adds color capabilities to your document
\RequirePackage{csquotes}               % Provides context-sensitive quotation marks
\RequirePackage{booktabs}               % Enhances tables with professional-looking rules
\RequirePackage{multirow}               % Allows table cells to span multiple rows
\RequirePackage{colortbl}               % Color of individual rows, columns, or cells in tables
\RequirePackage{array}                  % Functionality of 'array' and 'tabular'
\RequirePackage{tabularray}             % Modern package for creating complex tables

%---------------------------------------------------------------------------------------
% LAYOUT AND SPACING
%---------------------------------------------------------------------------------------
\RequirePackage{indentfirst}            % Indents the first paragraph of each chapter or section
\setlength{\parindent}{1cm}             % Sets the default paragraph indentation

%---------------------------------------------------------------------------------------
% HEADERS, FOOTERS, AND CHAPTER STYLE
%---------------------------------------------------------------------------------------
\RequirePackage{fancyhdr}               % Customize headers and footers
\RequirePackage{titlesec}               % Customize chapter title formatting

\setlength{\headheight}{15pt}           % Ensure enough space for headers
\addtolength{\topmargin}{-2.5pt}        % Slightly reduce top margin

% Enable fancy page style
\pagestyle{fancy}
\fancyhf{}                              
\fancyhead[LE]{\color{gray}\thepage}                 
\fancyhead[RE]{\color{gray}\nouppercase{\leftmark}}  
\fancyhead[LO]{\color{gray}\nouppercase{\leftmark}}  
\fancyhead[RO]{\color{gray}\thepage}                 

% Gray horizontal line under the header
\renewcommand{\headrulewidth}{0.4pt}
\renewcommand{\headrule}{\color{gray}\hrule width\headwidth height\headrulewidth \vskip-\headrulewidth}

% Chapter title format
\titleformat{\chapter}[display]
  {\normalfont\huge\bfseries\color{gray}}
  {\hfill\fontsize{60}{75}\selectfont\color{gray}\thechapter}
  {0pt}
  {\vspace{-2ex}\color{gray}}
  [\vspace{1ex}\titlerule]

% Adjust spacing before and after chapter title
\titlespacing*{\chapter}{10pt}{0pt}{20pt}  

% Ensure chapter titles appear in \leftmark for headers
\renewcommand{\chaptermark}[1]{\markboth{#1}{}}

% Make section titles gray
\titleformat{\section}
  {\normalfont\Large\bfseries\color{gray}}{\thesection}{1em}{}

\titleformat{\subsection}
  {\normalfont\large\bfseries\color{gray}}{\thesubsection}{1em}{}

\titleformat{\subsubsection}
  {\normalfont\normalsize\bfseries\color{gray}}{\thesubsubsection}{1em}{}

%---------------------------------------------------------------------------------------
% UTILITIES AND MISCELLANEOUS
%---------------------------------------------------------------------------------------
\RequirePackage{blindtext}              % Generates dummy Lorem Ipsum-like text
\RequirePackage{tikz}                   % Creating vector graphics
\RequirePackage{comment}                % Comment out large blocks of text
\RequirePackage{import}                 % Importing content from other files
\RequirePackage{xkeyval}                % Provides key-value parsing capabilities

%---------------------------------------------------------------------------------------
% SPECIFIC TECHNICAL PACKAGES
%---------------------------------------------------------------------------------------
\RequirePackage[american]{circuitikz}   % Draws electrical circuits using TikZ

%---------------------------------------------------------------------------------------
% ORCID
%---------------------------------------------------------------------------------------
\RequirePackage{orcidlink}              % Provides a command to link to an ORCID profile
\RequirePackage{scalerel}               % For scaling the ORCID icon
\usetikzlibrary{svg.path}               % Enables TikZ to draw SVG paths
\definecolor{orcidlogocol}{HTML}{A6CE39}            % Official ORCID green color

\tikzset{
  orcidlogo/.pic={
    \fill[orcidlogocol] svg{M256,128c0,70.7-57.3,128-128,128C57.3,256,0,198.7,0,128C0,57.3,57.3,0,128,0C198.7,0,256,57.3,256,128z};
    \fill[white] svg{M86.3,186.2H70.9V79.1h15.4v48.4V186.2z}
                 svg{M108.9,79.1h41.6c39.6,0,57,28.3,57,53.6c0,27.5-21.5,53.6-56.8,53.6h-41.8V79.1z 
                     M124.3,172.4h24.5c34.9,0,42.9-26.5,42.9-39.7c0-21.5-13.7-39.7-43.7-39.7h-23.7V172.4z}
                 svg{M88.7,56.8c0,5.5-4.5,10.1-10.1,10.1
                     c-5.6,0-10.1-4.6-10.1-10.1
                     c0-5.6,4.5-10.1,10.1-10.1
                     C84.2,46.7,88.7,51.3,88.7,56.8z};
  }
}
\newcommand\orcidicon[1]{%
  \href{https://orcid.org/#1}{%
    \mbox{\scalerel*{%
      \begin{tikzpicture}[yscale=-1,transform shape]
        \pic{orcidlogo};
      \end{tikzpicture}
    }{|}}%
  }%
}

%---------------------------------------------------------------------------------------
% CUSTOM COMMANDS AND DEFINITIONS
%---------------------------------------------------------------------------------------

% BibTeX formatting
\def\BibTeX{{\rm B\kern-.05em{\sc i\kern-.025em b}\kern-.08em
  T\kern-.1667em\lower.7ex\hbox{E}\kern-.125emX}}

% SPICE in listings
\lstdefinelanguage{Spice}{
  morekeywords={.meas, DC, FIND, WHEN, MAX, .step, PARAM},
  sensitive=false,                                  % Keywords are not case-sensitive
  morecomment=[l]{*},                               % Single-line comments start with '*'
  morestring=[b]"                                   % Strings are enclosed in double quotes
}

%---------------------------------------------------------------------------------------
% ACRONYMS AND GLOSSARIES
%---------------------------------------------------------------------------------------
\RequirePackage[acronym]{glossaries}   % Manages glossaries and acronym lists

%---------------------------------------------------------------------------------------
% DEDICATION ENVIRONMENT
%---------------------------------------------------------------------------------------
% Usage:
% \begin{dedication}
%    This thesis is dedicated to...
% \end{dedication}
\newenvironment{dedication}
  {\clearpage \thispagestyle{empty} \vspace*{\stretch{1}} \itshape \raggedleft}
  {\par \vspace{\stretch{3}} \clearpage}

%---------------------------------------------------------------------------------------
% FRONT PAGE COMMAND (Function-style Definition)
%---------------------------------------------------------------------------------------

\newcommand{\setuniversities}[4]{%
  \def\@firstlogo{#1}%
  \def\@secondlogo{#2}%
  \def\@firstname{#3}%
  \def\@secondname{#4}%
}

\setuniversities{logo_unisa}{logo_zyxw.png}{UNIVERSITÀ DEGLI STUDI DI SALERNO}{UNIVERSITÀ DEGLI STUDI DI SECOND-SEDE}
      % --- University Information ---
\newcommand{\makefrontpage}[8]{
  \begin{titlepage}
    \ifx\@secondlogo\empty
      \begin{center}
        \large \@firstname \\
        \vspace{5mm}  
        \includegraphics[width=0.25\textwidth]{\@firstlogo}\\
      \end{center}
    \else
      \hspace*{-2.5cm}
      \makebox[1.5\textwidth][l]{
        \begin{minipage}{0.4\textwidth}
          \raggedright
          \centering 
          \small \@firstname \\
          \vspace{2mm}  
          \includegraphics[width=0.5\textwidth]{\@firstlogo}\\
        \end{minipage}
        
        \hspace{5cm}
        
        \begin{minipage}{0.4\textwidth}
          \raggedleft
          \centering
          \small \@secondname \\
          \vspace{2mm}  
          \includegraphics[width=0.5\textwidth]{\@secondlogo}\\
        \end{minipage}
      }
    \fi
    \vspace{7mm}           
      % --- Title and Curriculum Info ---
      \begin{center}
          \Large{PHD IN PHOTOVOLTAICS}\\
          \normalsize{Dottorato di interesse nazionale in Photovoltaics}\\
          \vspace{5mm}
          \normalfont{\textbf{Curriculum: #1}}\\
      \end{center}
      % --- Thesis Title and Subtitle ---
      \vspace{10mm}
      \begin{center}
          {\huge \bfseries #2}\\
          \vspace{5mm}
          \large{\textit{#3}}\\
          \vspace{8mm}
      \end{center}
      % --- Supervisors and Candidate Info ---
      \noindent
      \begin{minipage}[t]{0.47\textwidth}
          {\normalsize{Supervisor:\\ \bf #4}}\\[6mm]
          \ifx\relax#5\relax
          \else
            {\normalsize{Co-Supervisor:\\ \bf #5}}\\[6mm]
          \fi
          {\normalsize{PhD Program Director:\\ \bf Prof. Giovanni Spagnuolo}}\\[6mm]
      \end{minipage}
      \hfill
      \begin{minipage}[t]{0.4\textwidth}\raggedleft
          {\normalsize{PhD Candidate: \\ \bf #6\\ Mat. #7}}
      \end{minipage}
      \vfill
      \centering{\normalsize #8}
  \end{titlepage}
  \clearpage
}