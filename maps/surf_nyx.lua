SURF.TrialVectors = {Vector(14380.4375, -8576.080078125, 2071.9201660156),Vector(13276.435546875, -8602.97265625, 2797.1430664063)}
SURF.Payout = 4000
SURF.adjustSpawnNoStart = 60
CubeLines = {
	{Vector(14029.099609375,-8490.6708984375,2072.03125),Vector(-9473.6103515625,-13180.056640625,-8063.96875),Vector(-11768.0849609375,-15180.561523438,-7051.4375)},
}

EntCleanup = {
	"info_player_terrorist",
	"info_player_counterterrorist",
	"info_player_start",
	"map_end",
	"momentary_rot_button"
}

local bonusAhopZones = {
	{Vector(8189.625, -15352.555664063, -255.96875),Vector(9839.20703125, -14690.829101563, 1387.818359375)},
	{Vector(4459.0698242188, -15187.864257813, -240.39093017578), Vector(4055.2700195313, -15797.174804688, 38.540245056152)},
	{Vector(2627.9738769531, -15121.426757813, 899.72717285156), Vector(474.68273925781, -13652.353515625, 2150.91015625)},
	{Vector(2961.0642089844, -12773.352539063, 557.17749023438), Vector(3518.7421875, -12218.935546875, 1106.3095703125)}
}

local badAhopZones = {
	{Vector(12587.3974609375, -14623.041992188, -255.96875), Vector(4101.11328125, -13924.989257813, 1544.30346679688)},
	{Vector(13837.967773438, -8436.7978515625, 2072.03125), Vector(14586.688476563, -7905.7729492188, 2730.5158691406)}
}


SURF.bonusZones = {
	Vector(8425.1123046875, -15157.993164063, -255.96875),
	Vector(-9410.818359375, 13098.82421875, -10367.96875),
	Vector(-8014.9936523438, 14193.4453125, 14336.03125)
}

hook.Add("InitPostEntity", "CreateZones", function()
	local playerSpawn = ents.Create("bb_player_spawn")
	playerSpawn:SetPos(Vector(14120.235351563, -8249.091796875, 2072.03125))
	playerSpawn:SetAngles(Angle(-0, -90, 0))
	playerSpawn:Spawn()
	hook.Run("SURF.UpdateSpawns")

	for k, v in ipairs(bonusAhopZones) do
		local bonus = ents.Create("surf_globalahop")
		bonus:SetTriggerPosition(v[1], v[2])
		bonus:Spawn()
	end
	
	for k, v in ipairs(badAhopZones) do
		local e = ents.Create("surf_disableahop")
		e:SetTriggerPosition(v[1], v[2])
		e:Spawn()
	end

	badAhopZones = nil
	bonusAhopZones = nil
end)

SURF.splitInfo = {
	{Vector(7586.287109375,-6276.0131835938,-2514.0966796875), Vector(5955.0717773438,-6360.1513671875,-1666.3880615234), target = 1, type = 'both'},
	{Vector(1216.4140625,7071.498046875,-3427.8559570313), Vector(132.33056640625,6016.8544921875,-2775.1435546875), target = 2, type = 'both'},
	{Vector(-13089.631835938,3300.1977539063,-7037.4946289063), Vector(-15712.55859375,4056.54296875,-5899.2236328125), target = 3, type = 'both'},
}
