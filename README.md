# gmNFSStat
Small disk read/write benchmark

<pre>
usage: java -jar gmNFSStat.jar
 -d,--dir <arg>       output directory path (nfs mount point)
 -h,--help       print this help
 -i,--iterate <arg>   number fo iterations (default = 3)
 -o,--output <arg>    result file
 -s,--size <arg>      size of test file in MB (default = 5)
    --silent     full silent mode. No out (can used with --output). Ignored if verbose enabled
 -t,--timeout <arg>   running timeout in seconds (default = 10)
 -v,--verbose    enable verbose output
 </pre>


**Zabbix config**

User parameter
<pre>
UserParameter=check.nfs[*],/path/to/gmNFSStat/runner.sh $1 $2 $3
</pre>

Item
<pre>
type = Zabbix agent
key = check.nfs[/path/to/test_dir/,/tmp/check_nfs_speed.txt,read]
Type of information = Numeric (float)
Units = MB/s
</pre>

Script
<pre>
Usage: 	/path/to/gmNFSStat/runner.sh $1 $2 $3

$1 - test_directory. Which directory used for placing test file
$2 - result_file. Which file will use for store result
$3 - "read" or "write" argument for grep in result_file
</pre>
