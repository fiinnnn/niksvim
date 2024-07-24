{
  plugins = {
    lsp = {
      enable = true;
      inlayHints = true;
      servers = {
        gopls = { enable = true; };
        nil-ls = { enable = true; };
        zls = { enable = true; };
      };

      keymaps = {
        silent = true;
        lspBuf = {
          K = {
            action = "hover";
            desc = "Hover";
          };
          "<leader>cw" = {
            action = "workspace_symbol";
            desc = "Workspace symbol";
          };
          "<leader>cr" = {
            action = "rename";
            desc = "Rename";
          };
        };
        diagnostic = {
          "<leader>cd" = {
            action = "open_float";
            desc = "Line diagnostics";
          };
          "[d" = {
            action = "goto_next";
            desc = "Next diagnostic";
          };
          "]d" = {
            action = "goto_prev";
            desc = "Previous diagnostic";
          };
        };
      };
    };
  };
}
