local constants = require "lua_constants"

assert(constants.O_WRONLY())
assert(constants.O_CREAT())
assert(constants.O_APPEND())
assert(constants.S_IWUSR())
assert(constants.S_IRUSR())
assert(constants.S_IXUSR())