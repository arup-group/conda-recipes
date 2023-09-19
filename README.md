# conda-recipes
Recipes to create conda packages for use by the City Modelling Lab.

These packages already exist on PyPi (i.e., they are `pip` installable), but we require them as conda dependencies.

Each directory should contain a `LICENSE` file and a `meta.yaml` configuration file.
For an example of a Python-only configuration, see `s2sphere`.
For an example Python binding to a C library, see `osmium`.
Note that this binding has all the hard work done in the upstream repository, so we don't have to handle any of the bash scripting ourselves.
