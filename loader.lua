local URL = "https://api-prisonlife.vercel.app/api/loader"

local success, result = pcall(function()
    return game:HttpGet(URL)
end)

if success and result and result ~= "" then
    local runSuccess, runError = pcall(function()
        loadstring(result)()
    end)

    if not runSuccess then
        warn("[Loader Error] "..tostring(runError))
    end
else
    warn("[HTTP Error] Failed to fetch loader")
end
