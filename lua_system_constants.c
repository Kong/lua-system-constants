/***
Retrieve some specific constants values based on the system this library has been compiled for.

@license MIT
@module lua_system_constants
*/
#include <lua.h>
#include <lauxlib.h>
#include <fcntl.h>
#include <sys/stat.h>

#if LUA_VERSION_NUM < 502
# define luaL_newlib(L,l) (lua_newtable(L), luaL_register(L,NULL,l))
# define lua_rawlen lua_objlen
#endif

static int get_O_RDONLY(lua_State *L) {
  lua_pushinteger(L, O_RDONLY);
  return 1;
}

static int get_O_WRONLY(lua_State *L) {
  lua_pushinteger(L, O_WRONLY);
  return 1;
}

static int get_O_CREAT(lua_State *L) {
  lua_pushinteger(L, O_CREAT);
  return 1;
}

static int get_O_APPEND(lua_State *L) {
  lua_pushinteger(L, O_APPEND);
  return 1;
}

// user
static int get_S_IRUSR(lua_State *L) {
  lua_pushinteger(L, S_IRUSR);
  return 1;
}

static int get_S_IWUSR(lua_State *L) {
  lua_pushinteger(L, S_IWUSR);
  return 1;
}

static int get_S_IXUSR(lua_State *L) {
  lua_pushinteger(L, S_IXUSR);
  return 1;
}

// group
static int get_S_IRGRP(lua_State *L) {
  lua_pushinteger(L, S_IRGRP);
  return 1;
}

static int get_S_IWGRP(lua_State *L) {
  lua_pushinteger(L, S_IWGRP);
  return 1;
}

static int get_S_IXGRP(lua_State *L) {
  lua_pushinteger(L, S_IXGRP);
  return 1;
}

// others
static int get_S_IROTH(lua_State *L) {
  lua_pushinteger(L, S_IROTH);
  return 1;
}

static int get_S_IWOTH(lua_State *L) {
  lua_pushinteger(L, S_IWOTH);
  return 1;
}

static int get_S_IXOTH(lua_State *L) {
  lua_pushinteger(L, S_IXOTH);
  return 1;
}

static const luaL_Reg lua_system_constants[] = {
  {"O_RDONLY", get_O_RDONLY},
  {"O_WRONLY", get_O_WRONLY},
  {"O_CREAT", get_O_CREAT},
  {"O_APPEND", get_O_APPEND},
  {"S_IRUSR", get_S_IRUSR},
  {"S_IWUSR", get_S_IWUSR},
  {"S_IXUSR", get_S_IXUSR},
  {"S_IRGRP", get_S_IRGRP},
  {"S_IWGRP", get_S_IWGRP},
  {"S_IXGRP", get_S_IXGRP},
  {"S_IROTH", get_S_IROTH},
  {"S_IWOTH", get_S_IWOTH},
  {"S_IXOTH", get_S_IXOTH},
  {NULL, NULL}
};

int luaopen_lua_system_constants(lua_State *L){
  luaL_newlib(L, lua_system_constants);
  return 1;
}
