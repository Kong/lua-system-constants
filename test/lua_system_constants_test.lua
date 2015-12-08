local system_constants = require "lua_system_constants"

assert(system_constants.O_WRONLY())
assert(system_constants.O_CREAT())
assert(system_constants.O_APPEND())
assert(system_constants.S_IWUSR())
assert(system_constants.S_IRUSR())
assert(system_constants.S_IXUSR())