function Map(t, callback)
  local result = {}

  -- Array's
  if t[1] ~= nil then
    for index, value in ipairs(t) do
      table.insert(result, callback(value, index))
    end
  -- Object's
  else
    for key, value in pairs(t) do
      result[key] = callback(value, key)
    end
  end

  return result
end

return Map
