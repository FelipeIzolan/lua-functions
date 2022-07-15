function Reduce(t, callback, initial)
  local accumulator = initial

  -- Array's
  if t[1] ~= nil then
    for index, value in ipairs(t) do
      accumulator = callback(accumulator, value, index)
    end
  -- Object's
  else
    for key, value in pairs(t) do
      accumulator = callback(accumulator, value, key)
    end
  end

  return accumulator
end

return Reduce
