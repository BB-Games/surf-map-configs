SURF.Payout = 20000
SURF.disablePreSpeed = true
SURF.disableNoRunZones = true

SURF.TrialVectors = {Vector(1408.0223388672, 1408.3464355469, 14845.572265625),Vector(895.35791015625, 895.45849609375, 14589)}

CubeLines={
	{Vector(709.85968017578,1139.8819580078,14848.03125),Vector(1024.03125,12800.102539063,-3839.912109375), Vector(3071.96875,13823.178710938,-3328.1682128906)},
	{Vector(1124.3864746094,-775.60986328125,14592.03125),Vector(511.61392211914, -1663.6080322266, -6015.96875),Vector(256.97521972656, -896.55108642578, -5390.96875)},
	{Vector(-764.40856933594,-1141.9818115234,14848.03125),Vector(-1536.0137939453, -9984.1044921875, -2815.9580078125),Vector(-2815.96875, -13055.96875, -1794.2525634766)},
	{Vector(-761.2880859375,1141.6678466797,14592.03125),Vector(-10241.13671875, 5123.6923828125, -9727.3955078125),Vector(-11260.161132813, 7677.4584960938, -8704.03125)},
	{Vector(-7.2267808914185,-2027.3220214844,13824.03125), Vector(4351.828125, 8960.7705078125, -13055.96875),Vector(3582.9038085938, 12286.859375, -12290.899414063), usePhysicsEnt = true, entAngle = Angle( 0, -45, 0.000000)},
}

EntCleanup = {
	"info_player_terrorist",
	"info_player_counterterrorist",
	"info_player_start",
	"info_player_teamspawn",
}

local noTimeWalls = {
	{Vector(1717.7529296875, -510.49139404297, 14592.03125), Vector(512.70538330078, -511.96875, 15103.2890625)},
	{Vector(576.94653320313, -576.35223388672, 14592.03125), Vector(511.96875, -1727.7067871094, 15102.111328125)},
	{Vector(-1727.96875, 576.94995117188, 14592.30859375), Vector(-512.55755615234, 511.96875, 14771.62890625)},
	{Vector(-576.95050048828, 576.03125, 14592.650390625),Vector(-511.23812866211, 1727.96875, 14802.48828125)},
	{Vector(575.54614257813, -1073.8845214844, 14527.96875), Vector(-573.40643310547, -915.21276855469, 14080.03125)}
}

local badAreaWalls = {
	{Vector(3135.3115234375, 11840.645507813, -12128.936523438), Vector(2494.5964355469, 11712.1171875, -13055.96875)},
	{Vector(128.04809570313, 1727.96875, 15359.76953125), Vector(2175.5541992188, 1809.3930664063, 14976.03125)},
	{Vector(1728.0152587891, 1727.8881835938, 14976.03125), Vector(1792.03125, 0.22333526611328, 15359.7734375)}
}

local function NewSpawn()
	local playerSpawn = ents.Create("bb_player_spawn")
	playerSpawn:SetPos(Vector(1134.9752197266, 1608.2612304688, 14848.03125))
	playerSpawn:SetAngles(Angle(0, -90, 0))
	playerSpawn:Spawn()
	hook.Run("SURF.UpdateSpawns")

	for k, v in ipairs(noTimeWalls) do
		local e = ents.Create("surf_stoptimer")
		e:SetTriggerPosition(v[1], v[2])
		e:Spawn()
	end

	local e = ents.Create("surf_completeonlyarea")
	e:SetTriggerPosition(Vector(430.02597045898, 275.12399291992, 14527.96875), Vector(-453.07431030273, -347.76989746094, 14080.03125))
	e:SetCustomData({4})
	e:Spawn()

	for k, v in ipairs(badAreaWalls) do
		local blockZone = ents.Create("surf_blockzone")
		blockZone:SetTriggerPosition(v[1], v[2])
		blockZone:Spawn()
	end

end
hook.Add("InitPostEntity", "CreateNewSpawn", NewSpawn)

local stageTargetNames = {}
stageTargetNames[1] = "targetname test1"
stageTargetNames[2] = "targetname test2"
stageTargetNames[3] = "targetname test3"
stageTargetNames[4] = "targetname test4"
stageTargetNames[5] = "targetname test5"

local function FixSetStageBarrier(objPlayer, numStage)
	objPlayer:Input( "AddOutput", objPlayer, game.GetWorld(), stageTargetNames[numStage])
end
hook.Add("Surf.PostPlayerChangedStage", "FixStageBarrier", FixSetStageBarrier)


SURF.splitInfo = {
	{CubeLines[1][2], CubeLines[1][3], target = 1, type = 'end'},
	{Vector(1406.4232177734,-897.46697998047,14589.135742188), Vector(901.89526367188,-1402.6704101563,13953.266601563), target = 2, type = 'start'},
	{CubeLines[2][2], CubeLines[2][3], target = 2, type = 'end'},
	{Vector(-897.44366455078,-1406.7692871094,14845.608398438), Vector(-1406.4893798828,-897.30334472656,14531.463867188), target = 3, type = 'start'},
	{CubeLines[3][2], CubeLines[3][3], target = 3, type = 'end'},
	{Vector(-1407.2701416016,896.83435058594,14590.609375), Vector(-897.31878662109,1406.7659912109,14337.86328125), target = 4, type = 'start'},
	{CubeLines[4][2], CubeLines[4][3], target = 4, type = 'end'},
	{Vector(254.05239868164, -2178.6574707031, 13820.173828125), Vector(-253.24447631836, -2685.2731933594, 13568.563476563), target = 5, type = 'start'},
}

SURF.bonusZones = {
	Vector(9477.54296875, -7157.328125, 14928.03125)
}

-- Required as we no longer access the main spawn area.
hook.Add("PlayerInitialSpawn", "FixFirstFails", function(objPlayer)
	objPlayer:Input( "AddOutput", objPlayer, game.GetWorld(), "targetname test1")
end)

local function ResetPlayerMapPos(objPlayer)
	objPlayer:Input( "AddOutput", objPlayer, game.GetWorld(), "targetname test1")
end
hook.Add("SURF_StartingLineStartTouch", "FixMapStuff", ResetPlayerMapPos)
