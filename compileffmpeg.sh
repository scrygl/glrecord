dpkg --add-architecture i386
apt-get update
apt-get install build-essential git yasm unzip wget sysstat nasm libc6:i386 \
libavcodec-dev libavformat-dev libavutil-dev pkgconf g++ freeglut3-dev \
libx11-dev libxmu-dev libxi-dev libglu1-mesa libglu1-mesa-dev

git clone https://git.videolan.org/git/ffmpeg/nv-codec-headers.git
cd nv-codec-headers
make
make install
cd ..

git clone https://code.videolan.org/videolan/x264.git
cd x264/
./configure --disable-cli --enable-static --enable-shared --enable-strip
make
make install
ldconfig
cd ..

git clone git://source.ffmpeg.org/ffmpeg.git
cd ffmpeg/
./configure --enable-nonfree --enable-nvenc --enable-libx264 --enable-gpl --enable-cuda --enable-cuvid --enable-cuda-nvcc
make
cd ..
