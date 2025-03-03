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
\RequirePackage[version=4]{mhchem}
\RequirePackage[lines=3,lhang=0.25,nindent=0em]{lettrine}

\setmainfont[
  Ligatures=TeX,
  Numbers={Lowercase,Proportional},
  SmallCapsFeatures={LetterSpace=4,Scale=0.95}
]{Spectral}

\newfontfamily\cyrillicfonttt[Scale=MatchLowercase]{JetBrainsMono}
\setmonofont[Scale=MatchLowercase]{JetBrainsMono}

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
  {\fontsize{11pt}{13pt}\bfseries\raggedright}%
  {\thesection}%
  {0.5em}%
  {\addfontfeatures{Numbers={Uppercase,Monospaced}}}%
  []%

%------

\titleformat%
  {\subsection}%
  [block]%
  {\raggedright}%
  {\thesubsection}%
  {0.5em}%
  {\addfontfeatures{Numbers={Uppercase,Monospaced},SmallCapsFeatures={Scale=1}}\scshape\MakeLowercase}%
  []%

%------

\titlespacing*{\section}{0pt}{12.6pt plus 1ex minus 0.2ex}{12.6pt plus 0.2ex}
\titlespacing*{\subsection}{0pt}{12.6pt plus 1ex minus 0.2ex}{12.6pt plus 0.2ex}

%------

\setcounter{tocdepth}{1}

\titlecontents{section}[0em]{}{\thecontentslabel\hspace{0.5em}}{}{\space\titlerule*[0.8em]{.}\textbf{\contentspage}}[\vspace{0.5\baselineskip}]

%------

\RequirePackage{fancyhdr} 
\pagestyle{fancy} 

\renewcommand{\headrulewidth}{0pt} 

\fancyhf{} 

\fancyfoot[RO]{\addfontfeatures{Numbers={Uppercase,Monospaced}}\small\textbf{\thepage}} 
\fancyfoot[LE]{\addfontfeatures{Numbers={Uppercase,Monospaced}}\small\textbf{\thepage}} 

%------

\RequirePackage{titling} 

\setlength{\droptitle}{-4\baselineskip} 

\pretitle{\begin{center}\fontsize{14pt}{16pt}\bfseries}
\posttitle{\par\end{center}\vspace{\baselineskip}}

\preauthor{\begin{center} \fontsize{11pt}{13pt}\selectfont \begin{tabular}[t]{c}}
\postauthor{\end{tabular}\par\end{center}\vspace{\baselineskip}}

\predate{\begin{center}\fontsize{8pt}{10pt}\selectfont}
\postdate{\par\end{center}}

\setlength{\thanksmarkwidth}{3pt} 
\setlength{\thanksmargin}{-3pt} 

\patchcmd{\maketitle}{plain}{empty}{}{} 

%------

\RequirePackage[original]{abstract} 

\renewcommand{\abstractnamefont}{\vspace{2\baselineskip}\hrule height \heavyrulewidth \normalfont\bfseries\vspace{\baselineskip}} 
\renewcommand{\abstracttextfont}{\vspace{\baselineskip}} 
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
	colorlinks=true, 
	urlcolor=black, 
	linkcolor=black,
	citecolor=black,
  breaklinks=true
}
\urlstyle{rm}

\renewcommand{\figureautorefname}{мал.}
\renewcommand{\tableautorefname}{табл.}
\renewcommand{\equationautorefname}{рівн.}
\renewcommand{\pageautorefname}{ст.}

\RequirePackage[skip={12.6pt plus 1ex minus 0.2ex}]{parskip}
