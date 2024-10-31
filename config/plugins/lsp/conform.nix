{
  plugins.conform-nvim = {
    enable = true;
    settings = {
      notify_on_error = true;

      formatters_by_ft = {
        nix = [ "nixpkgs-fmt" ];
        python = [ "black" ];
        rust = [ "rustfmt" ];
      };
    };
  };

  keymaps = [
    {
      mode = [ "n" "v" ];
      key = "<leader>cf";
      action = "<cmd>lua require('conform').format({lsp_fallback = true, async = false, timeout_ms = 500})<cr>";
      options = { desc = "Format"; };
    }
  ];
}
