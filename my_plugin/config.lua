local config = {}

function config.telescope()
  if not packer_plugins['plenary.nvim'].loaded then
    vim.cmd([[packadd plenary.nvim]])
    vim.cmd([[packadd popup.nvim]])
    vim.cmd([[packadd telescope-fzy-native.nvim]])
    vim.cmd([[packadd telescope-file-browser.nvim]])
  end
  require('telescope').setup({
    defaults = {
      layout_config = {
        horizontal = { prompt_position = 'top', results_width = 0.6 },
        vertical = { mirror = false },
      },
      sorting_strategy = 'ascending',
      file_previewer = require('telescope.previewers').vim_buffer_cat.new,
      grep_previewer = require('telescope.previewers').vim_buffer_vimgrep.new,
      qflist_previewer = require('telescope.previewers').vim_buffer_qflist.new,
    },
    extensions = {
      fzy_native = {
        override_generic_sorter = false,
        override_file_sorter = true,
      },
    },
  })
  require('telescope').load_extension('fzy_native')
end

function config.accelerated()
  vim.api.nvim_set_keymap('n', 'j', '<Plug>(accelerated_jk_gj)', {})
  vim.api.nvim_set_keymap('n', 'k', '<Plug>(accelerated_jk_gk)', {})
end



function config.better_escape()
  require("better_escape").setup {
    mapping = {"jj"}, -- a table with mappings to use
    timeout = vim.o.timeoutlen, -- the time in which the keys must be hit in ms. Use option timeoutlen by default
    clear_empty_lines = false, -- clear line after escaping if there is only whitespace
    keys = "<Esc>", -- keys used for escaping, if it is a function will use the result everytime
    -- example(recommended)
    -- keys = function()
    --   return vim.api.nvim_win_get_cursor(0)[2] > 1 and '<esc>l' or '<esc>'
    -- end,
}
end
function config.hlslens()
  require("hlslens").setup(
    {
        calm_down = true,
        nearest_only = false
    }
)
end

function config.hop()
  require("hop").setup({keys = "asdfjklqweruiop"})
end

-- function config.plenary()
--   require("hop").setup({keys = "asdfjklqweruiop"})
-- end

function config.spectre()
  require("spectre").setup(
)
end

function config.surround()
  require("surround").setup(
    {
        mappings_style = "surround",
        space_on_closing_char = true
    }
)
end

function config.impatient()
  require("impatient")
end

function config.window_picker()
  require'window-picker'.setup()
end

function config.AutoSave()
  require("autosave").setup(
)
end




return config