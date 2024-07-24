{
  plugins.todo-comments = {
    enable = true;
  };

  keymaps = [
    {
      mode = "n";
      key = "]t";
      action = "<cmd>lua require('todo-comments').jump_next()<cr>";
      options = { desc = "Next todo comment"; };
    }
    {
      mode = "n";
      key = "[t";
      action = "<cmd>lua require('todo-comments').jump_prev()<cr>";
      options = { desc = "Previous todo comment"; };
    }
    {
      mode = "n";
      key = "<leader>tt";
      action = "<cmd>Trouble todo toggle<cr>";
      options = { desc = "Toggle todo comments"; };
    }
  ];
}
