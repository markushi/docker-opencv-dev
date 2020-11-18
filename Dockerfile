FROM ubuntu:focal

RUN apt-get update

# OpenCV 4.4
RUN apt-get install -y libx264-dev libxvidcore-dev ffmpeg x264
RUN apt-get install -y libtheora-dev libva-dev libvdpau-dev libxvidcore-dev libjpeg-dev libavcodec-dev libavformat-dev libswscale-dev

RUN apt-get install -y build-essential checkinstall cmake pkg-config yasm
RUN apt-get install -y wget unzip
RUN wget https://github.com/opencv/opencv/archive/4.4.0.zip
RUN unzip 4.4.0.zip
RUN mkdir opencv-4.4.0/build
RUN cd opencv-4.4.0/build; cmake ..; make -j 16; make install
RUN rm -rf 4.4.0.zip
RUN rm -rf opencv-4.4.0

RUN apt-get install -y gdb
RUN apt-get install -y clang-format
