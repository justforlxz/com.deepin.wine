echo "Start installing..."

for _deb in $(ls *.deb); do
    echo "Installing $_deb"
    ar p "$_deb" data.tar.xz | tar -xJ
done

cp -a usr /

cp opt/deepinwine/* /usr/share/deepin-wine/ -r

cp *.ttc /usr/share/deepin-wine/wine/fonts

echo "Done"
