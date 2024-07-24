{ pkgs, ... }:
{
  plugins.treesitter = {
    enable = true;
    folding = true;
    nixvimInjections = true;
    grammarPackages = pkgs.vimPlugins.nvim-treesitter.allGrammars;
    settings = {
      indent.enable = true;
    };
  };
}
