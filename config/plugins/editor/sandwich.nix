{
  plugins.sandwich = {
    enable = true;
    settings = {
      no_default_key_mappings = true;
    };
  };

  keymaps = [
    {
      mode = [ "n" "x" "o" ];
      key = "<leader>sa";
      action = "<Plug>(sandwich-add)";
    }
    {
      mode = [ "n" "x" ];
      key = "<leader>sd";
      action = "<Plug>(sandwich-delete)";
    }
    {
      mode = [ "n" ];
      key = "<leader>sdb";
      action = "<Plug>(sandwich-delete-auto)";
    }
    {
      mode = [ "n" "x" ];
      key = "<leader>sr";
      action = "<Plug>(sandwich-replace)";
    }
    {
      mode = [ "n" ];
      key = "<leader>srb";
      action = "<Plug>(sandwich-replace-auto)";
    }
  ];
}
