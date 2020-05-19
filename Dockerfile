FROM continuumio/miniconda3

RUN conda create -n env -c conda-forge -c bioconda python=3 prokka=1.14.6
RUN echo "source activate env" > ~/.bashrc
ENV PATH /opt/conda/envs/env/bin:$PATH
RUN git clone https://github.com/telatin/prokka
RUN chmod +x prokka/bin/*
RUN mv prokka/bin/*  /opt/conda/envs/env/bin/
