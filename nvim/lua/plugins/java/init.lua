return {
    "nvim-java/nvim-java",
    config = false,
    dependencies = {
        {
            "neovim/nvim-lspconfig",
            opts = {
                servers = {
                    jdtls = {
                        settings = {
                            java = {
                                inlayHints = {
                                    parameterNames = {
                                        enabled = "none", -- Desativa os inlay hints de nomes de parâmetros
                                    },
                                    variableTypes = {
                                        enabled = false, -- Desativa os inlay hints de tipos de variáveis
                                    },
                                    parameterTypes = {
                                        enabled = false, -- Desativa os inlay hints de tipos de parâmetros
                                    },
                                    propertyNames = {
                                        enabled = false, -- Desativa os inlay hints de nomes de propriedades
                                    },
                                    returnTypes = {
                                        enabled = false, -- Desativa os inlay hints de tipos de retorno
                                    },
                                    enumMemberValues = {
                                        enabled = false, -- Desativa os inlay hints de valores de membros de enumeração
                                    },
                                },
                            },
                        },
                    },
                },
                setup = {
                    jdtls = function()
                        require("java").setup({
                            -- your nvim-java configuration goes here
                        })
                    end,
                },
            },
        },
    },
}
