local function map(m, k, v)
    vim.keymap.set(m, k, v, {silent = true})
end

        --change default <Esc> btn
map("i", "jj", "<Esc>")

        --NERDTreeToggle button
map("n", "<F6>", ":NvimTreeToggle<CR>")

--fern keys
map("n", "<F1>", ":Neotree<CR>")


        --map up, down, left and right to move between buffers
map("n", "<C-k>", "<C-w>k")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-l>", "<C-w>l")
map("n", "<C-h>", "<C-w>h")

        --move highlighted text 
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

        --Rust bindings
map("n", "<C-F5>", ":w <bar> RustRun<CR>")

--Commands
vim.cmd('command! Cargotest w | vnew | term cargo test')
vim.cmd('command! Terem vnew | term ')

        --Bind Ctrl Backspace in insert 
map("i", "<C-BS>", "<C-W>")

--Make it rain!
map("n", "<leader>fml", "<cmd>CellularAutomaton make_it_rain<CR>")



