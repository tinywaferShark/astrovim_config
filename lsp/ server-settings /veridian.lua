return{
    settings = {
        ["veridian"]={
            single_filesupport = true,
            root_dir = function()
                return vim.fn.getcwd()
                end,
          },
    }
}