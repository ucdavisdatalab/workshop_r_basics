# Workshop: R Basics

_[UC Davis DataLab](https://datalab.ucdavis.edu/)_  
_Fall 2024_  
_Instructors: Michele Tobias, Wesley Brooks_  
_Maintainer: Nick Ulle <<naulle@ucdavis.edu>>_

This 4-part workshop series provides an introduction to using the R programming
language for reproducible data analysis and scientific computing. Topics
include programming basics, how to work with tabular data, how to break down
programming problems, and how to organize code for clarity and reproducibility.

After this workshop, learners will be able to load tabular data sets into R,
compute simple summaries and visualizations, do common data-tidying tasks,
write reusable functions, and identify where to go to learn more.

No prior programming experience is necessary. All learners will need access to
an internet-connected computer and the latest version of Zoom, R, and RStudio.


## Common Links

* [Reader](https://ucdavisdatalab.github.io/workshop_r_basics/)
* Event Page


## Contributing

The course reader is a live webpage, hosted through GitHub, where you can enter
curriculum content and post it to a public-facing site for learners.

To make alterations to the reader:

1.  Check in with the reader's current maintainer and notify them about your 
    intended changes. Maintainers might ask you to open an issue, use pull 
    requests, tag your commits with versions, etc.

2.  Run `git pull`, or if it's your first time contributing, see the
    [Setup](#setup) section of this document.

3.  Edit an existing chapter file or create a new one. Chapter files are in the
    `chapters/` directory and are Quarto Markdown files (`.qmd`). Enter your
    text, code, and other information directly into the file. Make sure your
    file:

    - Follows the naming scheme `##_topic-of-chapter.qmd`.
    - Begins with a first-level header (like `# This`). This will be the title
      of your chapter. Subsequent section headers should be second-level
      headers (like `## This`) or below.

    Put any supporting resources in `data/` or `images/`. Store large files in
    Google Drive or other cloud storage rather than committing them to the
    repo. You do not need to add generated resources (such as HTML files). The
    render step saves these in `docs/` automatically.

4.  In a terminal, navigate to this repo and run `quarto render` to re-render
    the website (the files in `docs/`).

5.  When you're finished, `git add`:
    - Any files you edited directly
    - Any supporting media you added to `docs/` or `images/`
    - The entire `docs/` directory

    Then `git commit` and `git push`. The live web page will update
    automatically after 1-10 minutes.


## Setup

This project uses [Quarto][]. Make sure it is installed before rendering the
reader.

[Quarto]: https://quarto.org/

[Back to Top](#workshop-r-basics)
