{
  plugins.rustaceanvim = {
    enable = true;
    settings = {
      default_settings = {
        rust_analyzer = {
          check = {
            command = "clippy";
          };

          diagnostics = {
            enable = true;
            styleLints.enable = true;
          };

          inlayHints = {
            bindingModeHints.enable = true;
            closureStyle = "rust_analyzer";
            closureReturnTypeHints.enable = "always";
            discriminantHints.enable = "always";
            expressionAdjustmentsHints.enable = "always";
            implicitDrops.enable = true;
            lifetimeElisionHints.enable = "always";
            rangeExclusiveHints.enable = true;
          };

          files = {
            excludeDirs = [
              ".cargo"
              ".direnv"
              ".git"
              "target"
            ];
          };

          procMacro = {
            enable = true;
          };
        };
      };
    };
  };
}
