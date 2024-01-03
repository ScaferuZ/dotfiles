-- vim options
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.relativenumber = true

-- general
lvim.log.level = "info"
lvim.format_on_save = {
  enabled = true,
  pattern = "*.lua",
  timeout = 1000,
}

vim.o.termguicolors = true
vim.opt.wrap = true
vim.o.background = "dark"
lvim.colorscheme = "base16-gruvbox-dark-hard"

-- keymappings <https://www.lunarvim.org/docs/configuration/keybindings>
lvim.leader = "space"
-- add your own keymapping
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.normal_mode["<tab>"] = ":bn<cr>"
lvim.keys.normal_mode["<s-tab>"] = ":bp<cr>"
vim.cmd([[
  imap <silent><script><expr> <C-j> copilot#Accept("\<CR>")
  inoremap ii <esc>
  vnoremap < <gv
  vnoremap > >gv
]])

lvim.builtin.terminal.open_mapping = "<C-t>"
lvim.builtin.which_key.mappings["S"] = {
  name = "Session",
  c = { "<cmd>lua require('persistence').load()<cr>", "Restore last session for current dir" },
  l = { "<cmd>lua require('persistence').load({ last = true })<cr>", "Restore last session" },
  Q = { "<cmd>lua require('persistence').stop()<cr>", "Quit without saving session" },
}

lvim.builtin.which_key.mappings["t"] = {
  name = "Diagnostics",
  t = { "<cmd>TroubleToggle<cr>", "trouble" },
  w = { "<cmd>TroubleToggle workspace_diagnostics<cr>", "workspace" },
  d = { "<cmd>TroubleToggle document_diagnostics<cr>", "document" },
  q = { "<cmd>TroubleToggle quickfix<cr>", "quickfix" },
  l = { "<cmd>TroubleToggle loclist<cr>", "loclist" },
  r = { "<cmd>TroubleToggle lsp_references<cr>", "references" },
}

-- plugins

lvim.plugins = {
  -- general
  {
    "folke/trouble.nvim",
    cmd = "TroubleToggle",
  },
  {
    'andweeb/presence.nvim',
    config = function()
      require("presence"):setup({
        auto_update        = true,
        neovim_image_text  = "I use Arch btw",
        main_image         = "file",
        enable_line_number = true,

      })
    end
  },

  -- navigation
  {
    "phaazon/hop.nvim",
    event = "BufRead",
    config = function()
      require("hop").setup()
      vim.api.nvim_set_keymap("n", "s", ":HopChar2<cr>", { silent = true })
      vim.api.nvim_set_keymap("n", "S", ":HopWord<cr>", { silent = true })
    end,
  },

  -- session
  {
    "folke/persistence.nvim",
    event = "BufReadPre", -- this will only start session saving when an actual file was opened
    lazy = "persistence",
    config = function()
      require("persistence").setup {
        dir = vim.fn.expand(vim.fn.stdpath "config" .. "/session/"),
        options = { "buffers", "curdir", "tabpages", "winsize" },
      }
    end,
  },
  {
    "ethanholz/nvim-lastplace",
    event = "BufRead",
    config = function()
      require("nvim-lastplace").setup({
        lastplace_ignore_buftype = { "quickfix", "nofile", "help" },
        lastplace_ignore_filetype = {
          "gitcommit", "gitrebase", "svn", "hgcommit",
        },
        lastplace_open_folds = true,
      })
    end,
  },

  -- LSP enhancement
  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function() require "lsp_signature".on_attach() end,
  },
  {
    "mfussenegger/nvim-jdtls",
  },

  -- colorscheme
  -- { 'morhetz/gruvbox' },
  -- { 'franbach/miramare' },
  -- { 'arcticicestudio/nord-vim' },
  -- { 'shatur/neovim-ayu' },
  -- { 'folke/tokyonight.nvim' },
  -- { 'tinted-theming/base16-vim' },
  { 'RRethy/nvim-base16' },
  { 'ellisonleao/gruvbox.nvim' },

}

local cmd = vim.cmd
local g = vim.g

local current_theme_name = os.getenv('BASE16_THEME')
if current_theme_name and g.colors_name ~= 'base16-' .. current_theme_name then
  cmd('let base16colorspace=256')
  cmd('colorscheme base16-' .. current_theme_name)
end

table.insert(lvim.plugins, {
  "zbirenbaum/copilot-cmp",
  event = "InsertEnter",
  dependencies = { "zbirenbaum/copilot.lua" },
  config = function()
    vim.defer_fn(function()
      require("copilot").setup()     -- https://github.com/zbirenbaum/copilot.lua/blob/master/README.md#setup-and-configuration
      require("copilot_cmp").setup() -- https://github.com/zbirenbaum/copilot-cmp/blob/master/README.md#configuration
    end, 100)
  end,
})


-- formatters/linters
-- lvim.format_on_save = true

-- local formatters = require "lvim.lsp.null-ls.formatters"
-- formatters.setup {
--   {
--     command = "clang-format",
--     filetypes = { " java " },
--   }
-- }
