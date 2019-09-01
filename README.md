About topologytoolkit
=====================

Home: https://topology-tool-kit.github.io/

Package license: BSD custom 5-clause variant

Feedstock license: BSD 3-Clause

Summary: The Topology ToolKit (TTK) is an open-source library and software collection for topological data analysis and visualization.


TTK can handle scalar data defined either on regular grids or
triangulations, in 2D, 3D, or more. It provides a substantial collection
of generic, efficient and robust implementations of key algorithms in
topological data analysis. It includes:
· For scalar data: critical points, integral lines, persistence diagrams,
  persistence curves, merge trees, contour trees, Reeb graphs, Morse-Smale
  complexes, topological simplification, topology-aware compression,
  harmonic design;
· For bivariate scalar data: fibers, fiber surfaces, continuous
  scatterplots, Jacobi sets, Reeb spaces;
· For uncertain scalar data: mandatory critical points;
· For time-varying scalar data: critical point tracking, nested tracking
  graphs;
· For high-dimensional / point cloud data: dimension reduction,
  persistence-based clustering;
· and more!


Current build status
====================


<table><tr>
    <td>Appveyor</td>
    <td>
      <a href="https://ci.appveyor.com/project/conda-forge/topologytoolkit-feedstock/branch/master">
        <img alt="windows" src="https://img.shields.io/appveyor/ci/conda-forge/topologytoolkit-feedstock/master.svg?label=Windows">
      </a>
    </td>
  </tr>
    
  <tr>
    <td>Azure</td>
    <td>
      <details>
        <summary>
          <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=7639&branchName=master">
            <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/topologytoolkit-feedstock?branchName=master">
          </a>
        </summary>
        <table>
          <thead><tr><th>Variant</th><th>Status</th></tr></thead>
          <tbody><tr>
              <td>linux_python2.7</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=7639&branchName=master">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/topologytoolkit-feedstock?branchName=master&jobName=linux&configuration=linux_python2.7" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>linux_python3.6</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=7639&branchName=master">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/topologytoolkit-feedstock?branchName=master&jobName=linux&configuration=linux_python3.6" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>linux_python3.7</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=7639&branchName=master">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/topologytoolkit-feedstock?branchName=master&jobName=linux&configuration=linux_python3.7" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>osx_python2.7</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=7639&branchName=master">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/topologytoolkit-feedstock?branchName=master&jobName=osx&configuration=osx_python2.7" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>osx_python3.6</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=7639&branchName=master">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/topologytoolkit-feedstock?branchName=master&jobName=osx&configuration=osx_python3.6" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>osx_python3.7</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=7639&branchName=master">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/topologytoolkit-feedstock?branchName=master&jobName=osx&configuration=osx_python3.7" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>win_c_compilervs2008cxx_compilervs2008python2.7</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=7639&branchName=master">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/topologytoolkit-feedstock?branchName=master&jobName=win&configuration=win_c_compilervs2008cxx_compilervs2008python2.7" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>win_c_compilervs2015cxx_compilervs2015python3.6</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=7639&branchName=master">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/topologytoolkit-feedstock?branchName=master&jobName=win&configuration=win_c_compilervs2015cxx_compilervs2015python3.6" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>win_c_compilervs2015cxx_compilervs2015python3.7</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=7639&branchName=master">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/topologytoolkit-feedstock?branchName=master&jobName=win&configuration=win_c_compilervs2015cxx_compilervs2015python3.7" alt="variant">
                </a>
              </td>
            </tr>
          </tbody>
        </table>
      </details>
    </td>
  </tr>
![ppc64le disabled](https://img.shields.io/badge/ppc64le-disabled-lightgrey.svg)
</table>

Current release info
====================

| Name | Downloads | Version | Platforms |
| --- | --- | --- | --- |
| [![Conda Recipe](https://img.shields.io/badge/recipe-topologytoolkit-green.svg)](https://anaconda.org/conda-forge/topologytoolkit) | [![Conda Downloads](https://img.shields.io/conda/dn/conda-forge/topologytoolkit.svg)](https://anaconda.org/conda-forge/topologytoolkit) | [![Conda Version](https://img.shields.io/conda/vn/conda-forge/topologytoolkit.svg)](https://anaconda.org/conda-forge/topologytoolkit) | [![Conda Platforms](https://img.shields.io/conda/pn/conda-forge/topologytoolkit.svg)](https://anaconda.org/conda-forge/topologytoolkit) |

Installing topologytoolkit
==========================

Installing `topologytoolkit` from the `conda-forge` channel can be achieved by adding `conda-forge` to your channels with:

```
conda config --add channels conda-forge
```

Once the `conda-forge` channel has been enabled, `topologytoolkit` can be installed with:

```
conda install topologytoolkit
```

It is possible to list all of the versions of `topologytoolkit` available on your platform with:

```
conda search topologytoolkit --channel conda-forge
```


About conda-forge
=================

[![Powered by NumFOCUS](https://img.shields.io/badge/powered%20by-NumFOCUS-orange.svg?style=flat&colorA=E1523D&colorB=007D8A)](http://numfocus.org)

conda-forge is a community-led conda channel of installable packages.
In order to provide high-quality builds, the process has been automated into the
conda-forge GitHub organization. The conda-forge organization contains one repository
for each of the installable packages. Such a repository is known as a *feedstock*.

A feedstock is made up of a conda recipe (the instructions on what and how to build
the package) and the necessary configurations for automatic building using freely
available continuous integration services. Thanks to the awesome service provided by
[CircleCI](https://circleci.com/), [AppVeyor](https://www.appveyor.com/)
and [TravisCI](https://travis-ci.org/) it is possible to build and upload installable
packages to the [conda-forge](https://anaconda.org/conda-forge)
[Anaconda-Cloud](https://anaconda.org/) channel for Linux, Windows and OSX respectively.

To manage the continuous integration and simplify feedstock maintenance
[conda-smithy](https://github.com/conda-forge/conda-smithy) has been developed.
Using the ``conda-forge.yml`` within this repository, it is possible to re-render all of
this feedstock's supporting files (e.g. the CI configuration files) with ``conda smithy rerender``.

For more information please check the [conda-forge documentation](https://conda-forge.org/docs/).

Terminology
===========

**feedstock** - the conda recipe (raw material), supporting scripts and CI configuration.

**conda-smithy** - the tool which helps orchestrate the feedstock.
                   Its primary use is in the construction of the CI ``.yml`` files
                   and simplify the management of *many* feedstocks.

**conda-forge** - the place where the feedstock and smithy live and work to
                  produce the finished article (built conda distributions)


Updating topologytoolkit-feedstock
==================================

If you would like to improve the topologytoolkit recipe or build a new
package version, please fork this repository and submit a PR. Upon submission,
your changes will be run on the appropriate platforms to give the reviewer an
opportunity to confirm that the changes result in a successful build. Once
merged, the recipe will be re-built and uploaded automatically to the
`conda-forge` channel, whereupon the built conda packages will be available for
everybody to install and use from the `conda-forge` channel.
Note that all branches in the conda-forge/topologytoolkit-feedstock are
immediately built and any created packages are uploaded, so PRs should be based
on branches in forks and branches in the main repository should only be used to
build distinct package versions.

In order to produce a uniquely identifiable distribution:
 * If the version of a package **is not** being increased, please add or increase
   the [``build/number``](https://conda.io/docs/user-guide/tasks/build-packages/define-metadata.html#build-number-and-string).
 * If the version of a package **is** being increased, please remember to return
   the [``build/number``](https://conda.io/docs/user-guide/tasks/build-packages/define-metadata.html#build-number-and-string)
   back to 0.

Feedstock Maintainers
=====================

* [@julien-tierny](https://github.com/julien-tierny/)
* [@lhofmann](https://github.com/lhofmann/)

