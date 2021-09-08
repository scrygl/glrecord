apt install git wget fontconfig ffmpeg -y
apt install libnvidia-gl-470 -y
pip install vispy pillow watchdog

git clone https://github.com/danilw/shadertoy-to-video-with-FBO
cd shadertoy-to-video-with-FBO

mkdir vid
cd vid

cd shadertoy-to-video-with-FBO

python3 ../shadertoy-render.py --output 1.mp4 --size=3840x2160 --rate=30 --duration=20.0 --bitrate=55M main_image.glsl

python3 ../shadertoy-render.py --output 1.mp4 --size=3840x2160 --rate=30 --duration=420.0 --bitrate=55M --verbose main_image.glsl

python3 ../shadertoy-render.py --output hwaccel.mp4 --size=3840x2160 --rate=30 --duration=420.0 --bitrate=25M --verbose main_image.glsl


