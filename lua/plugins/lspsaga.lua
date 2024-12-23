return {
    "nvimdev/lspsaga.nvim",
    event = "BufRead",
    config = function()
        require("lspsaga").setup({
            code_action = {
                enable = true,
                keys = {
                    exec = "<CR>", -- Confirm selection
                    quit = "<Esc>", -- Exit menu
                },
            },
        })
    end,
}
