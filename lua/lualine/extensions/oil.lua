-- Extension for oil.nvim

local M = {}

M.sections = {
  lualine_a = {
    function()
      local ok, oil = pcall(require, 'oil')
      if ok then
        return vim.fn.fnamemodify(oil.get_current_dir(), ':~')
      else
        return ''
      end
    end,
  },
  lualine_b = {
      "branch",
  },
}

M.filetypes = { 'oil' }

return M
