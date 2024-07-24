{ pkgs, ... }:
{
  # TODO: reenable when which-key is updated to v3
  # plugins.which-key = {
  #   enable = true;
  # };

  extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin {
      name = "which-key";
      src = pkgs.fetchFromGitHub {
        owner = "folke";
        repo = "which-key.nvim";
        rev = "4d5b8959fd2a4df065ff76ccb39019aaa70cb0dc";
        hash = "sha256-BI8ywHaofcWrtIO/r9AsYHuI66f407NdZJYaJeRbij0=";
      };
    })
  ];

  extraConfigLua = ''
    local wk = require("which-key")
    wk.setup({
      preset = "helix"
    })

    wk.add({
      { "<leader>b", group = "buffer" },
      { "<leader>f", group = "find" },
      { "<leader>c", group = "code" },
      { "<leader>g", group = "git" },
      { "<leader>h", group = "harpoon" },
      { "<leader>s", group = "surround" },
      { "<leader>t", group = "trouble" },
    })
  '';
}
