{
  imports = [
    # General config
    ./autocmds.nix
    ./settings.nix
    ./keymaps.nix
    ./colorscheme.nix

    # Completion
    ./plugins/cmp/cmp.nix
    ./plugins/cmp/lspkind.nix
    ./plugins/cmp/luasnip.nix

    # Editor plugins
    ./plugins/editor/comment.nix
    ./plugins/editor/flash.nix
    ./plugins/editor/harpoon.nix
    ./plugins/editor/illuminate.nix
    ./plugins/editor/indent-blankline.nix
    ./plugins/editor/mini.nix
    ./plugins/editor/neo-tree.nix
    ./plugins/editor/nvim-autopairs.nix
    ./plugins/editor/sandwich.nix
    ./plugins/editor/treesitter.nix
    ./plugins/editor/treesitter-textobjects.nix

    # UI plugins
    ./plugins/ui/bufferline.nix
    ./plugins/ui/lualine.nix
    ./plugins/ui/nvim-notify.nix
    ./plugins/ui/telescope.nix
    ./plugins/ui/todo-comments.nix
    ./plugins/ui/twilight.nix
    ./plugins/ui/which-key.nix
    ./plugins/ui/zen-mode.nix

    # LSP
    ./plugins/lsp/conform.nix
    ./plugins/lsp/lsp.nix
    ./plugins/lsp/lspsaga.nix
    ./plugins/lsp/fidget.nix
    ./plugins/lsp/trouble.nix

    # Git
    ./plugins/git/git-worktree.nix
    ./plugins/git/gitsigns.nix

    # Language-specific plugins
    ./plugins/lang/rust/rustaceanvim.nix
  ];
}
