return{
        -- enable servers that you already have installed without mason
        servers = {
            "pyright",
            "veridian",
            "clangd"
          },
          -- easily add or disable built in mappings added during LSP attaching
          mappings = {
            n = {
              -- ["<leader>lf"] = false -- disable formatting keymap
            },
          },
          -- add to the global LSP on_attach function
          -- on_attach = function(client, bufnr)
          -- end,
      
          -- override the mason server-registration function
          -- server_registration = function(server, opts)
          --   require("lspconfig")[server].setup(opts)
          -- end,
      

          -- ["server-settings"] = {

            
            -- Example disabling formatting for a specific language server
            -- gopls = { -- override table for require("lspconfig").gopls.setup({...})
            --   on_attach = function(client, bufnr)
            --     client.resolved_capabilities.document_formatting = false
            --   end
            -- }
          -- },
}