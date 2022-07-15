function ForEach (t, callback, ...)
  -- Array's
  if t[1] ~= nil then
    for index, value in ipairs(t) do
      callback(value, index, ...)
    end
  -- Object's
  else
    for key, value in pairs(t) do
      callback(value, key, ...)
    end
  end
end

return ForEach
