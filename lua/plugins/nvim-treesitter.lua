local setup, treesitter = pcall(require, "nvim-treesitter.configs")
if not setup then return end

vim.opt.foldmethod="expr"
vim.opt.foldexpr="nvim_treesitter#foldexpr()"
vim.opt.foldenable=false

treesitter.setup {
  ensure_installed = {
    "dockerfile",
    "gitignore",
    "go",
    "rust",
    "toml",
    "c_sharp",
    "gomod",
    "gowork",
    "javascript",
    "typescript",
    "json",
    "lua",
    "markdown",
    "proto",
    "python",
    "rego",
    "ruby",
    "sql",
    "svelte",
    "yaml",
  },
  indent = {
    enable = true,
  },
  rainbow = {
        enable = true,
        extended_mode = true,
        max_file_lines = nil,
  },
  auto_install = true,
  sync_install = false,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting=false,
    disable = { "markdown" },
  --   -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
  --   -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
  --   -- Using this option may slow down your editor, and you may see some duplicate highlights.
  --   -- Instead of true it can also be a list of languages
  --   additional_vim_regex_highlighting = false,
  },
}
