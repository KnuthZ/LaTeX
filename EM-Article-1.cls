\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{EM-Article}[2025/03/24 EM-Type document class]

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
\RequirePackage{amsthm}
\RequirePackage{polyglossia}
\RequirePackage{siunitx}
\RequirePackage[version=4,arrows=pgf]{mhchem}

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
  {\addfontfeatures{SmallCapsFeatures={Scale=1}}\scshape\MakeLowercase}%
  []

%------

\titleformat%
  {\subsection}%
  [block]%
  {\raggedright}%
  {\thesubsection}%
  {0.5em}%
  {\itshape}%
  []

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

\pretitle{\begin{center}\fontsize{16pt}{18pt}\addfontfeatures{Numbers={Uppercase,Monospaced}}}
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
\RequirePackage{quoting}

\quotingsetup{leftmargin=1.5em,rightmargin=0em,indentfirst=false,vskip=6.3pt plus 0.5ex minus 0.1ex}
\renewcommand*{\quotingfont}{\fontsize{9pt}{11pt}\selectfont}

%------

\RequirePackage{ragged2e}

\RequirePackage{caption}
\RequirePackage{subcaption}

\captionsetup*{font={small,stretch=1.05}, format=plain, labelfont=sc, justification=RaggedRight, textformat=period}
\subcaptionsetup*{font={small,stretch=1.05},labelsep=colon, labelfont=sc, labelformat=simple, justification=RaggedRight, textformat=period}

\captionsetup*[figure]{name=мал.}
\captionsetup*[table]{name=табл.}
\captionsetup*[equation]{name=рівн.}

%------

\RequirePackage{enumitem} 

\setlist{noitemsep} 

\setlist[enumerate]{label=\arabic*., label*=\arabic*.,labelsep=0.7em}
\setlist[enumerate,1]{leftmargin=*,topsep=6.3pt plus 0.5ex minus 0.1ex}
\setlist[enumerate,2]{leftmargin=*}

\setlist[itemize]{labelsep=1em,leftmargin=*,topsep=6.3pt plus 0.5ex minus 0.1ex}

\setlist[description]{font=\normalfont\itshape,topsep=6.3pt plus 0.5ex minus 0.1ex,leftmargin=1.5em}

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

%------

\newtheoremstyle{myplain}%
  {\topsep}%   
  {\topsep}%  
  {\itshape}%
  {}%       
  {\addfontfeatures{Letters=UppercaseSmallCaps}}%
  {.}%         
  {0.5em}%
  {}        

\newtheoremstyle{mydefinition}%
  {\topsep}%
  {\topsep}%
  {\normalfont}%
  {}%        
  {\addfontfeatures{Letters=UppercaseSmallCaps}}%
  {.}%         
  {0.5em}%
  {}

\theoremstyle{myplain}
\newtheorem{theorem}{Теорема}
\newtheorem*{theorem*}{Теорема}
\newtheorem{corollary}{Наслідок}
\newtheorem*{corollary*}{Наслідок}
\newtheorem{lemma}{Лема}
\newtheorem*{lemma*}{Лема}
\newtheorem{proposition}{Твердження}
\newtheorem*{proposition*}{Твердження}
\newtheorem{conjecture}{Гіпотеза}
\newtheorem*{conjecture*}{Гіпотеза}
\theoremstyle{mydefinition}
\newtheorem{definition}{Означення}
\newtheorem*{definition*}{Означення}
\theoremstyle{remark}
\newtheorem{remark}{Зауваження}
\newtheorem*{remark*}{Зауваження}

