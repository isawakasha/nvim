local status, packer = pcall(require, "packer")
if not status then
	print("Packer is not installed")
	return
end

vim.cmd([[
    augroup packer_user_config
      autocmd!
     autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup END
]])

packer.startup(function(use)
	use("wbthomason/packer.nvim") -- Packer can manage itself
    use("neovim/nvim-lspconfig")
	if packer_bootstrap then
		packer.sync()
	end
end)

