FROM python:3.12-slim

WORKDIR /workspaces/app

# Set dependencies
COPY requirements.txt /tmp/pip-tmp/
RUN pip3 --disable-pip-version-check --no-cache-dir install -r /tmp/pip-tmp/requirements.txt \
    && rm -rf /tmp/pip-tmp

RUN pip install jupyter

RUN apt-get update && apt-get -y install --no-install-recommends \
    git \
    && apt-get clean -y && rm -rf /var/lib/apt/lists/*

# run jupyter
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root", "--NotebookApp.token=''", "--NotebookApp.password=''"]