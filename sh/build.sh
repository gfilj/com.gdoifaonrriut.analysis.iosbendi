#!/bin/sh
DIR=/home/analysis
cd $DIR

LIBS="$DIR/conf"
for i in $DIR/lib/*.jar;do
    LIBS="$LIBS:$i"
done

for i in $DIR/app/*.jar;do
    LIBS="$LIBS:$i"
done

JVMS='-server -Xmx8192m -Xms1024m -XX:+UseConcMarkSweepGC'

#java $JVMS -cp $LIBS com.dianru.analysis.boot.BootServer
java $JVMS -cp $LIBS com.dianru.analysis.tools.BuildClickIndex


