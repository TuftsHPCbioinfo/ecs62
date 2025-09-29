FROM tuftsttsrt/tuftsttsrt/ecs62:2025spring

# Install additional Python packages in a single RUN to reduce layers
RUN pip install --no-cache-dir xarray "xarray[complete]" 