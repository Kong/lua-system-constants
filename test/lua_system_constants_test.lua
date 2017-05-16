local system_constants = require "lua_system_constants"

assert(system_constants.O_WRONLY())
assert(system_constants.O_RDONLY())
assert(system_constants.O_CREAT())
assert(system_constants.O_APPEND())

assert(system_constants.S_IRUSR())
assert(system_constants.S_IWUSR())
assert(system_constants.S_IXUSR())

assert(system_constants.S_IRGRP())
assert(system_constants.S_IWGRP())
assert(system_constants.S_IXGRP())

assert(system_constants.S_IROTH())
assert(system_constants.S_IWOTH())
assert(system_constants.S_IXOTH())
