local M = {}

-- Function to compact a path in fish shell style.
-- Example: /home/user/.config/nvim -> ~/.c/nvim
function M.compact_path(path)
  -- Replace the home directory with "~/" if the path starts with it
  local home = vim.fn.expand("~")
  if path:sub(1, #home) == home then
    path = "~" .. path:sub(#home + 1)
  end

  -- Split the path into components
  local components = {}
  for part in string.gmatch(path, "[^/]+") do
    table.insert(components, part)
  end

  -- Handle edge cases (empty path, single component path)
  if #components == 0 then
    return ""
  elseif #components == 1 then
    return components[1]
  end

  -- Abbreviate all but the last component
  for i = 1, #components - 1 do
    if components[i]:sub(1, 1) == "." then
      -- If the component starts with a dot, keep the first two characters
      components[i] = components[i]:sub(1, 2)
    else
      -- Otherwise, keep only the first letter
      components[i] = components[i]:sub(1, 1)
    end
  end

  -- Rejoin components with "/"
  return table.concat(components, "/")
end

return M
