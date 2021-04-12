function process(thing)
    local jcm = "\n\n --// Obfuscated by Snow \n\n"

    local jcfs = {"娜伊开伊艾", "娜艾勒吾", "诶开伊艾", "iElIinlTI5391ilI", "nErtIgElwAshErE", "nE5rtIgElwAshErE", "nErtIgEl5391E", "nE5391rtIgEl5391E"}

    local jcq = "local " .. randomString(10) .. " = (5*3-2/8+9*2/9+8*3)" .. " "
    local jcn1 = "function nErTiGeL_ilIilI(" .. randomString(11) .. ")" .. jcq .. "end" .. " "
    local jcn2 = "function nErtIgEL_ilIilI(" .. randomString(12) .. ")" .. jcq .. "end" .. " "
    local junkcode = jcm .. jcn1 .. jcn2 .. jcq
    local encoded = thing:gsub(".", function(bb) return "\\" .. bb:byte() end) or thing .. "\""

    return (jcm .. jcn1 .. jcq .. 'load("' .. encoded .. '")() ' .. jcq .. jcn2 .. jcq)
end

characters = "他是说汉语的ｱ尺乇你他是说汉语的ｱ尺乇你他是说汉语的ｱ尺乇你abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ123456789123456789123456789123456789123456789123456789ᅠᅠᅠᅠᅠᅠᅠᅠᅠᅠᅠᅠᅠᅠᅠᅠᅠᅠᅠᅠᅠᅠᅠᅠᅠᅠᅠᅠαβγδεζηθικλμνξοπρστυφχψωαβγδεζηθικλμνξοπρστυφχψωαβγδε"

local charset = {}  do -- [0-9a-zA-Z]
    for c = math.random(1,52), math.random(52,122)  do table.insert(charset, string.char(c)) end
    for c = math.random(1,52), math.random(52,122)  do table.insert(charset, string.char(c)) end
    for c = math.random(1,52), math.random(52,122) do table.insert(charset, string.char(c)) end
end


function randomString(length)
    if not length or length <= 0 then return '' end
    math.randomseed(os.clock()^5)
    return randomString(length - 1) .. charset[math.random(1, #charset)]
end