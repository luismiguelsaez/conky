
function conky_format( format, number )
    return string.format( format, conky_parse( number )  )
end

function conky_main()
    if conky_window == nil then
        return
    end
end
