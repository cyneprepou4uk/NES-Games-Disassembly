#!/bin/bash
# Environment function(s) support

# check cc65 compiler

EXEC_PACKAGES_FOLDER=../_install_packages/bin
INSTALL_PACKAGES_FOLDER=../_install_packages/packages

CC65_VERSION=2.19
CC65_INSTALL_PACKAGE_VERSION=cc65-${CC65_VERSION}
LUA_INSTALL_PACKAGE_VERSION=lua-5.3.6

CC65_HOME=${EXEC_PACKAGES_FOLDER}/${CC65_INSTALL_PACKAGE_VERSION}
LUA_HOME=${EXEC_PACKAGES_FOLDER}/${LUA_INSTALL_PACKAGE_VERSION}

export PATH=${PATH}:${CC65_HOME}/bin:${CC65_HOME}/lib:${CC65_HOME}/include:${LUA_HOME}/src

mkdir -p ${EXEC_PACKAGES_FOLDER}
mkdir -p ${INSTALL_PACKAGES_FOLDER}

function check_cc65_env() {
    # test-command for check cc65 exec was exists?
    cc65 --version

    # if there is no execution environment, recompile and install
    if [ "$?" -ne 0 ]; then
        echoerror "Please make sure that your computer has installed cc65! => https://github.com/cc65/cc65"
        read -p "Do you need to install the cc65 compiler?(yes/no): " result
        if [[ $result = [Yy][Ee][Ss] ]] || [[ $result = [Yy] ]]; then
            currentPwd=`pwd`
            echoerror "Your computer has not install [cc65] compiler, wait a moment and prepare install environment..."
            curl -o ${INSTALL_PACKAGES_FOLDER}/${CC65_INSTALL_PACKAGE_VERSION}.tar.gz "https://codeload.github.com/cc65/cc65/tar.gz/refs/tags/V${CC65_VERSION}"
            cd ${INSTALL_PACKAGES_FOLDER} && tar xvzf ${CC65_INSTALL_PACKAGE_VERSION}.tar.gz && cd ${CC65_INSTALL_PACKAGE_VERSION}
            Return

            make
            Return

            echoinfo "You have successfully installed [cc65]!"
            cd "${currentPwd}" ;
            mv ${INSTALL_PACKAGES_FOLDER}/${CC65_INSTALL_PACKAGE_VERSION} ${EXEC_PACKAGES_FOLDER}
        else
            echoerror "Please make sure that [cc65] is installed on your computer, otherwise the project cannot be compiled!"
            exit 254
        fi
    fi
}

# check lua vm
function check_lua_env() {
    # test-command for check lua exec was exists?
    lua -v

    # if there is no execution environment, recompile and install
    if [ "$?" -ne 0 ]; then
        echoerror "Please make sure that your computer has installed lua 5.3.x! => https://www.lua.org/versions.html"
        read -p "Do you need to install the lua VM?(yes/no): " result
        if [[ $result = [Yy][Ee][Ss] ]] || [[ $result = [Yy] ]]; then
            currentPwd=`pwd`
            echoerror "Your computer has not install [lua] compiler, wait a moment and prepare install environment..."
            curl -o ${INSTALL_PACKAGES_FOLDER}/${LUA_INSTALL_PACKAGE_VERSION}.tar.gz "https://www.lua.org/ftp/${LUA_INSTALL_PACKAGE_VERSION}.tar.gz"
            cd ${INSTALL_PACKAGES_FOLDER} && tar xvzf ${LUA_INSTALL_PACKAGE_VERSION}.tar.gz && cd ${LUA_INSTALL_PACKAGE_VERSION}
            Return

            case ${OS_VERSION} in
                Darwin)
                    echoinfo "This OS is macos!"

                    make macosx test
                    Return
                ;;
                Linux)
                    echoinfo "This OS is linux!"

                    make linux test
                    Return
                ;;
                #FreeBSD)
                    #;;
            esac

            echoinfo "You have successfully installed [lua]!"
            cd "${currentPwd}" ;
            mv ${INSTALL_PACKAGES_FOLDER}/${LUA_INSTALL_PACKAGE_VERSION} ${EXEC_PACKAGES_FOLDER}
        else
            echoerror "Please make sure that [lua] is installed on your computer, otherwise the project cannot be compiled!"
            exit 254
        fi
    fi
}
