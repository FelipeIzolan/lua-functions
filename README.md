# lua-functions
A list of useful functions for lua.
## List

* [forEach](#forEach)
* [map](#map)
* [reduce](#reduce)
* [filter](#filter)
* [ternary](#ternary)
* [split](#split)
* [uuid](#uuid)
* [switch](#switch)

<a name="forEach"></a>
### forEach
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
### map
Create a table from a table.

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
print(mappedTable2.name, mappedTable2.years_old)
```

<a name="reduce"></a>
### reduce
Create a unique value from a table.

```lua
local reduce = require "reduce"
local myTable1 = {"I like", "grapes", "apple", "orange", "avocado", "beans", "lua"}
local myTable2 = {
  firstBimesterGrades = {10, 4.5, 3, 7.5},
  secondBimesterGrades = {2, 5.5, 6, 6.5},
  thirdBimesterGrades = {5, 1.5, 8, 9},
  fourthBimesterGrades = {10, 7.5, 8, 10}
}

local reducedTable1 = reduce(myTable1, function (acc, value, index)
  if index == 1 then
    return  value .. ": "

  elseif index == #myTable1 then -- last case
    return acc .. value .. "."
  else
    return acc .. value .. ", "
  end
end, "")

local reducedTable2 = reduce(myTable2, function (acc, value, key)
  local semesterTotal = reduce(value, function (acc, value) return acc + value end, 0)
  return acc + semesterTotal
end, 0)

print(reducedTable1)
print(reducedTable2 / (4 * 4) ) -- average
```

<a name="filter"></a>
### filter
Create a table with filtered values from a table.

```lua
local filter = require "filter"
local myTable1 = { 30, 50, 312, 1, 24, 654, 23, 454, 53 }
local myTable2 = {
  hasName = true,
  test = true,
  I_Love_Books = false,
  LuaIsGood = true
}

local filteredTable1 = filter(myTable1, function (value, index) return value * 2 <= 1000 end)
local filteredTable2 = filter(myTable2, function (value, key) return value ~= true end)

print(filteredTable1[1])
print(filteredTable2["I_Love_Books"], filteredTable2["hasName"])
```

<a name="ternary"></a>
### ternary
Ternary operations with lua.

```lua
-- without ternary.lua
local value = 20
print(value <= 30 and "less than or equal to 30" or "more than 30")

-- with ternary.lua
local ternary = require "ternary"
local value = 543
print(ternary(value <= 30, "less than or equal to 30", "more than 30"))
```

<a name="split"></a>
### split
*split all chars/numbers* to a table.

```lua
local split = require "split"
local myString = "qwertyuiopasdfghjklçzxcvbnm"
local myNumber = 1234567890

local chars = split(myString)
local numbers = split(myNumber)

print(chars[math.random(1, #chars)]) -- random char
print(numbers[math.random(1, #numbers)]) -- random number
```
