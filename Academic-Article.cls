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

\RequirePackage[norule,hang]{footmisc}
\renewcommand\footnotemargin{\parindent}
\makeatletter
\renewcommand\@makefntext[1]{
    \@thefnmark.~#1}
\makeatother

\RequirePackage[
	top=2.5cm, 
	bottom=2.5cm,
	left=2cm, 
	right=2cm,
	footskip=1cm,
	headsep=0.75cm,
	columnsep=20pt
]{geometry}

\RequirePackage{fontspec}
\RequirePackage{unicode-math}
\RequirePackage{polyglossia}
\RequirePackage{siunitx}
\RequirePackage[version=4,arrows=pgf]{mhchem}
\RequirePackage[lines=3,lhang=0.25,nindent=0em]{lettrine}

\setmainfont[
  Ligatures=TeX,
  Numbers={Lowercase,Proportional},
  SmallCapsFeatures={LetterSpace=4,Scale=0.95}
]{Spectral}

\setmathrm[Scale=MatchLowercase]{Euler Math}
\setmathfont[Scale=MatchLowercase]{Euler Math}

\linespread{1.05} 

\setmainlanguage{ukrainian}
\setotherlanguages{english,russian}

\RequirePackage{microtype}
\microtypesetup{
  protrusion=true,
  expansion=true,
  stretch=30
}

\RequirePackage{etoolbox}

\RequirePackage{tabularray}
\RequirePackage{stfloats}
\UseTblrLibrary{amsmath,siunitx,booktabs}

\AtBeginEnvironment{tabular}{\addfontfeatures{Numbers={Uppercase,Monospaced}}}
\AtBeginEnvironment{tblr}{\addfontfeatures{Numbers={Uppercase,Monospaced}}}
\AtBeginEnvironment{longtblr}{\addfontfeatures{Numbers={Uppercase,Monospaced}}}
\renewcommand{\theequation}{{\addfontfeatures{Numbers={Uppercase,Monospaced}}\arabic{equation}}}

\RequirePackage{titlesec}
\RequirePackage{titletoc}

\titleformat%
  {\section}%
  [block]%
  {\raggedright}%
  {\thesection}%
  {0.5em}%
  {\addfontfeatures{Numbers={Uppercase,Monospaced},SmallCapsFeatures={Scale=1}}\scshape\MakeLowercase}%
  []%

%------

\titleformat%
  {\subsection}%
  [block]%
  {\raggedright}%
  {\thesubsection}%
  {0.5em}%
  {\addfontfeatures{Numbers={Uppercase,Monospaced}}\itshape}%
  []%

%------

\titlespacing*{\section}{0pt}{12.6pt plus 1ex minus 0.2ex}{12.6pt plus 0.2ex}
\titlespacing*{\subsection}{0pt}{12.6pt plus 1ex minus 0.2ex}{12.6pt plus 0.2ex}

%------

\setcounter{tocdepth}{1}

\titlecontents{section}[0em]{}{\thecontentslabel\hspace{0.5em}}{}{\space\titlerule*[0.8em]{.}\contentspage}[\vspace{0.5\baselineskip}]

%------

\RequirePackage{fancyhdr} 
\pagestyle{fancy} 

\renewcommand{\headrulewidth}{0pt} 

\fancyhf{} 

\fancyfoot[RO]{\addfontfeatures{Numbers={Uppercase,Monospaced}}\small\thepage} 
\fancyfoot[LE]{\addfontfeatures{Numbers={Uppercase,Monospaced}}\small\thepage} 

%------

\RequirePackage{titling} 

\setlength{\droptitle}{-4\baselineskip} 

\pretitle{\begin{center}\fontsize{16pt}{18pt}\selectfont}
\posttitle{\par\end{center}}

\preauthor{\begin{center}\fontsize{10pt}{12.6pt}\selectfont\begin{tabular}[t]{c}}
\postauthor{\end{tabular}\par\end{center}}

\predate{\begin{center}\fontsize{8pt}{10pt}\selectfont}
\postdate{\par\end{center}}

\setlength{\thanksmarkwidth}{3pt} 
\setlength{\thanksmargin}{-3pt} 

\patchcmd{\maketitle}{plain}{empty}{}{} 

%------

\RequirePackage[original]{abstract} 

\renewcommand{\abstractnamefont}{\vspace{\baselineskip}\hrule height \heavyrulewidth \vspace{\baselineskip}\scshape\MakeLowercase} 
\renewcommand{\abstracttextfont}{\normalfont\noindent\hspace{-0.3em}} 
\AtEndEnvironment{abstract}{\vspace{\baselineskip}\hrule height \heavyrulewidth}

%------

\RequirePackage[
	backend=biber, 
	citestyle=numeric, 
	bibstyle=numeric,
	sorting=none,
]{biblatex}

\addbibresource{main.bib} 

\RequirePackage{csquotes}

%------

\RequirePackage{ragged2e}

\RequirePackage{caption}
\RequirePackage{subcaption}

\captionsetup{font={small,stretch=1.05}, format=plain, labelfont=sc, justification=RaggedRight, textformat=period}
\subcaptionsetup{font={small,stretch=1.05},labelsep=colon, labelfont=sc, labelformat=simple, justification=RaggedRight, textformat=period}

\captionsetup*[figure]{name=мал.}
\captionsetup*[table]{name=табл.}
\captionsetup*[equation]{name=рівн.}

%------

\RequirePackage{enumitem} 

\setlist{noitemsep} 

%------

\RequirePackage{hyperref}

\hypersetup{
  hidelinks,
  breaklinks=true
}
\urlstyle{rm}

\renewcommand{\figureautorefname}{мал.}
\renewcommand{\tableautorefname}{табл.}
\renewcommand{\equationautorefname}{рівн.}
\renewcommand{\pageautorefname}{ст.}

\setlength{\parindent}{1.5em}
