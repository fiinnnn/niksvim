{
  plugins.bufferline = {
    enable = true;
    separatorStyle = "thick";
  };

  keymaps = [
    {
      mode = "n";
      key = "<S-l>";
      action = "<cmd>BufferLineCycleNext<cr>";
      options = { desc = "Cycle to next buffer"; };
    }
    {
      mode = "n";
      key = "<S-h>";
      action = "<cmd>BufferLineCyclePrev<cr>";
      options = { desc = "Cycle to prev buffer"; };
    }
    {
      mode = "n";
      key = "<leader>bd";
      action = "<cmd>bdelete<cr>";
      options = { desc = "Delete buffer"; };
    }
  ];
}
