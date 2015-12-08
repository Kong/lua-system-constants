LUA ?= lua5.1
LUA_LIBDIR ?= $(shell pkg-config $(LUA) --libs)
LUA_INCDIR ?= $(shell pkg-config $(LUA) --cflags)

LIBFLAG ?= -shared
CFLAGS ?= -O2 -Wall -Werror

.PHONY: all clean install

all: lua_system_constants.so

lua_system_constants.so: lua_system_constants.o
	$(CC) $(LIBFLAG) $(LUA_LIBDIR) -o $@ $<
	$(LUA) test/lua_system_constants_test.lua

%.o: %.c
	$(CC) -c $(CFLAGS) -fPIC $(LUA_INCDIR) $< -o $@

install: lua_system_constants.so
	cp lua_system_constants.so $(INST_LIBDIR)

clean:
	rm -f *.so *.o *.rock
