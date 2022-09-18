local conf = require('user.my_plugin.config')

return {
    init = {
        {
            'rainbowhxch/accelerated-jk.nvim',
            config = conf.accelerated,
        },
        {
            "nvim-pack/nvim-spectre",
            config = conf.spectre,
            after = "plenary.nvim"
        },      
    },
    -- All other entries override the require("<key>").setup({...}) call for default plugins
    ["null-ls"] = function(config) -- overrides `require("null-ls").setup(config)`

        local null_ls = require "null-ls"
        config.sources = {
        -- Set a formatter
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.prettier,
        }
        -- set up null-ls's on_attach function
        -- NOTE: You can remove this on attach function to disable format on save
        config.on_attach = function(client)
        if client.resolved_capabilities.document_formatting then
            vim.api.nvim_create_autocmd("BufWritePre", {
            desc = "Auto format before save",
            pattern = "<buffer>",
            callback = vim.lsp.buf.formatting_sync,
            })
        end
        end
        return config -- return final config table to use in require("null-ls").setup(config)
    end,
    treesitter = { -- overrides `require("treesitter").setup(...)`
        ensure_installed = { "lua","c","cpp","python","verilog" },
    },
    -- use mason-lspconfig to configure LSP installations
    ["mason-lspconfig"] = { -- overrides `require("mason-lspconfig").setup(...)`
        ensure_installed = { "sumneko_lua" },
    },
    -- use mason-tool-installer to configure DAP/Formatters/Linter installation
    ["mason-tool-installer"] = { -- overrides `require("mason-tool-installer").setup(...)`
        ensure_installed = { "prettier", "stylua" },
    },
    -- ["which-key"]=conf.which_key,
    

      
    packer = { -- overrides `require("packer").setup(...)`
        compile_path = vim.fn.stdpath "data" .. "/packer_compiled.lua",
    },

}