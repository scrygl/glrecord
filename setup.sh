apt install git wget fontconfig ffmpeg -y
apt install libnvidia-compute-470 -y
apt install libnvidia-gl-470 -y
pip3 install vispy pillow watchdog glfw
git clone https://github.com/scrygl/shadertoy-to-video-with-FBO
cd shadertoy-to-video-with-FBO
mkdir vid
cd vid
python3 ../shadertoy-render.py --output 1.mp4 --size=3840x2160 --rate=60. --duration=420.0 --bitrate=35M main_image.glsl
