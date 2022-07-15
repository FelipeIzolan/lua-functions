function Split(str)
  local chars = {}
  str:gsub(".", function(c) table.insert(chars, c) end)
  return chars
end

return Split
