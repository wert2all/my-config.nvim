return {
'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  dependencies = {
    'nvim-treesitter/nvim-treesitter-textobjects',
  },
  config = function()
    require('nvim-treesitter.configs').setup({
        ensure_installed = {
              "bash",
              "css",
              "diff",
              "dockerfile",
              "html",
              "gitignore",
              "graphql",
              "javascript",
              "jsdoc",
              "json",
              "lua",
              "luadoc",
              "php",
              "scss",
              "tsx",
              "typescript",
              "vim",
              "vimdoc",
              "yaml",
              "go",
        },

 -- Autoinstall languages that are not installed
      auto_install = true,

      highlight = { enable = true },
      indent = { enable = true },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = '<c-space>',
          node_incremental = '<c-space>',
          scope_incremental = '<c-s>',
          node_decremental = '<M-space>',
        },
      },
    })
  end
}
