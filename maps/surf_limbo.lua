SURF.Payout = 26000
SURF.TrialVectors = {Vector(-15568.047851563, 15845.96875, 16152.588867188),Vector(-16219.735351563, 15839.96875, 16317.741210938)}

EntCleanup = {
	"info_player_counterterrorist",
	"info_player_terrorist",
}

CubeLines={
	{Vector(-15967.771484375,15931.581054688,16160.03125),Vector(10783.96875,10816.28125,-4704.1689453125),Vector(9712.03125,11890.190429688,-4032.4064941406)},
}

SURF.bonusZones = {Vector(4220.8740234375, -14498.525390625, 15760.03125), Vector(-8431.968750, -9952.031250, 7680.031250)}

SURF.splitInfo = {
	{Vector(-8463.96875,304.115081787109, 13568.877929688), Vector(-5889.7607421875,-1567.96875,15432.834960938), target = 1, type = 'both'},
	{Vector(-829.48944091797,11523.374023438,12448.03125), Vector(-3524.8249511719,14655.96875,14079.04296875), target = 2, type = 'both'},
	{Vector(-2622.935546875,2847.96875,10719.80078125), Vector(-1084.3654785156,5408.03125,8392.580078125), target = 3, type = 'both'},
	{Vector(11487.96875,10686.991210938,3582.4436035156), Vector(9942.783203125,8470.4853515625,1088.03125), target = 4, type = 'both'},
	{Vector(-4816.4291992188,-5633.24609375,-799.96875), Vector(-8799.96875,-9516.9052734375,4347.80078125), target = 5, type = 'both'},
	{Vector(-13568.03125,-8107.00390625,996.66290283203), Vector(-11648.03125,-5737.916015625,-1216.2681884766), target = 6, type = 'both'},
	{Vector(-14368.03125,4934.5927734375,-11553.296875), Vector(-11827.911132813,5983.96875,-13272.529296875), target = 7, type = 'both'},
	{Vector(11839.959960938,-2390.03125,-10399.9453125), Vector(15939.7421875,-3007.96875,-9826.1357421875), target = 8, type = 'both'},
	{Vector(13068.239257813, 13242.268554688, -16319.96875), Vector(16352.03125, 14220.98828125, -14896.771484375), target = 9, type = 'both'},
	{Vector(11741.487304688,-11978.029296875,-9116.404296875), Vector(13708.793945313,-10797.830078125,-10788.314453125), target = 10, type = 'both'},
}


local badBonusTeleporters = {
	2340, // Bonus zone teleporters
	2341, // Bonus zone teleporters
	2342, // Bonus zone teleporters
}


local function UpdateSpawn()
	local playerSpawn = ents.Create("info_player_start")
	playerSpawn:SetPos(Vector(-15965.894531, 16048.524414, 16224.031250))
	playerSpawn:SetAngles(Angle(0,-90,0))
	playerSpawn:Spawn()
	hook.Run("SURF.UpdateSpawns")

	for k, v in pairs(badBonusTeleporters) do
		local ent = ents.GetMapCreatedEntity(v)
		if IsValid(ent) then
			ent:Remove()
		end
	end

	RunConsoleCommand("sv_maxvelocity", "10000")
end
hook.Add("InitPostEntity", "StepAhop", UpdateSpawn)
