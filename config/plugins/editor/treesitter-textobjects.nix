{
  plugins.treesitter-textobjects = {
    enable = true;
    select = {
      enable = true;
      lookahead = true;
      keymaps = {
        "aa" = "@parameter.outer";
        "ia" = "@parameter.inner";

        "af" = "@function.outer";
        "if" = "@function.inner";

        "ac" = "@class.outer";
        "ic" = "@class.inner";

        "ai" = "@conditional.outer";
        "ii" = "@conditional.inner";

        "al" = "@loop.outer";
        "il" = "@loop.inner";

        "at" = "@comment.outer";
      };
    };
    move = {
      enable = true;
      gotoNextStart = {
        "]m" = "@function.outer";
        "]]" = "@class.outer";
      };
      gotoNextEnd = {
        "]M" = "@function.outer";
        "][" = "@class.outer";
      };
      gotoPreviousStart = {
        "[m" = "@function.outer";
        "[]" = "@class.outer";
      };
      gotoPreviousEnd = {
        "[M" = "@function.outer";
        "[[" = "@class.outer";
      };
    };
    swap = {
      enable = true;
      swapNext = {
        "<leader>a" = "@parameter.inner";
      };
      swapPrevious = {
        "<leader>A" = "@parameter.outer";
      };
    };
  };
}
