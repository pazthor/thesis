%%
%% This is file `Thesis1.cls', based on 'ECSthesis.cls', by Steve R. Gunn
%% generated with the docstrip utility.
%%
%% Created by Steve R. Gunn, modified by Sunil Patel: www.sunilpatel.co.uk

\NeedsTeXFormat{LaTeX2e}[1996/12/01]
\ProvidesClass{Thesis1}
              [2007/22/02 v1.0
   LaTeX document class]
\def\baseclass{book}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{\baseclass}}
\def\@checkoptions#1#2{
  \edef\@curroptions{\@ptionlist{\@currname.\@currext}}
  \@tempswafalse
  \@tfor\@this:=#2\do{
    \@expandtwoargs\in@{,\@this,}{,\@curroptions,}
    \ifin@ \@tempswatrue \@break@tfor \fi}
  \let\@this\@empty
  \if@tempswa \else \PassOptionsToClass{#1}{\baseclass}\fi
}
%\@checkoptions{11pt}{{10pt}{11pt}{12pt}}
\PassOptionsToClass{letterpaper}{\baseclass}
\ProcessOptions\relax
\LoadClass{\baseclass}
\newcommand\bhrule{\typeout{------------------------------------------------------------------------------}}

\newcommand\Declaration[1]{
\btypeout{Declaration}
\addtotoc{Declaration}
\thispagestyle{plain}
%\null\vfil
%\vskip 60\p@
%\begin{center}{\huge\bf Declaration of Authorship\par}\end{center}
\textbf{\huge Declaration}
\vskip 60\p@
{\normalsize #1}
\vfil\vfil\null
%\cleardoublepage
}

\newcommand\btypeout[1]{\bhrule\typeout{\space #1}\bhrule}
\def\today{\ifcase\month\or
  January\or February\or March\or April\or May\or June\or
  July\or August\or September\or October\or November\or December\fi
  \space \number\year}
\usepackage{setspace}
\onehalfspacing
%\doublespacing
\setlength{\parindent}{0pt}
\setlength{\parskip}{2.0ex plus0.5ex minus0.2ex}
\usepackage{vmargin}
\setmarginsrb           { 1.5in}  % left margin
                        { 0.6in}  % top margin
                        { 1.0in}  % right margin
                        { 0.8in}  % bottom margin
                        {  20pt}  % head height
                        {0.25in}  % head sep
                        {   9pt}  % foot height
                        { 0.3in}  % foot sep
\raggedbottom
\setlength{\topskip}{1\topskip \@plus 5\p@}
\doublehyphendemerits=10000       % No consecutive line hyphens.
\brokenpenalty=10000              % No broken words across columns/pages.
\widowpenalty=9999                % Almost no widows at bottom of page.
\clubpenalty=9999                 % Almost no orphans at top of page.
\interfootnotelinepenalty=9999    % Almost never break footnotes.
\usepackage{fancyhdr}
\lhead[\rm\thepage]{\fancyplain{}{\sl{\rightmark}}}
\rhead[\fancyplain{}{\sl{\leftmark}}]{\rm\thepage}
\chead{}\lfoot{}\rfoot{}\cfoot{}
\pagestyle{fancy}
\renewcommand{\chaptermark}[1]{\btypeout{\thechapter\space #1}\markboth{\@chapapp\ \thechapter\ #1}{\@chapapp\ \thechapter\ #1}}
\renewcommand{\sectionmark}[1]{}
\renewcommand{\subsectionmark}[1]{}
\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
\hbox{}
\thispagestyle{empty}
\newpage
\if@twocolumn\hbox{}\newpage\fi\fi\fi}
\usepackage{amsmath,amsfonts,amssymb,amscd,amsthm,xspace}
\theoremstyle{plain}
\newtheorem{example}{Example}[chapter]
\newtheorem{theorem}{Theorem}[chapter]
\newtheorem{corollary}[theorem]{Corollary}
\newtheorem{lemma}[theorem]{Lemma}
\newtheorem{proposition}[theorem]{Proposition}
\newtheorem{axiom}[theorem]{Axiom}
\theoremstyle{definition}
\newtheorem{definition}[theorem]{Definition}
\theoremstyle{remark}
\newtheorem{remark}[theorem]{Remark}
\usepackage[centerlast,small,sc]{caption}
\setlength{\captionmargin}{20pt}
\newcommand{\fref}[1]{Figura~\ref{#1}}
\newcommand{\tref}[1]{Tabla~\ref{#1}}
\newcommand{\eref}[1]{Ecuacion~\ref{#1}}
\newcommand{\cref}[1]{Cap\'itulo~\ref{#1}}
\newcommand{\sref}[1]{Secci\'on~\ref{#1}}
\newcommand{\aref}[1]{Apendice~\ref{#1}}
\renewcommand{\topfraction}{0.85}
\renewcommand{\bottomfraction}{.85}
\renewcommand{\textfraction}{0.1}
\renewcommand{\dbltopfraction}{.85}
\renewcommand{\floatpagefraction}{0.75}
\renewcommand{\dblfloatpagefraction}{.75}
\renewcommand{\chaptername}{Cap\'itulo}
\renewcommand{\appendixname}{Ap\'endice}
\renewcommand{\partname}{Parte}
\renewcommand{\indexname}{Lista Alfab\'etica}
\renewcommand{\figurename}{Figura}
\renewcommand{\tablename}{Tabla}
\renewcommand{\listtablename}{Lista de Tablas}
\setcounter{topnumber}{9}
\setcounter{bottomnumber}{9}
\setcounter{totalnumber}{20}
\setcounter{dbltopnumber}{9}
\usepackage{graphicx}
%\usepackage{epstopdf}
%\usepackage[scriptsize]{subfigure}
%\usepackage{booktabs}
%\usepackage{rotating}
\usepackage{helvet}
\usepackage{listings}
\usepackage{lstpatch}
\lstset{captionpos=b,
        frame=tb,
        basicstyle=\scriptsize\ttfamily,
        showstringspaces=false,
        keepspaces=true}
\lstdefinestyle{matlab} {
        language=Matlab,
        keywordstyle=\color{blue},
        commentstyle=\color[rgb]{0.13,0.55,0.13}\em,
        stringstyle=\color[rgb]{0.7,0,0} }
\usepackage[pdfpagemode={UseOutlines},bookmarks=true,bookmarksopen=true,
   bookmarksopenlevel=0,bookmarksnumbered=true,hypertexnames=false,
   %colorlinks,linkcolor={blue},citecolor={blue},urlcolor={red},
   pdfstartview={FitV},unicode,breaklinks=true]{hyperref}
\pdfstringdefDisableCommands{
   \let\\\space
}
\newcommand*{\supervisor}[1]{\def\supname{#1}}
\newcommand*{\examiner}[1]{\def\examname{#1}}
\newcommand*{\degree}[1]{\def\degreename{#1}}
\newcommand*{\authors}[1]{\def\authornames{#1}}
\newcommand*{\addresses}[1]{\def\addressnames{#1}}
\newcommand*{\university}[1]{\def\univname{#1}}
\newcommand*{\UNIVERSITY}[1]{\def\UNIVNAME{#1}}
\newcommand*{\department}[1]{\def\deptname{#1}}
\newcommand*{\DEPARTMENT}[1]{\def\DEPTNAME{#1}}
\newcommand*{\group}[1]{\def\groupname{#1}}
\newcommand*{\GROUP}[1]{\def\GROUPNAME{#1}}
\newcommand*{\faculty}[1]{\def\facname{#1}}
\newcommand*{\FACULTY}[1]{\def\FACNAME{#1}}
\newcommand*{\subject}[1]{\def\subjectname{#1}}
\newcommand*{\keywords}[1]{\def\keywordnames{#1}}
\supervisor  {Dr. Abhir Bhalerao}
\examiner    {}
\degree      {}
\authors     {Daniel Alejandro Valdes Amaro}
\university  {\texorpdfstring{
                {The University of Warwick}}
                {The University of Warwick}}
\UNIVERSITY  {\texorpdfstring{
                {THE UNIVERSITY OF WARWICK}}
                {THE UNIVERSITY OF WARWICK}}
\department  {\texorpdfstring{
                {Department of Computer Science}}
                {Department of Computer Science}}
\DEPARTMENT  {\texorpdfstring{
                {DEPARTMENT OF COMPUTER SCIENCE}}
                {DEPARTMENT OF COMPUTER SCIENCE}}
\group       {\texorpdfstring{
                {Signal and Image Processing Group}}
                {Signal and Image Processing Group}}
\GROUP       {\texorpdfstring{
                {SIGNAL AND IMAGE PROCESSING GROUP}}
                {SIGNAL AND IMAGE PROCESSING GROUP}}
\faculty     {\texorpdfstring{
                {Faculty Name}}
                {Faculty Name}}
\FACULTY     {\texorpdfstring{
                {FACULTY NAME (IN BLOCK CAPITALS)}}
                {FACULTY NAME (IN BLOCK CAPITALS)}}
\addresses   {}
\subject     {}
\keywords    {}
%======================================================== Title Page =======================================================
\renewcommand\maketitle{
  \btypeout{Title Page}
  \hypersetup{pdftitle={\@title}}
  \hypersetup{pdfsubject=\subjectname}
  \hypersetup{pdfauthor=\authornames}
  \hypersetup{pdfkeywords=\keywordnames}
  \thispagestyle{empty}
  \begin{titlepage}
    \let\footnotesize\small
    \let\footnoterule\relax
    \let \footnote \thanks
    \setcounter{footnote}{0}
    \null\vfil
    %\vskip 60\p@
    \vskip 30\p@
    \begin{center}
      %--- Figure ---
      \begin{figure}[!ht]
      \begin{center}
            \includegraphics[width=5.00cm]{buap1.png}
	    %\includegraphics[width=3.73cm, height=4.57cm]{crest_fullcolour.eps}
      \end{center}    
      \end{figure}
      %--- Figure ---
      \setlength{\parskip}{0pt}
      \vfill
      {\huge \bf \@title \par}
      \vfill
      {\LARGE por \par}
      \smallskip
      {\LARGE \authornames \par}
      \vfill
      {\large Tesis presentada en cumplimiento parcial de los requisitos \par}
      {\large para la obtenci\'on del grado de \par}
      \bigskip
      {\large Licenciadoa (Maestroa) en Ciencias de la Computaci\'on  \par}
      \bigskip
      \bigskip
      {\large Benem\'erita Universidad Aut\'onoma de Puebla, Facultad de Ciencias de la Computaci\'on \par}
      \bigskip
      \bigskip
      \bigskip
      {\large Asesor(es): \par}
      {\large Asesor1 \par}
      {\large Asesor2 \par}
      \bigskip
      {\Large \@date \par}
       \end{center}
    \par
    \@thanks
    \vfil\null
  \end{titlepage}
  \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
  \cleardoublepage
}
%======================================================== Dedicatory =======================================================
\newcommand\dedicatory[1]{
\btypeout{Dedicatory}
\thispagestyle{empty}
\null\vfil
\vskip 60\p@
\begin{center}{\Large \sl #1}\end{center}
\vfil\null
\cleardoublepage
}
%========================================================= Abstract ========================================================
\newenvironment{abstract}
{
  \btypeout{Abstract Page}
  \thispagestyle{empty}
  \null\vfil
  \begin{center}
    {\Large {\textbf{Resumen}} \par}
  \end{center}
}
{
  \vfil\vfil\vfil\null
  \cleardoublepage
}
%==================================================== Table of Contents ====================================================
\addtocounter{secnumdepth}{1}
\setcounter{tocdepth}{6}
\newcounter{dummy}
\newcommand\addtotoc[1]{
\refstepcounter{dummy}
\addcontentsline{toc}{chapter}{#1}}
\renewcommand*\contentsname{Contenido}
\renewcommand\tableofcontents{
%\btypeout{Table of Contents}
%\addtotoc{Contenido}
\begin{spacing}{1}{
    \setlength{\parskip}{1pt}
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\contentsname
        \@mkboth{
           \MakeUppercase\contentsname}{\MakeUppercase\contentsname}}
    \@starttoc{toc}
    %\@dottedtocline{5}
    \if@restonecol\twocolumn\fi
   \cleardoublepage
}\end{spacing}
}


%===================================================== List of Figures =====================================================
\renewcommand*\listfigurename{Lista de Figuras}
\renewcommand\listoffigures{
\btypeout{Lista de Figuras}
\addtotoc{Lista de Figuras}
\begin{spacing}{1}{
    \setlength{\parskip}{1pt}
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\listfigurename
      \@mkboth{\MakeUppercase\listfigurename}
              {\MakeUppercase\listfigurename}}
    \@starttoc{lof}
    \if@restonecol\twocolumn\fi
    \cleardoublepage
}\end{spacing}
}
%====================================================== List of Tables =====================================================
\renewcommand*\listtablename{Lista de Tablas}
\renewcommand\listoftables{
\btypeout{Lista de Tablas}
\addtotoc{Lista de Tablas}
\begin{spacing}{1}{
    \setlength{\parskip}{1pt}
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\listtablename
      \@mkboth{
          \MakeUppercase\listtablename}{\MakeUppercase\listtablename}}
    \@starttoc{lot}
    \if@restonecol\twocolumn\fi
    \cleardoublepage
}\end{spacing}
}

%================================================== Acronyms and Notation ==================================================
\newcommand\listsymbolname{Acronimos y Notaci\'on}
\usepackage{longtable}
\newcommand\listofsymbols[2]{
\btypeout{\listsymbolname}
\addtotoc{\listsymbolname}
    \chapter*{\listsymbolname
      \@mkboth{
          \MakeUppercase\listsymbolname}{\MakeUppercase\listsymbolname}}
\begin{longtable}[l]{#1}#2\end{longtable}\par
    \cleardoublepage
}

%================================================== Physical Constants ==================================================
\newcommand\listconstants{Physical Constants}
\usepackage{longtable}
\newcommand\listofconstants[2]{
\btypeout{\listconstants}
\addtotoc{\listconstants}
    \chapter*{\listconstants
      \@mkboth{
          \MakeUppercase\listconstants}{\MakeUppercase\listconstants}}
\begin{longtable}[c]{#1}#2\end{longtable}\par
    \cleardoublepage
}

%================================================== Symbols ==================================================
\newcommand\listnomenclature{S\'imbolos}
\usepackage{longtable}
\newcommand\listofnomenclature[2]{
\btypeout{\listnomenclature}
\addtotoc{S\'imbolos}
%\addtotoc{\listnomenclature}
    \chapter*{\listnomenclature
      \@mkboth{
          \MakeUppercase\listnomenclature}{\MakeUppercase\listnomenclature}}
\begin{longtable}[c]{#1}#2\end{longtable}\par
    \cleardoublepage
}

%========================================================= Acknowledgements ========================================================
\newcommand\acknowledgements[1]{
\btypeout{Acknowledgements}
\addtotoc{Agradecimientos}
\thispagestyle{plain}
\begin{center}{\huge{\textit{Agradecimientos}} \par}\end{center}
{\normalsize #1}
\vfil\vfil\null

}

%================================================== Bibliography ==================================================
\renewcommand\bibname{Bibliograf\'ia}

%========================================================= Backmatter ========================================================
\renewcommand\backmatter{
  \if@openright
    \cleardoublepage
  \else
    \clearpage
  \fi
  \addtotoc{\bibname}
  \btypeout{\bibname}
  \@mainmatterfalse}
\endinput
%%
%% End of file `Thesis1.cls'.
