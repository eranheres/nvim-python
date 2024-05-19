-- bootstrap lazy.nvim, LazyVim and your plugins
-- Define an autocommand group to avoid duplication
local config_path = vim.fn.stdpath("config")
local path_to_repo = config_path .. "/lua/common"
vim.g.pull_command = "git --git-dir=" .. path_to_repo .. "/.git --work-tree=" .. path_to_repo .. " pull"
vim.fn.system(vim.g.pull_command)

require("config.lazy")
