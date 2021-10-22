ESX = nil
local connectedPlayers = {}
local Admins = {}

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterServerCallback('esx_scoreboard:getConnectedPlayers', function(source, cb)
	cb(connectedPlayers)
end)

AddEventHandler('esx:setJob', function(playerId, job, lastJob)
	connectedPlayers[playerId].job = job.name

	TriggerClientEvent('esx_scoreboard:updateConnectedPlayers', -1, connectedPlayers)
end)

AddEventHandler('esx:playerLoaded', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
		AddPlayerToScoreboard(xPlayer, true)
end)

AddEventHandler('esx:playerDropped', function(playerId)
	connectedPlayers[playerId] = nil

	TriggerClientEvent('esx_scoreboard:updateConnectedPlayers', -1, connectedPlayers)
end)

--[[Citizen.CreateThread(function()
	while true do
		Citizen.Wait(5000)
		--UpdatePing()
	end
end)]]--

AddEventHandler('onResourceStart', function(resource)
	if resource == GetCurrentResourceName() then
		Citizen.CreateThread(function()
			Citizen.Wait(1000)
			AddPlayersToScoreboard()
		end)
	end
end)

function AddPlayerToScoreboard(xPlayer, update)
	local playerId = xPlayer.source

	connectedPlayers[playerId] = {}
	connectedPlayers[playerId].ping = GetPlayerPing(playerId)
	connectedPlayers[playerId].id = playerId
	connectedPlayers[playerId].name = xPlayer.getName()
	connectedPlayers[playerId].job = xPlayer.job.name

	if update then
		TriggerClientEvent('esx_scoreboard:updateConnectedPlayers', -1, connectedPlayers)
	end

	if xPlayer.getGroup() == 'user' then
		Citizen.CreateThread(function()
			Citizen.Wait(3000)
			TriggerClientEvent('esx_scoreboard:toggleID', playerId, false)
		end)
	end
end

function AddPlayersToScoreboard()
	local players = ESX.GetPlayers()

	for i=1, #players, 1 do
		local xPlayer = ESX.GetPlayerFromId(players[i])
		AddPlayerToScoreboard(xPlayer, false)
	end

	TriggerClientEvent('esx_scoreboard:updateConnectedPlayers', -1, connectedPlayers)
end

--[[local maxPing = 700

function UpdatePing()
	for k,v in pairs(connectedPlayers) do
		v.ping = GetPlayerPing(k)
		if v.ping > maxPing then
			DropPlayer(k, 'Se ha kickeado a '..GetPlayerName(k)..' por tener demasiado ping. Ping obtenido : '..v.ping.." / "..maxPing)
		end
	end

	TriggerClientEvent('esx_scoreboard:updatePing', -1, connectedPlayers)
end--]]

RegisterCommand('duty', function(source, args, rawCommand)
	local xPlayer = ESX.GetPlayerFromId(source)
	if xPlayer.getGroup() == "admin" or xPlayer.getGroup() == "mod" or xPlayer.getGroup() == "superadmin" then
		if Admins[source] == nil then
			Admins[source] = true
			connectedPlayers[source].name = xPlayer.getName().." : <b><span style='color : yellow;'>STAFF EN SERVICIO</span></b>"
		else
			connectedPlayers[source].name = xPlayer.getName()
			Admins[source] = nil
		end
		TriggerClientEvent('esx_scoreboard:updateConnectedPlayers', -1, connectedPlayers)
	end
	
end)