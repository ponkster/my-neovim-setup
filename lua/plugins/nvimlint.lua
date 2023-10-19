require('lint').linters_by_ft = {
  markdown = {'cpplint'}
}
--au BufWritePost * lua require('lint').try_lint()

-- for v < 0.7 --
--vim.cmd([[
--autocmd BufWritePost * lua require('lint').try_init()
--]])

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  callback = function()
    require("lint").try_lint()
  end,
})

