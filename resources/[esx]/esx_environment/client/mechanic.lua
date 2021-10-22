ESX = nil
blip = nil
oldblip = nil
blips = {}
local target = {}


Citizen.CreateThread(function()
  while ESX == nil do
      TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
      Citizen.Wait(0)
  end
end)

AddEventHandler('playerSpawned', function(spawn)
  TriggerServerEvent('enp-mechanic:getJob')
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
    TriggerServerEvent('enp-mechanic:getJob')
end)

TriggerServerEvent('enp-mechanic:getJob')

RegisterNetEvent('enp-mechanic:setJob')
AddEventHandler('enp-mechanic:setJob',function(theJob)
    job = theJob
end)

        
Citizen.CreateThread(function()
    TriggerEvent('chat:addSuggestion', '/auxilio', 'Obligatorio para hacer rol de entorno')
end)


RegisterNetEvent('enp-mechanic:sendNotify')
AddEventHandler('enp-mechanic:sendNotify', function( msg, location, pos, IdPlayer )
  if job == 'mechanic' then 
    target.pos = pos
    print(json.encode(target.pos))
    coords = GetEntityCoords(PlayerPedId())
    dist = CalculateTravelDistanceBetweenPoints(coords.x,coords.y,coords.z,target.pos.x,target.pos.y,target.pos.z) / 1000
    TriggerEvent('pNotify:SendNotification',{text = "LLAMADA MECANICO  </br> "..msg.."  en  "..location.." </br>  Distancia: "..dist.." Km </br> <p> <b style='color:#3efe00'>[E Aceptar] </b> <b style='color:#fe0000'>[Q Denegar] </b>", 
    timeout = 15000,
      type = "success",
      progressBar = true,
      layout     = "centerRight",
      animation = {
        open = "gta_effects_fade_in",
        close = "gta_effects_fade_out"
      }
    })
  end  
end)

RegisterNetEvent('enp-mechanic:setBlip')
AddEventHandler('enp-mechanic:setBlip', function(x, y, z)


    contador = 6000

    mechanic_llamada = true 
    Citizen.CreateThread(function()
      blipPos = vector3(x, y, z)
      blip = AddBlipForCoord(x, y, z)
      SetBlipSprite(blip, Config['Mechanic'].SetBlipSprite)
      SetBlipScale(blip, Config['Mechanic'].SetBlipScale)
      SetBlipColour(blip, Config['Mechanic'].SetBlipColour)
      BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(Config['Mechanic'].TextBlip )
      EndTextCommandSetBlipName(blip)
      table.insert(blips, blip)

      activarcontador = true
      
      
    while mechanic_llamada do
      if IsControlJustReleased(1, 38) then
        TriggerEvent("pNotify:SendNotification", {
          text = 'Has aceptado la llamada',
          theme = 'sunset',
          timeout = 3000,
          layout = "centerRight",
          queue = "forzar"
        })
        
        activarcontador2 = true
        mechanic_llamada = false
        TriggerEvent('enp-mechanic:remblip', blip)
        SetNewWaypoint(tonumber(x), tonumber(y))
      elseif IsControlJustReleased(1, 44) then
      
        TriggerEvent("pNotify:SendNotification", {
          text = 'Has rechazado la llamada',
          theme = 'sunset',
          timeout = 3000,
          layout = "centerRight",
          queue = "forzar"
        })
        
        mechanic_llamada = false
        blipPos = nil  
        RemoveBlip(blip)
      end

      contador = contador - 1
      if contador <= 0 then
        mechanic_llamada = false 
        RemoveBlip(blip)
      end
      Citizen.Wait(0)
    end 

  end)
end)

RegisterNetEvent('enp-mechanic:remblip')
AddEventHandler('enp-mechanic:remblip', function(blip)
  local newblip = blip
  Wait(20000)
  RemoveBlip(newblip)
end)

Citizen.CreateThread(function()
  local contador2 = 10
  while activarcontador2 == true do
    print ('activado')
    Citizen.Wait(10000)
    if contador2 <= 0 then
      blipPos = nil 
      RemoveBlip(blip)
      activarcontador2 = false
    else
      contador2 = contador2 - 1
      print (contador2)
    end
  end 
end)


RegisterCommand('llamarmecanico', function(source, args)
  local IdPlayer = GetPlayerServerId(NetworkGetEntityOwner(PlayerPedId()))
  local playername = GetPlayerName(PlayerId())
  local ped = GetPlayerPed(PlayerId())
  local x, y, z = table.unpack(GetEntityCoords(ped, true))
  local street = GetStreetNameAtCoord(x, y, z)
  local location = GetStreetNameFromHashKey(street)
  local msg = table.concat(args, ' ')
  local pos = GetEntityCoords(PlayerPedId())

  if args[1] == nil then
    TriggerEvent('chatMessage', '[^1LLAMADA MECANICO^0]', {255,255,255}, ' Escribe el motivo de la llamada.')
  else
    TriggerEvent('chatMessage', '[^1LLAMADA MECANICO^0]', {255,255,255}, ' Has llamado a la central de mecanicos.')
    TriggerServerEvent('enp-mechanic:sendNotify', msg, location, pos, IdPlayer)
    TriggerServerEvent('enp-mechanic:alert', message, x, y, z)
  end
end)