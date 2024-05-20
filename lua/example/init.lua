local M = {}

function M.setup(opts)
   opts = opts or {}

   vim.keymap.set("n", "<Leader>9", function()
      if opts.name then
         print("hello, " .. opts.name)
      else
         print("Hallo Gabi")
      end
   end)
end

return M
