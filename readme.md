# How to use Lua `rocks` locally
1. Install required module using `luarocks` with `--tree` switch (in this case module `luaposix` is installed)
    ```bash
    $ luarocks install --tree posix luaposix
    ```
    Alternative approach:
    ```bash
    $ git clone https://github.com/luaposix/luaposix.git
    $ cd luaposix
    $ luarocks make luaposix-git-1.rockspec --tree ../posix
    ```
2. Create `set_paths.lua` script (adapt name of used package)
3. Use `posix` package normally from main script file, but link to `set_paths.lua`
    ```bash
    $ lua -l set_paths start_counter.lua
    ```

# References
* https://leafo.net/guides/customizing-the-luarocks-tree.html
* https://www.tutorialspoint.com/lua/lua_modules.htm
