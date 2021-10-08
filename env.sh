#!/bin/bash
# Environment function(s) support

# check cc65 compiler
function check_cc65_env() {
    # test-command for check cc65 exec was exists?
    cc65 --version

    # if there is no execution environment, recompile and install
    if [ "$?" -ne 0 ]; then
        echoerror "Please make sure that your computer has installed cc65! => https://github.com/cc65/cc65"
        exit 254
    fi
}

# check lua vm
function check_lua_env() {
    # test-command for check lua exec was exists?
    lua -v

    # if there is no execution environment, recompile and install
    if [ "$?" -ne 0 ]; then
        echoerror "Please make sure that your computer has installed lua 5.3.x! => https://www.lua.org/versions.html"
        exit 254
    fi
}
