echo "Start installing..."
ls /app
tar -xvf deepin-wine.tar

for _deb in $(ls *.deb); do
    echo "Installing $_deb"
    ar p "$_deb" data.tar.xz | tar -xJ
done

cp -a usr /
cp -a opt /

cp *.ttc /usr/share/deepin-wine5/wine/fonts

echo "Done"
