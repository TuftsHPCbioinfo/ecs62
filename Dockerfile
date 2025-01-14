FROM tuftsttsrt/miniforge:24.11.2

# Author label
LABEL maintainer="Yucheng Zhang <Yucheng.Zhang@tufts.edu>"

# Help message
LABEL description="This container is for Tufts Climate Modeling ECS62"

RUN conda install -c conda-forge climlab