# conda-recipes
Recipes to create conda packages for use by the City Modelling Lab.

NOTE: these packages reside here because the process of getting packages added to the `conda-forge` channel can be very slow.
You should also contribute the package to `conda-forge` according to their instructions [here](https://conda-forge.org/docs/maintainer/adding_pkgs.html).
Once it has been incorporated into `conda-forge`, you can delete it from here.

These packages already exist on PyPi (i.e., they are `pip` installable), but we require them as conda dependencies.

## Adding a new recipe

Each directory should contain a `LICENSE` file and a `meta.yaml` configuration file.
For an example of a Python-only configuration, see `s2sphere`.
For an example Python binding to a C library, see `osmium`.
Note that this particular binding example has all the hard work done in the upstream repository, so we don't have to handle any of the bash scripting ourselves.

Each new recipe should be added from a new branch via a PR.
During the pull request process, the packages will be built and will throw errors if there is something wrong with your recipe.
Only merge in PRs once all CI passes.
Once merged, the packages will be uploaded to Anaconda.

NOTE: if you are building a package for each operating system separately, you cannot build for OSX-ARM64 as there are no appropriate GitHub runners for this.
You will need to run `conda build` locally from an Apple Silicon device (any from after 2020) and upload the resulting built package yourself.

## Updating an existing recipe

For a new version:
1. update the version number and pip tarball SHA key
2. update any dependencies and their version pins
3. return the build number to `0` if set to a higher number.

If you realise there is a problem with your recipe after you have uploaded your package, you can make edits to it without updating the version (again, go via a PR).
You should ensure that the build `number` is bumped up one if doing this.
