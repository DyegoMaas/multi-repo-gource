FROM ubuntu:18.04

# Update the repositories list and install software to add a PPA
RUN apt-get update && \
    apt-get install -y software-properties-common

# # Add the PPA with ffmpeg
# RUN apt-add-repository -y ppa:mc3man/trusty-media && \
#     apt-get update

# Install required software
RUN apt-get install -y git \
                       xvfb \
                       xfonts-base \
                       xfonts-75dpi \
                       xfonts-100dpi \
                       xfonts-cyrillic \
                       gource \
                       screen \
                       ffmpeg
RUN apt-get update

RUN apt-get install libwww-perl -y

VOLUME ["/avatars", "/repos", "/results"]

WORKDIR /repos

COPY process-files.sh /process-files.sh
COPY download-avatars.perl /download-avatars.perl

ENTRYPOINT [ "/process-files.sh" ]
