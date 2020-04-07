dockerb=docker build . -f Dockerfile -t $1
dockerbr=docker build . -f Dockerfile -t $1 $t docker run --name $1 -t $1
dockershell=docker run --rm -i -t --entrypoint=/bin/bash $*
dockershellsh=docker run --rm -i -t --entrypoint=/bin/sh $*
dockersr=docker stop $1 $t docker rm $1
gl=git log --oneline --all --graph --decorate  $*
l="ls"
ls=ls --show-control-chars -F --color $*
mobsf=docker run -it -d --name mobsf -p 8000:8000 -v //c/Users/noy/.MobSF:/root/.MobSF opensecurity/mobile-security-framework-mobsf:latest
msf=docker run --rm -it -v //c/Users/noy/.msf4:/home/msf/.msf4 metasploitframework/metasploit-framework ./msfconsole
pwd=cd
subl="C:\Program Files\Sublime Text 3\subl.exe" $*