Config              = {}
Config.DrawDistance = 100.0
Config.Truck = "packer" -- ONLY 1 TRUCK
Config.Trailer = "trailers3" -- ONLY 1 TRAILER
--Possible alternative trailer for a vehicle delivery job: "tr4"

Config.Zones = {
	--This is the job start point
	VehicleSpawner = {
		Pos   = {x = 182.83, y = 2777.74, z = 44.66},
		Size  = {x = 3.0, y = 3.0, z = 1.0},
		Color = {r = 204, g = 204, b = 0},
		Type  = 1,
		Colour    = 5, --BLIP
		Id        = 477, --BLIP
		Title     = "Camionero", --BLIP
	},
	
	--Here you can cancel the job
	MissionAbort = {
		Pos   = {x = 174.44, y = 2808.12, z = 44.65},
		Size  = {x = 3.0, y = 3.0, z = 1.0},
		Color = {r = 204, g = 204, b = 0},
		Type  = 1,
	},
}

--The truck spawns here
Config.VehicleSpawnPoint = {
      Pos   = {x = 191.73, y = 2799.62, z = 45.87},
      Size  = {x = 3.0, y = 3.0, z = 1.0},
      Type  = -1,
}

--The trailer spawns here, make sure it doesn't collide with the trailer
Config.TrailerSpawnPoint = {
      Pos   = {x = 200.87, y = 2789.53, z = 45.66},
      Size  = {x = 3.0, y = 3.0, z = 1.0},
      Type  = -1,
}
--In case you changed the spawn locations and the two vehicles don't attach anymore, you might have to modify the 3rd parameter from the AttachVehicleToTrailer function in the main.lua file. Just use CTRL+F and find it, only 1 occurence.

--You can use the gas stations already set up, or you can change them however you want (all the delivery locations are gas stations)
--Please use the already existing delivery locations as a template if you want to create new ones
--You can adjust the payment to match the economy on your server
Config.Delivery = {
	--###Blaine County###
	--Cardealer2 (Route 68) 1.32KM
	Delivery1 = {
		Pos   = {x = 1214.22, y = 2659.63, z = 37.05},
		Size  = {x = 3.0, y = 3.0, z = 1.0},
		Color = {r = 204, g = 204, b = 0},
		Type  = 1,
		Payment  = 450,
	},
	--Fort Zancudo (Route 68) 3.02KM
	Delivery2 = {
		Pos   = {x = -2531.8655, y = 2344.23, z = 32.27},
		Size  = {x = 3.0, y = 3.0, z = 1.0},
		Color = {r = 204, g = 204, b = 0},
		Type  = 1,
		Payment  = 1000,
	},
	--Close to Trevor 2.50KM
	Delivery3 = {
		Pos      = {x = 1991.3655, y = 3762.47, z = 31.18},
		Size  = {x = 3.0, y = 3.0, z = 1.0},
		Color = {r = 204, g = 204, b = 0},
		Type  = 1,
		Payment  = 850,
	},
	--Senora Freeway (right side towards paleto) 5.91KM
	Delivery4 = {
		Pos      = {x = 1689.95, y = 6418.29, z = 31.73},
		Size  = {x = 3.0, y = 3.0, z = 1.0},
		Color = {r = 204, g = 204, b = 0},
		Type  = 1,
		Payment  = 1500,
	},
	--Paleto Boulevard (At the paleto garage) 7.42KM
	Delivery5 = {
		Pos      = {x = 176.60, y = 6624.51, z = 30.95},
		Size  = {x = 3.0, y = 3.0, z = 1.0},
		Color = {r = 204, g = 204, b = 0},
		Type  = 1,
		Payment  = 1750,
	},
	--Senora Freeway (close to YOUTOOL) 3.14KM
	Delivery6 = {
		Pos      = {x = 2654.40, y = 3264.30, z = 54.47},
		Size  = {x = 3.0, y = 3.0, z = 1.0},
		Color = {r = 204, g = 204, b = 0},
		Type  = 1,
		Payment  = 1000,
	},
	
	--###Between Blaine County and Los Santos###
	--Banham Canyon (Somewhere above Kortz Center) 3.72KM
	Delivery7 = {
		Pos      = {x = -1819.87, y = 806.18, z = 137.92},
		Size  = {x = 3.0, y = 3.0, z = 1.0},
		Color = {r = 204, g = 204, b = 0},
		Type  = 1,
		Payment  = 1000,
	},
	--Palomino Freeway (Right side of the map, that bigger center with multiple shops in the middle of the highway) 5.44KM
	Delivery8 = {
		Pos      = {x = 2549.72, y = 343.02, z = 107.70},
		Size  = {x = 3.0, y = 3.0, z = 1.0},
		Color = {r = 204, g = 204, b = 0},
		Type  = 1,
		Payment  = 1750,
	},
	
	--###Los Santos###
	--Entering (Close to Vinewood Bowl) 3.64KM
	Delivery9 = {
		Pos      = {x = 630.39, y = 249.15, z = 102.34},
		Size  = {x = 3.0, y = 3.0, z = 1.0},
		Color = {r = 204, g = 204, b = 0},
		Type  = 1,
		Payment  = 1000,
	},
	--Mirror Park 4.24KM
	Delivery10 = {
		Pos      = {x = 1172.43, y = -315.52, z = 68.41},
		Size  = {x = 3.0, y = 3.0, z = 1.0},
		Color = {r = 204, g = 204, b = 0},
		Type  = 1,
		Payment  = 1250,
	},
	--Close to LSPD 4.94KM
	Delivery11 = {
		Pos      = {x = 826.12, y = -1044.24, z = 26.38},
		Size  = {x = 3.0, y = 3.0, z = 1.0},
		Color = {r = 204, g = 204, b = 0},
		Type  = 1,
		Payment  = 1500,
	},
	--Del Perro Freeway (Close to the beach, leaving city) 5.76KM
	Delivery12 = {
		Pos      = {x = -2080.37, y = -306.59, z = 12.30},
		Size  = {x = 3.0, y = 3.0, z = 1.0},
		Color = {r = 204, g = 204, b = 0},
		Type  = 1,
		Payment  = 1500,
	},
	--Ginger Street (Close to store and Ammunation) 5.40KM
	Delivery13 = {
		Pos      = {x = -727.42, y = -912.37, z = 18.25},
		Size  = {x = 3.0, y = 3.0, z = 1.0},
		Color = {r = 204, g = 204, b = 0},
		Type  = 1,
		Payment  = 1500,
	},
	--Calais Ave & Innocence Blvd (Close to heli pad and dock) 5.78KM
	Delivery14 = {
		Pos      = {x = -517.79, y = -1214.73, z = 17.47},
		Size  = {x = 3.0, y = 3.0, z = 1.0},
		Color = {r = 204, g = 204, b = 0},
		Type  = 1,
		Payment  = 1500,
	},
	--Strawberry Ave (Close to Vanilla Unicorn and Legion Square) 5.31KM
	Delivery15 = {
		Pos      = {x = 294.55, y = -1247.08, z = 28.52},
		Size  = {x = 3.0, y = 3.0, z = 1.0},
		Color = {r = 204, g = 204, b = 0},
		Type  = 1,
		Payment  = 1200,
	},
	--Groove Street 5.71KM
	Delivery16 = {
		Pos      = {x = -63.73, y = -1774.58, z = 28.14},
		Size  = {x = 3.0, y = 3.0, z = 1.0},
		Color = {r = 204, g = 204, b = 0},
		Type  = 1,
		Payment  = 1750,
	},
}