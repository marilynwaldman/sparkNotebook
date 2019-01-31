# docker-stacks are Copyright (c) Jupyter Developer Team.
# Distributed under the terms of the Modified BSD License.

FROM jupyter/all-spark-notebook

MAINTAINER Marilyn Waldman <hampy@colorado.edu>

USER root

RUN conda install --quiet --yes -c conda-forge jupyter_contrib_nbextensions  \
    && conda clean -tipsy

# RUN conda remove graphviz

RUN conda install --quiet --yes -c  conda-forge  python-graphviz  \
    && conda clean -tipsy


