FROM tuftsttsrt/miniconda:23.10.0

# Author label
LABEL maintainer="Yucheng Zhang <Yucheng.Zhang@tufts.edu>"

# Help message
LABEL description="This container is for Tufts Climate Modeling ECS62"

# Copy spec file first (avoid unnecessary rebuilds)
COPY spec-file.txt /tmp/spec-file.txt

# Create the Conda environment
RUN mkdir -p /opt/conda/envs && \
    conda create -p /opt/conda/envs/ecs62 --file /tmp/spec-file.txt && \
    conda clean --all -y

# Set the environment path (ensure new env is active)
ENV PATH="/opt/conda/envs/ecs62/bin:$PATH"

# Install additional Python packages in a single RUN to reduce layers
RUN pip install --no-cache-dir matplotlib metpy netCDF4 ipython ipykernel
