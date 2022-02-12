-- Compe setup
vim.opt.completeopt="menu,menuone,noselect"

local lsp_symbols = {
    Text = "   (Text) ",
    Method = "   (Method)",
    Function = "   (Function)",
    Constructor = "   (Constructor)",
    Field = " ﴲ  (Field)",
    Variable = "[] (Variable)",
    Class = "   (Class)",
    Interface = " ﰮ  (Interface)",
    Module = "   (Module)",
    Property = " 襁 (Property)",
    Unit = "   (Unit)",
    Value = "   (Value)",
    Enum = " 練 (Enum)",
    Keyword = "   (Keyword)",
    Snippet = "   (Snippet)",
    Color = "   (Color)",
    File = "   (File)",
    Reference = "   (Reference)",
    Folder = "   (Folder)",
    EnumMember = "   (EnumMember)",
    Constant = " ﲀ  (Constant)",
    Struct = " ﳤ  (Struct)",
    Event = "   (Event)",
    Operator = "   (Operator)",
    TypeParameter = "   (TypeParameter)",
}

local cmp = require("cmp")
cmp.setup{
  formatting = {
    format = function(entry, item)
        item.kind = lsp_symbols[item.kind]
        item.menu = ({
            buffer = "[Buffer]",
            nvim_lsp = "[LSP]",
            luasnip = "[Snippet]",
            neorg = "[Neorg]",
            nvim_lua = "[Lua]",
            latex_symbols = "[LaTeX]"
        })[entry.source.name]

        return item
    end,
    },
  snippet = { expand = function(args)
    vim.fn["vsnip#anonymous"](args.body)
  end },
  mapping = {
    ['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
    ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
    ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
    ['<C-y>'] = cmp.config.disable,
    ['<C-e>'] = cmp.mapping({
      i = cmp.mapping.abort(),
      c = cmp.mapping.close(),
    }),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
  },
  sources = {
    { name = 'nvim_lsp' },
    { name = 'buffer' },
    { name = 'vsnip' },
    { name = 'path' },
  }
}

--

-- UI Customization
vim.cmd([[
  highlight! CmpItemAbbrMatchFuzzy guibg=NONE guifg=#fafafa
  highlight! CmpItemAbbrMatch guibg=NONE guifg=white

  highlight! CmpItemKindKeyword guibg=NONE guifg=#D4D4D4
  highlight! CmpItemKindProperty guibg=NONE guifg=#D4D4D4
  highlight! CmpItemKindUnit guibg=NONE guifg=#D4D4D4

  highlight! CmpItemKindFunction guibg=NONE guifg=#C586C0
  highlight! CmpItemKindMethod guibg=NONE guifg=#C586C

  highlight! CmpItemKindVariable guibg=NONE guifg=#9CDCFE
  highlight! CmpItemKindInterface guibg=NONE guifg=#9CDCFE
  highlight! CmpItemKindText guibg=NONE guifg=#9CDCFE
]])

--

-- Keybindings

vim.api.nvim_set_keymap("", "ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", {silent = true})
vim.api.nvim_set_keymap("", "<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", {silent = true})

--

-- Languages Servers

local lsp_installer_servers = require('nvim-lsp-installer.servers')

local servers = {
    "pyright",
    "sumneko_lua",
    "tsserver",
    "gopls",
    "eslint"
}

local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities(), {
  snippetSupport = false,
})
for _, server_name in pairs(servers) do
    local server_available, server = lsp_installer_servers.get_server(server_name)
    if server_available then
        server:on_ready(function ()
          local opts = {}

          require('lspconfig')[server_name].setup {
            capabilities = capabilities
          }
          server:setup(opts)
        end)

        if not server:is_installed() then
            server:install()
        end
    end
  end

  ---
