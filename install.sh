echo "Start installing..."

for _deb in $(ls *.deb); do
    echo "Installing $_deb"
    ar p "$_deb" data.tar.xz | tar -xJ
done

patch -p0 < patch.0
sed -i "s/\/opt/\/usr/g" `grep /opt -rl opt`

echo "Done"
