#!/bin/sh

cd `dirname $0`
scriptPath=`pwd`

sh $scriptPath/goenv/init.sh
sh $scriptPath/nodenv/init.sh
sh $scriptPath/pyenv/init.sh
sh $scriptPath/rbenv/init.sh
