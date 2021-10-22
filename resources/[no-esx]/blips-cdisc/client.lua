--Blips

local blips = {
  -- Example {title="", colour=, id=, x=, y=, z=},
{title="Puticlub", colour=1, scale=1.0, id=121, x=131.25, y=-1302.92, z=29.23},

}

Citizen.CreateThread(function()

  for _, info in pairs(blips) do
    info.blip = AddBlipForCoord(info.x, info.y, info.z)
    SetBlipSprite(info.blip, info.id)
    SetBlipDisplay(info.blip, 4)
    SetBlipScale(info.blip, 1.2)
    SetBlipColour(info.blip, info.colour)
    SetBlipAsShortRange(info.blip, true)
  BeginTextCommandSetBlipName("STRING")
    AddTextComponentString(info.title)
    EndTextCommandSetBlipName(info.blip)
  end
end)


--Comando Discord
RegisterCommand("discord", function()
	msg(" El discord de KoalaRp es: ^1https://discord.gg/9JA94dgHYz")
end, false)

function msg(text)
	TriggerEvent("chatMessage", "[KoalaRp] ", {46, 255, 0}, text)
end