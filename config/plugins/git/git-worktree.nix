{
  plugins.git-worktree = {
    enable = true;
    enableTelescope = true;
  };

  extraConfigLua = ''
    local Worktree = require('git-worktree')

    Worktree.on_tree_change(function(op, metadata)
      local Path = require('plenary.path')
      if op == Worktree.Operations.Create then
        local path = metadata.path
        if not Path:new(path):is_absolute() then
          path = Path:new():absolute()
          if path:sub(-#"/") == "/" then
            path = string.sub(path, 1, string.len(path) - 1)
          end
        end

        local worktree_path = path .. "/" .. metadata.path .. "/"
        local gitignored_path = path .. "/gitignored"

        local find_dirs = "find " .. gitignored_path .. " -mindepth 1 -depth -type d -printf '%P\n'"
        local create_dirs = find_dirs .. "| while read dir; do mkdir -p " .. worktree_path .. "$dir; done"
        os.execute(create_dirs)

        local find_files = "find " .. gitignored_path .. " -type f -printf '%P\n'"
        local link_files = find_files .. "| while read file; do ln -s " .. gitignored_path .. "/$file " .. worktree_path .. "$file done"
        os.execute(link_files)
      end
    end)
  '';

  keymaps = [
    {
      mode = "n";
      key = "<leader>gw";
      action = "worktree+";
    }
    {
      mode = "n";
      key = "<leader>gwc";
      action = "<cmd>lua require('telescope').extensions.git_worktree.create_git_worktree()<cr>";
      options = { desc = "Create worktree"; };
    }
    {
      mode = "n";
      key = "<leader>gwl";
      action = "<cmd>lua require('telescope').extensions.git_worktree.git_worktrees()<cr>";
      options = { desc = "List worktrees"; };
    }
  ];
}
