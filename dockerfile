FROM python:3.12.5

# APT install
RUN apt-get update && apt-get install -y --no-install-recommends \
        libgl1-mesa-glx libglib2.0-0 \
        libsm6 libxext6 libxrender-dev \
        &&\
    apt-get clean &&\
    rm -rf /var/lib/apt/lists/*

RUN pip install opencv-python pyyaml
