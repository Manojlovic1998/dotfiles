require('base')
require('highlights')

local has = function(x)
  return vim.fn.has(x) == 1
end


local is_unix = has "macunix"
local is_win = has "win32"

if is_unix then
  require('unix')
end

if is_win then
  require('windows')
end
