%% Copyright (C) 2017 Achim D. Brucker, https://www.brucker.ch
%%
%% License:
%%   This program can be redistributed and/or modified under the terms
%%   of the LaTeX Project Public License Distributed from CTAN
%%   archives in directory macros/latex/base/lppl.txt; either
%%   version 1 of the License, or any later version.
%%   OR
%%   The 2-clause BSD-style license.
%%
\NeedsTeXFormat{LaTeX2e}[1994/06/01]
\ProvidesClass{lh-exercise}%
  [2016/12/28 v0.0  LaTeX class for home work / exercise sheets
  followign the  cooperate design of LogicalHacking.com]
  
\PassOptionsToClass{\CurrentOption}{scrartcl}
\LoadClass[DIV11, 11pt,a4paper]{scrartcl}[]

\DeclareOption{noanswer}       {\PassOptionsToPackage{noanswer}{exercise}}
\DeclareOption{answeronly}     {\PassOptionsToPackage{answeronly}{exercise}}
\DeclareOption{noexercise}     {\PassOptionsToPackage{noexercise}{exercise}}
\DeclareOption{exerciseonly}   {\PassOptionsToPackage{exerciseonly}{exercise}}
\DeclareOption{outputnothing}  {\PassOptionsToPackage{outputnothing}{exercise}}
\DeclareOption{exercisedelayed}{\PassOptionsToPackage{exercisedelayed}{exercise}}
\DeclareOption{answerdelayed}  {\PassOptionsToPackage{answerdelayed}{exercise}}
\DeclareOption{lastexercise}   {\PassOptionsToPackage{lastexercise}{exercise}}
\DeclareOption{showlabel}      {\PassOptionsToPackage{showlabel}{exercise}}

\ProcessOptions\relax

\usepackage[T1]{fontenc}
\usepackage[default]{raleway}
\usepackage{fontawesome}

\usepackage{lh-logo}
\usepackage[some]{background}
\usepackage{tikz}
\usepackage{exercise}
\usepackage{hyperref}
%
\makeatletter
\def\lh@handin{}
\newcommand{\handindate}[1]{\gdef\lh@handin{#1}}
\def\lh@discusion{}
\newcommand{\discussiondate}[1]{\gdef\lh@discussion{#1}}
\def\lh@lecture{}
\newcommand{\lecture}[1]{\gdef\lh@lecture{#1}}
\def\lh@academicyear{}
\newcommand{\academicyear}[1]{\gdef\lh@academicyear{#1}}
\def\lh@topic{}
\newcommand{\topic}[1]{\gdef\lh@topic{#1}}
\def\lh@sheetnumber{}
\newcommand{\sheetnumber}[1]{\gdef\lh@sheetnumber{#1}}

\backgroundsetup{
  scale=1,
  angle=0,
  opacity=1,
  contents={\begin{tikzpicture}[remember picture,overlay]
    \path [fill=lhLightGray] (-0.5\paperwidth,0.5\paperheight) rectangle (0.5\paperwidth,0.5\paperheight-125);
    \path [fill=lhOrange] (-0.5\paperwidth+20,0.5\paperheight) rectangle (0.5\paperwidth-20,0.5\paperheight-12);
    \draw (-0.5\paperwidth+15,0.5\paperheight-115) node [anchor=base west] {\lhcomLogoLight[width=.25\paperwidth]};
    \draw (0,0.5\paperheight-30) node {\textcolor{lhBlack}{\huge\bfseries\lh@lecture}};
    \draw (0,0.5\paperheight-53) node
    {\textcolor{lhBlack}{\ifx\lh@sheetnumber\@emtpy\else Home Work
        Sheet \fi\lh@sheetnumber}};
    \draw (0,0.5\paperheight-70) node {\textcolor{lhBlack}{\Large\bfseries\lh@topic}};
    \draw (0.5\paperwidth-15,0.5\paperheight-115) node [anchor=base east]
    {\begin{minipage}[b]{.6\linewidth}
    \flushright\small
    \textbf{Academic year:} \lh@academicyear\\
     \ifx\lh@handin\@empty\else%
       \textbf{Hand-in date:} \lh@handin\\
      \fi%
     \ifx\lh@discussion\@empty\else%
       \textbf{Discussion date:} \lh@discussion
     \fi
  \end{minipage}};
    \end{tikzpicture}}
}

\renewcommand{\maketitle}{
  \BgThispage%
  \vspace*{1.4cm}
  }

\def\DifficultyMarker{\faStar}
\renewcommand{\ExerciseHeader}{%
  \noindent\bfseries\ExerciseName~%
  \ExerciseHeaderNB~{\slshape\ExerciseHeaderTitle}~\ExerciseHeaderOrigin \hfill
  \ifx\ExerciseHeaderDifficulty\@empty\else(\ExerciseHeaderDifficulty\kern-.5ex)\fi\\}
\renewcommand{\AnswerHeader}{\bigskip\noindent\bfseries Answer to \ExerciseName~\ExerciseHeaderNB\\}

\newcommand{\sidemark}[1]{\mbox{}\marginpar[\small\raggedleft\hspace{0pt}\textcolor{lhOrange}{#1}]{\small\raggedright\hspace{0pt}\textcolor{lhOrange}{#1}}}
\newcommand{\key}[1]{#1\sidemark{#1}}


\endinput
