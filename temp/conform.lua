return {
  "stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },
  opts = {
    -- Define your formatters
    formatters_by_ft = {
      python = { "isort", "black" },
      json = { "prettier" },
      markdown = { "prettier" },
      lua = { "stylua" },
    },
    -- Set up format - on - save
    --format_on_save = { timeout_ms = 500, lsp_fallback = true },
    log_level = vim.log.levels.ERROR,
    -- Customize formatters
  },
  keys = {
    {
      -- Customize or remove this keymap to your liking
      "<leader>mp",
      function()
        require("conform").format({
          lsp_fallback = true,
          async = false,
          timeout_ms = 500,
        })
      end,
      mode = "",
      desc = "Format file or range (visual mode)",
    },
  },
}
