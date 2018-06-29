FROM ubuntu:xenial

RUN apt update -qq
RUN apt install -y libavcodec-ffmpeg-extra56 libswscale-ffmpeg3 libavformat-ffmpeg56 libharfbuzz0b libxcb-shm0 libcairo2 libpangoft2-1.0-0

ENTRYPOINT [ "bash" ]