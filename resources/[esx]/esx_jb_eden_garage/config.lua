Config = {}
Config.Blip			= {sprite= 50, color = 3}
Config.BoatBlip		= {sprite= 410, color = 30}
Config.AirplaneBlip	= {sprite= 90, color = 5}
Config.MecanoBlip	= {sprite= 357, color = 26}
Config.Price		= 3000 -- pound price to get vehicle back
Config.SwitchGaragePrice		= 4000 -- price to pay to switch vehicles in garage
Config.StoreOnServerStart = true -- Store all vehicles in garage on server start?
Config.Locale = 'es'

Config.Garages = {
	Garage_Central = {
		Name = 'Garaje Central',
		-- IconColor = 26,
		Pos = {x=219.25, y=-810.86, z=30.69},
		Marker = { type = 25, w= 1.5, h= 1.0,r = 204, g = 204, b = 0},
		HelpPrompt = _U('open_car_garage'),
		SpawnPoint = {
			Pos = {x= 229.5388, y= -799.7523, z= 30.67},
			Heading = 159.37,
			Marker = { type = 25, w= 1.5, h= 1.0,r=0,g=255,b=0},
			HelpPrompt = _U('spawn_car')
		},
		DeletePoint = {
			Pos = {x=214.08, y= -792.6, z= 30.95},
			Marker = { type = 25, w= 1.5, h= 1.0,r=255,g=0,b=0},
			HelpPrompt = _U('store_car')
		}, 	
	},
	Garage_Sandy = {
		Name = 'Garaje de Sandy Shores',
		-- IconColor = 47,
		Pos = {x=1983.06, y=3709.42, z=32.12},
		Marker = { type = 25, w= 1.5, h= 1.0,r = 204, g = 204, b = 0},
		HelpPrompt = _U('open_car_garage'),
		SpawnPoint = {
			Pos = {x=1974.8, y= 3713.27, z= 32.20},
			Heading = 55.28,
			Marker = { type = 25, w= 1.5, h= 1.0,r=0,g=255,b=0},
			HelpPrompt = _U('spawn_car')
		},
		DeletePoint = {
			Pos = {x=1965.55, y=3703.92, z=32.35},
			Marker = { type = 25, w= 1.5, h= 1.0,r=255,g=0,b=0},
			HelpPrompt = _U('store_car')
		}, 	
	},
	Garage_Paleto = {
		Name = 'Garaje de Paleto Bay',
		-- IconColor = 1,
		Pos = {x= -136.97, y= 6356.64, z= 31.60},
		Marker = { type = 25, w= 1.5, h= 1.0,r = 204, g = 204, b = 0},
		HelpPrompt = _U('open_car_garage'),
		SpawnPoint = {
			Pos = {x= -143.69, y= 6350.66, z= 31.60},
			Heading = 135.84,
			Marker = { type = 25, w= 1.5, h= 1.0,r=0,g=255,b=0},
			HelpPrompt = _U('spawn_car')
		},
		DeletePoint = {
			Pos = {x=-151.36, y= 6358.41, z= 31.60},
			Marker = { type = 25, w= 1.5, h= 1.0,r=255,g=0,b=0},
			HelpPrompt = _U('store_car')
		}, 	
	},

	Garage_Mafia2 = {
		Name = 'Garaje Mafia',
		-- IconColor = 1,
		Pos = {x= -112.36, y= 1007.45, z= 235.77},
		Marker = { type = 25, w= 1.5, h= 1.0,r = 204, g = 204, b = 0},
		HelpPrompt = _U('open_car_garage'),
		SpawnPoint = {
			Pos = {x= -124.29, y= 1007.21, z= 235.73},
			Heading = 135.84,
			Marker = { type = 25, w= 1.5, h= 1.0,r=0,g=255,b=0},
			HelpPrompt = _U('spawn_car')
		},
		DeletePoint = {
			Pos = {x=-130.82, y= 1004.17, z= 235.73},
			Marker = { type = 25, w= 1.5, h= 1.0,r=255,g=0,b=0},
			HelpPrompt = _U('store_car')
		}, 	
	},

	Garage_Mafia4 = {
		Name = 'Garaje Mafia',
		-- IconColor = 1,
		Pos = {x= -3204.69, y= 842.84, z= 8.93},
		Marker = { type = 25, w= 1.5, h= 1.0,r = 204, g = 204, b = 0},
		HelpPrompt = _U('open_car_garage'),
		SpawnPoint = {
			Pos = {x= -3204.69, y= 842.84, z= 8.93},
			Heading = 125.91,
			Marker = { type = 25, w= 1.5, h= 1.0,r=0,g=255,b=0},
			HelpPrompt = _U('spawn_car')
		},
		DeletePoint = {
			Pos = {x=-3201.23, y= 835.63, z= 8.93},
			Marker = { type = 25, w= 1.5, h= 1.0,r=255,g=0,b=0},
			HelpPrompt = _U('store_car')
		}, 	
	},

	Garage_Mafia5 = {
		Name = 'Garaje Mafia',
		-- IconColor = 1,
		Pos = {x= -806.19, y= 162.7, z= 71.54},
		Marker = { type = 25, w= 1.5, h= 1.0,r = 204, g = 204, b = 0},
		HelpPrompt = _U('open_car_garage'),
		SpawnPoint = {
			Pos = {x= -814.49, y= 160.51, z= 71.29},
			Heading = 114.151,
			Marker = { type = 25, w= 1.5, h= 1.0,r=0,g=255,b=0},
			HelpPrompt = _U('spawn_car')
		},
		DeletePoint = {
			Pos = {x=-828.19, y= 173.71, z= 70.59},
			Marker = { type = 25, w= 1.5, h= 1.0,r=255,g=0,b=0},
			HelpPrompt = _U('store_car')
		}, 	
	},

	Garage_Mafia6 = {
		Name = 'Garaje Mafia',
		-- IconColor = 1,
		Pos = {x= -1525.53, y= 83.79, z= 56.55},
		Marker = { type = 25, w= 1.5, h= 1.0,r = 204, g = 204, b = 0},
		HelpPrompt = _U('open_car_garage'),
		SpawnPoint = {
			Pos = {x= -1525.53, y= 83.79, z= 56.55},
			Heading = 288.86,
			Marker = { type = 25, w= 1.5, h= 1.0,r=0,g=255,b=0},
			HelpPrompt = _U('spawn_car')
		},
		DeletePoint = {
			Pos = {x=-1532.71, y= 87.22, z= 56.74},
			Marker = { type = 25, w= 1.5, h= 1.0,r=255,g=0,b=0},
			HelpPrompt = _U('store_car')
		}, 	
	},

	
	Garage_Mafia7 = {
		Name = 'Garaje Mafia',
		-- IconColor = 1,
		Pos = {x= -2662.15, y= 1305.52, z= 147.12},
		Marker = { type = 25, w= 1.5, h= 1.0,r = 204, g = 204, b = 0},
		HelpPrompt = _U('open_car_garage'),
		SpawnPoint = {
			Pos = {x= -2662.15, y= 1305.52, z= 147.12},
			Heading = 270.76,
			Marker = { type = 25, w= 1.5, h= 1.0,r=0,g=255,b=0},
			HelpPrompt = _U('spawn_car')
		},
		DeletePoint = {
			Pos = {x=-2668.02, y= 1309.8, z= 147.12},
			Marker = { type = 25, w= 1.5, h= 1.0,r=255,g=0,b=0},
			HelpPrompt = _U('store_car')
		}, 	
	},

	

	Garage_Mafia = {
		Name = 'Garaje Mafia',
		-- IconColor = 1,
		Pos = {x= -1906.22, y= 2000.18, z= 142.0},
		Marker = { type = 25, w= 1.5, h= 1.0,r = 204, g = 204, b = 0},
		HelpPrompt = _U('open_car_garage'),
		SpawnPoint = {
			Pos = {x= -1906.22, y= 2000.18, z= 142.0},
			Heading = 135.84,
			Marker = { type = 25, w= 1.5, h= 1.0,r=0,g=255,b=0},
			HelpPrompt = _U('spawn_car')
		},
		DeletePoint = {
			Pos = {x=-1906.40, y= 2008.78, z= 141.57},
			Marker = { type = 25, w= 1.5, h= 1.0,r=255,g=0,b=0},
			HelpPrompt = _U('store_car')
		}, 	
	},

	Garage_UFC = {
		Name = 'Garaje UFC',
		-- IconColor = 1,
		Pos = {x= -227.33, y= -2048.97, z= 27.62},
		Marker = { type = 25, w= 1.5, h= 1.0,r = 204, g = 204, b = 0},
		HelpPrompt = _U('open_car_garage'),
		SpawnPoint = {
			Pos = {x= -233.52, y= -2056.07, z= 27.62},
			Heading = 135.84,
			Marker = { type = 25, w= 1.5, h= 1.0,r=0,g=255,b=0},
			HelpPrompt = _U('spawn_car')
		},
		DeletePoint = {
			Pos = {x= -219.71, y= -2037.24, z= 27.62},
			Marker = { type = 25, w= 1.5, h= 1.0,r=255,g=0,b=0},
			HelpPrompt = _U('store_car')
		}, 	
	},

	Garage_Mafia3 = {
		Name = 'Garaje Mafia',
		-- IconColor = 1,
		Pos = {x= 1415.86, y= 1118.72, z= 114.84},
		Marker = { type = 25, w= 1.5, h= 1.0,r = 204, g = 204, b = 0},
		HelpPrompt = _U('open_car_garage'),
		SpawnPoint = {
			Pos = {x= 1408.12, y= 1116.45, z= 114.84},
			Heading = 135.84,
			Marker = { type = 25, w= 1.5, h= 1.0,r=0,g=255,b=0},
			HelpPrompt = _U('spawn_car')
		},
		DeletePoint = {
			Pos = {x= 1400.69, y= 1121.33, z= 114.84},
			Marker = { type = 25, w= 1.5, h= 1.0,r=255,g=0,b=0},
			HelpPrompt = _U('store_car')
		}, 	
	},

	Garage_1 = {
		Name = 'Garaje',
		-- IconColor = 1,
		Pos = {x= 911.74, y= -16.56, z= 78.76},
		Marker = { type = 25, w= 1.5, h= 1.0,r = 204, g = 204, b = 0},
		HelpPrompt = _U('open_car_garage'),
		SpawnPoint = {
			Pos = {x= 905.47, y= -11.11, z= 78.76},
			Heading = 135.84,
			Marker = { type = 25, w= 1.5, h= 1.0,r=0,g=255,b=0},
			HelpPrompt = _U('spawn_car')
		},
		DeletePoint = {
			Pos = {x= 898.29, y= -7.53, z= 78.76},
			Marker = { type = 25, w= 1.5, h= 1.0,r=255,g=0,b=0},
			HelpPrompt = _U('store_car')
		}, 	
	},


	Garage_3 = {
		Name = 'Garaje',
		-- IconColor = 1,
		Pos = {x= -1192.8, y= -1500.56, z= 4.37},
		Marker = { type = 25, w= 1.5, h= 1.0,r = 204, g = 204, b = 0},
		HelpPrompt = _U('open_car_garage'),
		SpawnPoint = {
			Pos = {x= -1175.0, y= -1500.43, z= 4.38},
			Heading = 135.84,
			Marker = { type = 25, w= 1.5, h= 1.0,r=0,g=255,b=0},
			HelpPrompt = _U('spawn_car')
		},
		DeletePoint = {
			Pos = {x= -1188.68, y= -1506.5, z= 4.38},
			Marker = { type = 25, w= 1.5, h= 1.0,r=255,g=0,b=0},
			HelpPrompt = _U('store_car')
		}, 	
	},

	Garage_4 = {
		Name = 'Garaje',
		-- IconColor = 1,
		Pos = {x= 371.4, y= 285.53, z= 103.26},
		Marker = { type = 25, w= 1.5, h= 1.0,r = 204, g = 204, b = 0},
		HelpPrompt = _U('open_car_garage'),
		SpawnPoint = {
			Pos = {x= 374.49, y= 293.46, z= 103.27},
			Heading = 135.84,
			Marker = { type = 25, w= 1.5, h= 1.0,r=0,g=255,b=0},
			HelpPrompt = _U('spawn_car')
		},
		DeletePoint = {
			Pos = {x= 360.86, y= 292.83, z= 103.51},
			Marker = { type = 25, w= 1.5, h= 1.0,r=255,g=0,b=0},
			HelpPrompt = _U('store_car')
		}, 	
	},

	Garage_5 = {
		Name = 'Garaje',
		-- IconColor = 1,
		Pos = {x= 1222.84, y= 2698.53, z= 38.03},
		Marker = { type = 25, w= 1.5, h= 1.0,r = 204, g = 204, b = 0},
		HelpPrompt = _U('open_car_garage'),
		SpawnPoint = {
			Pos = {x= 1223.34, y= 2719.89, z= 38.0},
			Heading = 135.84,
			Marker = { type = 25, w= 1.5, h= 1.0,r=0,g=255,b=0},
			HelpPrompt = _U('spawn_car')
		},
		DeletePoint = {
			Pos = {x= 1210.4, y= 2707.92, z= 38.01},
			Marker = { type = 25, w= 1.5, h= 1.0,r=255,g=0,b=0},
			HelpPrompt = _U('store_car')
		}, 	
	},

	Garage_6 = {
		Name = 'Garaje',
		-- IconColor = 1,
		Pos = {x= 2539.08, y= 4666.26, z= 34.08},
		Marker = { type = 25, w= 1.5, h= 1.0,r = 204, g = 204, b = 0},
		HelpPrompt = _U('open_car_garage'),
		SpawnPoint = {
			Pos = {x= 2545.92, y= 4662.93, z= 34.08},
			Heading = 135.84,
			Marker = { type = 25, w= 1.5, h= 1.0,r=0,g=255,b=0},
			HelpPrompt = _U('spawn_car')
		},
		DeletePoint = {
			Pos = {x= 2553.52, y= 4672.83, z= 33.93},
			Marker = { type = 25, w= 1.5, h= 1.0,r=255,g=0,b=0},
			HelpPrompt = _U('store_car')
		}, 	
	},

	Garage_7 = {
		Name = 'Garaje',
		-- IconColor = 1,
		Pos = {x= -2188.56, y= 4258.43, z= 48.57},
		Marker = { type = 25, w= 1.5, h= 1.0,r = 204, g = 204, b = 0},
		HelpPrompt = _U('open_car_garage'),
		SpawnPoint = {
			Pos = {x= -2191.68, y= 4266.11, z= 48.62},
			Heading = 135.84,
			Marker = { type = 25, w= 1.5, h= 1.0,r=0,g=255,b=0},
			HelpPrompt = _U('spawn_car')
		},
		DeletePoint = {
			Pos = {x= -2197.08, y= 4268.89, z= 48.52},
			Marker = { type = 25, w= 1.5, h= 1.0,r=255,g=0,b=0},
			HelpPrompt = _U('store_car')
		}, 	
	},

	Garage_8 = {
		Name = 'Garaje',
		-- IconColor = 1,
		Pos = {x= 1453.55, y= 6540.51, z= 15.31},
		Marker = { type = 25, w= 1.5, h= 1.0,r = 204, g = 204, b = 0},
		HelpPrompt = _U('open_car_garage'),
		SpawnPoint = {
			Pos = {x= 1459.62, y= 6552.2, z= 14.49},
			Heading = 135.84,
			Marker = { type = 25, w= 1.5, h= 1.0,r=0,g=255,b=0},
			HelpPrompt = _U('spawn_car')
		},
		DeletePoint = {
			Pos = {x= 1459.64, y= 6544.56, z= 14.69},
			Marker = { type = 25, w= 1.5, h= 1.0,r=255,g=0,b=0},
			HelpPrompt = _U('store_car')
		}, 	
	},

	Garage_9 = {
		Name = 'Garaje',
		-- IconColor = 1,
		Pos = {x= 2589.58, y= 417.26, z= 108.46},
		Marker = { type = 25, w= 1.5, h= 1.0,r = 204, g = 204, b = 0},
		HelpPrompt = _U('open_car_garage'),
		SpawnPoint = {
			Pos = {x= 2582.77, y= 427.03, z= 108.46},
			Heading = 135.84,
			Marker = { type = 25, w= 1.5, h= 1.0,r=0,g=255,b=0},
			HelpPrompt = _U('spawn_car')
		},
		DeletePoint = {
			Pos = {x= 2576.07, y= 426.41, z= 108.46},
			Marker = { type = 25, w= 1.5, h= 1.0,r=255,g=0,b=0},
			HelpPrompt = _U('store_car')
		}, 	
	},

	Garage_10 = {
		Name = 'Garaje',
		-- IconColor = 1,
		Pos = {x= 1011.73, y= -1967.14, z= 31.07},
		Marker = { type = 25, w= 1.5, h= 1.0,r = 204, g = 204, b = 0},
		HelpPrompt = _U('open_car_garage'),
		SpawnPoint = {
			Pos = {x= 1005.2, y= -1967.19, z= 30.93},
			Heading = 135.84,
			Marker = { type = 25, w= 1.5, h= 1.0,r=0,g=255,b=0},
			HelpPrompt = _U('spawn_car')
		},
		DeletePoint = {
			Pos = {x= 999.19, y= -1967.02, z= 30.79},
			Marker = { type = 25, w= 1.5, h= 1.0,r=255,g=0,b=0},
			HelpPrompt = _U('store_car')
		}, 	
	},


}

Config.GaragesMecano = {
	Bennys = {
		Name = _U('bennys_pound'),
		SpawnPoint = {
			Pos = {x = 477.729,y = -1888.856,z = 26.094},
			Heading = 303.0,
			Marker = { w= 1.5, h= 1.0,r=0,g=255,b=0},
			HelpPrompt = _U('take_from_pound')
		},
		DeletePoint = {
			Pos = {x = 459.733,y = -1890.335,z = 25.776},
			Marker = { w= 1.5, h= 1.0,r=255,g=0,b=0},
			HelpPrompt = _U('store_in_pound')
		}, 	
	},
	police = {
		Name = _U('police_pound'),
		SpawnPoint = {
			Pos = {x = 449.253,y = -1024.322,z = 28.57},
			Heading = 100.0,
			Marker = { w= 1.5, h= 1.0,r=0,g=255,b=0},
			HelpPrompt = _U('take_from_pound')
		},
		DeletePoint = {
			Pos = {x = 452.305,y = -996.752,z = 25.776},
			Marker = { w= 1.5, h= 1.0,r=255,g=0,b=0},
			HelpPrompt = _U('store_in_pound')
		}, 	
	},
	police2 = {
		Name = _U('police_pound'),
		SpawnPoint = {
			Pos = {x = 1868.325,y = 3694.566,z = 33.61},
			Heading = 100.0,
			Marker = { w= 1.5, h= 1.0,r=0,g=255,b=0},
			HelpPrompt = _U('take_from_pound')
		},
		DeletePoint = {
			Pos = {x = 1860.925,y = 3706.958,z = 33.36},
			Marker = { w= 1.5, h= 1.0,r=255,g=0,b=0},
			HelpPrompt = _U('store_in_pound')
		}, 	
	},
	police3 = {
		Name = _U('police_pound'),
		SpawnPoint = {
			Pos = {x = -474.000,y = 6029.71,z = 30.94},
			Heading = 226.0,
			Marker = { w= 1.5, h= 1.0,r=0,g=255,b=0},
			HelpPrompt = _U('take_from_pound')
		},
		DeletePoint = {
			Pos = {x = -462.932,y = 60.41,z = 31.34},
			Marker = { w= 1.5, h= 1.0,r=255,g=0,b=0},
			HelpPrompt = _U('store_in_pound')
		}, 	
	},
	-- Bennys2 = {
		-- Marker = 1,
		-- SpawnPoint = {
			-- Pos = {x=-190.455, y= -1290.654, z= 30.295},
			-- Color = {r=0,g=255,b=0},
			-- Size  = {x = 3.0, y = 3.0, z = 1.0},
			-- Marker = 1
		-- },
		-- DeletePoint = {
			-- Pos = {x=-190.379, y=-1284.667, z=30.233},
			-- Color = {r=255,g=0,b=0},
			-- Size  = {x = 3.0, y = 3.0, z = 1.0},
			-- Marker = 1
		-- }, 	
	-- },
}

Config.BoatGarages = {
	BoatGarage_Centre = {
		Pos = {x = -742.47064208984,y = -1332.4702148438,z = 1.59 },
		Marker = { w= 1.5, h= 1.0,r = 204, g = 204, b = 0},
		Name = _U('boat_garage_name'),
		HelpPrompt = _U('open_boat_garage'),
		SpawnPoint = {
			Pos = {x = -736.47064208984,y = -1342.4702148438,z = 1.0 },
			MarkerPos = {x = -733.58,y = -1338.62,z = 1.5 },
			Heading = 230.0,
			Marker = { w= 1.5, h= 1.0,r=0,g=255,b=0},
			HelpPrompt = _U('spawn_boat')
		},
		DeletePoint = {
			Pos = {x = -740.06408691406,y = -1361.8474121094,z = 0.4 },
			Marker = { w= 3.5, h= 1.0,r=255,g=0,b=0},
			HelpPrompt = _U('store_boat')
		}, 	
	},
}

Config.AirplaneGarages = {
	AirplaneGarage_Centre = {
		Pos = {x = -1280.1153564453,y = -3378.1647949219,z = 13.940155029297 },
		Marker = { w= 1.5, h= 1.0,r = 204, g = 204, b = 0},
		Name = _U('plane_garage_name'),
		HelpPrompt = _U('open_plane_garage'),
		SpawnPoint = {
			Pos = {x = -1285.1153564453,y = -3382.1647949219,z = 13.940155029297 },
			Heading = 160.0,
			Marker = { w= 1.5, h= 1.0,r=0,g=255,b=0},
			HelpPrompt = _U('spawn_plane')
		},
		DeletePoint = {
			Pos = {x = -1287.5788574219,y = -3390.4025878906,z = 13.940155029297 },
			Marker = { w= 1.5, h= 1.0,r=255,g=0,b=0},
			HelpPrompt = _U('store_plane')
		}, 	
	},
}


Config.SocietyGarages = {
	police =  { -- database job name
		{
			Pos = {x = 446.39,y = -984.844,z = 30.696 },
			Marker = { w= 1.5, h= 1.0,r = 204, g = 204, b = 0},
			Name = _U('police_garage_name'),
			HelpPrompt = _U('open_police_garage'),
			SpawnPoint = {
				Pos = {x = -1285.1153564453,y = -3382.1647949219,z = 13.940155029297 },
				Heading = 160.0,
				Marker = { w= 1.5, h= 1.0,r=0,g=255,b=0},
				HelpPrompt = _U('spawn_police_garage')
			},
			DeletePoint = {
				Pos = {x = -1287.5788574219,y = -3390.4025878906,z = 13.940155029297 },
				Marker = { w= 1.5, h= 1.0,r=255,g=0,b=0},
				HelpPrompt = _U('store_police_garage')
			}, 	
		},
		{
			Pos = {x = 448.1153564453,y = -976.86,z = 30.696 },
			Marker = { w= 1.5, h= 1.0,r = 204, g = 204, b = 0},
			Name = _U('police_garage_name'),
			HelpPrompt = _U('open_police_garage'),
			SpawnPoint = {
				Pos = {x = -1285.1153564453,y = -3382.1647949219,z = 13.940155029297 },
				Heading = 160.0,
				Marker = { w= 1.5, h= 1.0,r=0,g=255,b=0},
				HelpPrompt = _U('spawn_police_garage')
			},
			DeletePoint = {
				Pos = {x = -1287.5788574219,y = -3390.4025878906,z = 13.940155029297 },
				Marker = { w= 1.5, h= 1.0,r=255,g=0,b=0},
				HelpPrompt = _U('store_police_garage')
			}, 	
		},
	},
	brinks =  {
		{
			Pos = {x = 443.1153564453,y = -993.86,z = 30.696 },
			Marker = { w= 1.5, h= 1.0,r = 204, g = 204, b = 0},
			Name = _U('brinks_garage_name'),
			HelpPrompt = _U('open_brinks_garage'),
			SpawnPoint = {
				Pos = {x = -1285.1153564453,y = -3382.1647949219,z = 13.940155029297 },
				Heading = 160.0,
				Marker = { w= 1.5, h= 1.0,r=0,g=255,b=0},
				HelpPrompt = _U('spawn_brinks_garage')
			},
			DeletePoint = {
				Pos = {x = -1287.5788574219,y = -3390.4025878906,z = 13.940155029297 },
				Marker = { w= 1.5, h= 1.0,r=255,g=0,b=0},
				HelpPrompt = _U('store_brinks_garage')
			}, 	
		},
    },
	ambulance =  {
		{
			Pos = {x = 443.1153564453,y = -993.86,z = 30.696 },
			Marker = { w= 1.5, h= 1.0,r = 204, g = 204, b = 0},
			Name = _U('ambulance_garage_name'),
			HelpPrompt = _U('open_ambulance_garage'),
			SpawnPoint = {
				Pos = {x = -1285.1153564453,y = -3382.1647949219,z = 13.940155029297 },
				Heading = 160.0,
				Marker = { w= 1.5, h= 1.0,r=0,g=255,b=0},
				HelpPrompt = _U('spawn_ambulance_garage')
			},
			DeletePoint = {
				Pos = {x = -1287.5788574219,y = -3390.4025878906,z = 13.940155029297 },
				Marker = { w= 1.5, h= 1.0,r=255,g=0,b=0},
				HelpPrompt = _U('store_ambulance_garage')
			}, 	
		},
	},
	taxi =  {
		{
			Pos = {x = 443.1153564453,y = -993.86,z = 30.696 },
			Marker = { w= 1.5, h= 1.0,r = 204, g = 204, b = 0},
			Name = _U('taxi_garage_name'),
			HelpPrompt = _U('open_taxi_garage'),
			SpawnPoint = {
				Pos = {x = -1285.1153564453,y = -3382.1647949219,z = 13.940155029297 },
				Heading = 160.0,
				Marker = { w= 1.5, h= 1.0,r=0,g=255,b=0},
				HelpPrompt = _U('spawn_taxi_garage')
			},
			DeletePoint = {
				Pos = {x = -1287.5788574219,y = -3390.4025878906,z = 13.940155029297 },
				Marker = { w= 1.5, h= 1.0,r=255,g=0,b=0},
				HelpPrompt = _U('store_taxi_garage')
			}, 	
		},
    },
}
