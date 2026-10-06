# UQ Micromouse Competition Specification
This repository hosts the UQ Micromouse competition rules.

## Files

The repo contains the source files to create the rules PDF. See the releases tab for the PDF versions.

## Building

The system is designed around working in LaTeX, from the `main.tex` file in the repo. The build system is designed around [TeX Live for linux](https://www.latex-project.org/get/), but should be translatable using instructions for other operating systems from that link. The included Makefile provides build instructions, and the pdf should be build-able using the `make latex` command from within the repo.

The system uses the `config.toml` file to control version information about the release of the PDF and thus needs to be updated everytime that a new release is to be made. This also influences the latex file build, which will pull the version number on its title page from this config file.
