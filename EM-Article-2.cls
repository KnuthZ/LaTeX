\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{EM-Article-2}[2025/03/24 EM-Type document class]

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
\RequirePackage[detect-all]{siunitx}
\RequirePackage[version=4,arrows=pgf]{mhchem}

\setmainfont[ 
    Ligatures=TeX, 
    Numbers={Lowercase,Proportional}, 
    SmallCapsFeatures={LetterSpace=6},
    UprightFont={Source Serif 4},
    UprightFeatures={
        SizeFeatures = { 
            { Size = -8.5, Font = Source Serif 4 Caption }, 
            { Size = 8.5-11, Font = Source Serif 4 SmText }, 
            { Size = 11-14, Font = Source Serif 4 }, 
            { Size = 14-21.5, Font = Source Serif 4 Subhead }, 
            { Size = 21.5-, Font = Source Serif 4 Display } 
        }
    },
    ItalicFont={Source Serif 4 Italic},
    ItalicFeatures={
        SizeFeatures = { 
            { Size = -8.5, Font = Source Serif 4 Caption Italic }, 
            { Size = 8.5-11, Font = Source Serif 4 SmText Italic }, 
            { Size = 11-14, Font = Source Serif 4 Italic }, 
            { Size = 14-21.5, Font = Source Serif 4 Subhead Italic }, 
            { Size = 21.5-, Font = Source Serif 4 Display Italic } 
        }
    },
    BoldFont={Source Serif 4 Bold},
    BoldFeatures={
        SizeFeatures = { 
            { Size = -8.5, Font = Source Serif 4 Caption Bold }, 
            { Size = 8.5-11, Font = Source Serif 4 SmText Bold }, 
            { Size = 11-14, Font = Source Serif 4 Bold }, 
            { Size = 14-21.5, Font = Source Serif 4 Subhead Bold }, 
            { Size = 21.5-, Font = Source Serif 4 Display Bold } 
        }
    },
    BoldItalicFont={Source Serif 4 Bold Italic},
    BoldItalicFeatures={
        SizeFeatures = { 
            { Size = -8.5, Font = Source Serif 4 Caption Bold Italic }, 
            { Size = 8.5-11, Font = Source Serif 4 SmText Bold Italic }, 
            { Size = 11-14, Font = Source Serif 4 Bold Italic }, 
            { Size = 14-21.5, Font = Source Serif 4 Subhead Bold Italic }, 
            { Size = 21.5-, Font = Source Serif 4 Display Bold Italic } 
        }
    }
]{Source Serif 4}

\setmathrm[Scale=MatchLowercase]{IBM Plex Math}
\setmathfont[Scale=MatchLowercase]{IBM Plex Math}

\linespread{1.1} 

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
\apptocmd{\tableofcontents}{\vspace{\baselineskip}}{}{}
\renewcommand{\theequation}{{\addfontfeatures{Numbers={Uppercase,Monospaced}}\arabic{equation}}}

\RequirePackage{titlesec}
\RequirePackage{titletoc}

\titleformat%
  {\section}%
  [block]%
  {\raggedright\scshape}%
  {\thesection}%
  {0.5em}%
  {\MakeLowercase}%
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

\titlespacing*{\section}{0pt}{13.2pt plus 1ex minus 0.2ex}{13.2pt plus 0.2ex}
\titlespacing*{\subsection}{0pt}{13.2pt plus 1ex minus 0.2ex}{13.2pt plus 0.2ex}

%------

\setcounter{tocdepth}{1}

\titlecontents{section}[0em]{}{\addfontfeatures{Numbers=Monospaced}\thecontentslabel\hspace{0.5em}}{}{\space\titlerule*[0.8em]{.}\contentspage}[\vspace{0.5\baselineskip}]

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

\preauthor{\begin{center}\fontsize{10pt}{13.2pt}\selectfont\begin{tabular}[t]{c}}
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
	sorting=none
]{biblatex}

\addbibresource{main.bib} 

\RequirePackage{csquotes}
\RequirePackage{quoting}

\quotingsetup{leftmargin=1.5em,rightmargin=0em,indentfirst=false,vskip=6.6pt plus 0.5ex minus 0.1ex}
\renewcommand*{\quotingfont}{\fontsize{9pt}{11pt}\selectfont}

%------

\RequirePackage{ragged2e}

\RequirePackage{caption}
\RequirePackage{subcaption}

\captionsetup*{font={footnotesize}, format=plain, labelfont=sc, justification=RaggedRight, textformat=period, skip=6pt}
\subcaptionsetup*{font={footnotesize},labelsep=colon, labelfont=sc, labelformat=simple, justification=RaggedRight, textformat=period}

\captionsetup*[figure]{name=мал.}
\captionsetup*[table]{name=табл.}
\captionsetup*[equation]{name=рівн.}

%------

\RequirePackage{enumitem} 

\setlist{noitemsep} 

\setlist[enumerate]{label=\arabic*., label*=\arabic*.,labelsep=0.7em,font=\addfontfeatures{Numbers=Monospaced}}
\setlist[enumerate,1]{leftmargin=*,topsep=6.6pt plus 0.5ex minus 0.1ex}
\setlist[enumerate,2]{leftmargin=*}

\setlist[itemize]{labelsep=1.2em,leftmargin=*,topsep=6.6pt plus 0.5ex minus 0.1ex}

\setlist[description]{font=\normalfont\itshape,topsep=6.6pt plus 0.5ex minus 0.1ex,leftmargin=1.5em}

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

%------

\setlength{\parindent}{1.5em}

%------

\newtheoremstyle{myplain}%
  {\topsep}%   
  {\topsep}%  
  {\itshape}%
  {}%       
  {\addfontfeatures{Letters=UppercaseSmallCaps}\scshape}%
  {.}%         
  {0.5em}%
  {}        

\newtheoremstyle{mydefinition}%
  {\topsep}%
  {\topsep}%
  {\normalfont}%
  {}%        
  {\addfontfeatures{Letters=UppercaseSmallCaps}\scshape}%
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

%------

\RequirePackage[lines=3,lhang=0.1]{lettrine}


