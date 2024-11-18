local M = {}

function M.setup(opts)
   opts = opts or {}

   vim.keymap.set("n", "<Leader>9", function()
      if opts.name then
         require("M.core").show_popup({"Vajpers"})
      else
         print("Hallo Gabi")
      end
   end)
end

return M
