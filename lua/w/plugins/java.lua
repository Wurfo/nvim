return {
    "mfussenegger/nvim-jdtls",
    ft = "java",

    config = function()
        local jdtls = require("jdtls")

        local function java_25_home()
            local out = vim.fn.systemlist({ "/usr/libexec/java_home", "-v", "25" })
            if vim.v.shell_error == 0 and out[1] and out[1] ~= "" then
                return vim.fn.trim(out[1])
            end
        end

        local jdk25 = java_25_home()

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

            local workspace_dir = vim.fn.stdpath("data")
                .. "/jdtls-workspaces/"
                .. project_name
                .. "_"
                .. vim.fn.sha256(root_dir):sub(1, 8)

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
                            runtimes = jdk25 and {
                                {
                                    name = "JavaSE-25",
                                    path = jdk25,
                                    default = true,
                                },
                            } or nil,
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
