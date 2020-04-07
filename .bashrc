alias shell="adb shell"
alias dockershell=docker run --rm -i -t --entrypoint=/bin/bash
alias dockershellsh=docker run --rm -i -t --entrypoint=/bin/sh
alias l=ls
alias ll=ls -lsa
mobsf=docker run -it -d --name mobsf -p 8000:8000 opensecurity/mobile-security-framework-mobsf:latest

# Functions
function push()
{
	if [[ $# -eq 1 ]]
	then
	echo "$pushing $1 to /sdcard/Download/ device via adb"
	adb push $1 /sdcard/Download/
	elif [[ $# -q 2 ]]
	then
	echo "$pushing $1 to $2 in device via adb"
	adb push $1 $2
	else
	echo -n "USAGE: adb push INPUT [OUTPUT_PATH] \nDefault OUTPUT_PATH is /sdcard/Download/"
	fi
}

function pull()
{
	if [[ $# -ne 1 ]]
	then
	echo "USAGE: adb pull SOURCE"
	else
	echo "$Pulling $1 to $(pwd) from device via adb"
	adb pull $1 .
	fi
}

function connect(){
	echo "Connecting to $1 via adb"
	adb connect $1
}