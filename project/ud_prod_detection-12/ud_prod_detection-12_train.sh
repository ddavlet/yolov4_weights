#!/bin/bash -e

cd /home/ddavlet/project/ud_prod_detection-12

# Warning: this file is automatically created/updated by DarkMark v1.10.18-1!
# Created on Mon 2025-03-31 11:13:13 UTC by ddavlet@ddavlety.

rm -f output.log
#rm -f chart.png

echo "creating new log file" > output.log
date >> output.log

ts1=$(date)
ts2=$(date +%s)
echo "initial ts1: ${ts1}" >> output.log
echo "initial ts2: ${ts2}" >> output.log
echo "cmd: /usr/bin/darknet detector -map -dont_show train /home/ddavlet/project/ud_prod_detection-12/ud_prod_detection-12.data /home/ddavlet/project/ud_prod_detection-12/ud_prod_detection-12.cfg /home/ddavlet/project/ud_prod_detection-12/yolov4-tiny.conv.29 --save-weights 500" >> output.log
!curl -L "https://github.com/GotG/yolotinyv3_medmask_demo/blob/master/yolov4-tiny.conv.29" > /home/ddavlet/project/ud_prod_detection-12/yolov4-tiny.conv.29
/usr/bin/time --verbose /usr/bin/darknet detector -map -dont_show train /home/ddavlet/project/ud_prod_detection-12/ud_prod_detection-12.data /home/ddavlet/project/ud_prod_detection-12/ud_prod_detection-12.cfg /home/ddavlet/project/ud_prod_detection-12/yolov4-tiny.conv.29 --save-weights 500 2>&1 | tee --append output.log

ts3=$(date)
ts4=$(date +%s)
echo "ts1: ${ts1}" >> output.log
echo "ts2: ${ts2}" >> output.log
echo "ts3: ${ts3}" >> output.log
echo "ts4: ${ts4}" >> output.log

