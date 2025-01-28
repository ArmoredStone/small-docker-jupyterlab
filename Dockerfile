FROM python:3.13.1-bookworm

# Create a group and user
RUN groupadd -r jupyter && useradd -r -m -g jupyter jupyter

# Install JupyterLab
RUN pip install jupyterlab

# Set the working directory
WORKDIR /home/jupyter

# Expose the port
EXPOSE 9999

# Configure user to run CMD as
USER jupyter

# Start JupyterLab
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=9999", "--no-browser"]
