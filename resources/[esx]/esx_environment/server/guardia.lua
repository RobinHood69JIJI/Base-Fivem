ESX = nil 

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


-- REGISTROS

RegisterServerEvent('enp-guardia:getJob')
AddEventHandler('enp-guardia:getJob',function()
	local source = source
	local xPlayers = ESX.GetPlayers()
	for i=1, #xPlayers, 1 do
		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
		if xPlayers[i] == source then
			TriggerClientEvent('enp-guardia:setJob', xPlayers[i],xPlayer.job.name)
		end
	end
end)

RegisterServerEvent('enp-guardia:alert')
AddEventHandler('enp-guardia:alert', function(message, x, y, z)
	local xPlayers = ESX.GetPlayers()

	for i=1, #xPlayers, 1 do
		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
		
		if xPlayer.job.name == 'guardia' then
			
			TriggerClientEvent('enp-guardia:setBlip', xPlayers[i], x, y, z)
		end
	end
end)

RegisterServerEvent('enp-guardia:entorno:alert')
AddEventHandler('enp-guardia:entorno:alert', function(message, x, y, z)
		TriggerClientEvent('enp-guardia:setBlip', xPlayers[i], x, y, z)
end)

RegisterServerEvent('enp-guardia:sendNotify')
AddEventHandler('enp-guardia:sendNotify', function( msg, location, pos, IdPlayer  )
	TriggerClientEvent('enp-guardia:sendNotify', -1, msg, location, pos, IdPlayer )
	LosgGuardia('**LLAMADA GUARDIA CIVIL:**\n\n **ID del Player:** '..IdPlayer..'  \n**Llamada Guardia:** '..msg..  '\n **Localización:** ' ..location.. '\n  **Distancia Aprox.** ' ..pos)	
end, false)

LosgGuardia = function(message)
    PerformHttpRequest(Config['LogsGuardia'], function(err, text, headers) end, 
    'POST', json.encode(
        {username = "KoalaRp", 
        embeds = {
            {["color"] = color, 
            ["author"] = {
            ["name"] = "KoalaRp",
            ["icon_url"] = "https://i.imgur.com/ZgX85eq.png"},
            ["description"] = "".. message .."",
            ["footer"] = {
            ["text"] = "©KoalaRp - "..os.date("%x %X %p"),
            ["icon_url"] = "https://i.imgur.com/ZgX85eq.png",},}
        }, avatar_url = "https://i.imgur.com/ZgX85eq.png"}), {['Content-Type'] = 'application/json' })
end