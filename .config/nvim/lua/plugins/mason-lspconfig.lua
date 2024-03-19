local opts = {
  ensure_installed = {
      "efm",
      "lua_ls",
  },
  automatic_installation = true,
}

return {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    opts = opts,
    event = "BufReadPre",
}
