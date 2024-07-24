{
  config = {
    opts = {
      number = true;
      relativenumber = true;

      expandtab = true;

      smartindent = true;
      shiftwidth = 2;
      softtabstop = 2;
      tabstop = 2;
      showtabline = 2;

      breakindent = true;
      copyindent = true;

      foldcolumn = "0";
      foldenable = true;
      foldlevel = 99;
      foldlevelstart = 99;

      hlsearch = true;
      incsearch = true;

      wrap = false;

      splitbelow = true;
      splitright = true;

      ignorecase = true;
      smartcase = true;

      updatetime = 50;

      completeopt = [ "menuone" "noselect" "noinsert" ];

      swapfile = false;
      backup = false;
      undofile = true;

      termguicolors = true;

      scrolloff = 8;

      timeoutlen = 10;

      encoding = "utf-8";
      fileencoding = "utf-8";

      cmdheight = 0;

      confirm = true;
    };

    luaLoader.enable = true;

    clipboard.register = "unnamedplus";

    extraConfigLuaPre = ''
      vim.diagnostic.config({
        signs = {
          text = {
            [vim.diagnostic.severity.ERROR] = '',
            [vim.diagnostic.severity.WARN] = '',
            [vim.diagnostic.severity.INFO] = '',
            [vim.diagnostic.severity.HINT] = '󰝶',
          }
        }
      })
    '';
  };
}
