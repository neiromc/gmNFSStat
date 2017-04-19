#!/usr/bin/bash
#
# Test write/read speed 
# for Zabbix (c) 20170417
#
# Usage: 	/path/to/runner.sh /path/to/test_directory
#  			
# $1 - test_directory. Which directory used for placing test file
# $2 - result_file. Which file used for save result
# $3 - "read" or "write" argument for grep in result_file
#
# --------------------------
#
HOME=/opt/zabbix/addons/gmNFSStat
JAVA_BIN=/u01/ws/opt/IBM/mqsi/iib-10.0.0.7/common/jre/bin/java
#
LOG=logs/gmNFSStat_${3}.log
JAR_NAME=gmNFSStat.jar
#
# --------------------------
#
TEST_DIR=$1
RESULT_FILE=$2

RESULT=$($JAVA_BIN -jar $HOME/$JAR_NAME --dir $TEST_DIR --size 0.01 --iterate 300 --output $RESULT_FILE -v)

echo "$(date '+%Y%m%d-%H%M%S-%s') $RESULT" >> $HOME/$LOG

GREP_STR=$3
GREP_RESULT=$(grep -i "$GREP_STR" $RESULT_FILE | awk '{print $2}')
echo $GREP_RESULT

echo "Returned string: $GREP_STR = $GREP_RESULT" >> $HOME/$LOG



