function Switch(value, cases)
  for case, callback in pairs(cases) do
    if case == tostring(value) then
      callback()
    end
  end
end

return Switch
