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

---

<a name="forEach"></a>
## forEach

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
