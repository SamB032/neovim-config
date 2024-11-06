return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "go", "python", "yaml", "terraform"
      },
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
        disable = function(_, buf)
          -- Disable Treesitter highlighting for large files
          local max_filesize = 100 * 1024 -- 100 KB
          local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
          if ok and stats and stats.size > max_filesize then
            return true
          end
        end,
      },
      indent = {
        enable = true
      },
    },
    build = ":TSUpdate",
  },
}
