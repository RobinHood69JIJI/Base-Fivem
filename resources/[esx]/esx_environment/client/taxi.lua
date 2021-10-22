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
  TriggerServerEvent('enp-taxi:getJob')
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
    TriggerServerEvent('enp-taxi:getJob')
end)

TriggerServerEvent('enp-taxi:getJob')

RegisterNetEvent('enp-taxi:setJob')
AddEventHandler('enp-taxi:setJob',function(theJob)
    job = theJob
end)

        
Citizen.CreateThread(function()
    TriggerEvent('chat:addSuggestion', '/taxi', 'Para llamar a la central de taxi')
end)


RegisterNetEvent('enp-taxi:sendNotify')
AddEventHandler('enp-taxi:sendNotify', function( msg, location, pos, IdPlayer )
  if job == 'taxi' then 
    target.pos = pos
    print(json.encode(target.pos))
    coords = GetEntityCoords(PlayerPedId())
    dist = CalculateTravelDistanceBetweenPoints(coords.x, coords.y, coords.z, target.pos.x, target.pos.y, target.pos.z) / 1000
    TriggerEvent('pNotify:SendNotification',{text = "LLAMADA TAXI  </br> "..msg.."  en  "..location.." </br>  Distancia: "..dist.." Km </br> <p> </p><b style='color:#3efe00'>[E Aceptar] </b> <b style='color:#fe0000'>[Q Denegar] </b>", 
    timeout = 15000,
      type = "warning",
      progressBar = true,
      layout     = "centerRight",
      animation = {
        open = "gta_effects_fade_in",
        close = "gta_effects_fade_out"
      }
    })
  end  
end)

RegisterNetEvent('enp-taxi:setBlip')
AddEventHandler('enp-taxi:setBlip', function(x, y, z)


    contador = 6000

    taxi_llamada = true 
    Citizen.CreateThread(function()
      blipPos = vector3(x, y, z)
      blip = AddBlipForCoord(x, y, z)
      SetBlipSprite(blip, Config['Taxi'].SetBlipSprite)
      SetBlipScale(blip, Config['Taxi'].SetBlipScale)
      SetBlipColour(blip, Config['Taxi'].SetBlipColour)
      BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(Config['Taxi'].TextBlip )
      EndTextCommandSetBlipName(blip)
      table.insert(blips, blip)

      activarcontador = true
      
      
    while taxi_llamada do
      if IsControlJustReleased(1, 38) then
        TriggerEvent("pNotify:SendNotification", {
          text = 'Has aceptado la llamada',
          theme = 'sunset',
          timeout = 3000,
          layout = "centerRight",
          queue = "forzar"
        })
        
        activarcontador2 = true
        taxi_llamada = false
        TriggerEvent('enp-taxi:remblip', blip)
        SetNewWaypoint(tonumber(x), tonumber(y))
      elseif IsControlJustReleased(1, 44) then
      
        TriggerEvent("pNotify:SendNotification", {
          text = 'Has rechazado la llamada',
          theme = 'sunset',
          timeout = 3000,
          layout = "centerRight",
          queue = "forzar"
        })
        
        taxi_llamada = false
        blipPos = nil  
        RemoveBlip(blip)
      end

      contador = contador - 1
      if contador <= 0 then
        taxi_llamada = false 
        RemoveBlip(blip)
      end
      Citizen.Wait(0)
    end 

  end)
end)

RegisterNetEvent('enp-taxi:remblip')
AddEventHandler('enp-taxi:remblip', function(blip)
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


RegisterCommand('llamartaxi', function(source, args)
  local IdPlayer = GetPlayerServerId(NetworkGetEntityOwner(PlayerPedId()))
  local playername = GetPlayerName(PlayerId())
  local ped = GetPlayerPed(PlayerId())
  local x, y, z = table.unpack(GetEntityCoords(ped, true))
  local street = GetStreetNameAtCoord(x, y, z)
  local location = GetStreetNameFromHashKey(street)
  local msg = table.concat(args, ' ')
  local pos = GetEntityCoords(PlayerPedId())

  if args[1] == nil then
    TriggerEvent('chatMessage', '[^1LLAMADA TAXI^0]', {255,255,255}, ' Escribe el motivo de la llamada.')
  else
    TriggerEvent('chatMessage', '[^1LLAMADA TAXI^0]', {255,255,255}, ' Has llamado a la central de taxi para que vengan a recogerte.')
    TriggerServerEvent('enp-taxi:sendNotify', msg, location, pos, IdPlayer)
    TriggerServerEvent('enp-taxi:alert', message, x, y, z)
  end
end)