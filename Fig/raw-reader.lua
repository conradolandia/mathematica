function Reader(input, opts)
    local content = tostring(input)
    local meta = {
        rawcontent = pandoc.MetaBlocks({pandoc.RawBlock("latex", content)})
    }
    return pandoc.Pandoc({}, meta)
end
