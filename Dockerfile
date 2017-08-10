FROM ubuntu
RUN apt-get -y update
RUN apt-get install -y wget gzip zip bzip2 curl build-essential


### install conda 
RUN  wget https://repo.continuum.io/miniconda/Miniconda2-latest-Linux-x86_64.sh &&\
          bash Miniconda2-latest-Linux-x86_64.sh &&\
          export PATH=~/miniconda2/bin:$PATH
### conda update
RUN  conda update --all -y &&\
          conda config --add channels r  &&\
          conda config --add channels bioconda  &&\
          conda config --add channels conda-forge &&\
          conda install -y python=2.7

CMD ["/bin/bash"]
