local jdtls = require("jdtls")

local root_dir = vim.fs.root(0, {
    "pom.xml",
    "build.gradle",
    "build.gradle.kts",
    "settings.gradle",
    ".git",
})

if not root_dir then
    root_dir = vim.fn.getcwd()
end

local project_name = vim.fn.fnamemodify(root_dir, ":t")

local workspace_dir = vim.fn.stdpath("data") .. "/jdtls-workspaces/" .. project_name

local config = {
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
                        path = vim.fn.trim(vim.fn.system("/usr/libexec/java_home -v 25")),
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
}

jdtls.start_or_attach(config)
