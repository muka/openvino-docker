FROM ubuntu:xenial

RUN apt update -qq
RUN apt install -y libavcodec-ffmpeg-extra56 libswscale-ffmpeg3 libavformat-ffmpeg56

ENTRYPOINT [ "bash" ]