%% Copyright (C) 2016 Achim D. Brucker, https://www.brucker.ch
%%
%% License:
%%   This program can be redistributed and/or modified under the terms
%%   of the LaTeX Project Public License Distributed from CTAN
%%   archives in directory macros/latex/base/lppl.txt; either
%%   version 1.3c of the License, or (at your opinion) any later version.
%%   OR
%%   The 2-clause BSD-style license.
%%
%%   SPDX-License-Identifier: LPPL-1.3c+ OR BSD-2-Clause
\NeedsTeXFormat{LaTeX2e}[1994/06/01]
\ProvidesClass{lh-presentation}%
  [2016/12/28 v0.0  LaTeX presenation class implementing the cooperate design of LogicalHacking.com]
\LoadClassWithOptions{beamer}[]

\DeclareOptionBeamer{classification}{\PassOptionsToPackage{classification=#1}{beamerthemelh-presentation}}
\DeclareOptionBeamer{titlelight}{\PassOptionsToPackage{titlelight}{beamerthemelh-presentation}}
\DeclareOptionBeamer{inverse}{\PassOptionsToPackage{inverse}{beamerthemelh-presentation}}

\ProcessOptionsBeamer\relax

\usetheme{lh-presentation}
\endinput
