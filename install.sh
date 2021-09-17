echo "Start installing..."

for _deb in $(ls *.deb); do
    echo "Installing $_deb"
    ar p "$_deb" data.tar.xz | tar -xJ
done

patch -p0 < patch.0

rm -rf /usr/share/{man,doc}

cp -r opt/deepin-wine5-stable /opt/
cp -r usr/bin/* /usr/bin/
cp -r usr/lib/p7zip /usr/lib/
cp -r usr/include /usr/
cp -r usr/lib/deepin-wine5 /usr/lib/
cp -r usr/lib/libudis* /usr/lib/
cp -r usr/lib/i386-linux-gnu/deepin-wine5 /usr/lib/i386-linux-gnu/
cp -r usr/share/* /usr/share/
cp *.ttc /usr/share/deepin-wine5/wine/fonts

echo "Done"
