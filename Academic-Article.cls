\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{Academic-Article}[2025/03/24 My Class]

\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}%
}
\ProcessOptions\relax

\LoadClass[a4paper,10pt,twocolumn,twoside]{article} 

%----------------------------------------------------------------------------------------

\RequirePackage{graphicx}
\graphicspath{ {./Images/} }
\RequirePackage{xcolor}

\RequirePackage[norule,hang]{footmisc}
%% Footnote text aligned with text margin
\renewcommand\footnotemargin{\parindent}
%% Footnote text with a normal mark
\makeatletter
\renewcommand\@makefntext[1]{
    \@thefnmark.~#1}
\makeatother

\RequirePackage[
	top=2.5cm, % Top margin
	bottom=2.5cm, % Bottom margin
	left=2cm, % Left margin
	right=2cm, % Right margin
	footskip=1cm, % Space from the bottom margin to the baseline of the footer
	headsep=0.75cm, % Space from the top margin to the baseline of the header
	columnsep=20pt, % Space between text columns (in twocolumn mode)
	%showframe % Uncomment to show frames around the margins for debugging purposes
]{geometry}

\RequirePackage{fontspec}
\RequirePackage{unicode-math}
\RequirePackage{siunitx}
\RequirePackage{polyglossia}

\setmainfont[
  Ligatures=TeX,
  Numbers={Lowercase,Proportional},
  SmallCapsFeatures={LetterSpace=4}
]{Spectral}

\setmathrm{Euler Math}
\setmathfont{Euler Math}

\linespread{1.05} 

\setmainlanguage{ukrainian}
\setotherlanguages{english,russian}

\RequirePackage{microtype}
\microtypesetup{
  protrusion=true,
  expansion=true,
  stretch=20
}

\RequirePackage{etoolbox}

\RequirePackage{booktabs}
\RequirePackage{multirow}
\RequirePackage{tabularray}
\UseTblrLibrary{amsmath,siunitx,booktabs}

\AtBeginEnvironment{tabular}{\addfontfeatures{Numbers={Uppercase,Monospaced}}}
\AtBeginEnvironment{tblr}{\addfontfeatures{Numbers={Uppercase,Monospaced}}}
\renewcommand{\theequation}{{\addfontfeatures{Numbers={Uppercase,Monospaced}}\arabic{equation}}}

\RequirePackage{titlesec}
\RequirePackage{ragged2e}

\titleformat%
  {\section}%
  [block]%
  {\fontsize{11pt}{12pt}\bfseries\raggedright\selectfont}%
  {\thesection}%
  {0.5em}%
  {\addfontfeatures{Numbers={Uppercase,Monospaced}}}%
  []%

%------

\titleformat%
  {\subsection}%
  [block]%
  {\raggedright\normalsize}%
  {\thesubsection}%
  {0.5em}%
  {\addfontfeatures{Numbers={Uppercase,Monospaced}}\scshape\MakeLowercase}%
  []%

%------

\RequirePackage{fancyhdr} % Required for customizing headers and footers
\pagestyle{fancy} % Enable custom headers and footers

\renewcommand{\headrulewidth}{0pt} % Top horizontal rule thickness

\fancyhf{} % Clear default headers/footers

\fancyfoot[RO]{\small\textbf{\thepage}} % Right-odd page footer
\fancyfoot[LE]{\small\textbf{\thepage}} % Left-even page footer

%------

\titlespacing*{\section}{0pt}{\baselineskip}{\baselineskip}
\titlespacing*{\subsection}{0pt}{\baselineskip}{\baselineskip}

\RequirePackage{titling} % Required for customizing the title section

\setlength{\droptitle}{-4\baselineskip} % Move the title up

\pretitle{\begin{center}\huge\bfseries} % Article title pre-formatting
\posttitle{\end{center}} % Article title post-formatting

\setlength{\thanksmarkwidth}{3pt} % Left margin for the first \thanks line
\setlength{\thanksmargin}{-3pt} % Left margin for the second and onwards \thanks line

\patchcmd{\maketitle}{plain}{empty}{}{} % Set the headers and footers style for the first page to empty

%------

\RequirePackage{abstract} 

\renewcommand{\abstractnamefont}{\normalfont\bfseries\vspace{0.5\baselineskip}} 
\renewcommand{\abstracttextfont}{\vspace{-0.5\baselineskip}\normalfont} 

%------

\RequirePackage[
	backend=biber, % Use the biber backend for compiling the bibliography
	citestyle=numeric, % In-text citation style
	bibstyle=numeric, % Bibliography style
	sorting=none, % Order references in the order in which they are used in the document
]{biblatex}

\addbibresource{main.bib} % BibLaTeX bibliography file

\RequirePackage{csquotes}

%------

\RequirePackage{caption}

\captionsetup{
  format=plain,
  labelformat=simple,
  textformat=period,
  labelsep=period,
  justification=raggedright,
  labelfont={sc,rm,small,stretch={1.05}},
  textfont={rm,small,stretch={1.05}},
  skip=6pt
}

%\captionsetup[figure]{name=Мал.}
%\captionsetup[table]{name=Таблиця}
%\captionsetup[equation]{name=Рівняння}

%------

\RequirePackage{enumitem} 

\setlist{noitemsep} 

%------

\RequirePackage{hyperref}

\hypersetup{
  pdfborder={0 0 0},
  frenchlinks=true,
  breaklinks=true
}
\urlstyle{rm}






















