vim.opt.guicursor = "i:ver25-blinkwait700-blinkoff400-blinkon250"

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.showmode = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 10
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.splitright = true
vim.opt.splitbelow = true
local remember_folds_group = vim.api.nvim_create_augroup("remember_folds", { clear = true })

vim.api.nvim_create_autocmd({ "BufWinLeave" }, {
    pattern = "?*",
    group = remember_folds_group,
    callback = function()
        vim.cmd([[silent! mkview 1]])
    end,
})

vim.api.nvim_create_autocmd({ "BufWinEnter" }, {
    pattern = "?*",
    group = remember_folds_group,
    callback = function()
        vim.cmd([[silent! loadview 1]])
    end,
})
