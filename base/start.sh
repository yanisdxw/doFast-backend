#!/bin/bash

# 设置Java程序的路径和启动参数
JAVA_OPTS="-Xms512m -Xmx1024m -Dspring.profiles.active=prod"
BASE_PATH=/home/doFast-backend/base
JAR_PATH=$BASE_PATH/target/base-1.0-SNAPSHOT.jar

# 判断Java程序是否已经运行，如果已经运行则不再启动
RUNNING=`ps -ef | grep $JAR_PATH | grep -v grep | awk '{print $2}'`
if [ -n "$RUNNING" ]; then
    echo "The program is already running"
    exit 1
fi

# 创建日志文件
if [[ ! -e $BASE_PATH/base.log ]]; then
    mkdir -p $BASE_PATH/base.log
fi

# 启动Java程序
nohup java $JAVA_OPTS -jar $JAR_PATH > $BASE_PATH/base.log 2>&1 &
echo "Java program has started"