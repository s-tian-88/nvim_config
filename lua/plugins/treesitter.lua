require('nvim-treesitter.configs').setup{
    ensure_installed = {
        "bash", "python", "lua", "json", "vim", "yaml", "markdown", "javascript" 
    },
    highlight = { enable = true }
}
