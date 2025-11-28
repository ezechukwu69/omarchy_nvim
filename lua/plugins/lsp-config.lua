local function trim_trailing_newline(s)
  if s:sub(-1) == "\n" then
    return s:sub(1, -2)
  end
  return s
end

return
