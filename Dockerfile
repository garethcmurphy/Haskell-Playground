FROM ubuntu:artful
LABEL maintainer: Gareth Murphy
RUN apt-get update && apt-get install -y \ 
    vim \
    ghc6 ghc6-prof ghc6-doc


