%%
%% Copyright (C) 2016, Zhang Chuheng.
%% Department of Physics, Nanjing University.
%% 
%% Home Page: http://sealzhang.tk
%% 

\NeedsTeXFormat{LaTeX2e}[1995/12/01]

% 此处不加.cls，否则tex会警告
% 如果无法tex加载njuthesis类可以考虑改为njuthesis.cls
\ProvidesClass{njuthesis}

% 默认是adobe字体
\newif\ifnjut@adobefonts\njut@adobefontstrue
\newif\ifnjut@winfonts\njut@winfontsfalse
\newif\ifnjut@linuxfonts\njut@linuxfontsfalse
\newif\ifnjut@macfonts\njut@macfontsfalse

\newif\ifnjut@thesis\njut@thesistrue
\newif\ifnjut@design\njut@designfalse

% 第二导师
\newif\ifnjut@title@twosupervisors\njut@title@twosupervisorsfalse

\newif\ifnjut@backinfo\njut@backinfofalse
\newif\ifnjut@title@twolinetitle\njut@title@twolinetitlefalse
\newif\ifnjut@title@threelinetitle\njut@title@threelinetitlefalse
\DeclareOption{adobefonts}{\njut@adobefontstrue
  \njut@winfontsfalse
  \njut@linuxfontsfalse
  \njut@macfontsfalse}
\DeclareOption{winfonts}{\njut@winfontstrue
  \njut@adobefontsfalse
  \njut@linuxfontsfalse
  \njut@macfontsfalse}
\DeclareOption{linuxfonts}{\njut@linuxfontstrue
  \njut@adobefontsfalse
  \njut@winfontsfalse
  \njut@macfontsfalse}
\DeclareOption{macfonts}{\njut@macfontstrue
  \njut@adobefontsfalse
  \njut@winfontsfalse
  \njut@linuxfontsfalse}

\DeclareOption{thesis}{\njut@thesistrue
  \njut@designfalse}
\DeclareOption{design}{\njut@designtrue
  \njut@thesisfalse}

\DeclareOption{backinfo}{\njut@backinfotrue}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions\relax
% 加载book类
\LoadClass[12pt,a4paper]{book}
\RequirePackage{ifxetex}
\RequireXeTeX
\RequirePackage{lastpage}
\RequirePackage{geometry}
\RequirePackage{titlesec} 
\RequirePackage{graphicx}
\DeclareGraphicsExtensions{.pdf,.eps,.jpg,.png}
\graphicspath{{./}{./img/}{./fig/}{./image/}{./figure/}{./picture/}{./imgs/}{./figs/}{./images/}{./figures/}{./pictures/}}
\RequirePackage{caption}
\RequirePackage{float}
\RequirePackage[labelformat=simple]{subcaption}
\RequirePackage{array}
\RequirePackage{longtable}
\RequirePackage{booktabs}
\RequirePackage{multirow}
\RequirePackage{enumitem}
\RequirePackage{xcolor}
\RequirePackage{amsmath}
\RequirePackage{amsthm}
\RequirePackage{amsfonts}
\RequirePackage{amssymb}
\RequirePackage{bm}
\RequirePackage{mathrsfs}
\RequirePackage{wasysym}
\RequirePackage{pifont}
\RequirePackage{txfonts}
\RequirePackage{setspace}
\RequirePackage{fancyhdr}
\RequirePackage{shortvrb}
\RequirePackage{xltxtra}
\RequirePackage{algorithmic}
\RequirePackage{ulem}
\normalem
\RequirePackage{pdfpages}
\RequirePackage{algorithm}
\floatname{algorithm}{算法}
\numberwithin{algorithm}{chapter}
% \RequirePackage[CJKnumber,CJKchecksingle]{xeCJK}
\RequirePackage[CJKchecksingle]{xeCJK}
\RequirePackage{CJKnumb}
\defaultfontfeatures{Mapping=tex-text}
\punctstyle{plain}
\RequirePackage{xeCJKfntef}
\xeCJKsetup{ underline/format = \color{black} }
\RequirePackage[hyphens]{url}
\RequirePackage[unicode]{hyperref}
% 消除部分的hyperref警告
\pdfstringdefDisableCommands{%
  \let\leavevmode@ifvmode\@empty
}

% 输出代码
\RequirePackage{listings}
\RequirePackage{color}
\RequirePackage{textcomp}

\definecolor{mediumgray}{rgb}{0.3, 0.4, 0.4}
\definecolor{mediumblue}{rgb}{0.0, 0.0, 0.8}
\definecolor{forestgreen}{rgb}{0.13, 0.55, 0.13}
\definecolor{darkviolet}{rgb}{0.58, 0.0, 0.83}
\definecolor{royalblue}{rgb}{0.25, 0.41, 0.88}
\definecolor{crimson}{rgb}{0.86, 0.8, 0.24}

\lstdefinestyle{CodeBase}{
  backgroundcolor=\color{white},
  basicstyle=\ttfamily,
  breakatwhitespace=false,
  breaklines=false,
  captionpos=b,
  columns=fullflexible,
  commentstyle=\color{mediumgray}\upshape,
  emph={},
  emphstyle=\color{crimson},
  extendedchars=true,
  fontadjust=true,
  frame=single,
  identifierstyle=\color{black},
  keepspaces=true,
  keywordstyle=\color{mediumblue},
  keywordstyle={[2]\color{darkviolet}},
  keywordstyle={[3]\color{royalblue}},
  numbers=left,
  numberstyle=\color{black},
  rulecolor=\color{black},
  showlines=true,
  showspaces=false,
  showstringspaces=false,
  showtabs=false,
  stringstyle=\color{forestgreen},
  tabsize=4,
  title=\lstname,
  upquote=true
}

% xelatex默认Unicode，因此注释掉unicode=true
\hypersetup{%
    % unicode=true,
    % hyperfootnotes=true,
    % hyperindex=true,
    pdfencoding=unicode,
    pageanchor=true,
    % CJKbookmarks=true,
    bookmarksnumbered=true,
    bookmarksopen=true,
    bookmarksopenlevel=0,
    breaklinks=true,
    colorlinks=false,
    plainpages=false,
    % pdfpagelabels,
    pdfborder=0 0 0%
}
\urlstyle{same}
% \RequirePackage[sort&compress,numbers]{natbib}
\RequirePackage[sort&compress]{gbt7714}
\RequirePackage{hypernat}
\RequirePackage{tabularx}
\RequirePackage{makeidx}
\RequirePackage{glossaries}
\RequirePackage{ifthen}
\RequirePackage[perpage,symbol*]{footmisc}
\RequirePackage{etoolbox}
% 消除font shape不可用问题
\RequirePackage{anyfontsize}
% 用于排版目录
\RequirePackage{titletoc}
\input{njuthesis.cfg}
\ifnjut@adobefonts
  \newcommand*{\njut@zhfn@songti}{\njut@zhfn@songti@adobe}
  \newcommand*{\njut@zhfn@heiti}{\njut@zhfn@heiti@adobe}
  \newcommand*{\njut@zhfn@kaishu}{\njut@zhfn@kaishu@adobe}
  \newcommand*{\njut@zhfn@fangsong}{\njut@zhfn@fangsong@adobe}
  \newcommand*{\njut@enfn@main}{\njut@enfn@main@adobe}
  \newcommand*{\njut@enfn@sans}{\njut@enfn@sans@adobe}
  \newcommand*{\njut@enfn@mono}{\njut@enfn@mono@adobe}
\else
  \ifnjut@winfonts
      \newcommand*{\njut@zhfn@songti}{\njut@zhfn@songti@win}
      \newcommand*{\njut@zhfn@heiti}{\njut@zhfn@heiti@win}
      \newcommand*{\njut@zhfn@kaishu}{\njut@zhfn@kaishu@win}
      \newcommand*{\njut@zhfn@fangsong}{\njut@zhfn@fangsong@win}
      \newcommand*{\njut@enfn@main}{\njut@enfn@main@win}
      \newcommand*{\njut@enfn@sans}{\njut@enfn@sans@win}
      \newcommand*{\njut@enfn@mono}{\njut@enfn@mono@win}
  \else
    \ifnjut@linuxfonts
      \newcommand*{\njut@zhfn@songti}{\njut@zhfn@songti@linux}
      \newcommand*{\njut@zhfn@heiti}{\njut@zhfn@heiti@linux}
      \newcommand*{\njut@zhfn@kaishu}{\njut@zhfn@kaishu@linux}
      \newcommand*{\njut@zhfn@fangsong}{\njut@zhfn@fangsong@linux}
      \newcommand*{\njut@enfn@main}{\njut@enfn@main@linux}
      \newcommand*{\njut@enfn@sans}{\njut@enfn@sans@linux}
      \newcommand*{\njut@enfn@mono}{\njut@enfn@mono@linux}
    \else
       \ifnjut@macfonts
          \newcommand*{\njut@zhfn@songti}{\njut@zhfn@songti@mac}
          \newcommand*{\njut@zhfn@heiti}{\njut@zhfn@heiti@mac}
          \newcommand*{\njut@zhfn@kaishu}{\njut@zhfn@kaishu@mac}
          \newcommand*{\njut@zhfn@fangsong}{\njut@zhfn@fangsong@mac}
          \newcommand*{\njut@enfn@main}{\njut@enfn@main@mac}
          \newcommand*{\njut@enfn@sans}{\njut@enfn@sans@mac}
          \newcommand*{\njut@enfn@mono}{\njut@enfn@mono@mac}
       \else
         \ClassError{njuthesis}{No fonts was selected.}{}
       \fi
    \fi
  \fi
\fi



% 宋体加粗需要AutoFakeBold
\setCJKfamilyfont{song}[AutoFakeBold = {2.17}]{\njut@zhfn@songti}
\setCJKfamilyfont{hei}{\njut@zhfn@heiti}
\setCJKfamilyfont{kai}[AutoFakeBold = {2.17}]{\njut@zhfn@kaishu}
\setCJKfamilyfont{fangsong}{\njut@zhfn@fangsong}
\setCJKmainfont[BoldFont={\njut@zhfn@heiti},%
                ItalicFont={\njut@zhfn@kaishu}]%
               {\njut@zhfn@songti}
% \setCJKmainfont{\njut@zhfn@songti}
\setCJKsansfont{\njut@zhfn@heiti}
\setCJKmonofont{\njut@zhfn@fangsong}
\setmainfont{\njut@enfn@main}
\setsansfont{\njut@enfn@sans}
\setmonofont{\njut@enfn@mono}
\newcommand*{\songti}{\CJKfamily{song}}
\newcommand*{\heiti}{\CJKfamily{hei}}
\newcommand*{\kaishu}{\CJKfamily{kai}}
\newcommand*{\fangsong}{\CJKfamily{fangsong}}

% 欧美传统排版的长度单位 1 inch = 72.27 pt
% Word中的1 point = 1/72 inch = 1 bp
% bp也对应于acrobat中字号的单位
\newcommand*{\njut@fs@eight}{5.02} % 八号字 5bp
\newcommand*{\njut@fs@eightskip}{6.02}
\newcommand*{\njut@fs@seven}{5.52} % 七号字 5.5bp
\newcommand*{\njut@fs@sevenskip}{6.62}
\newcommand*{\njut@fs@ssix}{6.52} % 小六号 6.5bp
\newcommand*{\njut@fs@ssixskip}{7.83}
\newcommand*{\njut@fs@six}{7.53} % 六号字 7.5bp
\newcommand*{\njut@fs@sixskip}{9.03}
\newcommand*{\njut@fs@sfive}{9.03} % 小五号 9bp
\newcommand*{\njut@fs@sfiveskip}{10.84}
\newcommand*{\njut@fs@five}{10.54} % 五号 10bp
\newcommand*{\njut@fs@fiveskip}{12.65}
\newcommand*{\njut@fs@sfour}{12.05} % 小四号 12bp
\newcommand*{\njut@fs@sfourskip}{14.45}
\newcommand*{\njut@fs@four}{14.05} % 四号字 14bp
\newcommand*{\njut@fs@fourskip}{16.86}
\newcommand*{\njut@fs@sthree}{15.06} % 小三号 15bp
\newcommand*{\njut@fs@sthreeskip}{18.07}
\newcommand*{\njut@fs@three}{16.06} % 三号字 16bp
\newcommand*{\njut@fs@threeskip}{19.27}
\newcommand*{\njut@fs@stwo}{18.07} % 小二号 18bp
\newcommand*{\njut@fs@stwoskip}{21.68}
\newcommand*{\njut@fs@two}{22.08} % 二号字 22bp
\newcommand*{\njut@fs@twoskip}{26.50}
\newcommand*{\njut@fs@sone}{24.09} % 小一号 24bp
\newcommand*{\njut@fs@soneskip}{28.91}
\newcommand*{\njut@fs@one}{26.10} % 一号字 26bp
\newcommand*{\njut@fs@oneskip}{31.32}
\newcommand*{\njut@fs@szero}{36.14} % 小初号 36bp
\newcommand*{\njut@fs@szeroskip}{43.36}
\newcommand*{\njut@fs@zero}{42.16} % 初号字 42bp
\newcommand*{\njut@fs@zeroskip}{50.59}
\DeclareMathSizes{\njut@fs@eight}
                 {\njut@fs@eight}
                 {5}
                 {5}
\DeclareMathSizes{\njut@fs@seven}
                 {\njut@fs@seven}
                 {5}
                 {5}
\DeclareMathSizes{\njut@fs@ssix}
                 {\njut@fs@ssix}
                 {5}
                 {5}
\DeclareMathSizes{\njut@fs@six}
                 {\njut@fs@six}
                 {5}
                 {5}
\DeclareMathSizes{\njut@fs@sfive}
                 {\njut@fs@sfive}
                 {6}
                 {5}
\DeclareMathSizes{\njut@fs@five}
                 {\njut@fs@five}
                 {7}
                 {5}
\DeclareMathSizes{\njut@fs@sfour}
                 {\njut@fs@sfour}
                 {8}
                 {6}
\DeclareMathSizes{\njut@fs@four}
                 {\njut@fs@four}
                 {\njut@fs@five}
                 {\njut@fs@six}
\DeclareMathSizes{\njut@fs@sthree}
                 {\njut@fs@sthree}
                 {\njut@fs@sfour}
                 {\njut@fs@sfive}
\DeclareMathSizes{\njut@fs@three}
                 {\njut@fs@three}
                 {\njut@fs@four}
                 {\njut@fs@five}
\DeclareMathSizes{\njut@fs@stwo}
                 {\njut@fs@stwo}
                 {\njut@fs@sthree}
                 {\njut@fs@sfour}
\DeclareMathSizes{\njut@fs@two}
                 {\njut@fs@two}
                 {\njut@fs@three}
                 {\njut@fs@four}
\DeclareMathSizes{\njut@fs@sone}
                 {\njut@fs@sone}
                 {\njut@fs@stwo}
                 {\njut@fs@sthree}
\DeclareMathSizes{\njut@fs@one}
                 {\njut@fs@one}
                 {\njut@fs@two}
                 {\njut@fs@three}
\DeclareMathSizes{\njut@fs@szero}
                 {\njut@fs@szero}
                 {\njut@fs@sone}
                 {\njut@fs@stwo}
\DeclareMathSizes{\njut@fs@zero}
                 {\njut@fs@zero}
                 {\njut@fs@one}
                 {\njut@fs@two}
\def\njut@zihao{}
\DeclareRobustCommand*{\zihao}[1]{%
  \def\njut@zihao{#1}%
  \ifnum #11<0%
    \@tempcnta=-#1
    \ifcase\@tempcnta%
        \fontsize\njut@fs@szero\njut@fs@szeroskip%
    \or \fontsize\njut@fs@sone\njut@fs@soneskip%
    \or \fontsize\njut@fs@stwo\njut@fs@stwoskip%
    \or \fontsize\njut@fs@sthree\njut@fs@sthreeskip%
    \or \fontsize\njut@fs@sfour\njut@fs@sfourskip%
    \or \fontsize\njut@fs@sfive\njut@fs@sfiveskip%
    \or \fontsize\njut@fs@ssix\njut@fs@ssixskip%
    \else \ClassError{njuthesis}{%
            Undefined Chinese font size in command \protect\zihao}{%
            The old font size is used if you continue.}%
    \fi%
  \else%
    \@tempcnta=#1
    \ifcase\@tempcnta%
        \fontsize\njut@fs@zero\njut@fs@zeroskip%
    \or \fontsize\njut@fs@one\njut@fs@oneskip%
    \or \fontsize\njut@fs@two\njut@fs@twoskip%
    \or \fontsize\njut@fs@three\njut@fs@threeskip%
    \or \fontsize\njut@fs@four\njut@fs@fourskip%
    \or \fontsize\njut@fs@five\njut@fs@fiveskip%
    \or \fontsize\njut@fs@six\njut@fs@sixskip%
    \or \fontsize\njut@fs@seven\njut@fs@sevenskip%
    \or \fontsize\njut@fs@eight\njut@fs@eightskip%
    \else \ClassError{njuthesis}{%
            Undefined Chinese font size in command \protect\zihao}{%
            The old font size is used if you continue.}%
    \fi%
  \fi%
  \selectfont\ignorespaces}
\renewcommand{\tiny}{% 小六号 6.5bp
  \@setfontsize\tiny{\njut@fs@ssix}{\njut@fs@ssixskip}}
\renewcommand{\scriptsize}{% 六号字 7.5bp
  \@setfontsize\scriptsize{\njut@fs@six}{\njut@fs@sixskip}}
\renewcommand{\footnotesize}{% 小五号 9bp
  \@setfontsize\footnotesize{\njut@fs@sfive}{\njut@fs@sfiveskip}%
  \abovedisplayskip 6\p@ \@plus2\p@ \@minus4\p@
  \abovedisplayshortskip \z@ \@plus\p@
  \belowdisplayshortskip 3\p@ \@plus\p@ \@minus2\p@
  \def\@listi{\leftmargin\leftmargini
    \topsep 3\p@ \@plus\p@ \@minus\p@
    \parsep 2\p@ \@plus\p@ \@minus\p@
    \itemsep \parsep}%
  \belowdisplayskip \abovedisplayskip}
\renewcommand{\small}{% 五号 10bp
  \@setfontsize\small{\njut@fs@five}{\njut@fs@fiveskip}%
  \abovedisplayskip 8.5\p@ \@plus3\p@ \@minus4\p@
  \abovedisplayshortskip \z@ \@plus2\p@
  \belowdisplayshortskip 4\p@ \@plus2\p@ \@minus2\p@
  \def\@listi{\leftmargin\leftmargini
    \topsep 4\p@ \@plus2\p@ \@minus2\p@
    \parsep 2\p@ \@plus\p@ \@minus\p@
    \itemsep \parsep}%
  \belowdisplayskip \abovedisplayskip}
\renewcommand{\normalsize}{% 小四号 12bp
  \@setfontsize\normalsize{\njut@fs@sfour}{\njut@fs@sfourskip}%
  \abovedisplayskip 10\p@ \@plus2\p@ \@minus5\p@
  \abovedisplayshortskip \z@ \@plus3\p@
  \belowdisplayshortskip 6\p@ \@plus3\p@ \@minus3\p@
  \belowdisplayskip \abovedisplayskip
  \let\@listi\@listI}
\renewcommand{\large}{% 小三号 15bp
  \@setfontsize\large{\njut@fs@sthree}{\njut@fs@sthreeskip}}
\renewcommand{\Large}{% 小二号 18bp
  \@setfontsize\Large{\njut@fs@stwo}{\njut@fs@stwoskip}}
\renewcommand{\LARGE}{% 小一号 24bp
  \@setfontsize\LARGE{\njut@fs@sone}{\njut@fs@soneskip}}
\renewcommand{\huge}{% 一号 26bp
  \@setfontsize\huge{\njut@fs@one}{\njut@fs@oneskip}}
\renewcommand{\Huge}{% 小初号 36bp
  \@setfontsize\Huge{\njut@fs@szero}{\njut@fs@szeroskip}}
\newcommand*{\ziju}[1]{\renewcommand*{\CJKglue}{\hskip {#1}}}
\renewcommand{\textsc}[1]{{\usefont{OT1}{cmr}{m}{sc}{#1}}}
\newcommand{\dashnumber}[2]%
  {{#1}\kern.07em\rule[.5ex]{.4em}{.15ex}\kern.07em{#2}}
\renewcommand*{\thefigure}{\dashnumber{\thechapter}{\arabic{figure}}}
\renewcommand*{\thetable}{\dashnumber{\thechapter}{\arabic{table}}}
\renewcommand*{\theequation}{\dashnumber{\thechapter}{\arabic{equation}}}
\renewcommand*{\thesubfigure}{(\alph{subfigure})}
\renewcommand*{\thesubtable}{(\alph{subtable})}
\newtheoremstyle{plain}% name
                {1em}%      Space above, empty = `usual value'
                {1em}%      Space below
                {\normalfont}% Body font
                {}%         Indent amount
                {\normalfont\bfseries}% Thm head font
                {}%         Punctuation after thm head
                {1em}%      Space after thm head: \newline = linebreak
                {}%         Thm head spec
\newtheorem{definition}{\njut@cap@definition}[chapter]
\newtheorem{notation}[definition]{\njut@cap@notation}
\newtheorem{theorem}{\njut@cap@theorem}[chapter]
\newtheorem{lemma}[theorem]{\njut@cap@lemma}
\newtheorem{corollary}[theorem]{\njut@cap@corollary}
\newtheorem{proposition}[theorem]{\njut@cap@proposition}
\newtheorem{fact}[theorem]{\njut@cap@fact}
\newtheorem{assumption}[theorem]{\njut@cap@assumption}
\newtheorem{conjecture}[theorem]{\njut@cap@conjecture}
\newtheorem{hypothesis}{\njut@cap@hypothesis}[chapter]
\newtheorem{axiom}{\njut@cap@axiom}[chapter]
\newtheorem{postulate}{\njut@cap@postulate}[chapter]
\newtheorem{principle}{\njut@cap@principle}[chapter]
\newtheorem{problem}{\njut@cap@problem}[chapter]
\newtheorem{exercise}{\njut@cap@exercise}[chapter]
\newtheorem{example}{\njut@cap@example}[chapter]
\newtheorem{remark}{\njut@cap@remark}[chapter]

\renewenvironment{proof}[1][\njut@cap@proof]{\par
  \pushQED{\qed}%
  \normalfont \topsep6\p@\@plus6\p@\relax
  \trivlist
  \item[\hskip\labelsep\textbf{#1}\@addpunct{:}]\ignorespaces
}{\popQED\endtrivlist\@endpefalse}

\newenvironment{solution}[1][\njut@cap@solution]{\par
  \normalfont \topsep6\p@\@plus6\p@\relax
  \trivlist
  \item[\hskip\labelsep\textbf{#1}\@addpunct{:}]\ignorespaces
}{\endtrivlist\@endpefalse}

%\newtheorem{algorithm}{\njut@cap@algorithm}[chapter]
\renewcommand*{\thedefinition}{\dashnumber{\thechapter}{\arabic{definition}}}
\renewcommand*{\thetheorem}{\dashnumber{\thechapter}{\arabic{theorem}}}
\renewcommand*{\theaxiom}{\dashnumber{\thechapter}{\arabic{axiom}}}
\renewcommand*{\theproblem}{\dashnumber{\thechapter}{\arabic{problem}}}
\renewcommand*{\theexercise}{\dashnumber{\thechapter}{\arabic{exercise}}}
\renewcommand*{\theexample}{\dashnumber{\thechapter}{\arabic{example}}}
\renewcommand*{\theremark}{\dashnumber{\thechapter}{\arabic{remark}}}
\renewcommand*{\textfraction}{0.05}
\renewcommand*{\topfraction}{0.9}
\renewcommand*{\bottomfraction}{0.8}
\renewcommand*{\floatpagefraction}{0.85}
\newcommand*{\abstractname}{\njut@cap@abstractname}
\renewcommand*{\contentsname}{\njut@cap@contentsname}
\renewcommand*{\listfigurename}{\njut@cap@listfigurename}
\renewcommand*{\listtablename}{\njut@cap@listtablename}
\newcommand*{\listsymbolname}{\njut@cap@listsymbolname}
\newcommand*{\listequationname}{\njut@cap@listequationname}
\renewcommand*{\glossaryname}{\njut@cap@glossaryname}
\renewcommand*{\indexname}{\njut@cap@indexname}
\newcommand*{\equationname}{\njut@cap@equationname}
\renewcommand*{\bibname}{\njut@cap@bibname}
\renewcommand*{\figurename}{\njut@cap@figurename}
\renewcommand*{\tablename}{\njut@cap@tablename}
\renewcommand*{\chaptername}{\njut@cap@chaptername}
\renewcommand*{\appendixname}{\njut@cap@appendixname}
% 2021年本科毕业论文要求各部分标题四号黑体
% 设置章节标题格式
\titleformat{\chapter}[hang]
            {\centering\zihao{4}\bfseries}
            {\chaptertitlename}{1em}{}
\titlespacing{\chapter}
             {0pt}
             {*4}
             {*3}
\titleformat{\section}[hang]
            {\zihao{4}\bfseries}
            {\thesection}{1em}{}
\titlespacing{\section}
             {0pt}
             {*3.5}
             {*2.3}
\titleformat{\subsection}[hang]
            {\zihao{4}\bfseries}
            {\thesubsection}{1em}{}
\titlespacing{\subsection}
             {0pt}
             {*3}
             {*1.5}
\titleformat{\subsubsection}[hang]
            {\zihao{4}\bfseries}
            {\thesubsubsection}{1em}{}
\titlespacing{\subsubsection}
             {0pt}
             {*2.5}
             {*1.5}
\titleformat{\paragraph}[hang]
            {\zihao{-4}\bfseries}
            {}{0em}{}
\titlespacing{\paragraph}
             {0pt}
             {*2}
             {*1}
\titleformat{\subparagraph}[hang]
            {\zihao{4}\bfseries}
            {}{0em}{}
\titlespacing{\subparagraph}
             {0pt}
             {*1.5}
             {*1}
\setcounter{secnumdepth}{4}
\renewcommand{\thechapter}{\arabic{chapter}}
\renewcommand{\thesection}{\thechapter\hspace{0.16em}.\hspace{0.16em}\arabic{section}}
\renewcommand{\thesubsection}{\thesection\hspace{0.16em}.\hspace{0.16em}\arabic{subsection}}
\renewcommand{\thesubsubsection}{\thesubsection\hspace{0.16em}.\hspace{0.16em}\arabic{subsubsection}}
\DeclareCaptionFont{songtibf}{\bf\songti}
\captionsetup{font=small}
\captionsetup[table]{position=top,textfont=songtibf}
\captionsetup[figure]{position=below,textfont=songtibf}
% 行距
% \renewcommand*{\baselinestretch}{1.38}
% 行距为1.5倍 word行距
% laTex默认1.2行距，word默认行距是1.3，
% 所以1.5/1.2*1.3 = 1.625
\linespread{1.625}
% \setstretch{1.5}
\let\convertergy@oldtabular\tabular
\let\convertergy@endoldtabular\endtabular
\renewenvironment{tabular}%
{\bgroup%
% \renewcommand{\arraystretch}{1.38}%
\convertergy@oldtabular}%
{\convertergy@endoldtabular\egroup}
\geometry{headheight=2.6cm,headsep=3mm,footskip=13mm}
\geometry{top=2.5cm,bottom=2.5cm,left=3.2cm,right=3.2cm}
\def\njut@CJK@charwidth{\hskip \f@size \p@}
\newdimen\njut@CJK@chardimen
\settowidth\njut@CJK@chardimen{\njut@CJK@charwidth\CJKglue}
\newcommand{\njut@CJK@setfontspace}{%
\settowidth\njut@CJK@chardimen{\njut@CJK@charwidth\CJKglue}%
\ifdim\parindent=0pt\relax\else\parindent2\njut@CJK@chardimen\fi%
}
\renewcommand*{\indent}{\njut@CJK@setfontspace\parindent2\njut@CJK@chardimen}
\AtBeginDocument{\indent}
% >>>>>>>>>>>>>>>>>>>>>>>>>>页码<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
\fancypagestyle{plain}{%
   \fancyhead{}               
   \fancyfoot[C]{\zihao{5}\thepage}        
   \renewcommand{\headrulewidth}{0pt} % and the header line
   \renewcommand{\footrulewidth}{0pt} % and the footer line
}
\fancyhead{}
\fancyfoot[C]{\zihao{5}\thepage}
\renewcommand{\footrulewidth}{0pt}
\renewcommand{\headrulewidth}{0pt}
%\fancyhead[LE,RO]{\thepage}
%\renewcommand{\headrulewidth}{1pt}
%\fancyhead[RE]{\leftmark}
%\fancyhead[LO]{%
%\ifthenelse{\equal{\rightmark}{}}% if \rightmark is empty
%            {\leftmark}%
%            {\rightmark}%
%}
\pagestyle{fancy}

\renewcommand{\chaptermark}[1]{\markboth{%
 \bfseries\if@mainmatter\chaptertitlename\hspace{1em}\fi{#1}%
}{}}
\renewcommand{\sectionmark}[1]{\markright{%
 \bfseries\if@mainmatter\thesection\hspace{1em}\fi{#1}%
}}

% 不另页右页开始
% \def\cleardoublepage{
%   \clearpage\if@twoside \ifodd\c@page\fi\fi
%   }

%%%%%%
% 另页右页开始
\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
  \hbox{}\thispagestyle{empty}\newpage\if@twocolumn\hbox{}\newpage\fi\fi\fi}
%%%%%
  \setlist{%
  topsep=0.3em,             % 列表顶端的垂直空白
  partopsep=0pt,            % 列表环境前面紧接着一个空白行时其顶端的额外垂直空白
  itemsep=0ex plus 0.1ex,   % 列表项之间的额外垂直空白
  parsep=0pt,               % 列表项内的段落之间的垂直空白
  leftmargin=1.5em,         % 环境的左边界和列表之间的水平距离
  rightmargin=0em,          % 环境的右边界和列表之间的水平距离
  labelsep=0.5em,           % 包含标签的盒子与列表项的第一行文本之间的间隔
  labelwidth=2em,           % 包含标签的盒子的正常宽度；若实际宽度更宽，则使用实际宽度。
}
\setlist[itemize,1]{label=$\medbullet$}
\setlist[itemize,2]{label=$\blacksquare$}
\setlist[itemize,3]{label=$\Diamondblack$}
\renewenvironment{quote}%
                 {\list{}{\leftmargin=4em\rightmargin=4em}\item[]}%
                 {\endlist}
\renewenvironment{quotation}%
                 {\list{}{\leftmargin=4em\rightmargin=4em}\item[]}%
                 {\endlist}
\newcommand\nchapter[1]{%
  \if@mainmatter%
    \@mainmatterfalse%
    \chapter{#1}%
    \@mainmattertrue%
  \else
    \chapter{#1}%
  \fi
}
\def\@dottedtocline#1#2#3#4#5{%
  \ifnum #1>\c@tocdepth \else
    \vskip \z@ \@plus.2\p@
    {\leftskip #2\relax \rightskip \@tocrmarg \parfillskip -\rightskip
     \parindent #2\relax\@afterindenttrue
     \interlinepenalty\@M
     \leavevmode
     \@tempdima #3\relax
     \advance\leftskip \@tempdima \null\nobreak\hskip -\leftskip
     {#4}\nobreak
     \leaders\hbox{$\m@th\mkern 1.5mu\cdot\mkern 1.5mu$}\hfill
     \nobreak
     \hb@xt@\@pnumwidth{\hfil\normalfont \normalcolor #5}%
     \par}%
  \fi}
\renewcommand*{\l@part}[2]{%
  \ifnum \c@tocdepth >-2\relax
    \addpenalty{-\@highpenalty}%
    \addvspace{2.25em \@plus\p@}%
    \setlength\@tempdima{3em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      {\leavevmode
       \large \bfseries #1
       \leaders\hbox{$\m@th\mkern 1.5mu\cdot\mkern 1.5mu$}
       \hfil \hb@xt@\@pnumwidth{\hss #2}}\par
       \nobreak
         \global\@nobreaktrue
         \everypar{\global\@nobreakfalse\everypar{}}%
    \endgroup
  \fi}
\renewcommand*{\l@chapter}[2]{%
  \ifnum \c@tocdepth >\m@ne
    \addpenalty{-\@highpenalty}%
    \vskip 1.0em \@plus\p@
    \setlength\@tempdima{1.5em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode \bfseries
      \advance\leftskip\@tempdima
      \hskip -\leftskip
      #1\nobreak
      \leaders\hbox{$\m@th\mkern 1.5mu\cdot\mkern 1.5mu$}
      \hfil \nobreak\hb@xt@\@pnumwidth{\hss #2}\par
      \penalty\@highpenalty
    \endgroup
  \fi}
% 设置目录样式
% nchapter并未使用
\titlecontents{nchapter}
            [1em]
            {\bf \zihao{4}}%
            {\hspace*{2em}\contentslabel{2em}}%
            {}%
            {\titlerule*[0.5pc]{$\cdot$}\contentspage\hspace*{1cm}}%
% chapter样式，即每章标题
\titlecontents{chapter}
              [1em]
              {\bf \zihao{4}}%
              {\hspace*{2em}\contentslabel{2em}}%
              {}%
              {\titlerule*[0.5pc]{$\cdot$}\contentspage\hspace*{1cm}}%
% section样式，节标题
% 节标题为小四字号
\titlecontents{section}
              [2.5cm]
              {\zihao{-4} \songti}%
              {\contentslabel{2em}}%
              {}%
              {\titlerule*[0.5pc]{$\cdot$}\contentspage\hspace*{1cm}}%
% subsection样式，三级标题
\titlecontents{subsection}
              [4cm]
              {\zihao{-4} \songti}%
              {\contentslabel{3.5em}}%
              {}%
              {\titlerule*[0.5pc]{$\cdot$}\contentspage\hspace*{1cm}}%
% subsubsection一般不使用，也不会显示在目录中，故此处没有配置

% 重定义目录命令
\renewcommand*{\tableofcontents}{%
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\songti\fontsize{\njut@fs@three}{\njut@fs@threeskip}\contentsname\selectfont}%
    % \contentsname
    \@mkboth{\MakeUppercase\contentsname}{\MakeUppercase\contentsname}%
    \@starttoc{toc}%
    \if@restonecol\twocolumn\fi
}
\renewcommand*{\listoftables}{%
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \nchapter{\listtablename}%
    \@mkboth{\MakeUppercase\listtablename}{\MakeUppercase\listtablename}%
    \@starttoc{lot}%
    \if@restonecol\twocolumn\fi
}
\renewcommand*{\listoffigures}{%
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \nchapter{\listfigurename}%
    \@mkboth{\MakeUppercase\listfigurename}{\MakeUppercase\listfigurename}%
    \@starttoc{lof}%
    \if@restonecol\twocolumn\fi
}
\renewenvironment{thebibliography}[1]
     {\nchapter{\bibname}%
      \@mkboth{\MakeUppercase\bibname}{\MakeUppercase\bibname}%
      \list{\@biblabel{\@arabic\c@enumiv}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
            \leftmargin\labelwidth
            \advance\leftmargin\labelsep
            \@openbib@code
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
      \sloppy
      \clubpenalty4000
      \@clubpenalty \clubpenalty
      \widowpenalty4000%
      \sfcode`\.\@m}
     {\def\@noitemerr
       {\@latex@warning{Empty `thebibliography' environment}}%
      \endlist}
\bibliographystyle{gbt7714-numerical}
\setcitestyle{super,square}
\renewcommand\NAT@citesuper[3]{%
\ifNAT@swa%
  \if*#2*\else#2\NAT@spacechar\fi%
  \unskip\kern\p@\textsuperscript{\NAT@@open#1\NAT@@close#3}%
\else #1\fi\endgroup%
}
\AtBeginDocument{%
\let\oldref\ref%
\renewcommand*{\ref}[1]{\thinspace\oldref{#1}}%
\renewcommand*{\eqref}[1]{(\oldref{#1})}
}
\DefineFNsymbols*{circlednumber}[text]{%
   {\ding{192}} %
   {\ding{193}} %
   {\ding{194}} %
   {\ding{195}} %
   {\ding{196}} %
   {\ding{197}} %
   {\ding{198}} %
   {\ding{199}} %
   {\ding{200}} %
   {\ding{201}} %
}%
\setfnsymbol{circlednumber}
\newcommand*{\classification}[1]{%
  \renewcommand*{\njut@value@nlc@classification}{#1}}
\newcommand*{\securitylevel}[1]{%
  \renewcommand*{\njut@value@nlc@securitylevel}{#1}}
\newcommand*{\openlevel}{\njut@cap@nlc@openlevel}
\newcommand*{\controllevel}{\njut@cap@nlc@controllevel}
\newcommand*{\confidentiallevel}{\njut@cap@nlc@confidentiallevel}
\newcommand*{\clasifiedlevel}{\njut@cap@nlc@clasifiedlevel}
\newcommand*{\mostconfidentiallevel}{\njut@cap@nlc@mostconfidentiallevel}
\newcommand*{\udc}[1]{%
  \renewcommand*{\njut@value@nlc@udc}{#1}}
\newcommand*{\nlctitlea}[1]{%
  \renewcommand{\njut@value@nlc@titlea}{#1}}
\newcommand*{\nlctitleb}[1]{%
  \renewcommand{\njut@value@nlc@titleb}{#1}}
\newcommand*{\nlctitlec}[1]{%
  \renewcommand{\njut@value@nlc@titlec}{#1}}
\newcommand*{\supervisorinfo}[1]{%
  \renewcommand{\njut@value@nlc@supervisorinfo}{#1}}
\newcommand*{\chairman}[1]{%
  \renewcommand{\njut@value@nlc@chairman}{#1}}
\newcommand*{\reviewera}[1]{%
  \renewcommand{\njut@value@nlc@reviewera}{#1}}
\newcommand*{\reviewerb}[1]{%
  \renewcommand{\njut@value@nlc@reviewerb}{#1}}
\newcommand*{\reviewerc}[1]{%
  \renewcommand{\njut@value@nlc@reviewerc}{#1}}
\newcommand*{\reviewerd}[1]{%
  \renewcommand{\njut@value@nlc@reviewerd}{#1}}
\newcommand*{\nlcdate}[1]{%
  \renewcommand{\njut@value@nlc@date}{#1}}
\renewcommand*{\title}[1]{%
  \renewcommand{\njut@value@title}{#1}}
\newcommand*{\titlea}[1]{%
  \njut@title@twolinetitletrue
  \renewcommand{\njut@value@titlea}{#1}}
\newcommand*{\titleb}[1]{%
  \renewcommand{\njut@value@titleb}{#1}}
\newcommand*{\titlec}[1]{%
  \njut@title@twolinetitlefalse
  \njut@title@threelinetitletrue
  \renewcommand{\njut@value@titlec}{#1}}
\renewcommand*{\author}[1]{%
  \renewcommand{\njut@value@author}{#1}}
\newcommand*{\studentid}[1]{%
  \renewcommand{\njut@value@studentid}{#1}}
\newcommand*{\telphone}[1]{%
  \renewcommand{\njut@value@telphone}{#1}}
\newcommand*{\email}[1]{%
  \renewcommand{\njut@value@email}{#1}}
\newcommand*{\studentnum}[1]{%
  \renewcommand{\njut@value@studentnum}{#1}}
\newcommand*{\grade}[1]{%
  \renewcommand{\njut@value@grade}{#1}}
\newcommand*{\supervisor}[1]{%
  \renewcommand{\njut@value@supervisor}{#1}}
\newcommand*{\supervisortitle}[1]{%
  \renewcommand{\njut@value@supervisortitle}{#1}}
\newcommand*{\secondsupervisor}[1]{%
  \njut@title@twosupervisorstrue
  \renewcommand{\njut@value@secondsupervisor}{#1}}
\newcommand*{\secondsupervisortitle}[1]{%
  \njut@title@twosupervisorstrue
  \renewcommand{\njut@value@secondsupervisortitle}{#1}}
\newcommand*{\supervisortelphone}[1]{%
  \renewcommand{\njut@value@supervisortelphone}{#1}}
\newcommand*{\major}[1]{%
  \renewcommand{\njut@value@major}{#1}}
\newcommand*{\researchfield}[1]{%
  \renewcommand{\njut@value@researchfield}{#1}}
\newcommand*{\department}[1]{%
  \renewcommand{\njut@value@department}{#1}}
\newcommand*{\institute}[1]{%
  \renewcommand{\njut@value@institute}{#1}}
\newcommand*{\submitdate}[1]{%
  \renewcommand{\njut@value@submitdate}{#1}}
\newcommand*{\defenddate}[1]{%
  \renewcommand{\njut@value@defenddate}{#1}}
\renewcommand*{\date}[1]{%
  \renewcommand{\njut@value@date}{#1}}
\newcommand*{\englishtitle}[1]{%
  \renewcommand{\njut@value@en@title}{#1}}
\newcommand*{\englishauthor}[1]{%
  \renewcommand{\njut@value@en@author}{#1}}
\newcommand{\englishsupervisor}[1]{%
  \renewcommand{\njut@value@en@supervisor}{#1}}
\newcommand{\englishmajor}[1]{%
  \renewcommand{\njut@value@en@major}{#1}}
\newcommand{\englishdepartment}[1]{%
  \renewcommand{\njut@value@en@department}{#1}}
\newcommand{\englishinstitute}[1]{%
  \renewcommand{\njut@value@en@institute}{#1}}
\newcommand*{\englishdate}[1]{%
  \renewcommand{\njut@value@en@date}{#1}}
\newcommand{\njut@underline}[2][\textwidth]%
           {\CJKunderline{\makebox[#1]{#2}}}
\def\njutunderline{\@ifnextchar[\njut@underline\CJKunderline}
\newcommand*{\makenlctitle}{%
  \thispagestyle{empty}
  \pdfbookmark[0]{\njut@cap@nlc}{nlc}
  {\songti\zihao{-4}
    \makebox[40pt][l]{\njut@cap@nlc@classification}
    \njutunderline[150pt]{\njut@value@nlc@classification}
    \hfill
    \makebox[40pt][r]{\njut@cap@nlc@securitylevel}
    \njutunderline[150pt]{\njut@value@nlc@securitylevel}
    \vskip 10pt
    \makebox[40pt][l]{\njut@cap@nlc@udc}
    \njutunderline[150pt]{\njut@value@nlc@udc}
  }
  \vskip\stretch{2}
  \begin{center}
    \def\ULthickness{1pt}
    {\kaishu\zihao{-0} \njut@cap@nlc@title}
    {\kaishu\zihao{1}
    \vskip \stretch{1}
    \njutunderline[12em]{\njut@value@nlc@titlea}\\
    \njutunderline[12em]{\njut@value@nlc@titleb}\\
    \njutunderline[12em]{\njut@value@nlc@titlec}\\
    }
    \vskip \stretch{1}
    {\kaishu\zihao{4}\njut@cap@nlc@quotetitle}
    \vskip \stretch{1}
    {\kaishu\zihao{1}\njutunderline{\njut@value@author}}
    \vskip \stretch{1}
    {\kaishu\zihao{4}\njut@cap@nlc@author}
  \end{center}
  \vskip\stretch{1}
  {\kaishu\zihao{4}
    \noindent\njut@cap@nlc@supervisor%
    \njutunderline[94pt]{\njut@value@supervisor}\par
    \noindent\njutunderline[\textwidth]{%
      \njut@value@nlc@supervisorinfo}\par
    \noindent\njut@cap@nlc@degree%
    \njutunderline[8em]{\njut@value@degree}%
    \noindent\njut@cap@nlc@major%
    \njutunderline[164pt]{\njut@value@major}\par
    \noindent\njut@cap@nlc@submitdate%
    \njutunderline[8em]{\njut@value@submitdate}%
    \njut@cap@nlc@defenddate%
    \njutunderline[134pt]{\njut@value@defenddate}\par
    \noindent\njut@cap@nlc@institute\njutunderline[290pt]{}\par
    \noindent\hfill\njut@cap@nlc@chairman%
    \njutunderline[9em]{\njut@value@nlc@chairman}\par
    \noindent\hfill\njut@cap@nlc@reviwer%
    \njutunderline[9em]{\njut@value@nlc@reviewera}\par
    \noindent\hfill\njutunderline[9em]{\njut@value@nlc@reviewerb}\par
    \noindent\hfill\njutunderline[9em]{\njut@value@nlc@reviewerc}\par
    \noindent\hfill\njutunderline[9em]{\njut@value@nlc@reviewerd}\par
  }
  \cleardoublepage
}
% 单行标题
\newcommand*{\njut@covertable@onelinetitle}{
  \begin{tabular}{p{4.2em}c}
    \makebox[4.2em][s]{\njut@cap@cover@department}
    & \njutunderline[250pt]{\songti\njut@value@department}\\
    \makebox[4.2em][s]{\njut@cap@cover@major}
    & \njutunderline[250pt]{\songti\njut@value@major}\\
    \makebox[4.2em][s]{\njut@cap@cover@title}
    & \njutunderline[250pt]{\bf{\songti\njut@value@title}}
  \end{tabular}
  \begin{tabular}{p{4.2em}cp{4.2em}c}
    \makebox[4.2em][s]{\njut@cap@cover@grade}
    & \njutunderline[90pt]{\songti\njut@value@grade}
    & \makebox[4.2em][s]{\njut@cap@cover@studentid}
    & \njutunderline[90pt]{\songti\njut@value@studentid}\\
  \end{tabular}
  \begin{tabular}{p{4.2em}c}
    \makebox[4.2em][s]{\njut@cap@cover@author}
    & \njutunderline[250pt]{\songti\njut@value@author}
  \end{tabular}
  \begin{tabular}{p{4.2em}cp{4.2em}c}
    \makebox[4.2em][s]{\njut@cap@cover@supervisor}
    & \njutunderline[90pt]{\songti\njut@value@supervisor}
    & \makebox[4.2em][s]{\njut@cap@cover@supervisortitle}
    & \njutunderline[90pt]{\songti\njut@value@supervisortitle}\\
  \end{tabular}
  % 第二导师
  \ifnjut@title@twosupervisors
    \begin{tabular}{p{4.2em}cp{4.2em}c}
      \makebox[4.2em][s]{\njut@cap@cover@secondsupervisor}
      & \njutunderline[90pt]{\songti\njut@value@secondsupervisor}
      & \makebox[4.2em][s]{\njut@cap@cover@secondsupervisortitle}
      & \njutunderline[90pt]{\songti\njut@value@secondsupervisortitle}\\
    \end{tabular}
  \fi
  \begin{tabular}{p{4.2em}c}
    \makebox[4.2em][s]{\njut@cap@cover@submitdate}
    & \njutunderline[250pt]{\songti\njut@value@submitdate}\\
  \end{tabular}
}
% 两行标题
\newcommand*{\njut@covertable@twolinetitle}{
  \begin{tabular}{p{4.2em}c}
    \makebox[4.2em][s]{\njut@cap@cover@department}
    & \njutunderline[250pt]{\songti\njut@value@department}\\
    \makebox[4.2em][s]{\njut@cap@cover@major}
    & \njutunderline[250pt]{\songti\njut@value@major}\\
    \makebox[4.2em][s]{\njut@cap@cover@title}
    & \njutunderline[250pt]{\bf{\songti\njut@value@titlea}} \\
    \makebox[7em][s]{}
    & \njutunderline[250pt]{\bf{\songti\njut@value@titleb}}
  \end{tabular}
  \begin{tabular}{p{4.2em}cp{4.2em}c}
    \makebox[4.2em][s]{\njut@cap@cover@grade}
    & \njutunderline[90pt]{\songti\njut@value@grade}
    & \makebox[4.2em][s]{\njut@cap@cover@studentid}
    & \njutunderline[90pt]{\songti\njut@value@studentid}\\
  \end{tabular}
  \begin{tabular}{p{4.2em}c}
    \makebox[4.2em][s]{\njut@cap@cover@author}
    & \njutunderline[250pt]{\songti\njut@value@author}
  \end{tabular}
  \begin{tabular}{p{4.2em}cp{4.2em}c}
    \makebox[4.2em][s]{\njut@cap@cover@supervisor}
    & \njutunderline[90pt]{\songti\njut@value@supervisor}
    & \makebox[4.2em][s]{\njut@cap@cover@supervisortitle}
    & \njutunderline[90pt]{\songti\njut@value@supervisortitle}\\
  \end{tabular}
  % 第二导师
  \ifnjut@title@twosupervisors
    \begin{tabular}{p{4.2em}cp{4.2em}c}
      \makebox[4.2em][s]{\njut@cap@cover@secondsupervisor}
      & \njutunderline[90pt]{\songti\njut@value@secondsupervisor}
      & \makebox[4.2em][s]{\njut@cap@cover@secondsupervisortitle}
      & \njutunderline[90pt]{\songti\njut@value@secondsupervisortitle}\\
    \end{tabular}
  \fi
  \begin{tabular}{p{4.2em}c}
    \makebox[4.2em][s]{\njut@cap@cover@submitdate}
    & \njutunderline[250pt]{\songti\njut@value@submitdate}\\
  \end{tabular}
}
% 三行标题
\newcommand*{\njut@covertable@threelinetitle}{
  \begin{tabular}{p{4.2em}c}
    \makebox[4.2em][s]{\njut@cap@cover@department}
    & \njutunderline[250pt]{\songti\njut@value@department}\\
    \makebox[4.2em][s]{\njut@cap@cover@major}
    & \njutunderline[250pt]{\songti\njut@value@major}\\
    \makebox[4.2em][s]{\njut@cap@cover@title}
    & \njutunderline[250pt]{\bf{\songti\njut@value@titlea}}\\
    \makebox[4.2em][s]{}
    & \njutunderline[250pt]{\bf{\songti\njut@value@titleb}}\\
    \makebox[4.2em][s]{}
    & \njutunderline[250pt]{\bf{\songti\njut@value@titlec}}
  \end{tabular}
  \begin{tabular}{p{4.2em}cp{4.2em}c}
    \makebox[4.2em][s]{\njut@cap@cover@grade}
    & \njutunderline[90pt]{\songti\njut@value@grade}
    & \makebox[4.2em][s]{\njut@cap@cover@studentid}
    & \njutunderline[90pt]{\songti\njut@value@studentid}\\
  \end{tabular}
  \begin{tabular}{p{4.2em}c}
    \makebox[4.2em][s]{\njut@cap@cover@author}
    & \njutunderline[250pt]{\songti\njut@value@author}
  \end{tabular}
  \begin{tabular}{p{4.2em}cp{4.2em}c}
    \makebox[4.2em][s]{\njut@cap@cover@supervisor}
    & \njutunderline[90pt]{\songti\njut@value@supervisor}
    & \makebox[4.2em][s]{\njut@cap@cover@supervisortitle}
    & \njutunderline[90pt]{\songti\njut@value@supervisortitle}\\
  \end{tabular}
  % 第二导师
  \ifnjut@title@twosupervisors
    \begin{tabular}{p{4.2em}cp{4.2em}c}
      \makebox[4.2em][s]{\njut@cap@cover@secondsupervisor}
      & \njutunderline[90pt]{\songti\njut@value@secondsupervisor}
      & \makebox[4.2em][s]{\njut@cap@cover@secondsupervisortitle}
      & \njutunderline[90pt]{\songti\njut@value@secondsupervisortitle}\\
    \end{tabular}
  \fi
  \begin{tabular}{p{4.2em}c}
    \makebox[4.2em][s]{\njut@cap@cover@submitdate}
    & \njutunderline[250pt]{\songti\njut@value@submitdate}\\
  \end{tabular}
}
\renewcommand*{\maketitle}{%
  \thispagestyle{empty}
  \pagenumbering{Roman}
  \pdfbookmark[0]{\njut@cap@cover}{cover}
  % Start 
  \begin{spacing}{1.25}
  \vskip 0mm  
  \hskip -10mm \includegraphics[width=2.55cm]{\njut@cap@institute@logo}\\
  \begin{center}
    \includegraphics[height=3.35cm]{\njut@cap@institute@name}\\
    \vskip 10mm
    {\zihao{1}\makebox[9em][s]{\bf{\songti \ifnjut@thesis \njut@cap@cover@thesis \else \njut@cap@cover@design \fi}}}\\
    % 三行标题 + 第二导师可能会导致溢出
    % 数字可以再调
    \ifnjut@title@threelinetitle
      \ifnjut@title@twosupervisors
        \vskip 18mm
      \else
        \vskip 22mm
      \fi
    \else
      \vskip 28mm
    \fi
    \vskip\stretch{0}
    {\bgroup
    \kaishu\zihao{3}
    \def\tabcolsep{1pt}
    \def\arraystretch{1.5}
    \ifnjut@title@twolinetitle
      \njut@covertable@twolinetitle
    \else
      \ifnjut@title@threelinetitle
        \njut@covertable@threelinetitle
      \else
        \njut@covertable@onelinetitle
      \fi
    \fi
    \egroup}\\
    \vskip 8mm
  \end{center}
  \end{spacing}
  \cleardoublepage
}
\newcommand*{\makeenglishtitle}{%
  \thispagestyle{empty}
  \begin{center}
    \vspace*{20pt}
    \bf\sffamily\zihao{2}\njut@value@en@title
    \vskip \stretch{1}
    \normalfont\rmfamily\zihao{4}\njut@cap@cover@en@by
    \vskip 3pt
    \sffamily\zihao{4}\njut@value@en@author
    \vskip\stretch{1}
    \normalfont\rmfamily\zihao{4}\njut@cap@cover@en@supervisor
    \vskip 3pt
    \normalfont\sffamily\zihao{4}\njut@value@en@supervisor
    \vskip\stretch{1}
    \normalsize\rmfamily\njut@cap@cover@en@statement
    \vskip\stretch{2}
    \includegraphics[width=2.5cm]{\njut@cap@institute@logo} \\
    \vskip 3mm
    \normalfont\njut@value@en@department\\
    \njut@value@en@institute
    \vskip 30pt
    \normalfont\normalsize\njut@value@en@date
  \end{center}
  \normalfont
  \cleardoublepage
}

% 2018版本残留，2021应该不需要
% 本科生过程管理四张表
\newcommand*{\controlpage}{%
\includepdfmerge{controlpage.pdf,1-4}
}
% \newcommand*{\abstracttitlea}[1]{%
%   \renewcommand{\njut@value@abstract@titlea}{#1}%
% }
% \newcommand*{\abstracttitleb}[1]{%
%   \renewcommand{\njut@value@abstract@titleb}{#1}%
% }

% 摘要
\newenvironment{abstract}{%
  \thispagestyle{plain}
  \pagenumbering{Roman}
  \pdfbookmark[0]{\njut@cap@abstract}{abstract}
  \begin{center}
    \kaishu\zihao{-2}{\textbf{\uuline{南京大学本科生毕业论文(设计、作品)中文摘要}}}
  \end{center}
  {\bgroup
    \kaishu\zihao{-4}
    \def\tabcolsep{0pt}
    \def\arraystretch{0.8}
    \noindent
    题目： \njut@value@title \\
    院系： \njut@value@department \\
    专业： \njut@value@major \\
    本科生姓名： \njut@value@author \\
    指导老师（姓名、职称）： \njut@value@supervisor\ \njut@value@supervisortitle \\
    摘要：
    \egroup
  }
  \kaishu\zihao{-4}\par%
}{%
\newpage
}
\newcommand{\keywords}[1]{%
  \renewcommand*{\njut@value@abstract@keywords}{#1}%
  \par\vspace{2ex}\noindent%
  {\kaishu\zihao{-4}\makebox[4em][s]{\njut@cap@abstract@keywordsname{：}} }~{#1}%
}
% \newcommand*{\englishabstracttitlea}[1]{%
%   \renewcommand{\njut@value@abstract@en@titlea}{#1}%
% }
% \newcommand*{\englishabstracttitleb}[1]{%
%   \renewcommand{\njut@value@abstract@en@titleb}{#1}%
% }
% 英文摘要
\newenvironment{englishabstract}{%
  \thispagestyle{plain}
  \pdfbookmark[0]{\njut@cap@abstract@en}{englishabstract}
  \begin{center}
      \kaishu\zihao{-2}{\textbf{\uuline{南京大学本科生毕业论文(设计、作品)英文摘要}}}
  \end{center}
  {
    \bgroup
    THESIS: \njut@value@en@title \\
    DEPARTMENT: \njut@value@en@department \\
    SPECIALIZATION: \njut@value@en@institute \\
    UNDERGRADUATE: \njut@value@en@author \\
    MENTOR: \njut@value@en@supervisor \\
    ABSTRACT:
    \egroup
  }
  \zihao{-4}\par%
}{%
\cleardoublepage
}
\newcommand{\englishkeywords}[1]{%
  \renewcommand*{\njut@value@abstract@en@keywords}{#1}%
  \par\vspace{2ex}\noindent%
  {\njut@cap@abstract@en@keywordsname{:}}~~{#1}%
}
\newenvironment{preface}{%
  \nchapter{\njut@cap@preface}
}{}
\newenvironment{acknowledgement}{%
  \nchapter{\njut@cap@acknowledgementname}
}{}
 
 
 \newenvironment{resume}{%
   \nchapter{\njut@cap@resume@chaptername}
 }{}
 \newenvironment{authorinfo}{%
   \paragraph*{\njut@cap@resume@authorinfo}
 }{}
 \newenvironment{education}{%
   \paragraph*{\njut@cap@resume@education}
   \begin{description}[labelindent=0em, leftmargin=8em, style=sameline]
 }{%
   \end{description}
 }
 \newenvironment{publications}{%
   \paragraph*{\njut@cap@resume@publications}
   \begin{enumerate}[label=\arabic*., labelindent=0em, leftmargin=*]
 }{%
   \end{enumerate}
 }
 \newenvironment{projects}{%
   \paragraph*{\njut@cap@resume@projects}
   \begin{enumerate}[label=\arabic*., labelindent=0em, leftmargin=*]
 }{%
   \end{enumerate}
 }
\newcommand*{\njut@cap@datefield}{%
\njutunderline[1cm]{}{\njut@cap@year}%
\njutunderline[1cm]{}{\njut@cap@month}%
\njutunderline[1cm]{}{\njut@cap@day}
}
\newcommand*{\njut@license@makedeclaration}{%
\par\njut@cap@license@declaration
\vspace{5mm}
\begin{flushright}
  \njut@cap@license@sign\njutunderline[6cm]{}\\
  \njut@cap@datefield\\
\end{flushright}%
}
\newcommand*{\njut@license@maketable}{%
\noindent\zihao{5}%
\begin{tabular*}{\textwidth}
    {|C{2.2cm}|C{2cm}|C{1.5cm}|C{2.1cm}|C{1.42cm}C{1.5cm}|C{1.25cm}|}
  \hline
  \cell{2.2cm}{1cm}{\njut@cap@license@title}
  & \multicolumn{6}{c|}{\njut@value@title} \\
  \hline
  \cell{2.2cm}{1cm}{\njut@cap@license@studentnum}
  & {\njut@value@studentnum}
  & {\njut@cap@license@department}
  & \multicolumn{2}{c|}{%
    \cell{3.52cm}{1cm}{\njut@value@department}%
  }
  & {\njut@cap@license@grade}
  & {\njut@value@grade} \\
  \hline
  \cell{2.2cm}{1.5cm}{\njut@cap@license@category}
  & \multicolumn{3}{c}{
    \begin{tabular*}{5.6cm}{p{2.8cm}p{2.8cm}}
       \ifnjut@master%
           {{\zihao{-4}$\CheckedBox$}}%
       \else%
           {{\zihao{4}$\Square$}}%
       \fi%
       \njut@cap@license@categorymaster
      & {\zihao{4}$\Square$}%
       \njut@cap@license@categorymasterspec \\
       \ifnjut@phd%
           {{\zihao{-4}$\CheckedBox$}}%
       \else%
           {{\zihao{4}$\Square$}}%
       \fi%
       \njut@cap@license@categoryphd
      & {\zihao{4}$\Square$}%
       \njut@cap@license@categoryphdspec \\
    \end{tabular*}}
  & \multicolumn{3}{c|}{%
    \raisebox{-1em}{\njut@cap@license@categoryhint}}\\
  \hline
  \cell{2.2cm}{1cm}{\njut@cap@license@telphone}
  & \multicolumn{2}{c|}{{\njut@value@telphone}}
  & {\njut@cap@license@email}
  & \multicolumn{3}{c|}{{\njut@value@email}}  \\
  \hline
  \cell{2.2cm}{1cm}{\njut@cap@license@supervisorname}
  & \multicolumn{2}{c|}{{\njut@value@supervisor}}
  & {\njut@cap@license@supervisortelphone}
  & \multicolumn{3}{c|}{{\njut@value@supervisortelphone}} \\
  \hline
\end{tabular*}
}

\newcommand{\njuthesis}{\texttt{NJU-Thesis}}
\newcommand{\zhdash}{\kern0.3ex\rule[0.8ex]{2em}{0.1ex}\kern0.3ex}
\newcommand{\cell}[3]{\parbox[c][#2][c]{#1}{\makebox[#1]{#3}}}
\newcolumntype{C}[1]{>{\centering\let\newline\\%
    \arraybackslash\hspace{0pt}}p{#1}}
\newlist{arabicenum}{enumerate}{3}
\setlist[arabicenum,1]{label=\textnormal%
  {\textnormal{(\arabic*)}}}
\setlist[arabicenum,2]{label=\textnormal%
  {\textnormal{(\arabic{arabicenumi}.\arabic*)}}}
\setlist[arabicenum,3]{label=\textnormal%
  {\textnormal{(\arabic{arabicenumi}.\arabic{arabicenumii}.\arabic*)}}}
\newlist{romanenum}{enumerate}{2}
\setlist[romanenum,1]{label={\textnormal{\roman*.}}}
\setlist[romanenum,2]{label={\textnormal{\alph*\,)}}}
\newlist{alphaenum}{enumerate}{2}
\setlist[alphaenum,1]{label={\textnormal{\alph*\,)}}}
\setlist[alphaenum,2]{label={\textnormal{\alph{alphaenumi}.\arabic*\,)}}}
\newlist{caseenum}{enumerate}{2}
\setlist[caseenum,1]{label={\textnormal{\njut@cap@case\arabic*.}}}
\setlist[caseenum,2]{label={\textnormal{\njut@cap@subcase\arabic{caseenumi}.\arabic*.}}}
\setlist[caseenum]{leftmargin=*}
\newlist{stepenum}{enumerate}{2}
\setlist[stepenum,1]{label={\textnormal{\njut@cap@step\arabic*.}}}
\setlist[stepenum,2]{label={\textnormal{\njut@cap@substep\arabic{stepenumi}.\arabic*.}}}
\setlist[stepenum]{leftmargin=*}
\newcommand*{\njut@setpdfinfo}{\hypersetup{%
        pdftitle={\njut@value@title},
        pdfauthor={\njut@value@author},
        pdfsubject={\njut@cap@cover@apply},
        pdfkeywords={\njut@value@abstract@keywords},
        pdfcreator={\njut@value@author},
        pdfproducer={XeLaTeX with the NJU-Thesis document class}}
}
\AtBeginDocument{\njut@setpdfinfo}
\endinput
%%
%% End of file `njuthesis.cls'.
