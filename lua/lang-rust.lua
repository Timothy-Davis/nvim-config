-- Rust Config
require('rust-tools').setup({
    server = {
        on_attach = function(_, bufnr)
            -- Hover Actions
            vim.keymap.set('n', '<C-space>', rt.hover_actions.hover_actions, { buffer = bufnr })
            vim.keymap.set('n', '<Leader>a', rt.code_action_group.code_action_group, { buffer = bufnr })
        end,
    },
})