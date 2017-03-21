\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ECULetter}[2017/03/20 ECULetter version 0.1]

\LoadClass[11pt]{article}

\newif\if@bw
\@bwfalse
\newif\if@printletterhead
\@printletterheadtrue
\newif\if@printmemohead
\@printmemoheadfalse


\RequirePackage[letterpaper, hmargin={2in,1in}, vmargin=1in]{geometry}
\RequirePackage{graphicx}
\RequirePackage{fancyhdr}
\RequirePackage{lastpage}
\RequirePackage{wrapfig}

\DeclareOption{bw}{\@bwtrue}
\DeclareOption{color}{\@bwfalse}
\DeclareOption{noletterhead}{\@printletterheadfalse}
\DeclareOption{memo}{\@printmemoheadtrue}
\DeclareOption{10pt}{\OptionNotUsed}
\DeclareOption{12pt}{\OptionNotUsed}
\DeclareOption{twocolumn}{\OptionNotUsed}
\DeclareOption*{%
      \PassOptionsToClass{\CurrentOption}{article}%
}
\ProcessOptions\relax

\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}

% Take care of author definitions.

\newif\if@lhnamedefined
\@lhnamedefinedfalse
\DeclareRobustCommand*{\@lhname}{}
\DeclareRobustCommand*{\lhname}[1]{
  \DeclareRobustCommand*{\@lhname}{#1}
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

\newif\if@lhECUaddressdefined
\@lhECUaddressdefinedfalse
\DeclareRobustCommand{\@lhECUaddress}{}
\DeclareRobustCommand{\lhECUaddress}[1]{
  \DeclareRobustCommand*{\@lhECUaddress}{#1}
  \@lhECUaddressdefinedtrue
}


\DeclareRobustCommand{\lhECUPostal}{
    East Carolina University\\ 
    Greenville, NC 27858-4353\\
    USA
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


\newif\if@memofromdefined
\@memofromdefinedfalse

\newif\if@memodatedefined
\@memodatedefinedfalse

\newif\if@ptwoheaddefined
\@ptwoheaddefinedfalse

\DeclareRobustCommand*{\memotitle}{MEMORANDUM}

\DeclareRobustCommand*{\memotolabel}{TO:}

\DeclareRobustCommand*{\@memoto}{} 
\DeclareRobustCommand*{\memoto}[1]{\DeclareRobustCommand*{\@memoto}{#1}} 

\DeclareRobustCommand*{\memosubjlabel}{SUBJECT:}

\DeclareRobustCommand*{\@memosubject}{} 
\DeclareRobustCommand*{\memosubject}[1]{\DeclareRobustCommand*{\@memosubject}{#1}}

\DeclareRobustCommand*{\memofromlabel}{FROM:}

\DeclareRobustCommand*{\@memofrom}{} 
\DeclareRobustCommand*{\memofrom}[1]{
  \DeclareRobustCommand*{\@memofrom}{#1} 
  \@memofromdefinedtrue
}

\DeclareRobustCommand*{\memodatelabel}{DATE:}

\DeclareRobustCommand*{\@memodate}{} 
\DeclareRobustCommand*{\memodate}[1]{
  \DeclareRobustCommand*{\@memodate}{#1} 
  \@memodatedefinedtrue
}

\DeclareRobustCommand{\UNC}{
  East Carolina University is a constituent institution of the 
  University of North Carolina.\\ 
  An equal opportunity university.
}

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

% This command will include a signature image. The absolute path to the signature file must be in the \includegraphics command below.
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

% This is the command to include the letterhead in the document.
\DeclareRobustCommand{\letterhead}{
  \thispagestyle{lhpage}
  \begin{wrapfigure}[15]{i}[0pt]{0in}
    \hspace{-1.75in}
    \begin{minipage}[t]{1.7in}
      \vspace{-0.5in}
      \if@bw
        % The B&W ECU logo file is in the \includegraphics command below. This 
        % file must be somewhere in the latex file path.
        % (Test with the command $ kpsewhich filename.pdf.)
        \includegraphics[width=4.75in]{ECULogoBW}\\ \\
      \else
        % The ECU logo file is in the \includegraphics command below. This file 
        % must be somewhere in the latex file path. 
        % (Test with the command $ kpsewhich filename.pdf.)
        \includegraphics[width=4.75in]{ECULogo}\\ \\
      \fi
      {%
        \sf\raggedright \fontsize{9}{10.8}\selectfont
        \if@lhnamedefined
          \textbf{\@lhname\if@lhdegreedefined{, \@lhdegree}\fi}\\
          \if@lhtitledefined{\@lhtitle\\}\fi
        \fi
      \if@lhECUaddressdefined
        \@lhECUaddress ~\\ 
      \fi
      \lhECUPostal\\~\\
      \if@lhphonedefined
        \@lhphone\ office\\
      \fi
      \if@lhfaxdefined
        \@lhfax\ fax\\~\\
      \fi
      \if@lhemaildefined
        \@lhemail \\
      \fi
      \if@lhwwwdefined
        \@lhwww \\
      \fi
      }
    \end{minipage}%
  \end{wrapfigure}
  \normalsize
  ~
  \par
}

% The command memohead creates a heading for a memorandum.
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

\fancypagestyle{lhpage}{%
\fancyhf{}
\fancyfoot[L]{\hspace{-1.75in}
\begin{minipage}{1.7in}
\raggedright
\emph{\fontsize{7}{8.4}\selectfont \UNC\\} 
\end{minipage}
}
}

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


\pagestyle{fancy}

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
  \fi
}


\endinput

