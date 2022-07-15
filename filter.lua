function Filter(t, callback)
  local result = {}

  -- Array's
  if t[1] ~= nil then
    for index, value in ipairs(t) do
      if callback(value, index) == true then
        table.insert(result, value)
      end
    end
  -- Object's
  else
    for key, value in pairs(t) do
      if callback(value, key) == true then
        result[key] = value
      end
    end
  end

  return result
end

return Filter
