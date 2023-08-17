return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
    "github/copilot.vim",
    lazy=false,
    config = function()
    --  vim.g.copilot_keymap = '<C-a>'
      vim.g.copilot_no_tab_map = true

      local keymap = vim.keymap.set

      keymap(
        "i",
        "<C-j>",
        'copilot#Accept("<CR>")',
        {
          silent = true, expr = true, script = true, replace_keycodes = false
        }
      )
    end,
  },
}
