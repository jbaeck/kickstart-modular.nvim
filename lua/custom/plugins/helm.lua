return {
  {
    'qvalentin/helm-ls.nvim',
    ft = 'helm',
    opts = {},
  },

  {
    'neovim/nvim-lspconfig',
    opts = function(_, opts)
      opts.servers = opts.servers or {}
      opts.servers.helm_ls = {
        settings = {
          ['helm-ls'] = {
            yamlls = {
              enabled = true,
              -- enabledForFilesGlob = '*.{yaml,yml}',
              path = 'yaml-language-server',
              config = {
                schemas = {
                  kubernetes = 'templates/**',
                },
                completion = true,
                hover = true,
              },
            },
          },
        },
      }
    end,
  },
}
