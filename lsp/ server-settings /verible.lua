return{
    settings = {
        ["verible"]={
            single_filesupport = true,
            root_dir = function()
                return vim.fn.getcwd()
                end,
            handlers = {['textDocument/publishDiagnostics'] = function(...) end,},
          },
    }
}