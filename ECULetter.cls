\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ECUletter}%[ECULetter version 0.1 2017-01-17]
\LoadClass[11pt]{article}

\newif\if@bw
\@bwfalse
\newif\if@nowww
\@nowwwfalse

\RequirePackage[letterpaper, hmargin={2in,1in}, vmargin=1in]{geometry}
\RequirePackage{graphicx}
\RequirePackage{amssymb}
\RequirePackage{fancyhdr}
\RequirePackage{lastpage}
\usepackage{calc}
\usepackage{wrapfig}

\DeclareOption{bw}{\@bwtrue}
\DeclareOption{color}{\@bwfalse}
\DeclareOption{nowww}{\@nowwwtrue}
%\DeclareOption*{PassOptionsToPackage{\CurrentOption}{geometry}}
\ProcessOptions\relax

\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}

% Take care of author definitions.

\newif\if@lhnamedefined
\@lhnamedefinedfalse
\def\@lhname{\relax}
\newcommand{\lhname}[1]{
  \gdef\@lhname{#1}
  \setbox0=\hbox{\@lhname\unskip}\ifdim\wd0=0pt
    \@lhnamedefinedfalse
  \else
    \@lhnamedefinedtrue
  \fi
}


\newif\if@lhdegreedefined
\@lhdegreedefinedfalse
\def\@lhdegree{\relax}
\newcommand{\lhdegree}[1]{
  \gdef\@lhdegree{#1}
  \setbox0=\hbox{\@lhdegree\unskip}\ifdim\wd0=0pt
    \@lhdegreedefinedfalse
  \else
    \@lhdegreedefinedtrue
  \fi
}


\newif\if@lhtitledefined
\@lhtitledefinedfalse
\def\@lhtitle{\relax}
\newcommand{\lhtitle}[1]{
  \gdef\@lhtitle{#1}
  \setbox0=\hbox{\@lhtitle\unskip}\ifdim\wd0=0pt
    \@lhtitledefinedfalse
  \else
    \@lhtitledefinedtrue
  \fi
}

\newif\if@lhECUaddressdefined
\@lhECUaddressdefinedfalse
\def\@lhECUaddress{\relax}
\newcommand{\lhECUaddress}[1]{\gdef\@lhECUaddress{#1} \@lhECUaddressdefinedtrue}


\newif\if@lhphonedefined
\@lhphonedefinedfalse
\def\@lhphone{\relax}
\newcommand{\lhphone}[1]{
  \gdef\@lhphone{#1}
  \setbox0=\hbox{\@lhphone\unskip}\ifdim\wd0=0pt
    \@lhphonedefinedfalse
  \else
    \@lhphonedefinedtrue
  \fi
}


\newif\if@lhfaxdefined
\@lhfaxdefinedfalse
\def\@lhfax{\relax}
\newcommand{\lhfax}[1]{
  \gdef\@lhfax{#1}
  \setbox0=\hbox{\@lhfax\unskip}\ifdim\wd0=0pt
    \@lhfaxdefinedfalse
  \else
    \@lhfaxdefinedtrue
  \fi
}

\newif\if@lhemaildefined
\@lhemaildefinedfalse
\def\@lhemail{\relax}
\newcommand{\lhemail}[1]{
  \gdef\@lhemail{#1}
  \setbox0=\hbox{\@lhemail\unskip}\ifdim\wd0=0pt
    \@lhemaildefinedfalse
  \else
    \@lhemaildefinedtrue
  \fi
}

\newif\if@lhwwwdefined
\@lhwwwdefinedfalse
\def\@lhwww{\relax}
\newcommand{\lhwww}[1]{
  \gdef\@lhwww{#1}
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

\def\@recipient{\relax} 
\newcommand{\recipient}[1]{\gdef\@recipient{#1}} 

\def\@subject{\relax} 
\newcommand{\subject}[1]{\gdef\@subject{#1}}

\def\@from{\relax} 
\newcommand{\from}[1]{\gdef\@from{#1} \@fromdefinedtrue}

\def\@letterdate{\relax} 
\newcommand{\letterdate}[1]{\gdef\@letterdate{#1} \@letterdatedefinedtrue}

\def\@ptwohead{\relax}
\newcommand{\ptwohead}[1]{\gdef\@ptwohead{#1} \@ptwoheaddefinedtrue}


\newcommand{\iaddress}[1]{
\par
#1
\par
}
\newcommand{\greeting}[1]{
\par
#1
\par
}

\newcommand{\closing}[1]{
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
\newcommand{\closingsig}[1]{
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
\newcommand{\letterhead}{
\thispagestyle{plain}
\begin{wrapfigure}[15]{i}[0pt]{0in}
\hspace{-1.75in}
\begin{minipage}[t]{1.7in}
\vspace{-0.5in}
\if@bw
% The B&W ECU logo file is in the \includegraphics command below. This file must 
% be somewhere in the latex file path. 
% (Test with the command $ kpsewhich filename.pdf.)
  \includegraphics[width=4.75in]{ECULogoBW}\\ \\
\else
% The ECU logo file is in the \includegraphics command below. This file must be % be somewhere in the latex file path. 
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
East Carolina University\\ 
Greenville, NC 27858-4353\\
USA\\~\\
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
  \if@nowww
    \relax
  \else
    \@lhwww \\
  \fi
\fi
}
\end{minipage}%
\end{wrapfigure}
\normalsize
~
\par
}

% The command memohead creates a heading for a memorandum.
\newcommand{\memohead}{
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
\footskip = 18pt

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

\newcommand{\ps}{
\item[{\rm{P.S.}}] 
}

\newcommand{\encl}{
\item[{\rm{encl:}}] 
}

\newcommand{\cc}{
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

\IfFileExists{ECULetterDefs.sty}{\usepackage{ECULetterDefs}}{}
\endinput

