SURF.Payout = 3500

SURF.TrialVectors = {Vector(-13953.130859375, -2048.1706542969, 4736.03125), Vector(-13952.295898438, -3583.8166503906, 5036.03125)}

CubeLines={
	{Vector(-14131.83203125,-3165.4458007813,4736.03125),Vector(627.23992919922,-7175.0009765625,-787.61352539063),Vector(1358.7546386719,-13101.752929688,6143.96875)},
}


EntCleanup = {
	"info_player_terrorist",
	"info_player_counterterrorist",
	"info_player_start",
	"info_player_teamspawn",
	"point_servercommand",
	"func_button",
	"game_text"
}

local badAreas = {
	{Vector(-14144.520507813, -3392.37109375, 4928.03125), Vector(-15039.96875, -3396.1057128906, 5387.3061523438)},
	{Vector(-14144.217773438, -2239.6618652344, 4928.03125), Vector(-14912.5234375, -2175.96875, 5387.9458007813)},
	{Vector(-14142.390625, -3456.03125, 5098.3598632813),Vector(-14912.294921875, -2175.96875, 5708.7407226563)}
}

local function NewSpawn()
	local playerSpawn = ents.Create("bb_player_spawn")
	playerSpawn:SetPos(Vector(-14340.095703125, -2865.6108398438, 4736.03125))
	playerSpawn:SetAngles(Angle(0, 0, 0))
	playerSpawn:Spawn()
	hook.Run("SURF.UpdateSpawns")

	for k, v in ipairs(badAreas) do
		local e = ents.Create("surf_disablenewrun")
		e:SetTriggerPosition(v[1], v[2], nil, true)
		e:Spawn()
	end

end
hook.Add("InitPostEntity", "CreateNewSpawn", NewSpawn)

SURF.bonusZones = {
	Vector(8430.0517578125, 6354.171875, -6143.9682617188)
}

SURF.splitInfo = {
	{Vector(-10139.4609375,1011.9405517578,1728.529296875), Vector(-8572.763671875,0.03125,3171.91796875), target = 1, type = 'both'},
	{Vector(-12410.357421875,6324.03125,350.74600219727), Vector(-14768.756835938,5826.57421875,1350.4051513672), target = 2, type = 'both'},
	{Vector(-782.48291015625,7976.3872070313,-251.58389282227), Vector(-2000.1437988281,7598.9755859375,348.11602783203), target = 3, type = 'both'},
	{Vector(-3145.7568359375,-4033.0949707031,243.76696777344), Vector(-3859.2482910156,-5871.1752929688,1395.2006835938), target = 4, type = 'both'},
}



