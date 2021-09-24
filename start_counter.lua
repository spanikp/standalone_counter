#!/usr/bin/env lua

local posix = require 'posix'
local time = require 'posix.time'
t_sleep = pcall(posix.PosixTimespec, 1, 0)

while (true) do
    a, b = posix.clock_gettime()
    posix.unistd.sleep(1)
    --pcall(time.nanosleep, t_sleep)
    --print("H")
    print(string.format("%d.%.0f",a,b/1000))
end
