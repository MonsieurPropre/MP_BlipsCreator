Citizen.CreateThread(function()
	for i = 1, #Config.Blips, 1 do
        if Config.Blips[i].actif then
            local blip = AddBlipForCoord(Config.Blips[i].coords)

            SetBlipSprite(blip, Config.Blips[i].sprite)
            SetBlipDisplay(blip, 4)
            SetBlipScale(blip, Config.Blips[i].scale)
            SetBlipColour(blip, Config.Blips[i].color)
            SetBlipAsShortRange(blip, true)

            BeginTextCommandSetBlipName('STRING')
            AddTextComponentSubstringPlayerName(Config.Blips[i].name)
            EndTextCommandSetBlipName(blip)
        end
	end
end)
