SURF.Payout = 1500

SURF.TrialVectors = {Vector(-639.96875,-10048.4287109383, 6336.03125),Vector(656.53594970703,-10051.9462890625,6655.96875)}


CubeLines={
	{Vector(19.401132583618,-10446.932617188,6336.03125),Vector(10304.03125,8547.5087890625,-3327.4018554688), Vector(10559.986328125,9455.4794921875,-3167.8120117188)},
}

EntCleanup={
	"info_player_terrorist",
	"info_player_counterterrorist",
	"info_player_start",
}


SURF.bonusZones = {
	Vector(9907.2109375, 2567.9409179688, -1023.96875)
}

local function NewSpawn()
	local playerSpawn = ents.Create("bb_player_spawn")
	playerSpawn:SetPos(Vector(15.549015045166, -10516.54296875, 6336.03125))
	playerSpawn:SetAngles(Angle(0,90, 0))
	playerSpawn:Spawn()
	hook.Run("SURF.UpdateSpawns")

	local blockZone = ents.Create("surf_blockzone")
	blockZone:SetTriggerPosition(Vector(8447.96875, -1920.8859863281, -4708.1357421875), Vector(8438.517578125, -2943.96875, -3840.1870117188))
	blockZone:SetPos(Vector(8447.96875, -1920.8859863281, -4708.1357421875))
	blockZone:Spawn()

	local clampZone = ents.Create("surf_clampspeedzone")
	clampZone:SetTriggerPosition(Vector(-311.09765625, -10120.364257813, 6176.03125), Vector(399.10284423828, -10882.228515625, 6655.96875))
	clampZone:SetPos(Vector(17.705596923828, -10532.698242188, 6336.03125))
	clampZone:SetMaxSpeed(330)
	clampZone:Spawn()
end
hook.Add("InitPostEntity", "CreateNewSpawn", NewSpawn)

SURF.splitInfo = {
	{Vector(383.85559082031,-1857.6945800781,2063.96875), Vector(-367.43609619141,-3233.1181640625,1563.96875), target = 1, type = 'both'},
	{Vector(10351.96875,3454.9865722656,-3191.5036621094), Vector(10368.03125,2561.3637695313,-2687.3159179688), target = 2, type = 'both'},
	{Vector(12415.724609375,6399.96875,-5632.0678710938), Vector(13055.274414063,6416.03125,-4865.90234375), target = 3, type = 'both'},
	{Vector(-557.4462890625,208.0599822998,3263.96875), Vector(591.58697509766,2000.5347290039,2080.03125), target = 4, type = 'both'},
	{Vector(-1661.0484619141,9091.1005859375,384.03125), Vector(-912.03125,12088.69140625,-755.0673828125), target = 5, type = 'both'},
	{Vector(-5631.96875,2178.2116699219,-716.00122070313), Vector(-4608.03125,3879.8876953125,909.44207763672), target = 6, type = 'both'},
	{Vector(-5120.03125,-2044.1909179688,-5384.6318359375), Vector(-5103.96875,-2815.2939453125,-3968.7529296875), target = 7, type = 'both'},
	{Vector(5440.03125,3558.7939453125,-550.36212158203), Vector(6659.3608398438,2432.03125,-1526.4865722656), target = 8, type = 'both'},
	{Vector(-1535.96875,5886.3823242188,-3200.5798339844), Vector(-1552.03125,6526.6669921875,-2432.3259277344), target = 9, type = 'both'},
	{Vector(-62.342987060547,9468.322265625,-3823.96875), Vector(-50.476211547852,10239.96875,-2305.302734375), target = 10, type = 'both'},
}