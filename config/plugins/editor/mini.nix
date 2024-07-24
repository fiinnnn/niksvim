{
  plugins.mini = {
    enable = true;

    modules = {
      indentscope = {
        symbol = "▏";
        options = {
          try_as_border = true;
        };
        draw = {
          animation.__raw = "require('mini.indentscope').gen_animation.none()";
        };
      };
    };
  };
}
