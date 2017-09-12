%%
%% This is file `ECULetter.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% ECULetter.dtx  (with options: `class')
%% This is a generated file.
%% 
%% Copyright (C) 2017 by Mark W. Sprague <spraguem@ecu.edu>
%% 
%% This file may be distributed and/or modified under the conditions of the
%% LaTeX Project Public License, either version 1.3 of this license or (at
%% your option) any later version.  The latest version of this license is
%% in:
%% 
%%     http://www.latex-project.org/lppl.txt
%% 
%% and version 1.3 or later is part of all distributions of LaTeX version
%% 2005/12/01 or later.
%% 
\NeedsTeXFormat{LaTeX2e}[2005/12/01]
\ProvidesClass{ECULetter}
[2017/09/12 v2.0 ECU letterhead with letter and memo formatting]
\newif\if@bw
\@bwfalse
\newif\if@usa
\@usatrue
\newif\if@printletterhead
\@printletterheadtrue
\newif\if@printmemohead
\@printmemoheadfalse
\newif\if@sizegiven
\@sizegivenfalse
\DeclareOption{bw}{\@bwtrue}
\DeclareOption{color}{\@bwfalse}
\DeclareOption{memo}{\@printmemoheadtrue}
\DeclareOption{noletterhead}{\@printletterheadfalse}
\DeclareOption{usa}{\@usatrue}
\DeclareOption{USA}{\@usatrue}
\DeclareOption{nousa}{\@usafalse}
\DeclareOption{noUSA}{\@usafalse}
\DeclareOption{10pt}{
  \@sizegiventrue
  \PassOptionsToClass{10pt}{article}
}
\DeclareOption{11pt}{
  \@sizegiventrue
  \PassOptionsToClass{11pt}{article}
}
\DeclareOption{12pt}{
  \@sizegiventrue
  \PassOptionsToClass{12pt}{article}
}
\DeclareOption{twocolumn}{\OptionNotUsed}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}%
}
\ProcessOptions\relax
\if@sizegiven\else
  \PassOptionsToClass{11pt}{article}
\fi
\LoadClass{article}
\RequirePackage[letterpaper, hmargin={1in}, vmargin=1in]{geometry}
\RequirePackage{graphicx}
\RequirePackage{color}
\RequirePackage{fancyhdr}
\RequirePackage{lastpage}
\RequirePackage{ragged2e}
\definecolor{ecupurple}{RGB}{80, 45, 127}
\definecolor{ecugold}{RGB}{255, 200, 0}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}
\newif\if@lhnamedefined
\@lhnamedefinedfalse
\DeclareRobustCommand*{\@lhname}{}
\DeclareRobustCommand*{\lhname}[1]{
  \DeclareRobustCommand*{\@lhname}{#1}%
  \setbox0=\hbox{\@lhname\unskip}\ifdim\wd0=0pt
    \@lhnamedefinedfalse
  \else
    \@lhnamedefinedtrue
  \fi
}
\newif\if@lhdegreedefined
\@lhdegreedefinedfalse
\DeclareRobustCommand*{\@lhdegree}{}
\DeclareRobustCommand*{\lhdegree}[1]{
  \DeclareRobustCommand*{\@lhdegree}{#1}
  \setbox0=\hbox{\@lhdegree\unskip}\ifdim\wd0=0pt
    \@lhdegreedefinedfalse
  \else
    \@lhdegreedefinedtrue
  \fi
}
\newif\if@lhtitledefined
\@lhtitledefinedfalse
\DeclareRobustCommand*{\@lhtitle}{}
\DeclareRobustCommand*{\lhtitle}[1]{
  \DeclareRobustCommand*{\@lhtitle}{#1}
  \setbox0=\hbox{\@lhtitle\unskip}\ifdim\wd0=0pt
    \@lhtitledefinedfalse
  \else
    \@lhtitledefinedtrue
  \fi
}
\newif\if@lhdeptdefined
\@lhdeptdefinedfalse
\DeclareRobustCommand{\@lhdept}{}
\DeclareRobustCommand{\lhdept}[1]{
  \DeclareRobustCommand*{\@lhdept}{#1}
  \setbox0=\hbox{\@lhdept\unskip}\ifdim\wd0=0pt
    \@lhdeptdefinedfalse
  \else
    \@lhdeptdefinedtrue
  \fi
}
\newif\if@lhECUaddressdefined
\@lhECUaddressdefinedfalse
\DeclareRobustCommand{\@lhECUaddress}{}
\DeclareRobustCommand{\lhECUaddress}[1]{
  \DeclareRobustCommand*{\@lhECUaddress}{#1}
  \setbox0=\hbox{\@lhECUaddress\unskip}\ifdim\wd0=0pt
    \@lhECUaddressdefinedfalse
  \else
    \@lhECUaddressdefinedtrue
  \fi
}
\DeclareRobustCommand{\lhECUPostal}{
    East Carolina University \textbar\
    Greenville, NC 27858-4353
}

\newif\if@lhphonedefined
\@lhphonedefinedfalse
\DeclareRobustCommand*{\@lhphone}{}
\DeclareRobustCommand*{\lhphone}[1]{
  \DeclareRobustCommand*{\@lhphone}{#1}
  \setbox0=\hbox{\@lhphone\unskip}\ifdim\wd0=0pt
    \@lhphonedefinedfalse
  \else
    \@lhphonedefinedtrue
  \fi
}
\newif\if@lhfaxdefined
\@lhfaxdefinedfalse
\DeclareRobustCommand*{\@lhfax}{}
\DeclareRobustCommand*{\lhfax}[1]{
  \DeclareRobustCommand*{\@lhfax}{#1}
  \setbox0=\hbox{\@lhfax\unskip}\ifdim\wd0=0pt
    \@lhfaxdefinedfalse
  \else
    \@lhfaxdefinedtrue
  \fi
}
\newif\if@lhemaildefined
\@lhemaildefinedfalse
\DeclareRobustCommand*{\@lhemail}{}
\DeclareRobustCommand*{\lhemail}[1]{
  \DeclareRobustCommand*{\@lhemail}{#1}
  \setbox0=\hbox{\@lhemail\unskip}\ifdim\wd0=0pt
    \@lhemaildefinedfalse
  \else
    \@lhemaildefinedtrue
  \fi
}
\newif\if@lhwwwdefined
\@lhwwwdefinedfalse
\DeclareRobustCommand*{\@lhwww}{}
\DeclareRobustCommand*{\lhwww}[1]{
  \DeclareRobustCommand*{\@lhwww}{#1}
  \setbox0=\hbox{\@lhwww\unskip}\ifdim\wd0=0pt
    \@lhwwwdefinedfalse
  \else
    \@lhwwwdefinedtrue
  \fi
}
\DeclareRobustCommand*{\memotitle}{MEMORANDUM}
\DeclareRobustCommand*{\memotolabel}{TO:}
\DeclareRobustCommand*{\@memoto}{}
\DeclareRobustCommand*{\memoto}[1]{\DeclareRobustCommand*{\@memoto}{#1}}
\newif\if@memofromdefined
\@memofromdefinedfalse
\DeclareRobustCommand*{\memofromlabel}{FROM:}
\DeclareRobustCommand*{\@memofrom}{}
\DeclareRobustCommand*{\memofrom}[1]{
  \DeclareRobustCommand*{\@memofrom}{#1}
  \@memofromdefinedtrue
}
\DeclareRobustCommand*{\memosubjlabel}{SUBJECT:}
\DeclareRobustCommand*{\@memosubject}{}
\DeclareRobustCommand*{\memosubject}[1]{\DeclareRobustCommand*{\@memosubject}{#1}}
\newif\if@memodatedefined
\@memodatedefinedfalse
\DeclareRobustCommand*{\memodatelabel}{DATE:}
\DeclareRobustCommand*{\@memodate}{}
\DeclareRobustCommand*{\memodate}[1]{
  \DeclareRobustCommand*{\@memodate}{#1}
  \@memodatedefinedtrue
}
\newif\if@ptwoheaddefined
\@ptwoheaddefinedfalse
\DeclareRobustCommand*{\@ptwohead}{}
\DeclareRobustCommand*{\ptwohead}[1]{
  \DeclareRobustCommand*{\@ptwohead}{#1}
  \@ptwoheaddefinedtrue
}
\DeclareRobustCommand{\iaddress}[1]{
  \par
  #1
  \par
}
\DeclareRobustCommand{\greeting}[1]{
  \par
  #1
  \par
}
\newif\if@closingnamedefined
\@closingnamedefinedfalse
\DeclareRobustCommand*{\@closingname}{}
\DeclareRobustCommand*{\closingname}[1]{
  \DeclareRobustCommand*{\@closingname}{#1}
  \@closingnamedefinedtrue
}
\DeclareRobustCommand{\closing}[1]{
  \par
  \vspace{\parskip}\vspace{\parskip}#1,
  \par
  \vspace{\parskip}\vspace{\parskip}%
  \if@closingnamedefined
    \@closingname
  \else
    \if@lhnamedefined
      \@lhname
    \else
      ~
    \fi
  \fi
}
\newlength{\sigwidth}
\setlength{\sigwidth}{1.75in}
\DeclareRobustCommand{\closingsig}[2][\sigwidth]{
  \par
  \vspace{\parskip}\vspace{\parskip}#2,\\
  \includegraphics[width=#1]{signature}\\
  \if@closingnamedefined
    \@closingname
  \else
    \if@lhnamedefined
      \@lhname
    \else
      ~
    \fi
  \fi
}
\DeclareRobustCommand{\letterhead}{
  \thispagestyle{lhpage}
}
\DeclareRobustCommand{\memohead}{
\begin{tabular}{l l}
  \multicolumn{2}{l}{\memotitle}\\ \\
  \memotolabel & \@memoto\\ \\
  \memofromlabel &
  \if@memofromdefined
    \@memofrom\\ \\
  \else
    \if@lhnamedefined
      \@lhname\\ \\
    \else
      ~\\ \\
    \fi
  \fi
  \memodatelabel &
  \if@memodatedefined
    \@memodate \\ \\
  \else
    \today \\ \\
  \fi
  \memosubjlabel & \@memosubject\\ \\
\end{tabular}
}
\headsep = 0.25in
\parskip = 2ex
\parindent = 0.0in
\footskip = 18.7pt
%%
\newenvironment{afterclose}{\begin{description}}{\end{description}}
\DeclareRobustCommand*{\ps}{
  \item[{\rm{P.S.}}]
}
\DeclareRobustCommand*{\encl}{
  \item[{\rm{encl:}}]
}
\DeclareRobustCommand*{\cc}{
  \item[{\rm{cc:}}]
}
\DeclareRobustCommand*{\CC}{
  \item[{\rm{CC:}}]
}
\DeclareRobustCommand*{\pc}{
  \item[{\rm{pc:}}]
}
\DeclareRobustCommand*{\PC}{
  \item[{\rm{PC:}}]
}
\fancypagestyle{lhpage}{%
     \newgeometry{vmargin={2in, 1in}, hmargin=1in, headheight=62pt, foot=6pt}
     \renewcommand{\headrulewidth}{2pt}
     \renewcommand{\headrule}{\hbox to\headwidth{%
       \if@bw\else
         \color{ecugold}%
       \fi
       \leaders\hrule height \headrulewidth\hfill}}
  \fancyhf{}
  \fancyhead[L]{%
    \if@bw
      \includegraphics[scale=0.75, viewport=48 8 144 72]{ECULogo2017BW}
    \else
      \includegraphics[scale=0.75, viewport=48 8 144 72]{ECULogo2017}
    \fi
  }
  \fancyhead[R]{
    \if@bw\else
      \color{ecupurple}
    \fi
    \sf\raggedleft \fontsize{9}{10.8}\selectfont
    \if@lhnamedefined
      \textbf{\@lhname\if@lhdegreedefined{, \@lhdegree}\fi}
      \if@lhtitledefined
        \textbar\ \@lhtitle\
      \fi
      \if@lhdeptdefined
        \textbar\ \@lhdept\\
      \else
        \\
      \fi
    \fi
    \if@lhECUaddressdefined
      \@lhECUaddress\ \textbar
    \fi
    \lhECUPostal
    \if@usa
      \textbar\ USA\\
    \else
      \\
    \fi
    \newcommand{\@sep}{}
    \if@lhphonedefined
      \@lhphone\ office%
      \renewcommand{\@sep}{\textbar}
    \fi
    \if@lhfaxdefined
      \@sep\ \@lhfax\ fax%
      \renewcommand{\@sep}{\textbar}
    \fi
    \if@lhemaildefined
      \@sep\ \@lhemail%
      \renewcommand{\@sep}{\textbar}
    \fi
    \if@lhwwwdefined
      \@sep\ \@lhwww
    \fi
  }
  \fancyfoot{}
  \fancyfoot[R]{
    \if@bw\else
      \color{ecugold}
    \fi
    \sf\raggedleft \fontsize{16}{19.2}\selectfont
    \vspace{-12pt}
    www.ecu.edu
  }
}
\pagestyle{fancy}
\newgeometry{vmargin=1in, hmargin=1in, headheight=16pt, includehead}
\renewcommand{\headrulewidth}{0pt}
\lhead{
  \if@ptwoheaddefined
    \@ptwohead
  \else
    \@lhname
  \fi
}
\chead{}
\rhead{Page \thepage\ of \pageref{LastPage}}
\lfoot{}
\cfoot{}
\rfoot{}
\raggedright
\InputIfFileExists{ECULetterDefs.cfg}{%
  \ClassInfo{ECULetter}{Loading user configurations from ECULetterDefs.cfg}%
}%
{%
  \ClassInfo{ECULetter}{User configuration file found.}%
}
\AtBeginDocument{
  \if@printletterhead
    \letterhead
  \fi
  \if@printmemohead
    \memohead
    \par
  \fi
}
\endinput
%%
%% End of file `ECULetter.cls'.
