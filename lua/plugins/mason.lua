return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        --"mypy",
        --"ruff",
        "pyright",
      },
    },
  },
}
