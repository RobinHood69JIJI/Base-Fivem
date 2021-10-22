ESX = nil
PlayerData = nil

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(500)
    end

    while ESX.GetPlayerData().job == nil do
        Citizen.Wait(10)
    end

    PlayerData = ESX.GetPlayerData()
end)

local hunger = 0
local thirst = 0
local stress = 0
local showHud = true  
local hud = true


RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(playerData)
    SendNUIMessage({
        active= hud,
    })
end)

function updateHungerThirstHUD(hunger, thirst,stress)
    local ped = PlayerPedId()
    local health = GetEntityHealth(ped) - 100
    local vehicle = GetVehiclePedIsIn(ped)
            
    if health < 1 then health = 0 end
    local o2 = false
    armor = GetPedArmour(ped)
    if armor > 100.0 then armor = 100.0 end
    if IsPedSwimmingUnderWater(ped) then
        o2 = GetPlayerUnderwaterTimeRemaining(PlayerId()) * 10
    end
    if IsPedInAnyVehicle(ped,true) then
        fuel = GetVehicleFuelLevel(vehicle)
    end
    SendNUIMessage({
        veh = IsPedInAnyVehicle(ped,true),
        o2 = o2,
        values = {
        health = health,
        shield = armor,
        hunger = hunger,
        thirst = thirst,
        stress = stress,
        id = GetPlayerServerId(PlayerId()),
        fuel = fuel,
        }
    })
end

function DrawText3D(x,y,z, text, r,g,b)
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    local dist = GetDistanceBetweenCoords(px,py,pz, x,y,z, 1)
 
    local scale = (1/dist)*2
    local fov = (1/GetGameplayCamFov())*100
    local scale = scale*fov
   
    if onScreen then
        SetTextScale(0.0*scale, 0.55*scale)
        SetTextFont(4)
        SetTextProportional(1)
        SetTextColour(r, g, b, 150)
        SetTextEntry("STRING")
        SetTextCentre(1)
        AddTextComponentString(text)
        DrawText(_x,_y)
    end
end

function mostrarhud()
    SendNUIMessage({
        active= hud,
    })
end

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(500)
        mostrarhud()
        updateHungerThirstHUD(hunger, thirst, stress)
    end
end)

RegisterNetEvent("esx_status:onTick")
AddEventHandler("esx_status:onTick", function(status)
    hunger, thirst = status[1].percent, status[2].percent
end)

Citizen.CreateThread(function()
	Citizen.Wait(100)

	while true do
		local sleepThread = 500

		local radarEnabled = IsRadarEnabled()

		if not IsPedInAnyVehicle(PlayerPedId()) and radarEnabled then
			DisplayRadar(false)
		elseif IsPedInAnyVehicle(PlayerPedId()) and not radarEnabled then
			DisplayRadar(true)
		end

		Citizen.Wait(sleepThread)
	end
end)

Citizen.CreateThread(function()
    while true do
      Citizen.Wait(1)
      if (IsPauseMenuActive()) and not isPaused then
            showHud = false
            hud = false
        else
            showHud = true
            hud = true
        end
    end
end)

Citizen.CreateThread(function()
	while true do
        Citizen.Wait(0)
		HideHudComponentThisFrame(2)
		HideHudComponentThisFrame(3)
        HideHudComponentThisFrame(4)
        HideHudComponentThisFrame(6)
        HideHudComponentThisFrame(7)
		HideHudComponentThisFrame(8)
		HideHudComponentThisFrame(9)
        HideHudComponentThisFrame(20) 
	end
end)

--Mostrar hud con coche

local HUD_ELEMENTS = {
    HUD = { id = 0, hidden = false },
    HUD_WANTED_STARS = { id = 1, hidden = true },
    HUD_WEAPON_ICON = { id = 2, hidden = true },
    HUD_CASH = { id = 3, hidden = true },
    HUD_MP_CASH = { id = 4, hidden = true },
    HUD_MP_MESSAGE = { id = 5, hidden = true },
    HUD_VEHICLE_NAME = { id = 6, hidden = true },
    HUD_AREA_NAME = { id = 7, hidden = true },
    HUD_VEHICLE_CLASS = { id = 8, hidden = true },
    HUD_STREET_NAME = { id = 9, hidden = true },
    HUD_HELP_TEXT = { id = 10, hidden = false },
    HUD_FLOATING_HELP_TEXT_1 = { id = 11, hidden = false },
    HUD_FLOATING_HELP_TEXT_2 = { id = 12, hidden = false },
    HUD_CASH_CHANGE = { id = 13, hidden = true },
    HUD_SUBTITLE_TEXT = { id = 15, hidden = false },
    HUD_RADIO_STATIONS = { id = 16, hidden = false },
    HUD_SAVING_GAME = { id = 17, hidden = false },
    HUD_GAME_STREAM = { id = 18, hidden = false },
    HUD_WEAPON_WHEEL = { id = 19, hidden = false },
    HUD_WEAPON_WHEEL_STATS = { id = 20, hidden = false },
    MAX_HUD_COMPONENTS = { id = 21, hidden = false },
    MAX_SCRIPTED_HUD_COMPONENTS = { id = 141, hidden = false }
}

-- Parameter for hiding radar when not in a vehicle
local HUD_HIDE_RADAR_ON_FOOT = true

-- Main thread
Citizen.CreateThread(function()
    -- Loop forever and update HUD every frame
    while true do
        Citizen.Wait(0)

        -- If enabled only show radar when in a vehicle (use a zoomed out view)
        if HUD_HIDE_RADAR_ON_FOOT then
            local player = GetPlayerPed(-1)
            DisplayRadar(IsPedInAnyVehicle(player, false))
            SetRadarZoomLevelThisFrame(200.0)
        end

        -- Hide other HUD components
        for key, val in pairs(HUD_ELEMENTS) do
            if val.hidden then
                HideHudComponentThisFrame(val.id)
            else
                ShowHudComponentThisFrame(val.id)
            end
        end
    end
end)