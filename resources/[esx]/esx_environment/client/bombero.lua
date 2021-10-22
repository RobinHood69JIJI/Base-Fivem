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
  TriggerServerEvent('enp-bombero:getJob')
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
    TriggerServerEvent('enp-bombero:getJob')
end)

TriggerServerEvent('enp-bombero:getJob')

RegisterNetEvent('enp-bombero:setJob')
AddEventHandler('enp-bombero:setJob',function(theJob)
    job = theJob
end)

        
Citizen.CreateThread(function()
    TriggerEvent('chat:addSuggestion', '/bombero', 'Obligatorio para hacer rol a bombero')
end)


RegisterNetEvent('enp-bombero:sendNotify')
AddEventHandler('enp-bombero:sendNotify', function( msg, location, pos, IdPlayer )
  if job == 'fire' then 
    target.pos = pos
    print(json.encode(target.pos))
    coords = GetEntityCoords(PlayerPedId())
    dist = CalculateTravelDistanceBetweenPoints(coords.x,coords.y,coords.z,target.pos.x,target.pos.y,target.pos.z) / 1000
    TriggerEvent('pNotify:SendNotification',{text = "LLAMADA BOMBERO  </br> "..msg.."  en  "..location.." </br>  Distancia: "..dist.." Km </br> <p> </p><b style='color:#3efe00'>[Repág Aceptar] </b> <b style='color:#fe0000'>[Avpág Denegar] </b>",
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

RegisterNetEvent('enp-bombero:setBlip')
AddEventHandler('enp-bombero:setBlip', function(x, y, z)


    contador = 6000

    mechanic_llamada = true 
    Citizen.CreateThread(function()
      blipPos = vector3(x, y, z)
      blip = AddBlipForCoord(x, y, z)
      SetBlipSprite(blip, Config['Bombero'].SetBlipSprite)
      SetBlipScale(blip, Config['Bombero'].SetBlipScale)
      SetBlipColour(blip, Config['Bombero'].SetBlipColour)
      BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(Config['Bombero'].TextBlip )
      EndTextCommandSetBlipName(blip)
      table.insert(blips, blip)

      activarcontador = true
      
      
    while mechanic_llamada do
      if IsControlJustReleased(1, 10) then
        TriggerEvent("pNotify:SendNotification", {
          text = 'Has aceptado la llamada',
          theme = 'sunset',
          timeout = 3000,
          layout = "centerRight",
          queue = "forzar"
        })
        
        activarcontador2 = true
        mechanic_llamada = false
        TriggerEvent('enp-bombero:remblip', blip)
        SetNewWaypoint(tonumber(x), tonumber(y))
      elseif IsControlJustReleased(1, 11) then
      
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

RegisterNetEvent('enp-bombero:remblip')
AddEventHandler('enp-bombero:remblip', function(blip)
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


RegisterCommand('bombero', function(source, args)
  local IdPlayer = GetPlayerServerId(NetworkGetEntityOwner(PlayerPedId()))
  local playername = GetPlayerName(PlayerId())
  local ped = GetPlayerPed(PlayerId())
  local x, y, z = table.unpack(GetEntityCoords(ped, true))
  local street = GetStreetNameAtCoord(x, y, z)
  local location = GetStreetNameFromHashKey(street)
  local msg = table.concat(args, ' ')
  local pos = GetEntityCoords(PlayerPedId())

  if args[1] == nil then
    TriggerEvent('chatMessage', '[^1LLAMADA BOMBEROS^0]', {255,255,255}, ' Escribe el motivo de la llamada.')
  else
    TriggerEvent('chatMessage', '[^1LLAMADA BOMBEROS^0]', {255,255,255}, ' Has llamado a la central de bomberos.')
    TriggerServerEvent('enp-bombero:sendNotify', msg, location, pos, IdPlayer)
    TriggerServerEvent('enp-bombero:alert', message, x, y, z)
  end
end)