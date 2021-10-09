#!/bin/bash
# Common function(s) support

OS_VERSION=$(uname)
MD5=md5sum

Color_support() {
  RC="\033[1;31m"
  GC="\033[32m"
  BC="\033[1;34m"
  YC="\033[1;33m"
  EC="\033[0m"
}
Color_support
echoerror() {
  printf "${RC} * ERROR: ${EC}%s\n" "$@" 1>&2
}
echoinfo() {
  printf "${GC} * INFO${EC}: %s\n" "$@"
}
echowarn() {
  printf "${YC} * WARN${EC}: %s\n" "$@"
}
Return() {
  if [ "$?" -ne 0 ]; then
    echoerror "The step is failed, please have check！"
    exit 254
  else
    echoinfo "Congratulations, the step is ok." &>/dev/null
  fi
}

Installer() {
  # check argument(s) is empty?
  if [ ! -n "$1" ]; then
    echowarn "[Installer] missing input argument(s)!"
    exit 254
  fi
  # install multiple package(s)
  while [ "$#" -ge "1" ];do
    if [[ -x "/usr/bin/apt-get" ]]; then
      apt-get -y install $1
    elif [[ -x "/usr/bin/yum" ]] ; then
      yum -y install $1
    else
      echowarn "No supported package manager installed on system: [$1]"
    fi
    # must be shift for $1, otherwise infinite-loop...
    shift
  done
}

today=""
month=""
case ${OS_VERSION} in
Darwin)
  echoinfo "This OS is macos!"
  MD5=md5

  today=$(date -v +0d +%Y%m%d)
  Return
  month=$(date -v +0d +%Y%m)
  Return
  ;;
Linux)
  echoinfo "This OS is linux!"

  today=$(date -d today +%Y%m%d)
  Return
  month=$(date '-d +0 day' +%Y%m)
  Return
  ;;
  #FreeBSD)
  #;;
esac
