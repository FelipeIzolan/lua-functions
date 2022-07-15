# lua-functions
A list of useful functions for lua.
## List

* [forEach](#forEach)
* [map](#map)
* [reduce](#reduce)
* [filter](#filter)
* [ternary](#ternary)
* [split](#split)
* [uuid](#split)

<a name="forEach"></a>
## forEach
Execute a function forEach case/key from table.

```lua
local forEach = require "forEach"
local myTable1 = { 50, 34, 23, 765 }
local myTable2 = {
    name = "Felipe",
    years_old = 18,
    lua = true
}


local callback = function(value, index)
   print(value, index) 
end

forEach(myTable1, callback)
forEach(myTable2, callback)
```

<a name="map"></a>
## map
Create a new table with results returned from function.

```lua
local map = require "map"
local myTable1 = { 50, 34, 23, 765 }
local myTable2 = {
    name = "Felipe",
    years_old = 18,
    lua = true
}

local mappedTable1 = map(myTable1, function(value, index) return value + index end)
local mappedTable2 = map(myTable2, function(value, key)
  if key == "name" and value == "Felipe" then
    return "Felipe Izolan"
  elseif key == "years_old" then
    return value + 1
  end
end)

print(mappedTable1[1])
print(mappedTable2.name)
```
