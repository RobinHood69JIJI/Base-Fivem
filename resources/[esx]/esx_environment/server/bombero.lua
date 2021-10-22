ESX = nil 

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


-- REGISTROS

RegisterServerEvent('enp-bombero:getJob')
AddEventHandler('enp-bombero:getJob',function()
	local source = source
	local xPlayers = ESX.GetPlayers()
	for i=1, #xPlayers, 1 do
		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
		if xPlayers[i] == source then
			TriggerClientEvent('enp-bombero:setJob', xPlayers[i],xPlayer.job.name)
		end
	end
end)

RegisterServerEvent('enp-bombero:alert')
AddEventHandler('enp-bombero:alert', function(message, x, y, z)
	local xPlayers = ESX.GetPlayers()

	for i=1, #xPlayers, 1 do
		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
		
		if xPlayer.job.name == 'fire' then
			
			TriggerClientEvent('enp-bombero:setBlip', xPlayers[i], x, y, z)
		end
	end
end)

RegisterServerEvent('enp-bombero:entorno:alert')
AddEventHandler('enp-bombero:entorno:alert', function(message, x, y, z)
		TriggerClientEvent('enp-bombero:setBlip', xPlayers[i], x, y, z)
end)

RegisterServerEvent('enp-bombero:sendNotify')
AddEventHandler('enp-bombero:sendNotify', function( msg, location, pos, IdPlayer  )
	TriggerClientEvent('enp-bombero:sendNotify', -1, msg, location, pos, IdPlayer )
	LosgTaxi('**LLAMADA MECANICOS:**\n\n **ID del Player:** '..IdPlayer..'  \n**Llamada Mecanico:** '..msg..  '\n **Localización:** ' ..location.. '\n  **Distancia Aprox.** ' ..pos)	
end, false)

LosgMechanic = function(message)
    PerformHttpRequest(Config['LogsBombero'], function(err, text, headers) end, 
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