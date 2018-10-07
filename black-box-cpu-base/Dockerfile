FROM nmasahiro/pyenv-ubuntu16.04
LABEL maintainer="nmasahiro <masahironomura5325@gmail.com>"

ENV HOME /root

# python3
## 3.6.0
RUN pyenv install 3.6.0
RUN pyenv global 3.6.0

## install tensorflow and other libraries
RUN pip install https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-1.10.1-cp36-cp36m-linux_x86_64.whl \
    pandas \
    xgboost \
    keras \
    scikit-learn \
    matplotlib \
    seaborn \
    lightgbm \
    requests \
    hyperopt

## avoid matplotlib error
RUN sed -i '/^backend/d' $HOME/.pyenv/versions/3.6.0/lib/python3.6/site-packages/matplotlib/mpl-data/matplotlibrc

# python2
## 2.7
RUN pyenv install 2.7
RUN pyenv global 2.7

## Google Cloud SDK
RUN curl https://sdk.cloud.google.com | bash
ENV PATH /root/google-cloud-sdk/bin:$PATH

# Lastly, use 3 in default but use 2 when use gcloud command
RUN pyenv global 3.6.0 2.7
