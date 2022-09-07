require('bufferline').setup()

M = {}

M.close_all_other = function ()
  local bf = require("bufferline")
  bf.close_in_direction("left")
  bf.close_in_direction("right")
end

return M
