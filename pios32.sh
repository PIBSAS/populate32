#!/bin/bash
echo "Update"
sudo apt update
echo
echo "Upgrade--Actualizar si hay algo que"
sudo apt full-upgrade -y
echo "Autoremove"
sudo apt -y autoremove
echo "Firmware Siano"
sudo apt install -y firmware-siano
sudo apt install -y dvb-apps
echo "Kaffeine"
sudo apt install -y kaffeine
echo "Activate DRM Browser"
sudo apt install -y libwidevinecdm0
echo "kodi DRM"
sudo apt install -y kodi kodi-addon-dev kodi-inputstream-adaptive
pip install pycryptodomex
wget -c https://github.com/castagnait/repository.castagnait/raw/kodi/repository.castagnait-2.0.0.zip
echo "Descomprimirlo en la carpeta que le corresponde"
echo
echo "Raspberry Pi Imager"
sudo apt-get install -y rpi-imager
echo "Plex"
cd $HOME/Downloads/
wget -c https://downloads.plex.tv/plex-media-server-new/1.29.2.6364-6d72b0cf6/debian/plexmediaserver_1.29.2.6364-6d72b0cf6_armhf.deb
sudo dpkg -i plex*.deb
rm plex*.deb
echo "FreeCAD dependencies"
sudo apt install -y build-essential
sudo apt install -y cmake
sudo apt install -y doxygen
sudo apt install -y graphviz
sudo apt install -y libtool
sudo apt install -y lsb-release
sudo apt install -y python3
sudo apt install -y swig
sudo apt install -y libboost-dev
sudo apt install -y libboost-date-time-dev
sudo apt install -y libboost-filesystem-dev
sudo apt install -y libboost-graph-dev
sudo apt install -y libboost-iostreams-dev
sudo apt install -y libboost-program-options-dev 
sudo apt install -y libboost-python-dev 
sudo apt install -y libboost-regex-dev 
sudo apt install -y libboost-serialization-dev 
sudo apt install -y libboost-thread-dev
sudo apt install -y libcoin-dev
sudo apt install -y libeigen3-dev 
sudo apt install -y libgts-bin 
sudo apt install -y libgts-dev 
sudo apt install -y libkdtree++-dev 
sudo apt install -y libmedc-dev
sudo apt install -y libopencv-dev 
sudo apt install -y libproj-dev
sudo apt install -y libvtk7-dev
sudo apt install -y libvtk7-qt-dev 
sudo apt install -y libx11-dev 
sudo apt install -y libxerces-c-dev 
sudo apt install -y libzipios++-dev 
sudo apt install -y qtbase5-dev
sudo apt install -y qttools5-dev
sudo apt install -y libqt5opengl5-dev 
sudo apt install -y libqt5svg5-dev 
sudo apt install -y libqt5webkit5-dev 
sudo apt install -y libqt5xmlpatterns5-dev 
sudo apt install -y libqt5x11extras5-dev 
sudo apt install -y libpyside2-dev 
sudo apt install -y libshiboken2-dev
sudo apt install -y pyside2-tools 
sudo apt install -y pyqt5-dev-tools 
sudo apt install -y python3-dev
sudo apt install -y python3-matplotlib
sudo apt install -y python3-pivy 
sudo apt install -y python3-ply
sudo apt install -y python3-pyside2.qtcore 
sudo apt install -y python3-pyside2.qtgui 
sudo apt install -y python3-pyside2.qtsvg
sudo apt install -y python3-pyside2.qtwidgets 
sudo apt install -y python3-pyside2.qtnetwork 
sudo apt install -y python3-pyside2.qtwebchannel
sudo apt install -y python3-vtk7
sudo apt install -y libocct*-dev
sudo apt install -y occt-draw 
sudo apt install -y libsimage-dev
sudo apt install -y libspnav-dev
sudo apt install -y checkinstall
sudo apt install -y python3-markdown
sudo apt install -y python3-git
sudo apt-get install pyqt5-dev
sudo apt-get install pyqt5-dev-tools
sudo apt-get install -y autopoint
sudo apt-get install -y debhelper
sudo apt-get install -y dh-autoreconf
sudo apt-get install -y dh-exec
sudo apt-get install -y dh-python
sudo apt-get install -y dh-strip-nondeterminism
sudo apt-get install -y dwz
sudo apt-get install -y gettext
sudo apt-get install -y intltool-debian
sudo apt-get install -y libarchive-zip-perl
sudo apt-get install -y libdebhelper-perl
sudo apt-get install -y libdouble-conversion-dev
sudo apt-get install -y libfile-stripnondeterminism-perl
sudo apt-get install -y liblz4-dev
sudo apt-get install -y libmetis-dev
sudo apt-get install -y libmetis5
sudo apt-get install -y libsub-override-perl
sudo apt-get install -y po-debconf
sudo apt-get install -y python3-pyside2.qtuitools
sudo apt-get install -y python3-pyside2.qtxml
sudo apt-get install -y pybind11-dev
sudo apt-get install -y cmake-qt-gui
sudo apt-get install -y cmake-curses-gui
sudo apt-get install -y python3-packaging
cd /usr/bin/
sudo ln -s pyrcc5 pyside2-rcc
sudo ln -s pyuic5 pyside2-uic
cd
echo "FreeCAD Source Code"
wget -c https://github.com/FreeCAD/FreeCAD/archive/0.20.1.zip
unzip 0.20.1.zip
rm 0.20.1.zip
mkdir freecad-build
echo "Node RED"
bash <(curl -sL https://raw.githubusercontent.com/node-red/linux-installers/master/deb/update-nodejs-and-nodered)
echo "The Pi4j"
curl -sSL https://pi4j.com/install | sudo bash
echo "NodeJS"
curl -sL https://deb.nodesource.com/setup_18.x | sudo bash -
cd
sudo apt-get install -y nodejs
sudo apt-get install gcc g++ make
echo "Angular CLI"
sudo npm install -g @angular/cli
sudo npm install -g npm@latest
echo "unrar-nonfree"
echo "deb-src http://raspbian.raspberrypi.org/raspbian/ bullseye main contrib non-free rpi" | sudo tee --append /etc/apt/sources.list
sudo apt update
cd $(mktemp -d)
sudo apt build-dep unrar-nonfree -y
sudo apt source -b unrar-nonfree
sudo dpkg -i unrar*.deb
echo "Box86"
sudo apt install -y build-essential git cmake mono-runtime
cd && git clone https://github.com/ptitSeb/box86
cd box86
mkdir build
cd build
cmake .. -DRPI4=1 -DCMAKE_BUILD_TYPE=RelWithDebInfo
make -j2
sudo make install
rm -rf box86
sudo systemctl restart systemd-binfmt
echo 'export BOX86_NOBANNER=1' >> ~/.bashrc
echo "Media Player Daemon"
sudo apt-get install -y mpd mpc
sudo reboot
