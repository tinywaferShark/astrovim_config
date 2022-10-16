return {
    ["nvim-pack/nvim-spectre"]={
        config = function()
            require "user.plugins.nvim-spectre"
          end,
    },
    ['rainbowhxch/accelerated-jk.nvim']
    ={
        -- config = conf.accelerated,
        config = function ()
            vim.api.nvim_set_keymap('n', 'j', '<Plug>(accelerated_jk_gj)', {})
            vim.api.nvim_set_keymap('n', 'k', '<Plug>(accelerated_jk_gk)', {})
        end
    },
    ["phaazon/hop.nvim"] = {
        branch = "v1", -- optional but strongly recommended
        event = "BufRead",
        config = function()
          require("hop").setup()
        end,
      },
    --高亮找到的所有内容 并且显示这是第几个
    ["kevinhwang91/nvim-hlslens"] = {
        config = function()
            require("hlslens").setup
                {
                    calm_down = true,
                    nearest_only = false
                }
        end,
      },
    -- ["declancm/cinnamon.nvim"] = { disable = true }, -- 关闭滚动屏幕
}
