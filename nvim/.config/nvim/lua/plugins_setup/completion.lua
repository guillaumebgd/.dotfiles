local status_ok, cmp = pcall(require, "cmp")
if not status_ok then
  return
end

cmp.setup({
snippet = {
  expand = function(args)
    -- For `vsnip` user.
    vim.fn["vsnip#anonymous"](args.body)
  end,
},
mapping = {
  ['<C-d>'] = cmp.mapping.scroll_docs(-4),
  ['<C-f>'] = cmp.mapping.scroll_docs(4),
  ['<Tab>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
  ['<Down>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
  ['<S-Tab>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
  ['<Up>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
  -- ['<C-e>'] = cmp.mapping.close(),
  ['<CR>'] = cmp.mapping.confirm({ select = true }),
},


sources = {
  -- For vsnip user.
  { name = 'vsnip' },
  { name = 'nvim_lsp' },
  { name = 'buffer' },
}
})
