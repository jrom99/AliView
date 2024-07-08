#!/bin/sh

# first copy sh-bin
install -m755 aliview /usr/bin/aliview
if [ $? -ne 0 ]
then
    echo "!!! could not install files, need to be sudo? e.g. sudo ./aliview.install.run"
    exit 1
fi

# make dir (install automatically checks if needed)
install -d -m755 /usr/share/aliview/

install -v -m755 aliview.jar /usr/share/aliview/
# install -v -m755 aliicon_128x128.png /usr/share/aliview/
install -v -m755 README.txt /usr/share/aliview/
install -v -m755 install.sh /usr/share/aliview/

# and program launcher
if [ -d ~/.local/share/applications ]; then
  install -v -m755 AliView.desktop ~/.local/share/applications/
else
  if [ -d /usr/share/applications ]; then
    install -v -m755 AliView.desktop /usr/share/applications/
  fi
fi

# and icons
if [ -d ~/.local/share/icons ]; then
  install -v -D -m755 aliicon_256x256.png ~/.local/share/icons/hicolor/256x256/apps/aliview.png
  install -v -D -m755 aliicon_128x128.png ~/.local/share/icons/hicolor/128x128/apps/aliview.png
  install -v -D -m755 aliicon_64x64.png ~/.local/share/icons/hicolor/64x64/apps/aliview.png
  install -v -D -m755 aliicon_32x32.png ~/.local/share/icons/hicolor/32x32/apps/aliview.png
else
  if [ -d /usr/share/icons ]; then
    install -v -D -m755 aliicon_256x256.png /usr/share/icons/hicolor/256x256/apps/aliview.png
    install -v -D -m755 aliicon_128x128.png /usr/share/icons/hicolor/128x128/apps/aliview.png
    install -v -D -m755 aliicon_64x64.png /usr/share/icons/hicolor/64x64/apps/aliview.png
    install -v -D -m755 aliicon_32x32.png /usr/share/icons/hicolor/32x32/apps/aliview.png
  fi
fi
