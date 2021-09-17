echo "Start installing..."

tar -xvJf deepin-wine.tar.xz

rm -rf /usr/share/{man,doc}

mkdir /usr/bin
mkdir /usr/lib
mkdir /usr/share/

cp -r opt/deepin-wine5-stable /opt/
cp -r usr/bin/* /usr/bin/
cp -r usr/lib/deepin-wine5 /usr/lib/
cp -r usr/lib/p7zip /usr/lib/
cp -r usr/i386-linux-gnu/deepin-wine5 /usr/i386-linux-gnu/
cp -r usr/share/* /usr/share/

echo "Done"
