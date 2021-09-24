-- set_paths.lua
local version = _VERSION:match("%d+%.%d+")
package.path = 'posix/share/lua/' .. version .. '/?.lua;posix/share/lua/' .. version .. '/?/init.lua;' .. package.path
package.cpath = 'posix/lib/lua/' .. version .. '/?.so;' .. package.cpath
