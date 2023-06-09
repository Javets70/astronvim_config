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
    "img-paste-devs/img-paste.vim",
    ft = "markdown",
    keys = {
      {
        "<leader>pp",
        ":call mdip#MarkdownClipboardImage()<CR>",
        mode = "n",
        desc = "Paste image",
        buffer = true,
        silent = true,
      },
    },
  },
  {
    "dhruvasagar/vim-table-mode",
    ft = { "markdown", "text" },
  },
  {
    "lervag/vimtex",
    ft = { "markdown" },
    lazy = false,
    config = function()
      vim.cmd ":call vimtex#init()"
      vim.g.vimtex_complete_enabled = 1
    end,
  },
}
