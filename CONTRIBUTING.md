# Contributing

[top]: #contributing

> [!IMPORTANT]
> If it's your first time contributing, see [Installation](#installation).
>
> Do not commit large files (> 1 MB) to the repository. Upload these to cloud
> storage (such as Google Drive or Box) instead.
>
> Before you contribute, make sure to take a look at the
> [workshop reader style guide][style] in the [DataLab Handbook][handbook].

[style]: https://github.com/datalab-dev/handbook/tree/main/workshops
[handbook]: https://github.com/datalab-dev/handbook

The reader is a live webpage, hosted through GitHub, where you can enter
curriculum content and post it to a public-facing site for learners.


The reader is written in Markdown and rendered with [Quarto][]. To make
alterations to the reader:

[Quarto]: https://quarto.org/

1.  Check in with the reader's current maintainer and notify them about your 
    intended changes. Maintainers might ask you to open an issue, use pull 
    requests, tag your commits with versions, etc.

2.  Run `git pull` to get the latest version of the reader.

3.  Edit an existing chapter file or create a new one. Chapter files must be
    Markdown files (`.qmd`). Put all chapter files in the `chapters/`
    directory. Enter your text, code, and other information directly into the
    file. Make sure your file:

    - Follows the naming scheme `##_topic-of-chapter.qmd` (the only exception
      is `index.qmd`, which contains the reader's front page).
    - Begins with a first-level header (like `# This`). This will be the title
      of your chapter. Subsequent section headers should be second-level
      headers (like `## This`) or below.

    Put any supporting resources in `data/` or `images/`.

4.  Run the command `pixi run rebuild` in this repository to generate HTML
    files for the reader in the `_build/` directory. While developing the
    reader, you can instead run `pixi run build` to only generate HTML for
    parts of the reader that differ from what's in the `_build/` directory.

5.  When you're finished, `git add`:
    - Any files you edited directly
    - Any supporting media you added to `images/`

    Then `git commit` and `git push`. This updates the `main` branch of the
    repo, which contains source materials for the web page (but not the web
    page itself).

6.  Run the following command in a shell at the top level of the repo to update
    the `gh-pages` branch:
    ```
    pixi run publish
    ```
    The live web page will update automatically after 1-10 minutes.

([back to top][top])


## Installation

We use [Pixi][], a fast package manager based on the conda ecosystem, to
install the packages required to build this reader. To install Pixi, follow
[the official instructions][Pixi]. 

[pixi]: https://pixi.sh/

The `pixi.toml` file in this repo lists required packages, while the
`pixi.lock` file lists package versions for each platform. When the lock file
is present, Pixi will attempt to install the exact versions listed. Deleting
the lock file allows Pixi to install other versions, which might help if
installation fails (but beware of inconsistencies between package versions).

To install the required packages, open a terminal and navigate to this repo's
directory. Then run:

```sh
pixi install
```

This will automatically create a virtual environment and install the packages.

To open a shell in the virtual environment, run:

```sh
pixi shell
```

You can run the `pixi shell` command from the repo directory or any of its
subdirectories. Use the virtual environment to run any commands related to
building the reader. When you're finished using the virtual environment, you
can use the `exit` command to exit the shell.

([back to top][top])


### R Packages

When you build the course reader, Quarto will run the R code in the chapters in
the Pixi environment. We try to ensure that the Pixi environment contains every
package necessary, but if one is missing, Quarto will raise an error. Pay
attention to error messages from Quarto! If a package is missing, add it to the
Pixi environment (ask the maintainer if you need help with this).

([back to top][top])
