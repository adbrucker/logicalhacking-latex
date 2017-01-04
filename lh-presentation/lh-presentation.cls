%% Copyright (C) 2016 Achim D. Brucker, https://www.brucker.ch
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
\ProvidesClass{lh-presentation}%
  [2016/12/28 v0.0  LaTeX presenation class implementing the cooperate design of LogicalHacking.com]
\LoadClassWithOptions{beamer}[]



\usepackage{xkeyval}
\newcommand{\classification}{UNDEFINED}
\define@choicekey*{beamerthemelh-presentation.sty}{classification}[\val\nr]%
{strictlyconfidential,confidential,internal,customer,public-cc-by-nc-nd,%
  public-cc-by-nd,public-cc-by,public-cc-zero,public-gfdl}%
[strictlyconfidential]%
{%
  \ifcase\nr\relax
    \renewcommand{\classification}{\alert{Strictly Confidential}}%
  \or
    \renewcommand{\classification}{\alert{Confidential}}%
  \or
    \renewcommand{\classification}{\alert{Internal}}%
  \or
    \renewcommand{\classification}{\alert{Customer}}%
  \or
    \renewcommand{\classification}{Public (CC-BY-NC-ND)}%
  \or
    \renewcommand{\classification}{Public (CC-BY-ND)}%
  \or
    \renewcommand{\classification}{Public (CC-BY)}%
  \or
    \renewcommand{\classification}{Public (CC0)}%
  \or
    \renewcommand{\classification}{Public (GFDL)}%
  \fi%
}

\ProcessOptionsX*<beamerthemelh-presentation.sty>



\ProcessOptions\relax
\usetheme{lh-presentation}
\endinput
