local null_ls_ok, null_ls = pcall(require, "null-ls")
if not null_ls_ok then
    return
end

local sources = {
    -- python
    null_ls.builtins.formatting.black.with({
        extra_args = { "--line-length=80" }
    }),
    null_ls.builtins.formatting.isort,
    -- json
    null_ls.builtins.formatting.fixjson,
    -- other languages
    null_ls.builtins.formatting.prettier.with({
        filetypes = {
            "javascript",
            "typescript",
            "css",
            "scss",
            "html",
            "json",
            "yaml",
            "markdown",
            "graphql",
            "md",
            "txt",
        },
    }),
    -- java
    null_ls.builtins.formatting.google_java_format,
}

null_ls.setup({ sources = sources })
