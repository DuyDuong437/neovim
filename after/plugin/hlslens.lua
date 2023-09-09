require('hlslens').setup({
    auto_enable = {
        description = [[Enable nvim-hlslens automatically]],
        default = true
    },
    enable_incsearch = {
        description = [[When `incsearch` option is on and enable_incsearch is true, add lens
            for the current matched instance]],
        default = true
    },
    calm_down = {
        description = [[If calm_down is true, clear all lens and highlighting When the cursor is
            out of the position range of the matched instance or any texts are changed]],
        default = false,
    },
    nearest_only = {
        description = [[Only add lens for the nearest matched instance and ignore others]],
        default = false
    },
    nearest_float_when = {
        description = [[When to open the floating window for the nearest lens.
            'auto': floating window will be opened if room isn't enough for virtual text;
            'always': always use floating window instead of virtual text;
            'never': never use floating window for the nearest lens]],
        default = 'auto',
    },
    float_shadow_blend = {
        description = [[Winblend of the nearest floating window. `:h winbl` for more details]],
        default = 50,
    },
    virt_priority = {
        description = [[Priority of virtual text, set it lower to overlay others.
        `:h nvim_buf_set_extmark` for more details]],
        default = 100,
    },
    override_lens  = function(render, posList, nearest, idx, relIdx)
        local sfw = vim.v.searchforward == 1
        local indicator, text, chunks
        local absRelIdx = math.abs(relIdx)
        if absRelIdx > 1 then
            indicator = ('%d%s'):format(absRelIdx, sfw ~= (relIdx > 1) and '▲' or '▼')
        elseif absRelIdx == 1 then
            indicator = sfw ~= (relIdx == 1) and '▲' or '▼'
        else
            indicator = ''
        end

        local lnum, col = unpack(posList[idx])
        if nearest then
            local cnt = #posList
            if indicator ~= '' then
                text = ('[%s %d/%d]'):format(indicator, idx, cnt)
            else
                text = ('[%d/%d]'):format(idx, cnt)
            end
            chunks = {{' ', 'Ignore'}, {text, 'HlSearchLensNear'}}
        else
            text = ('[%s %d]'):format(indicator, idx)
            chunks = {{' ', 'Ignore'}, {text, 'HlSearchLens'}}
        end
        render.setVirt(0, lnum - 1, col - 1, chunks, nearest)
    end})


