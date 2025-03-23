SURF.TrialVectors = {Vector(-11824.064453125, -735.96875, -64.234733581543), Vector(-11825.60546875, 735.96875, 207.512504577637)}
SURF.disableNoRunZones = true
SURF.Payout = 16000

CubeLines = {
	{Vector(-11685.076171875,2.1208600997925,-63.96875),Vector(15200.873046875,1791.96875,-10263.96875),Vector(16317.185546875,-1791.96875,-8928.384765625)},
}

EntCleanup = {
	"info_player_terrorist",
	"info_player_counterterrorist"
}

SURF.splitInfo = {
	{Vector(-5406.9248046875,1279.96875,-1152.7145996094), Vector(-4626.763671875,-1273.8531494141,-2943.96875), target = 1, type = 'both'},
	{Vector(-1035.7463378906,-1806.9100341797,-5087.96875), Vector(-3085.244140625,1807.96875,-3712.3278808594), target = 2, type = 'both'},
	{Vector(-5644.2587890625,1791.96875,-11327.555664063), Vector(-3892,-1791.96875,-8615.279296875), target = 3, type = 'both'},
}

SURF.bonusZones = {
	Vector(3616.8828125, 4096.01171875, 14848.03125),
	Vector(8706.3701171875, -112.67748260498, 9280.03125),
	Vector(-8703.4697265625, -15038.85546875, 11328.03125),
	Vector(-758.15777587891, 12286.494140625, 5120.03125)	
}

local function NewSpawn()
	local playerSpawn = ents.Create("bb_player_spawn")
	playerSpawn:SetPos(Vector(-11583.53515625, 0.99813413619995, -63.96875))
	playerSpawn:SetAngles(Angle(0, 180, 0))
	playerSpawn:Spawn()
	hook.Run("SURF.UpdateSpawns")
end
hook.Add("InitPostEntity", "CreateNewSpawn", NewSpawn)

