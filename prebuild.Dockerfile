FROM jupyter/base-notebook:python-3.8.8

LABEL maintainer="Timothy Liu <timothy_liu@mymail.sutd.edu.sg>"

ENV DEBIAN_FRONTEND=noninteractive

USER root

# apt-get may result in root-owned directories/files under $HOME
RUN chown -R $NB_UID:$NB_GID $HOME

USER $NB_USER

