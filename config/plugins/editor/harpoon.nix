{
  plugins.harpoon = {
    enable = true;
    enableTelescope = true;
    keymapsSilent = true;
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>ha";
      action = "<cmd>lua require('harpoon.mark').add_file()<cr>";
      options = { desc = "Add file"; };
    }
    {
      mode = "n";
      key = "<leader>he";
      action = "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>";
      options = { desc = "Toggle quick menu"; };
    }
    {
      mode = "n";
      key = "<C-h>";
      action = "<cmd>lua require('harpoon.ui').nav_file(1)<cr>";
      options = { desc = "Select file 1"; };
    }
    {
      mode = "n";
      key = "<C-j>";
      action = "<cmd>lua require('harpoon.ui').nav_file(2)<cr>";
      options = { desc = "Select file 2"; };
    }
    {
      mode = "n";
      key = "<C-k>";
      action = "<cmd>lua require('harpoon.ui').nav_file(3)<cr>";
      options = { desc = "Select file 3"; };
    }
    {
      mode = "n";
      key = "<C-l>";
      action = "<cmd>lua require('harpoon.ui').nav_file(4)<cr>";
      options = { desc = "Select file 4"; };
    }
  ];
}
