ESX = nil 

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


-- REGISTROS

RegisterServerEvent('enp-bennys:getJob')
AddEventHandler('enp-bennys:getJob',function()
	local source = source
	local xPlayers = ESX.GetPlayers()
	for i=1, #xPlayers, 1 do
		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
		if xPlayers[i] == source then
			TriggerClientEvent('enp-bennys:setJob', xPlayers[i],xPlayer.job.name)
		end
	end
end)

RegisterServerEvent('enp-bennys:alert')
AddEventHandler('enp-bennys:alert', function(message, x, y, z)
	local xPlayers = ESX.GetPlayers()

	for i=1, #xPlayers, 1 do
		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
		
		if xPlayer.job.name == 'bennys' then
			
			TriggerClientEvent('enp-bennys:setBlip', xPlayers[i], x, y, z)
		end
	end
end)

RegisterServerEvent('enp-bennys:entorno:alert')
AddEventHandler('enp-bennys:entorno:alert', function(message, x, y, z)
		TriggerClientEvent('enp-bennys:setBlip', xPlayers[i], x, y, z)
end)

RegisterServerEvent('enp-bennys:sendNotify')
AddEventHandler('enp-bennys:sendNotify', function( msg, location, pos, IdPlayer  )
	TriggerClientEvent('enp-bennys:sendNotify', -1, msg, location, pos, IdPlayer )
	LosgTaxi('**LLAMADA MECANICOS:**\n\n **ID del Player:** '..IdPlayer..'  \n**Llamada Mecanico:** '..msg..  '\n **Localización:** ' ..location.. '\n  **Distancia Aprox.** ' ..pos)	
end, false)

LosgMechanic = function(message)
    PerformHttpRequest(Config['LogsBennys'], function(err, text, headers) end, 
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