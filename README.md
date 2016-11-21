# firw-thesis-latex
This repo is intended to make it easy to share the same latex setup on multiple machines.
The current setup takes care of the `kulemt` class provided by the faculty.
It uses docker to accomplish this.
## Usage
### Prerequisites
You have installed:
 - Docker `sudo apt-get intall docker`

### Install
Clone the project:
`git clone git@github.com:warreee/firw-thesis-latex.git`

Build docker:
`docker build -t compile .`

Make sure that the following files are executable:
 - compile.sh
 - latexmk.sh
 - pdflatex.sh

Optional: add a alias for the compile command by adding the following line to `.bashrc`

`alias compile='/path/to/file/compile.sh'`

### Compilation
 You can now compile any correct Latex file with:

 `/path/to/file/compile.sh file.tex`

 Or if you added the alias:

 `compile file.tex`

### Test compilation
 You can test the compilation of the thesis template in the thesis folder:

 `compile thesis.tex`

## IDE

### Atom
![Overview](https://cloud.githubusercontent.com/assets/4020491/20496641/538023fe-b026-11e6-8cc1-0af8d730b842.png)

You can use the introduced commands with Atom.
Here I describe a possible setup, but there are of course other possible ways.

1. Install your favorite highlighting package in Atom for latex.
   (They might complain that you need to setup latex, just ignore that as we use an own builder.)
2. Install the [save-commands](https://atom.io/packages/save-commands) package.
3. Add the following file to the root directory of your latex project:
```json
{
    "commands": [
        "**/*.tex : /path/to/compile.sh {relPath}{filename}"
    ]
}
```
## Acknowledgments

The [repo](https://github.com/blang/latex-docker) from blang was a very good example, and was an inspiration for this repository.
