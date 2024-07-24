{
  plugins.trouble = {
    enable = true;
    settings = {
      focus = true;
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "gd";
      action = "<cmd>Trouble lsp_definitions<cr>";
      options = {
        desc = "Go to definition";
      };
    }
    {
      mode = "n";
      key = "gr";
      action = "<cmd>Trouble lsp_references<cr>";
      options = {
        desc = "Go to references";
      };
    }
    {
      mode = "n";
      key = "gD";
      action = "<cmd>Trouble lsp_declarations<cr>";
      options = {
        desc = "Go to declaration";
      };
    }
    {
      mode = "n";
      key = "gI";
      action = "<cmd>Trouble lsp_implementations<cr>";
      options = {
        desc = "Go to implementations";
      };
    }
    {
      mode = "n";
      key = "gT";
      action = "<cmd>Trouble lsp_type_definitions<cr>";
      options = {
        desc = "Go to type definitions";
      };
    }
    {
      mode = "n";
      key = "gi";
      action = "<cmd>Trouble lsp_incoming_calls<cr>";
      options = {
        desc = "Go to incoming calls";
      };
    }
    {
      mode = "n";
      key = "go";
      action = "<cmd>Trouble lsp_outgoing_calls<cr>";
      options = {
        desc = "Go to outgoing calls";
      };
    }

    {
      mode = "n";
      key = "<leader>td";
      action = "<cmd>Trouble diagnostics toggle<cr>";
      options = {
        desc = "Toggle diagnostics";
      };
    }
    {
      mode = "n";
      key = "<leader>ts";
      action = "<cmd>Trouble symbols toggle<cr>";
      options = {
        desc = "Toggle symbols";
      };
    }
  ];
}
