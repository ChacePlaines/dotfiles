local status, saga = pcall(require, "lspsaga")
if (not status) then return end

saga.init_lsp_saga {
  server_filetype_map = {
    typescript = "typescript"
  }
}

local opts = { noremap = true, silent = true }
vim.keymap.set("n", "<C-j>", "<Cmd>Lspsaga diagnostic_jump_next<CR>", opts)
vim.keymap.set("n", "K", "<Cmd>Lspsaga hover_doc<CR>", opts)
vim.keymap.set("n", "gd", "<Cmd>Lspsaga lsp_finder<CR>", opts)
vim.keymap.set("i", "<C-k>", "<Cmd>Lspsaga signature_help<CR>", opts)
vim.keymap.set("n", "gp", "<Cmd>Lspsaga preview_definition<CR>", opts)
vim.keymap.set("n", "gr", "<Cmd>Lspsaga rename<CR>", opts)
vim.keymap.set("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
vim.keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
vim.keymap.set("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
vim.keymap.set("n", "gI", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
vim.keymap.set("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
vim.keymap.set("n", "gl", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)
vim.keymap.set("n", "<leader>lf", "<cmd>lua vim.lsp.buf.formatting()<cr>", opts)
vim.keymap.set("n", "<leader>li", "<cmd>LspInfo<cr>", opts)
vim.keymap.set("n", "<leader>lI", "<cmd>LspInstallInfo<cr>", opts)
vim.keymap.set("n", "<leader>la", "<cmd>lua vim.lsp.buf.code_action()<cr>", opts)
vim.keymap.set("n", "<leader>lj", "<cmd>lua vim.diagnostic.goto_next({buffer=0})<cr>", opts)
vim.keymap.set("n", "<leader>lk", "<cmd>lua vim.diagnostic.goto_prev({buffer=0})<cr>", opts)
vim.keymap.set("n", "<leader>lr", "<cmd>lua vim.lsp.buf.rename()<cr>", opts)
vim.keymap.set("n", "<leader>ls", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
vim.keymap.set("n", "<leader>lq", "<cmd>lua vim.diagnostic.setloclist()<CR>", opts)

-- rust_tools keymaps
vim.keymap.set("n", "<leader>rh", "<cmd>RustSetInlayHints<Cr>", opts)
vim.keymap.set("n", "<leader>rhd", "<cmd>RustDisableInlayHints<Cr>", opts)
vim.keymap.set("n", "<leader>th", "<cmd>RustToggleInlayHints<Cr>", opts)
vim.keymap.set("n", "<leader>rr", "<cmd>RustRunnables<Cr>", opts)
vim.keymap.set("n", "<leader>rem", "<cmd>RustExpandMacro<Cr>", opts)
vim.keymap.set("n", "<leader>roc", "<cmd>RustOpenCargo<Cr>", opts)
vim.keymap.set("n", "<leader>rpm", "<cmd>RustParentModule<Cr>", opts)
vim.keymap.set("n", "<leader>rjl", "<cmd>RustJoinLines<Cr>", opts)
vim.keymap.set("n", "<leader>rha", "<cmd>RustHoverActions<Cr>", opts)
vim.keymap.set("n", "<leader>rhr", "<cmd>RustHoverRange<Cr>", opts)
vim.keymap.set("n", "<leader>rmd", "<cmd>RustMoveItemDown<Cr>", opts)
vim.keymap.set("n", "<leader>rmu", "<cmd>RustMoveItemUp<Cr>", opts)
vim.keymap.set("n", "<leader>rsb", "<cmd>RustStartStandaloneServerForBuffer<Cr>", opts)
vim.keymap.set("n", "<leader>rd", "<cmd>RustDebuggables<Cr>", opts)
vim.keymap.set("n", "<leader>rv", "<cmd>RustViewCrateGraph<Cr>", opts)
vim.keymap.set("n", "<leader>rw", "<cmd>RustReloadWorkspace<Cr>", opts)
vim.keymap.set("n", "<leader>rss", "<cmd>RustSSR<Cr>", opts)
vim.keymap.set("n", "<leader>rxd", "<cmd>RustOpenExternalDocs<Cr>", opts)
