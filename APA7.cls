\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{APA7}
\LoadClass[12pt]{article}

% Set margins to 1 inch
\RequirePackage[top=1in, bottom=1in, left=1in, right=1in, a4paper]{geometry}

% To redefine titleformat
\RequirePackage{titlesec}
% Font setting (Times New Roman)
\RequirePackage{fontspec}
% To indent first line
\RequirePackage{indentfirst}

% apacite package is commented out as it follows APA6 style
% \RequirePackage{apacite}

% Use biblatex to cite in APA7 style
\RequirePackage[style=apa, backend=biber]{biblatex}
% Indicate the name of referece file
\addbibresource{references.bib}

% Set to double spacing
\renewcommand{\baselinestretch}{2}

% Assign info to variables
\newcommand\titlefirst[1]{\def\@titlefirst{#1}}
\newcommand\titlesecond[1]{\def\@titlesecond{#1}}
\newcommand\titlethird[1]{\def\@titlethird{#1}}
\newcommand\titlefourth[1]{\def\@titlefourth{#1}}
\newcommand\modulename[1]{\def\@modulename{#1}}
\newcommand\leader[1]{\def\@leader{#1}}
\newcommand\wordcount[1]{\def\@wordcount{#1}}
\newcommand\candidatenumber[1]{\def\@candidatenumber{#1}}

% According to chatGPT, it is a fancy way to get word-count automatically. However, it didn't work on my pc (￣^￣)
% \newcommand\wordcount{
%     \immediate\write18{texcount -sum -1 \jobname.tex | grep "Sum" | sed 's/[^0-9]//g'}
%     \input{\jobname.wordcount}
% }


% Make the cover of your essay
% Comment out any info that you do not want to include in the cover page
\newcommand\makecover{%
    \begin{titlepage}
        \centering
        ~\\
        ~\\
        {\fontsize{16pt}{16pt}\bfseries{\@titlefirst} \par}
        {\fontsize{16pt}{16pt}\bfseries{\@titlesecond} \par}
        {\fontsize{16pt}{16pt}\bfseries{\@titlethird} \par}
        %{\fontsize{16pt}{16pt}\bfseries{\@titlefourth} \par}
        ~\\ % blank line
        {\fontsize{12pt}{12pt}{Candidate Number: \@candidatenumber} \par}
        {\fontsize{12pt}{12pt}{Module: \@modulename} \par}
        %{\fontsize{12pt}{12pt}{Module Leader: \@leader} \par}
        %{\fontsize{12pt}{12pt}{Word Count: \@wordcount} \par}
        {\fontsize{12pt}{14pt} {\today} \par}
    \end{titlepage}
}

% There are 5 levels of headings. For a student essay, however, the first two may be already enough.
% Heading Level 1, centering
\titleformat{\section}
    {\fontsize{12pt}{12pt}\bfseries\centering}
    {}
    {0em}
    {}
    []

% Heading Level 2, left-justified
\titleformat{\subsection}
    {\fontsize{12pt}{12pt}\bfseries\raggedright}
    {}
    {0em}
    {}
    []

% Heading Level 3, left-justified & italic
\titleformat{\subsubsection}
    {\fontsize{12pt}{12pt}\bfseries\raggedright\itshape}
    {}
    {0em}
    {}
    []

% Heading Level 4, inline
\newcommand{\subheading}[1]{%
  {\fontsize{12pt}{12pt}\bfseries\raggedright\hspace*{0.5in}#1.}
}

% Heading Level 5, inline & italic
\newcommand{\subsubheading}[1]{%
  {\fontsize{12pt}{12pt}\bfseries\raggedright\itshape\hspace*{0.5in}#1.}
}