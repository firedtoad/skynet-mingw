#!/bin/sh
#SOCKET_ERROR is defined as -1 on windows platform here is no need 
sed  -i 's/^#define SOCKET_ERROR 4/\/\/#define SOCKET_ERROR 4/' skynet-src/socket_server.h 
#mingw 5.3 some header files are changed
sed  -i 's/^#include \"sys\/socket.h\"/#include <sys\/socket.h> \r#include <time.h>/' platform/platform.h
#mingw 5.3 _WIN32_WINNT default defined as _WIN32_WINNT_WIN2K(0x0500) for Windows 2000
sed  -i 's/^#ifndef _WIN32_WINNT/#ifdef _WIN32_WINNT\r#undef _WIN32_WINNT/' platform/sys/socket.h
#for strsep strsep inet_ntop clock_gettime warning on complie time
sed  -i 's/^CFLAGS := -g -O2 -Wall -I$(PLATFORM_INC) -I$(LUA_INC) $(MYCFLAGS)/CFLAGS := -g -O2 -includeplatform.h -Wall -I$(PLATFORM_INC) -I$(LUA_INC) $(MYCFLAGS)/' Makefile
#using nanosleep replace usleep whick was  marked deprecated in mingw5.3
sed  -i 's/\tusleep/    nusleep/g' skynet-src/skynet_start.c lualib-src/lua-socket.c lualib-src/lua-debugchannel.c lualib-src/lua-clientsocket.c
