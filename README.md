# Workshop: R Basics

_[UC Davis DataLab][datalab]_  
_Fall 2024_  
_Instructors: Michele Tobias, Wesley Brooks_  
_Maintainer: Nick Ulle <<naulle@ucdavis.edu>>_

The reader for this workshop is [here][reader].

[datalab]: https://datalab.ucdavis.edu/
[reader]: https://ucdavisdatalab.github.io/workshop_r_basics/

This 4-part workshop series provides an introduction to using the R programming
language for reproducible data analysis and scientific computing. Topics
include programming basics, how to work with tabular data, how to break down
programming problems, and how to organize code for clarity and reproducibility.

After this workshop, learners will be able to load tabular data sets into R,
compute simple summaries and visualizations, do common data-tidying tasks,
write reusable functions, and identify where to go to learn more.

No prior programming experience is necessary. All learners will need access to
an internet-connected computer and the latest version of Zoom, R, and RStudio.


## Contributing

The workshop reader is written in Markdown and rendered with [Quarto][]. To
modify the reader:

1.  If it's your first time contributing, start with [Setup](#setup).

2.  Talk to the reader's maintainer about your intended changes. The
    maintainer might ask you to consult existing issues, make pull requests,
    tag your commits with versions, etc.

3.  Run `git pull` to make sure you have the latest changes.

3.  Edit an existing chapter file or create a new one. Chapter files are in the
    `chapters/` directory and are Quarto Markdown files (`.qmd`). Chapter files
    should:

    * Follow the file naming scheme `##_title-of-chapter.qmd` (for numbered
      chapters) or `title-of-chapter.qmd` (for unnumbered chapters).
    * Begin with a first-level header (like `# This`). This will be the title
      of your chapter. Subsequent section headers should be second-level
      headers (like `## This`) or below.

    Put any supporting resources in `data/` or `images/`. Store large files (>
    1 MB), such as data sets, on Google Drive, Box, or other cloud storage
    rather than GitHub.

4.  Run `quarto render` to render the reader (the files in `docs/`). This can
    be time-consuming; if you're not done editing and just want a quick
    preview, you can use `quarto preview` instead.

5.  When you're finished editing, run `git add` on:

    * Any `.qmd` files you added or edited in `chapters/`
    * Any image files you added or edited in `images/`
    * The entire `_freeze/` directory
    * Any other files you added or edited

    Then run `git commit` to save the files and `git push` to upload them to
    GitHub.

The reader is hosted by GitHub Pages as a live, public website. The files for
the website are stored in `docs/` on branch `main`. To update the website:

1.  Run `quarto render` to render the reader (the files in `docs/`).

2.  Run `git add docs/`, then `git commit` and `git push`.

Then the website will update automatically after a few minutes.


## Setup

The reader is rendered with [Quarto][]. Make sure it's installed before
rendering the reader.

[Quarto]: https://quarto.org/

The reader might also depend on specific R packages. If the maintainer has
opted to use [renv][], open R in this repo and run `renv::restore()` to install
them. If not, you'll have to use trial-and-error to determine which packages to
install.

[renv]: https://rstudio.github.io/renv/


([back to top](#workshop-r-basics))
