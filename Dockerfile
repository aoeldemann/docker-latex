FROM ubuntu:latest
MAINTAINER Andreas Oeldemann <hey@aoel.io>

RUN apt-get update \
 && DEBIAN_FRONTEND=noninteractive apt-get install -y build-essential \
                                                      texlive \
                                                      texlive-latex-extra \
                                                      texlive-publishers \
                                                      texlive-science \
                                                      texlive-fonts-extra \
                                                      latexmk \
                                                      inkscape \
 && rm -rf /var/lib/apt/lists/*

VOLUME ["/work"]

WORKDIR /work
