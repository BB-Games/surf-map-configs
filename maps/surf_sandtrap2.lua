SURF.Payout = 6500
SURF.TrialVectors = {Vector(2144.03125, -11743.043945313, 10497.275390625),Vector(4447.96875, -11841.979492188, 11125.78515625)}
SURF.adjustSpawnNoStart = 160
CubeLines={
	{Vector(3291.5122070313,-11579.405273438,10496.03125),Vector(737.69079589844, 12801.197265625, -10751.96875),Vector(5855.96875, 13822.170898438, -8449.7646484375)},
}

local badAreas = {
	{Vector(3168.03125, -11224.592773438, 10496.588867188), Vector(4447.96875, -9313.1298828125, 11312.317382813)}
}

local function AddNoCompleteAreas()
	for k, v in pairs(badAreas) do
		local e = ents.Create("surf_completeonlyarea")
		e:SetTriggerPosition(v[1], v[2])
		e:SetCustomData({1})
		e:Spawn()
	end

	RunConsoleCommand("sv_maxvelocity", 7500)
end
hook.Add("InitPostEntity", "NOTOUCHY!", AddNoCompleteAreas)

EntCleanup = {
	"info_player_counterterrorist",
	"info_player_terrorist",
	"info_player_start"
}

hook.Add("InitPostEntity", "CreateZones", function()
	local playerSpawn = ents.Create("bb_player_spawn")
	playerSpawn:SetPos(Vector(3295.2861328125, -11489.276367188, 10496.03125))
	playerSpawn:SetAngles(Angle(0, -90,0))
	playerSpawn:Spawn()
	hook.Run("SURF.UpdateSpawns")	

end)

SURF.splitInfo = {
	{Vector(4402.2534179688,-14047.96875,4543.0063476563), Vector(2144.4060058594,-10225.26171875,5919.96875), target = 1, type = 'both'},
	{Vector(1387.3802490234,-2501.5148925781,-389.52960205078), Vector(5194.7143554688,-1987.9556884766,-2151.1948242188), target = 2, type = 'both'},
	{Vector(5768.5786132813,-1888.03125,-5510.5947265625), Vector(-558.1494140625,-5343.96875,-8229.5107421875), target = 3, type = 'both'},
}

SURF.bonusZones = {
	Vector(-14081.305664063, -2976.5236816406, 544.03125),
	Vector(-11263.715820313, -3235.6840820313, 5896.03125),
	Vector(-10907.612304688, 10277.536132813, 8808.03125),
	Vector(-12702.004882813, -10862.944335938, -6783.96875)
}

