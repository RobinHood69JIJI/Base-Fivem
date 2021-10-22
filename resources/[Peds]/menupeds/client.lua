ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(10)
	end
end)


Citizen.CreateThread(function()
	CheckSteam()
    while true do 
        Wait(150)
    end
end)

CheckSteam = function()
  checked = nil
  TriggerServerEvent('peds:checked')
  while (checked == nil) do
      Citizen.Wait(1)
  end
end


function AbrirMenu()
    ESX.UI.Menu.CloseAll()

    ESX.UI.Menu.Open( 'default', GetCurrentResourceName(), 'menu', -- Replace the menu name
  {
    title    = ("Peds - Atenas"),
    align = 'bottom-right', 
    elements = { 
      {label = ('Dani'),     value = 'dani'},
 
    }
  },
  function(data, menu)
    if data.current.value == 'dani' then
      TriggerEvent('dani')
    end 
  end,
  function(data, menu)
      menu.close() 
  end
)
end


RegisterNetEvent('peds:checkid')
AddEventHandler('peds:checkid', function(state)
  checked = state 
end)


RegisterCommand("peds", function() 
  if checked then 
    AbrirMenu()
  elseif not checked then 
    ESX.ShowNotification('No tienes permisos para ver esto')
    end 
end)

RegisterNetEvent('dani')
AddEventHandler('dani', function()
local ped = 'Dani'
local hash = GetHashKey(ped)
	RequestModel(hash)
	while not HasModelLoaded(hash)
			do RequestModel(hash)
				Citizen.Wait(0)
			end	
			SetPlayerModel(PlayerId(), hash)
		end)


    
    
    
    