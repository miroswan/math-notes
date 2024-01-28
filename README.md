# Math Notes

This repository contains math notes from various books or papers I'll be reading.

## Quickstart (a.k.a reminder for myself)

* Development assumes VSCode + Remote Containers and configuration via devcontainer. You'll
  need this setup to build the PDFs without issue.
* Once you've opened this project in a dev container via VSCode, simply execute `make` within
  the shell to generate the PDFs.
* For each chapter, include a build file that will build the PDF for that chapter.
* CI will build all of the PDFs to make sure there aren't syntax errors in the Latex code.
  If you notice a build issue, revert the changes.
  