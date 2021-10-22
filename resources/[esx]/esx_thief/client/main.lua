ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

function IsAbleToSteal(targetSID, err)
	ESX.TriggerServerCallback('esx_thief:getValue', function(result)
		local result = result
		if result.value then
			err(false)
		else
			err(_U('no_hands_up'))
		end
	end, targetSID)
end

function OpenStealMenu(target, target_id)
	ESX.UI.Menu.CloseAll()

	ESX.TriggerServerCallback('esx_thief:getOtherPlayerData', function(data)
		local elements = {}

		if Config.EnableCash then
			table.insert(elements, {
				label = (('[%s] $%s'):format(_U('cash'), ESX.Math.GroupDigits(data.money))),
				value = 'money',
				type = 'item_money',
				amount = data.money
			})
		end

		if Config.EnableBlackMoney then
			local blackMoney = 0

			for i=1, #data.accounts, 1 do
				if data.accounts[i].name == 'black_money' then
					blackMoney = data.accounts[i].money
					break
				end
			end

			table.insert(elements, {
				label = (('[%s] $%s'):format(_U('black_money'), ESX.Math.GroupDigits(blackMoney))),
				value = 'black_money',
				type = 'item_account',
				amount = blackMoney
			})
		end

		if Config.EnableInventory then
			table.insert(elements, {label = '--- ' .. _U('inventory') .. ' ---', value = nil})

			for i=1, #data.inventory, 1 do
				if data.inventory[i].name ~= "boitierrgb" then
					if data.inventory[i].count > 0 then
						table.insert(elements, {
							label = data.inventory[i].label .. ' x' .. data.inventory[i].count,
							value = data.inventory[i].name,
							type  = 'item_standard',
							amount = data.inventory[i].count,
						})
					end
				end
			end
		end
		
		if Config.EnableWeapons then
			table.insert(elements, {label = '--- ' .. _U('weapons') .. ' ---', value = nil})
			
			for i=1, #data.weapons, 1 do
			  table.insert(elements, {
				label          = 'Arma ' .. ESX.GetWeaponLabel(data.weapons[i].name),
				value          = data.weapons[i].name,
				type       = 'item_weapon',
				amount         = data.weapons[i].ammo,
			  })
			end
		end
		ExecuteCommand('me le cachea')
		ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'steal_inventory', {
			title  = _U('target_inventory'),
			elements = elements,
			align = 'bottom-right'
		}, function(data, menu)

			if data.current.value ~= nil then

				local itemType = data.current.type
				local itemName = data.current.value
				local amount   = data.current.amount
				
				if (itemName == 'zetony') then
					menu.close()
					return
				end
				
				local elements = {}
				table.insert(elements, {label = _U('steal'), action = 'steal', itemType, itemName, amount})
				table.insert(elements, {label = _U('return'), action = 'return'})
				
				ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'steal_inventory_item', {
					title = _U('action_choice'),
					align = 'bottom-right',
					elements = elements
				}, function(data2, menu2)
					if data2.current.action == 'steal' then

						if itemType == 'item_standard' then
							ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'steal_inventory_item_standard', {
								title = _U('amount')
							}, function(data3, menu3)
								local quantity = tonumber(data3.value)
								TriggerServerEvent('esx_thief:stealPlayerItem', GetPlayerServerId(target), itemType, itemName, quantity)
								--local persona = GetPlayerName(PlayerId(-1))
								--local otra = GetPlayerName(GetPlayerServerId(target)))
								--local msj = '['..persona..'] Ha robado con menu de G a ['..otra..'] \n Item:'..itemName..' \n Cantidad:'..quantity
								--TriggerServerEvent('discordlogsnowi:sendToDiscordsnowi8', 'ROBO CON LA G', msj)
								OpenStealMenu(target)
							
								menu3.close()
								menu2.close()
							end, function(data3, menu3)
								menu3.close()
							end)
						else
							TriggerServerEvent('esx_thief:stealPlayerItem', GetPlayerServerId(target), itemType, itemName, amount)
							--local persona = GetPlayerName(PlayerId(-1))
								--local otra = GetPlayerName(GetPlayerServerId(target)))
								--local msj = '['..persona..'] Ha robado con menu de G a ['..otra..'] \n Weapon/Dinero negro:'..itemName..' \n Cantidad:'..amount
								--TriggerServerEvent('discordlogsnowi:sendToDiscordsnowi8', 'ROBO CON LA G', msj)
							OpenStealMenu(target)
						end

					elseif data2.current.action == 'return' then
						ESX.UI.Menu.CloseAll()
						OpenStealMenu(target)
					end

				end, function(data2, menu2)
					menu2.close()
				end)
			end

		end, function(data, menu)
			menu.close()
		end)
	end, GetPlayerServerId(target))
end

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)

		local ped = PlayerPedId()

		if IsControlJustPressed(0, 47) and IsPedArmed(ped, 7) and not IsEntityDead(ped) and IsPedOnFoot(ped) then
			local target, distance = ESX.Game.GetClosestPlayer()

			if target ~= -1 and distance ~= -1 and distance <= 2.0 then
				local target_id = GetPlayerServerId(target)
				
				IsAbleToSteal(target_id, function(err)
					if(not err)then
						OpenStealMenu(target, target_id)
					else
						ESX.ShowNotification(err)
					end
				end)
			elseif distance < 20 and distance > 2.0 then
				ESX.ShowNotification(_U('too_far'))
			else
				ESX.ShowNotification(_U('no_players_nearby'))
			end
		end
	end
end)
