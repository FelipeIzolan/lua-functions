--[[
  uuid - v4
  x = A char in lowercase
  y = A char in uppercase
  z = A number
--]]

local split = require "split"

local lowercase = split("qwertyuiopasdfghjklzxcvbnm")
local uppercase = split("QWERTYUIOPASDFGHJKLZXCVBNM")
local number = split("1234567890")
local template_char = {"x", "y", "z"}

function Template()
  local template = ""

  for i = 1, 36, 1 do
    if i == 9 or i == 14 or i == 19 or i == 24 then
      template = template .. "-"
    else
      template = template .. template_char[math.random(1, #template_char)]
    end
  end

  return template
end

function Uuid()
  local template = Template()
  local id = string.gsub(template, ".", function(c)
    if c == "x" then return lowercase[math.random(1, #lowercase)] end
    if c == "y" then return uppercase[math.random(1, #uppercase)] end
    if c == "z" then return number[math.random(1, #number)] end
  end)

  return id
end

return Uuid, Template
