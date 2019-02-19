LUA ?= lua5.1
LUA_PC ?= $(LUA)
LUA_LIBDIR ?= $(shell pkg-config $(LUA_PC) --libs-only-L)
LUA_INCDIR ?= $(shell pkg-config $(LUA_PC) --cflags)

INST_LIBDIR ?= /usr/lib/lua/5.1/

LIBFLAG ?= -shared
CFLAGS ?= -O2 -Wall -Werror

.PHONY: all clean install

all: lua_system_constants.so

lua_system_constants.so: lua_system_constants.o
	$(CC) $(LIBFLAG) $(LUA_LIBDIR) -o $@ $<

%.o: %.c
	$(CC) -c $(CFLAGS) -fPIC $(LUA_INCDIR) $< -o $@

check: lua_system_constants.so
	$(LUA) -e 'package.cpath="./?.so"' test/lua_system_constants_test.lua

install: lua_system_constants.so
	install -D lua_system_constants.so "$(DESTDIR)$(INST_LIBDIR)"

clean:
	rm -f lua_system_constants.o lua_system_constants.so
