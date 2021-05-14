local id = PlayerId()
local serverID = GetPlayerServerId(PlayerId())
players = {}
for i = 0, 255 do
    if NetworkIsPlayerActive( i ) then
        table.insert( players, i )
    end
end

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(100)
        if IsControlJustPressed(1, 56) then -- F9
            TriggerEvent('esx:showColoredNotification', "Ton ID est le ".. GetPlayerServerId(PlayerId()) .. "", 118)
            TriggerEvent('esx:showColoredNotification', "Il y a en ce moment " .. #players .. " joueurs connectés", 118)
        end
    end
end)






----By !chigo#0477