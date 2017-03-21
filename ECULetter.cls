\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ECULetter}[2017/03/20 ECULetter version 0.1]

\LoadClass[11pt]{article}

\newif\if@bw
\@bwfalse



\RequirePackage[letterpaper, hmargin={2in,1in}, vmargin=1in]{geometry}
\RequirePackage{graphicx}
\RequirePackage{amssymb}
\RequirePackage{fancyhdr}
\RequirePackage{lastpage}
\RequirePackage{wrapfig}

\DeclareOption{bw}{\@bwtrue}
\DeclareOption{color}{\@bwfalse}
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


\newif\if@fromdefined
\@fromdefinedfalse

\newif\if@letterdatedefined
\@letterdatedefinedfalse

\newif\if@ptwoheaddefined
\@ptwoheaddefinedfalse

\DeclareRobustCommand*{\@recipient}{} 
\DeclareRobustCommand*{\recipient}[1]{\DeclareRobustCommand*{\@recipient}{#1}} 

\DeclareRobustCommand*{\@subject}{} 
\DeclareRobustCommand*{\subject}[1]{\DeclareRobustCommand*{\@subject}{#1}}

\DeclareRobustCommand*{\@from}{} 
\DeclareRobustCommand*{\from}[1]{
  \DeclareRobustCommand*{\@from}{#1} 
  \@fromdefinedtrue
}

\DeclareRobustCommand*{\@letterdate}{} 
\DeclareRobustCommand*{\letterdate}[1]{
  \DeclareRobustCommand*{\@letterdate}{#1} 
  \@letterdatedefinedtrue
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

\DeclareRobustCommand{\closing}[1]{
  \par
  \vspace{\parskip}\vspace{\parskip}#1,
  \par
  \vspace{\parskip}\vspace{\parskip}%
  \if@lhnamedefined
    \@lhname
  \else
    ~
  \fi
}

% This command will include a signature image. The absolute path to the signature file must be in the \includegraphics command below.
\DeclareRobustCommand{\closingsig}[1]{
  \par
  \vspace{\parskip}\vspace{\parskip}#1,\\
  \includegraphics[width=1.75in]{signature}\\
  \if@lhnamedefined
    \@lhname
  \else
    ~
  \fi
}

% This is the command to include the letterhead in the document.
\DeclareRobustCommand{\letterhead}{
  \thispagestyle{plain}
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
  \multicolumn{2}{l}{MEMORANDUM}\\ \\
  TO: & \@recipient\\ \\
  FROM: & 
  \if@fromdefined
    \@from\\ \\
  \else
    \if@lhnamedefined
      \@lhname\\ \\
    \else
      ~\\ \\
    \fi
  \fi
  DATE: & 
  \if@letterdatedefined
    \@letterdate \\ \\
  \else
    \today \\ \\
  \fi
  SUBJECT: & \@subject\\ \\
\end{tabular}

}

\headsep = 0.25in
\parskip = 2ex
\parindent = 0.0in
\footskip = 18.7pt

\fancypagestyle{plain}{%
\fancyhf{}
\fancyfoot[L]{\hspace{-1.75in}
\begin{minipage}{1.7in}
\raggedright
\emph{\fontsize{7}{8.4}\selectfont East Carolina University is a constituent institution of the University of North Carolina.\\ An equal opportunity university.\\} 
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

\endinput

