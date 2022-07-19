function Split(str)
  local chars = {}
  string.gsub(tostring(str), ".", function (char) table.insert(chars, char) end)
  return chars
end

return Split
