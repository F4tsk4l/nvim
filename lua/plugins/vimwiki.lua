return {
  "vimwiki/vimwiki",
  init = function()
    vim.g.vimwiki_list = {
      {
        path = "/home/g4m3r/vimwiki/",
        syntax = "default",
        -- ext = ".md",
        ext = ".wiki",
      },
      {
        path = "/home/g4m3r/Desktop/Mu5tur4d/N0t35/vimwiki/",
        syntax = "default",
        --ext = ".md",
        ext = ".wiki",
      },
    }
    --    vim.g.vimwiki_ext2syntax = {
    --      [".md"] = "markdown",
    --      [".markdown"] = "markdown",
    --      [".mdown"] = "markdown",
    --    }
    vim.g.vimwiki_listsyms = "✗○◐●✓"
    vim.g.vimwiki_global_ext = 0 -- don't treat all md files as vimwiki (0)
    vim.g.vimwiki_hl_headers = 1 -- use alternating colours for different heading levels
    vim.g.vimwiki_markdown_link_ext = 1 -- add markdown file extension when generating links
    vim.g.taskwiki_markdown_syntax = "markdown"
  end,
}
-- vim.g.wiki_1 = {}
-- vim.g.wiki_1.path = "~/vimwiki/"
-- vim.g.wiki_2 = {}
-- vim.g.wiki_2.path = "~/Desktop/Mu5tur4d/N0t35/vimwiki/"
