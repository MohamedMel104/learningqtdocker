FROM stateoftheartio/qt6:6.6-gcc-aqt
RUN sudo apt update && sudo apt install -y libgl-dev libvulkan-dev
WORKDIR /files/
COPY . .
WORKDIR /files/build/
RUN sudo chmod 777 .
RUN qt-cmake -DCMAKE_BUILD_TYPE=release .. -G Ninja
RUN ninja
RUN chmod +x firstbb
RUN linuxdeploy --plugin qt --executable=firstbb --appdir ./deploy
ENTRYPOINT [ "./deploy/usr/bin/firstbb", "-c"] 