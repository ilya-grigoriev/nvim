local null_ls_ok, null_ls = pcall(require, "null-ls")
if not null_ls_ok then
    return
end

local sources = {
    -- python
    null_ls.builtins.formatting.blue,
    null_ls.builtins.formatting.isort,
    null_ls.builtins.diagnostics.ruff.with(
        {
            extra_args = {
                '--select=ALL',
                '--ignore=Q000,ANN101,D101,D100,D103,I001,RUF001,RUF002',
            },
        }
    ),

    -- json
    null_ls.builtins.formatting.fixjson,

    -- java
    null_ls.builtins.formatting.google_java_format,

    -- latex
    null_ls.builtins.formatting.latexindent,

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
}

null_ls.setup({ sources = sources })
