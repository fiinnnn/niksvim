{
  plugins.telescope = {
    enable = true;
    extensions = {
      file-browser = {
        enable = true;
      };
      fzf-native = {
        enable = true;
      };
    };
    settings = {
      defaults = {
        layout_config = {
          horizontal = {
            prompt_position = "top";
          };
        };
        sorting_strategy = "ascending";
      };
    };
    keymaps = {
      "<leader>ff" = {
        action = "find_files";
        options = {
          desc = "Project files";
        };
      };
      "<leader>fb" = {
        action = "buffers";
        options = {
          desc = "Buffer";
        };
      };
      "<leader>fd" = {
        action = "diagnostics";
        options = {
          desc = "Diagnostics";
        };
      };

      "<leader>/" = {
        action = "live_grep";
        options = {
          desc = "Live grep";
        };
      };

      "<leader>gc" = {
        action = "git_commits";
        options = {
          desc = "Git commits";
        };
      };
      "<leader>gs" = {
        action = "git_status";
        options = {
          desc = "Git status";
        };
      };
    };
  };
}
