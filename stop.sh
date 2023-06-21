#!/bin/bash

PID=`ps -ef | grep base-1.0-SNAPSHOT.jar | awk '{ print $2 }'`
kill -9 $PID