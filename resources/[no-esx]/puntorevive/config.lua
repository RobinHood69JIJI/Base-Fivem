Config = {}
Config.Locale = 'en'

Config.Price = 1000

Config.DrawDistance = 40.0
Config.MarkerSize   = {x = 1.5, y = 1.5, z = 1.5}
Config.MarkerColor  = {r = 255, g = 0, b = 0}
Config.MarkerType   = 27

Config.Zones = {}

Config.Hosp = {
	{x = 318.03, y = -588.71, z = 42.30},
}

for i=1, #Config.Hosp, 1 do
	Config.Zones['Private Doc_' .. i] = {
		Pos   = Config.Hosp[i],
		Size  = Config.MarkerSize,
		Color = Config.MarkerColor,
		Type  = Config.MarkerType
	}
end
