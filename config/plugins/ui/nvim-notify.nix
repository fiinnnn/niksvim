{
  plugins.notify = {
    enable = true;
    fps = 60;
    render = "default";
    timeout = 1000;
    topDown = true;
  };
  keymaps = [
    {
      mode = "n";
      key = "<leader>un";
      action = ''
        <cmd>lua require("notify").dismiss({silent = true, pending = true})<cr>
      '';
      options = {
        desc = "Dismiss all notifications";
      };
    }
  ];
}
