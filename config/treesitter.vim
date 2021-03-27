lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = { "rust", "go", "python", "typescript", "cpp" },
  highlight = {
    enable = true,
  },
}
EOF
