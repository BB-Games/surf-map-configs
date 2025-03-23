SURF.TrialVectors = {Vector(-10212.899414063, -11283.291992188, 5030.6240234375), Vector(-2082.9694824219, -11297.048828125, 5504.1435546875)}
SURF.Payout = 3000
SURF.adjustSpawnNoStart = 80

CubeLines = {
	{Vector(-6149.4111328125,-11434.462890625,5104.03125),Vector(-8829.8505859375,-5380.2143554688,-6623.96875),Vector(-10705.426757813,-7509.140625,-512.03125)},
}


local function NewSpawn()
	local playerSpawn = ents.Create("info_player_start")
	playerSpawn:SetPos(Vector(-6140.031250, -11516.031250, 5104.03125))
	playerSpawn:SetAngles(Angle(0,90,0))
	playerSpawn:Spawn()
	hook.Run("SURF.UpdateSpawns")

	RunConsoleCommand("sv_maxvelocity", "3500")
end
hook.Add("InitPostEntity", "CreateNewSpawn", NewSpawn)


EntCleanup = {
	"info_player_counterterrorist",
	"info_player_terrorist",
}


SURF.splitInfo = {
	{Vector(-6884.5087890625,11030.375,2189.3996582031), Vector(-5533.0668945313,10676.592773438,3156.0327148438), target = 1, type = 'both'},
	{Vector(-7106.3090820313,4295.3618164063,-961.97033691406), Vector(-7167.96875,6599.3120117188,383.67248535156), target = 2, type = 'both'},
	{Vector(14780.130859375,2083.7592773438,-1823.96875), Vector(15727.96875,2021.0053710938,-872.19165039063), target = 3, type = 'both'},
	{Vector(9103.39453125,-13492.90234375,-4106.8603515625), Vector(8691.0576171875,-14316.8125,-3150.98828125), target = 4, type = 'both'},
	{Vector(7102.2211914063,-6527.96875,-3829.017578125), Vector(9245.603515625,-6656.03125,-1544.3566894531), target = 5, type = 'both'},
}