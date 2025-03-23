SURF.TrialVectors = {Vector(-511.66275024414, -5264.4829101563, 12256.03125), Vector(511.96875, -5177.1616210938, 12398.036132813)}
SURF.Payout = 5000
SURF.disableNoRunZones = true

CubeLines = {
	{Vector(7.016149520874,-5386.4418945313,12256.03125),Vector(-1023.3990478516,-1.0848693847656,9248.03125),Vector(761.24157714844,-758.43548583984,9727.96875)},
	{Vector(4.5290441513062,-81.460929870605,9248.03125),Vector(768.04931640625,0.50259304046631,6176.03125),Vector(-768.39276123047,511.56304931641,6549.259765625)},
	{Vector(-15.316640853882,118.79409790039,6176.03125),Vector(-672.30609130859,-1120.8522949219,1696.03125),Vector(709.57531738281,-1551.96875,2249.0529785156)},
	{Vector(5.5920052528381,-1210.5767822266,1696.03125),Vector(1946.2229003906,-2646.6518554688,-1503.96875),Vector(2514.203125,-1244.5650634766,-1120.03125)},
	{Vector(2057.5952148438,-1947.5202636719,-1503.96875),Vector(1455.8355712891, -3339.7653808594, -5287.8828125),Vector(736.03125, -548.28118896484, -4608.03125)},
}


EntCleanup = {
	"info_player_terrorist",
	"info_player_counterterrorist",
	"spawnroomteleport"
}

local fixedSpawns = {}
fixedSpawns["stage1"] = Vector(-2.9098358154297, -5602.0078125, 12320.03125)
fixedSpawns["stage2"] = Vector(1.7458884716034, -198.73545837402, 9312.03125)
fixedSpawns["stage3"] = Vector(-18.642848968506, 201.79214477539, 6176.03125)
fixedSpawns["stage4"] = Vector(0.86326617002487, -1319.2513427734, 1760.03125)
fixedSpawns["stage5"] = Vector(2177.4006347656, -1928.5538330078, -1439.96875)

local globalBhopZones = {
	{Vector(432.30688476563, 462.30233764648, -9600.96875), Vector(-347.70004272461, -127.7395324707, -9299.96875)},
	{Vector(-3071.9123535156, -1535.5222167969, -8607.96875), Vector(3071.96875, -1056.103515625, -8279.74609375)}
}

local function AWholeNewSpawn()

	local playerSpawn = ents.Create("bb_player_spawn")
	playerSpawn:SetPos(Vector(0.20592898130417, -5456.0512695313, 12256.03125))
	playerSpawn:SetAngles(Angle(0, 90, 0))
	playerSpawn:Spawn()
	hook.Run("SURF.UpdateSpawns")

	for k, v in pairs(fixedSpawns) do
		local stage = ents.FindByName(k)[1]
		stage:SetPos(v)

		local clampSpeed = ents.Create("surf_clampspeedzone")
		clampSpeed:SetMaxSpeed(300)
		clampSpeed:SetTriggerPosition(stage:GetPos() + Vector(150, 150, 150), stage:GetPos() + Vector(-150, -150, -150))
		if k != "stage1" then
			clampSpeed:SetStopSpeedOnTouch(true)
		end

		clampSpeed:Spawn()
	end

	for k, v in ipairs(globalBhopZones) do
		local bonus = ents.Create("surf_globalahop")
		bonus:SetTriggerPosition(v[1], v[2])
		bonus:Spawn()
	end

	local e = ents.Create("surf_disableahop")
	e:SetTriggerPosition(Vector(511.96875, -5279.1357421875, 12256.083984375), Vector(-203.44050598145, -5743.96875, 12456.346679688))
	e:Spawn()	

end
hook.Add("InitPostEntity", "AWholeNewSpawn", AWholeNewSpawn)

SURF.bonusZones={
	Vector(0.055042490363121, 128.2025604248, -9658.96875),
	Vector(61.884056091309, -1.883318901062, -11199.96875),
	Vector(-178.85205078125, 8190.0620117188, -12415.96875)
}


SURF.splitInfo = {
	{Vector(383.90475463867,-5104.4213867188,11024.03125), Vector(-383.96875,-5535.1040039063,11247.538085938), target = 1, type = 'end'},
	{Vector(-1023.7777099609,0.03125,9248.0078125), Vector(1023.96875,526.53265380859,9727.2822265625), target = 2, type = 'start'},
	{Vector(-3200.03125,3263.826171875,7488.1323242188), Vector(-3903.96875,2944.9807128906,7721.642578125), target = 2, type = 'end'},
	{Vector(767.95123291016,-150.03125,6175.7934570313), Vector(-767.95635986328,0.027342796325684,6476.03125), target = 3, type = 'start'},
	{Vector(655.96343994141,-6784.1396484375,3168.03125), Vector(-655.96875,-7263.96875,3413.4992675781), target = 3, type = 'end'},
	{Vector(-421.44973754883,-1120.3028564453,1696.03125), Vector(330.70346069336,-793.91101074219,2271.96875), target = 4, type = 'start'},
	{Vector(-6207.9340820313,7120.1108398438,320.04058837891), Vector(-5824.03125,8079.5703125,561.43475341797), target = 4, type = 'end'},
	{Vector(6207.8603515625,7120.2021484375,320.03125), Vector(5824.6904296875,8079.96875,555.05059814453), target = 4, type = 'end'},
	{Vector(1943.96875,-2648.0520019531,-1504.0638427734), Vector(1666.6931152344,-1240.0202636719,-1188.79296875), target = 5, type = 'start'},
}
