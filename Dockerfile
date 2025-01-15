FROM tuftsttsrt/miniconda:24.11.1

# Author label
LABEL maintainer="Yucheng Zhang <Yucheng.Zhang@tufts.edu>"

# Help message
LABEL description="This container is for Tufts Climate Modeling ECS62"

RUN conda install -c conda-forge climlab=0.8.2 scipy=1.12.0
