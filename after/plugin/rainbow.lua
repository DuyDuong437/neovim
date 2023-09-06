local rainbow_delimiters = require 'rainbow-delimiters'

-- Function to check if the file size exceeds a certain threshold
local function isFileSizeExceedThreshold(filename, threshold)
    local file = io.open(filename, "r")
    if file then
        local fileSize = file:seek("end")
        file:close()
        return fileSize > threshold
    else
        return false
    end
end

-- Configuration for rainbow delimiters
vim.g.rainbow_delimiters = {
    strategy = {
        [''] = rainbow_delimiters.strategy['global'],
        vim = rainbow_delimiters.strategy['local'],
    },
    query = {
        [''] = 'rainbow-delimiters',
        lua = 'rainbow-blocks',
    },
    highlight = {
        'RainbowDelimiterRed',
        'RainbowDelimiterYellow',
        'RainbowDelimiterBlue',
        'RainbowDelimiterOrange',
        'RainbowDelimiterGreen',
        'RainbowDelimiterViolet',
        'RainbowDelimiterCyan',
    },
}

-- Check the file size and disable rainbow delimiters if it exceeds 5MB (5 * 1024 * 1024 bytes)
local currentBuffer = vim.fn.bufname()
local fileSizeThreshold = 5 * 1024 * 1024 -- 5MB in bytes

if isFileSizeExceedThreshold(currentBuffer, fileSizeThreshold) then
    vim.g.rainbow_delimiters = nil
end

