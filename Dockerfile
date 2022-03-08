# FROM ubuntu:latest
FROM python:latest

ENV PATH="/root/miniconda3/bin:${PATH}"
ARG PATH="/root/miniconda3/bin:${PATH}"

RUN apt-get update  \
    && apt-get install -yq tzdata \
    && ln -fs /usr/share/zoneinfo/Asia/Dubai /etc/localtime \
    && dpkg-reconfigure -f noninteractive tzdata \
    && apt-get install -y wget unzip git build-essential sudo \
    && rm -rf /var/lib/apt/lists/*

# RUN wget \
#     https://repo.anaconda.com/miniconda/Miniconda3-py37_4.11.0-Linux-x86_64.sh \
#     && mkdir /root/.conda \
#     && bash Miniconda3-py37_4.11.0-Linux-x86_64.sh -b \
#     && rm -f Miniconda3-py37_4.11.0-Linux-x86_64.sh 

# RUN conda update -n base -c defaults conda -y \
#   && conda clean -a \
#   && conda init bash
  
# RUN conda install -y tensorflow keras pydot matplotlib autopep8 ipykernel beautifulsoup4 lxml pillow \
#  && conda clean -a

# RUN pip install raiwidgets \
#   && pip install --upgrade pandas

# RUN git clone https://github.com/microsoft/responsible-ai-toolbox.git
