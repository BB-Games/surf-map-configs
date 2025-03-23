SURF.Payout = 5000
SURF.TrialVectors = {Vector(-8384.076171875, 255.71444702148, 1920.03125),Vector(-8383.96875, -256.0080871582, 2040.5191650391)}
SURF.disableNoRunZones = true

CubeLines={
	{Vector(-8474.3662109375,10.624168395996,1920.03125),Vector(-8756.7509765625,254.21279907227,-6287.96875),Vector(-9102.216796875,-252.83958435059,-6032.03125)},
	{Vector(-8864.5947265625,-0.27105975151062,-6287.96875),Vector(-8722.87109375,335.57357788086,-9983.96875),Vector(-9071.96875,-207.43516540527,-9793.4033203125)},
	{Vector(-8845.6376953125,-6.7447633743286,-9983.96875),Vector(484.54565429688,734.35180664063,11552.03125),Vector(200.03125,223.76905822754,11825.587890625)},
	{Vector(344.21768188477,460.18127441406,11552.03125),Vector(10431.96875, 191.74755859375, 8695.7529296875),Vector(11335.96875, 1527.4429931641, 9631.853515625)},
}


EntCleanup = {
	"info_player_terrorist",
	"info_player_counterterrorist",
	"info_player_start",
}

SURF.splitInfo = {
	{Vector(4096.3784179688, -2239.6599121094, -1471.96875), Vector(5247.96875, 2239.7077636719, -959.96875), target = 1, type = "end"},
	{Vector(-8651.96875, 256.04968261719, -6288.1752929688), Vector(-8752.255859375, -255.96875, -6032.0766601563), target = 2, type = "start"},
	{Vector(-4096.2739257813, -862.13482666016, -9359.923828125), Vector(-5119.287109375, 861.21087646484, -9039.96875), target = 2, type = "end"},
	{Vector(-8699.7001953125, 338.33129882813, -9985.34375), Vector(-8720.4375, -336.92788696289, -9792.03125), target = 3, type = "start"},
	{Vector(-7552.3212890625, 1408.4360351563, -12783.96875), Vector(-9599.7587890625, 2815.96875, -12159), target = 3, type = "end"},
	{Vector(-7551.1928710938, -1408.03125, -12783.228515625), Vector(-9599.96875, -2815.1760253906, -12159), target = 3, type = "end"},
	{Vector(583.96875, 736.81463623047, 11551.204101563), Vector(487.79580688477, 224.03125, 11693.827148438), target = 4, type = "start"},
}

local stepAutohopZones = {
	{SURF.splitInfo[1][1], SURF.splitInfo[1][2], maxHops = 5, enabled = true},
	{Vector(-8752.9990234375, 255.96875, -6287.11328125), Vector(-9113.611328125, -254.9868927002, -6032.03125)},
	{SURF.splitInfo[3][1], SURF.splitInfo[3][2], maxHops = 2, enabled = true},
	{Vector(-8719.5537109375, 337.67108154297, -9984.365234375), Vector(-9071.638671875, -336.50689697266, -9792.03125)},
	{SURF.splitInfo[5][1], SURF.splitInfo[5][2], maxHops = 4, enabled = true},
	{SURF.splitInfo[6][1], SURF.splitInfo[6][2], maxHops = 4, enabled = true},
	{Vector(656.26788330078, 1089.0350341797, 11024.03125), Vector(200.03125, 226.04026794434, 11808.404296875)}

}

local function NewSpawn()
	local playerSpawn = ents.Create("bb_player_spawn")
	playerSpawn:SetPos(Vector(-8525.552734375, 0.046496510505676, 1920.03125))
	playerSpawn:SetAngles(Angle(0, 0, 0))
	playerSpawn:Spawn()
	hook.Run("SURF.UpdateSpawns")

	SURF.CreateAutohopStepZones(stepAutohopZones)
end
hook.Add("InitPostEntity", "CreateNewSpawn", NewSpawn)


SURF.bonusZones = {
	Vector(-10026.140625, -14106.15625, 14020.03125),
	Vector(-9265.0087890625, -5578.8115234375, 13536.03125)
}
