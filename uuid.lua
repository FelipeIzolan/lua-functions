--[[
  x = A char in lowercase
  y = A char in uppercase
  z = A number
--]]

local split = require "scripts.misc.split"
local char_lowercase = split("qwertyuiopasdfghjklzxcvbnm")
local char_uppercase = split("QWERTYUIOPASDFGHJKLZXCVBNM")
local char_number = split("1234567890")
local char = {"x", "y", "z"}

function Template()
  local template = ""

  for i = 1, 36, 1 do
    if i == 9 or i == 14 or i == 19 or i == 24 then
      template = template .. "-"
    else
      template = template .. char[math.random(1, #char)]
    end
  end

  return template
end

function Id()
  local template = Template()
  local id = string.gsub(template, ".", function(c)
    if c == "x" then return char_lowercase[math.random(1, #char_lowercase)] end
    if c == "y" then return char_uppercase[math.random(1, #char_uppercase)] end
    if c == "z" then return char_number[math.random(1, #char_number)] end
  end)

  return id
end

return Id, Template
