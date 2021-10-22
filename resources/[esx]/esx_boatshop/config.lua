Config = {}
Config.Locale = 'en'

Config.DrawDistance = 100
Config.MarkerColor  = {r = 120, g = 120, b = 240}

Config.ResellPercentage = 50
Config.LicenseEnable    = true
Config.LicensePrice     = 50000

-- looks like this: 'LLL NNN'
-- The maximum plate length is 8 chars (including spaces & symbols), don't go past it!
Config.PlateLetters  = 3
Config.PlateNumbers  = 3
Config.PlateUseSpace = true

Config.Zones = {
	ShopEntering = { -- Marker for Accessing Shop
		Pos   = vector3(-714.3, -1297.3, 4.1),
		Size  = {x = 1.5, y = 1.5, z = 1.0},
		Type  = 1
	},
	ShopInside = { -- Marker for Viewing Vehicles
		Pos     = vector3(-881.30, -1578.34, 1.0),
		Size    = {x = 1.5, y = 1.5, z = 1.0},
		Heading = 135.2,
		Type    = -1
	},
	ShopOutside = { -- Marker for Purchasing Vehicles
		Pos     = vector3(-881.30, -1578.34, 1.0),
		Size    = {x = 1.5, y = 1.5, z = 1.0},
		Heading = 135.2,
		Type    = -1
	},
	ResellVehicle = { -- Marker for Selling Vehicles
		Pos   = vector3(-1054.05, -1806.47, -0.4),
		Size  = {x = 3.0, y = 3.0, z = 1.0},
		Type  = 1
	}
}
