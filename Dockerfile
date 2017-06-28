# Audio Labeling Container
FROM ubuntu:14.04

MAINTAINER Steve McLaughlin <stephen.mclaughlin@utexas.edu>

EXPOSE 8000 8484

ENV SHELL /bin/bash

#COPY ./setup.sh /home/
#RUN mkdir -p /home/audio_labeler/

# Update OS
RUN apt-get update && apt-get install -y \
software-properties-common \
build-essential \
transmission-cli transmission-common transmission-daemon


# Install FFmpeg with mp3 support
#RUN add-apt-repository -y ppa:mc3man/trusty-media \
# && apt-get update -y \
# && apt-get install -y ffmpeg gstreamer0.10-ffmpeg

#WORKDIR /home/audio_labeler/
#ENTRYPOINT ["bash","/home/setup.sh"]
