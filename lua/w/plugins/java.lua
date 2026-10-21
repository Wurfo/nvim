return {
    "mfussenegger/nvim-jdtls",
    ft = "java",

    config = function()
        local jdtls = require("jdtls")

        local function start_jdtls()
            local root_dir = vim.fs.root(0, {
                "pom.xml",
                "build.gradle",
                "build.gradle.kts",
                "settings.gradle",
                "settings.gradle.kts",
                ".git",
            }) or vim.fn.getcwd()

            local project_name = vim.fn.fnamemodify(root_dir, ":t")

            local workspace_dir = vim.fn.stdpath("data") .. "/jdtls-workspaces/" .. project_name

            jdtls.start_or_attach({
                cmd = {
                    vim.fn.stdpath("data") .. "/mason/bin/jdtls",
                    "-data",
                    workspace_dir,
                },

                root_dir = root_dir,

                settings = {
                    java = {
                        configuration = {
                            runtimes = {
                                {
                                    name = "JavaSE-25",
                                    path = "/Library/Java/JavaVirtualMachines/temurin-25.jdk/Contents/Home",
                                    default = true,
                                },
                            },
                        },

                        format = {
                            enabled = true,
                        },

                        saveActions = {
                            organizeImports = true,
                        },
                    },
                },
            })
        end

        vim.api.nvim_create_autocmd("FileType", {
            pattern = "java",
            callback = start_jdtls,
        })

        if vim.bo.filetype == "java" then
            start_jdtls()
        end
    end,
}
