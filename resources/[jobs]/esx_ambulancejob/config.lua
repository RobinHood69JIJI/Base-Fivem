Config                            = {}

Config.DrawDistance               = 20.0 -- How close do you need to be in order for the markers to be drawn (in GTA units).

Config.Marker                     = {type = 1, x = 1.5, y = 1.5, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false}

Config.ReviveReward               = 500  -- Revive reward, set to 0 if you don't want it enabled
Config.AntiCombatLog              = true -- Enable anti-combat logging? (Removes Items when a player logs back after intentionally logging out while dead.)
Config.LoadIpl                    = true -- Disable if you're using fivem-ipl or other IPL loaders

Config.Locale                     = 'es'

Config.EarlyRespawnTimer          = 60000 * 5  -- time til respawn is available
Config.BleedoutTimer              = 60000 * 10 -- time til the player bleeds out

Config.EnablePlayerManagement     = true -- Enable society managing (If you are using esx_society).

Config.RemoveWeaponsAfterRPDeath  = true
Config.RemoveCashAfterRPDeath     = true
Config.RemoveItemsAfterRPDeath    = true

-- Let the player pay for respawning early, only if he can afford it
Config.EarlyRespawnFine           = true
Config.EarlyRespawnFineAmount     = 5000

Config.RespawnPoint = {coords = vector3(300.06, -575.67, 43.26), heading = 96.98}

Config.Hospitals = {

	CentralLosSantos = {

		Blip = {
			coords = vector3(291.56, -586.74, 43.2),
			sprite = 61,
			scale  = 1.2,
			color  = 1
		},

		AmbulanceActions = {
			vector3(305.91, -597.43, 42.30)
		},

		Pharmacies = {
			vector3(311.35, -594.33, 42.30)
		},
		
		Vehicles = {
			{
				Spawner = vector3(298.74, -604.4, 43.35),
				InsideShop = vector3(323.92, -623.62, 29.29),
				Marker = { type = 36, x = 1.0, y = 1.0, z = 1.0, r = 255, g = 0, b = 0, a = 100, rotate = true },
				SpawnPoints = {
					{ coords = vector3(293.2, -612.14, 43.39), heading = 73.91, radius = 4.0 },
				}
			}
		},

		Helicopters = {
			{
				Spawner = vector3(339.74, -590.65, 74.17),
				InsideShop = vector3(351.11, -585.79, 74.17),
				Marker = { type = 34, x = 1.5, y = 1.5, z = 1.0, r = 255, g = 0, b = 0, a = 100, rotate = true },
				SpawnPoints = {
					{ coords = vector3(351.11, -585.79, 74.17), heading = 243.58, radius = 10.0 },
				}
			}
		},
		
		Deleters = {
			vector3(-453.97, -333.73, 34.37),
			vector3(453.68, -332.66, 42.13),
			vector3(352.1, -587.73, 73.17)
		},

		FastTravels = {
			{
				From = vector3(-501.75, -332.56, 41.5),
				To = {coords = vector3(318.5, -1459.1, 45.6), heading = 0.0},
				Marker = {type = 1, x = 2.0, y = 2.0, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false}
			},

			{
				From = vector3(275.3, -1361, 23.5),
				To = {coords = vector3(295.8, -1446.5, 28.9), heading = 0.0},
				Marker = {type = 1, x = 2.0, y = 2.0, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false}
			},

			{
				From = vector3(247.3, -1371.5, 23.5),
				To = {coords = vector3(333.1, -1434.9, 45.5), heading = 138.6},
				Marker = {type = 1, x = 1.5, y = 1.5, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false}
			},

			{
				From = vector3(335.5, -1432.0, 45.50),
				To = {coords = vector3(-454.31, -340.06, 34.36), heading = 0.0},
				Marker = {type = 1, x = 2.0, y = 2.0, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false}
			},

			{
				From = vector3(234.5, -1373.7, 20.9),
				To = {coords = vector3(320.9, -1478.6, 28.8), heading = 0.0},
				Marker = {type = 1, x = 1.5, y = 1.5, z = 1.0, r = 102, g = 0, b = 102, a = 100, rotate = false}
			},			
			
			{
				From = vector3(339.89, -584.83, 73.17),
				To = {coords = vector3(327.31, -603.23, 42.38), heading = 0.0},
				Marker = {type = 1, x = 1.5, y = 1.5, z = 1.0, r = 102, g = 0, b = 102, a = 100, rotate = false}
			},

			{
				From = vector3(-335.58, 1114.34, 330.56),
				To = {coords = vector3(-335.58, 1114.34, 325.51), heading = 0.0},
				Marker = {type = 1, x = 1.5, y = 1.5, z = 1.0, r = 102, g = 0, b = 102, a = 100, rotate = false}
			},

			{
				From = vector3(-330.9, 1116.07, 325.51),
				To = {coords = vector3(-330.9, 1116.07, 320.45), heading = 0.0},
				Marker = {type = 1, x = 1.5, y = 1.5, z = 1.0, r = 102, g = 0, b = 102, a = 100, rotate = false}
			},

			{
				From = vector3(-335.58, 1114.34, 320.46),
				To = {coords = vector3(-335.58, 1114.34, 315.41), heading = 0.0},
				Marker = {type = 1, x = 1.5, y = 1.5, z = 1.0, r = 102, g = 0, b = 102, a = 100, rotate = false}
			},

			{
				From = vector3(-330.9, 1116.07, 315.41),
				To = {coords = vector3(-330.9, 1116.07, 310.36), heading = 0.0},
				Marker = {type = 1, x = 1.5, y = 1.5, z = 1.0, r = 102, g = 0, b = 102, a = 100, rotate = false}
			},

			{
				From = vector3(-322.19, 1109.68, 310.36),
				To = {coords = vector3(-322.19, 1109.68, 302.17), heading = 0.0},
				Marker = {type = 1, x = 1.5, y = 1.5, z = 1.0, r = 102, g = 0, b = 102, a = 100, rotate = false}
			},

			{
				From = vector3(0.0, 0.0, 0.0),
				To = {coords = vector3(234.2, -761.4, 30.85), heading = 167.9},
				Marker = {type = 1, x = 1.5, y = 1.5, z = 1.0, r = 102, g = 0, b = 102, a = 100, rotate = false}
			}
		},

		FastTravelsPrompt = {
			{
				From = vector3(256.5, -1357.7, 36.0),
				To = {coords = vector3(251.9, -1363.3, 38.5), heading = 0.0},
				Marker = {type = 1, x = 1.5, y = 1.5, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false},
				Prompt = _U('fast_travel')
			},

			{
				From = vector3(256.5, -1357.7, 36.0),
				To = {coords = vector3(235.4, -1372.8, 26.3), heading = 0.0},
				Marker = {type = 1, x = 1.5, y = 1.5, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false},
				Prompt = _U('fast_travel')
			}
		}

	}
}

Config.AuthorizedVehicles = {
	car = {
		ambulance = {
			{model = 'ambulance', price = 4500}
			
		},

		doctor = {
			{model = 'ambulance', price = 4500},
			{model = 'polgs350', price = 3000}
		},

		chief_doctor = {
			{model = 'ambulance', price = 4500},
			{model = 'polgs350', price = 3000}
		},

		boss = {
			{model = 'ambulance', price = 4500},
			{model = 'polgs350', price = 3000}
		}
	},

	helicopter = {
		ambulance = {},

		doctor = {
			
		},

		chief_doctor = {
			{model = 'supervolito', price = 10000}
		},

		boss = {
			{model = 'supervolito', price = 10000}
		}
	}
}
