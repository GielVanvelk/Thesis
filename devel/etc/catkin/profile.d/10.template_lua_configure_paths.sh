#!/bin/sh

# if [ "x$LUA_PATH" = "x" ]; then
#    LUA_PATH=";"
# fi

export LUA_PATH="$LUA_PATH;/home/giel/etasl/ws/my_new_workspace/src/etasl_application_test/?.lua;/home/giel/etasl/ws/my_new_workspace/src/etasl_application_test/scripts/lib/?.lua;/home/giel/etasl/ws/my_new_workspace/src/etasl_application_test/scripts/rfsm/?.lua"
export LUA_CPATH="$LUA_CPATH;/usr/local/lib/lua/?.so"
