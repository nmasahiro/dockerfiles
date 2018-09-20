FROM nmasahiro/cuda9-cudnn7-pyenv-ubuntu16.04
LABEL maintainer="nmasahiro <masahironomura5325@gmail.com>"

# CAUTION: this image should be run by `nvidia-docker` command because of gpu dependence

ENV HOME /root

# python3
RUN pyenv install 3.6.0
RUN pyenv global 3.6.0

# only tf
RUN pip install https://storage.googleapis.com/tensorflow/linux/gpu/tensorflow_gpu-1.10.1-cp36-cp36m-linux_x86_64.whl \
    pandas \
    xgboost \
    keras \
    scikit-learn \
    matplotlib \
    seaborn \
    lightgbm \
    requests

# avoid matplotlib error
RUN sed -i '/^backend/d' $HOME/.pyenv/versions/3.6.0/lib/python3.6/site-packages/matplotlib/mpl-data/matplotlibrc
