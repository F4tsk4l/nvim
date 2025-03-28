return {
  "lervag/vimtex",
  lazy = false, -- lazy-loading will disable inverse search
  config = function()
    -- vim.g.maplocalleader = ","
    vim.g.vimtex_quickfix_method = vim.fn.executable("pplatex") == 1 and "pplatex" or "latexlog"
    -- vim.g.vimtex_compiler_method = "latexrun"
    vim.g.vimtex_compiler_engine = "xelatex"
    vim.g.vimtex_view_method = "zathura"
  end,
  keys = {
    { "<localLeader>l", "", desc = "+vimtex", ft = "tex" },
  },
}
