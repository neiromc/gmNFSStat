# gmNFSStat
Small disk read/write benchmark


<pre>
Usage: 	/path/to/gmNFSStat/runner.sh $1 $2 $3

$1 - test_directory. Which directory used for placing test file
$2 - result_file. Which file will use for store result
$3 - "read" or "write" argument for grep in result_file
</pre>


Using JAR

<pre>
usage: java -jar gmNFSStat.jar
 -d,--dir <arg>       output directory path (nfs mount point)
 -h,--help       print this help
 -i,--iterate <arg>   number fo iterations (default = 3)
 -o,--output <arg>    result file
 -s,--size <arg>      size of test file in MB (default = 5)
    --silent     full silent mode. No out (can use with --output). Ignored if verbose enabled
 -v,--verbose    enable verbose output
 </pre>
