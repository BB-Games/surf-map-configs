SURF.TrialVectors = {Vector(-14065.297851563, 1503.96875, 14839.713867188), Vector(-14060.538085938, -1503.96875, 14999.662109375)}
SURF.Payout = 16000

CubeLines = {
	{Vector(-14154.149414063,-9.7831058502197,14840.03125),Vector(-12511.96875, -2398.0085449219, -7372.603515625),Vector(-14656.03125, 2399.1589355469, -6086.9653320313)},
}

EntCleanup = {
	"info_player_terrorist",
	"info_player_counterterrorist",
	"info_player_start",
	"info_player_teamspawn",
}

local function NewSpawn()
	local playerSpawn = ents.Create("bb_player_spawn")
	playerSpawn:SetPos(Vector(-14236.582031, -7.321926, 14904.031250))
	playerSpawn:SetAngles(Angle(0, 0, 0))
	playerSpawn:Spawn()
	hook.Run("SURF.UpdateSpawns")

	RunConsoleCommand("sv_maxvelocity", "4000")
end
hook.Add("InitPostEntity", "CreateNewSpawn", NewSpawn)

SURF.bonusZones = {
	Vector(11855.330078125, -12496.140625, -8855.96875),
	Vector(-8662.326171875, 9761.2646484375, -9567.96875)
}

SURF.splitInfo = {
	{Vector(-5202.1025390625, -1311.96875, 10967.251953125), Vector(-752.03125,1310.9130859375,9464.42578125), target = 1, type = 'both'},
	{Vector(-5200.03125,-6367.4565429688,9272.328125), Vector(-8723.9326171875,-9703.8564453125,8376.03125), target = 2, type = 'both'},
	{Vector(-5200.03125,6367.556640625,9270.306640625), Vector(-8748.6875,9760.705078125,8376.03125), target = 2, type = 'both'},
	{Vector(-5913.9609375,1542.6990966797,3112.03125), Vector(-3904.03125,4657.21875,5885.2856445313), target = 3, type = 'both'},
	{Vector(-3969.8325195313,-1538.6918945313,3112.2438964844), Vector(-5983.96875,-4679.0498046875,5873.4306640625), target = 3, type = 'both'},

}
