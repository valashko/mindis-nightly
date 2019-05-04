#!/bin/sh -x
pushd ~
mkdir -p mindis
pushd mindis
wget https://github.com/valashko/mindis-nightly/raw/master/mindis-nightly-linux-arm-v7.tar.gz # move to tmp
wget https://raw.githubusercontent.com/valashko/mindis-nightly/master/revision.txt
tar -xzf mindis-nightly-linux-arm-v7.tar.gz --strip 1
rm mindis-nightly-linux-arm-v7.tar.gz
popd
popd
echo "Updated to `cat revision.txt`"
