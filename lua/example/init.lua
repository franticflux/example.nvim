local M = {}

function M.setup(opts)
   opts = opts or {}

   vim.keymap.set("n", "<Leader>9", function()
      if opts.name then
         require("example.core").show_popup({opts.name})
      else
         print("Hallo Gabi")
      end
   end)
end

return M
