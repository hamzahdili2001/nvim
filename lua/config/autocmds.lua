-- Add any additional autocmds here

function CleanupFile()
  -- Get the lines of the current buffer
  local lines = vim.api.nvim_buf_get_lines(0, 0, -1, false)

  -- Iterate over each line
  for i, line in ipairs(lines) do
	-- Remove trailing whitespace
	lines[i] = line:gsub("%s+$", "")

	-- Convert consecutive groups of four spaces to a single tab character
	lines[i] = lines[i]:gsub("	", "\t")
  end

  -- Set the lines of the current buffer to the cleaned up lines
  vim.api.nvim_buf_set_lines(0, 0, -1, false, lines)
end

function DisableAutoComplete()
  local filetype = vim.bo.filetype

  if filetype ~= "c" then
	vim.bo.omnifunc = ""
	vim.bo.keywordprg = ""
	vim.bo.path = ""
	vim.g.tex_conceal = ""
  else
	vim.g.tex_conceal = "abdmg"
  end
end

vim.cmd([[autocmd BufWritePre * lua CleanupFile()]])
vim.cmd([[autocmd FileType * lua DisableAutoComplete()])
