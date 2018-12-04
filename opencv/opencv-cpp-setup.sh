apt-get update
apt-get upgrade
apt-get install build-essential cmake git libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev -y
apt-get install python3.5-dev python3-numpy libtbb2 libtbb-dev -y
apt-get install libjpeg-dev libpng-dev libtiff5-dev libjasper-dev libdc1394-22-dev libeigen3-dev libtheora-dev libvorbis-dev libxvidcore-dev libx264-dev sphinx-common libtbb-dev yasm libfaac-dev libopencore-amrnb-dev libopencore-amrwb-dev libopenexr-dev libgstreamer-plugins-base1.0-dev libavutil-dev libavfilter-dev libavresample-dev -y

cd /opt
wget https://github.com/opencv/opencv/archive/3.4.1.zip -O opencv.zip
unzip opencv.zip
mv opencv-3.4.1/ opencv/
wget https://github.com/opencv/opencv_contrib/archive/3.4.1.zip -O opencv-contrib.zip
unzip opencv-contrib.zip
mv opencv_contrib-3.4.1/ opencv_contrib

cd opencv
mkdir release
cd release

cmake -D ENABLE_PRECOMPILED_HEADERS=OFF -D BUILD_TIFF=ON -D WITH_CUDA=OFF -D ENABLE_AVX=OFF -D WITH_OPENGL=OFF -D WITH_OPENCL=OFF -D WITH_IPP=OFF -D WITH_TBB=ON -D BUILD_TBB=ON -D WITH_EIGEN=OFF -D WITH_V4L=OFF -D WITH_VTK=OFF -D BUILD_TESTS=OFF -D BUILD_PERF_TESTS=OFF -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local -D OPENCV_EXTRA_MODULES_PATH=/opt/opencv_contrib/modules /opt/opencv/
make -j4
make install
ldconfig

pkg-config --modversion opencv
