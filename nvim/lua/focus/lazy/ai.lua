return {
    {
        "supermaven-inc/supermaven-nvim",
        config = function()
            require("supermaven-nvim").setup({
                keymaps = {
                    accept_suggestion = "<Tab>",
                    clear_suggestion = "<C-q>",
                    accept_word = "<C-w>",
                },
            })
            vim.keymap.set("n", "<leader>s", "<cmd>SupermavenToggle<CR>", {
                desc = "Toggle Supermaven",
            })
        end,
    },
}
