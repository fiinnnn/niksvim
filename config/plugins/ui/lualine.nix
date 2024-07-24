{
  plugins.lualine = {
    enable = true;
    globalstatus = true;
    extensions = [
      "neo-tree"
    ];
    disabledFiletypes = {
      statusline = [ "dashboard" ];
    };
    componentSeparators = {
      left = "";
      right = "";
    };
    sectionSeparators = {
      left = "";
      right = "";
    };
    theme = {
      normal = {
        a = {
          bg = "#b4befe";
          fg = "#1c1d21";
        };
        b.bg = "nil";
        c.bg = "nil";
        z.bg = "nil";
        y.bg = "nil";
      };
    };
    sections = {
      lualine_a = [
        {
          name = "mode";
          fmt = "string.lower";
        }
      ];
      lualine_b = [
        {
          name = "branch";
          icon = "";
        }
        "diff"
      ];
      lualine_c = [
        {
          name = "diagnostics";
          extraConfig = {
            symbols = {
              error = " ";
              warn = " ";
              info = " ";
              hint = "󰝶 ";
            };
          };
        }
      ];

      lualine_x = [
        {
          name = "filetype";
          extraConfig = {
            icon_only = true;
          };
        }
      ];
      lualine_y = [
        {
          name = "filename";
          extraConfig = {
            symbols = {
              modified = "";
              readonly = "";
              unnamed = "";
            };
          };
          separator.left = "";
        }
      ];
      lualine_z = [
        {
          name = "location";
        }
      ];
    };
  };
}
