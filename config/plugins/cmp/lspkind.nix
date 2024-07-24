{
  plugins.lspkind = {
    enable = true;
    cmp = {
      enable = true;
      after = ''
        function(entry, vim_item, kind)
          local strings = vim.split(kind.kind, "%s", { trimempty = true })
          kind.kind = " " .. (strings[1] or "") .. " "
          kind.menu = "    (" .. (strings[2] or "") .. ")"
          return kind
        end
      '';
    };
    extraOptions = {
      maxwidth = 50;
      ellipsis_char = "...";
    };
  };
}
