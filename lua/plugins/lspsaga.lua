return {
    "nvimdev/lspsaga.nvim",
    event = "BufRead",
    config = function()
        require("lspsaga").setup({
            lightbulb = {
                enable = false, -- Disable the lightbulb feature entirely
            },
            diagnostic = {
                enable = false, -- Disable diagnostic UI
            },
            hover = {
                enable = false, -- Disable hover docs
            },
            rename = {
                enable = false, -- Disable rename functionality
            },
            outline = {
                enable = false, -- Disable outline
            },
            code_action = {
                enable = true, -- Enable only code actions
                keys = {
                    exec = "<CR>", -- Confirm selection
                    quit = "<Esc>", -- Exit menu
                },
            },
        })
    end,
}
