require 'artin.remap'

vim.filetype.add({
	extension = {
		tpp = "cpp",
		incl = "cpp",
		ipp = 'cpp',
		def = 'cpp'
	}
})

vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    if client and client.name == "clangd" then
			vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled({0}),{0})
    end
  end,
})
