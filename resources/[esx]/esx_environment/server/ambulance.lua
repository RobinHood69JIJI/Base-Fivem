ESX = nil 

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


-- REGISTROS

RegisterServerEvent('enp-ambulance:getJob')
AddEventHandler('enp-ambulance:getJob',function()
	local source = source
	local xPlayers = ESX.GetPlayers()
	for i=1, #xPlayers, 1 do
		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
		if xPlayers[i] == source then
			TriggerClientEvent('enp-ambulance:setJob', xPlayers[i],xPlayer.job.name)
		end
	end
end)

RegisterServerEvent('enp-ambulance:alert')
AddEventHandler('enp-ambulance:alert', function(message, x, y, z)
	local xPlayers = ESX.GetPlayers()

	for i=1, #xPlayers, 1 do
		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
		
		if xPlayer.job.name == 'ambulance' then
			
			TriggerClientEvent('enp-ambulance:setBlip', xPlayers[i], x, y, z)
		end
	end
end)

RegisterServerEvent('enp-ambulance:entorno:alert')
AddEventHandler('enp-ambulance:entorno:alert', function(message, x, y, z)
		TriggerClientEvent('enp-ambulance:setBlip', xPlayers[i], x, y, z)
end)

RegisterServerEvent('enp-ambulance:auxilio:sendNotify')
AddEventHandler('enp-ambulance:auxilio:sendNotify', function( msg, location, pos, IdPlayer  )
	TriggerClientEvent('enp-ambulance:auxilio:sendNotify', -1, msg, location, pos, IdPlayer )
	LosgAmbulance('**Auxilios:**\n\n **ID del Player:** '..IdPlayer..'  \n**Mensaje Auxilio:** '..msg..  '\n **Localización:** ' ..location.. '\n  **Distancia Aprox.** ' ..pos)	
end, false)

LosgAmbulance = function(message)
    PerformHttpRequest(Config['LogsAuxilios'], function(err, text, headers) end, 
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