SURF.Payout = 4500
SURF.TrialVectors = {Vector(-1151.96875, -1023.8673706055, 399.76586914063),Vector(1151.96875, -1007.7198486328, 582.61468505859)}
SURF.adjustSpawnNoStart = 95


CubeLines={
	{Vector(7.8056125640869,-1174.8521728516,400.03125),Vector(990.78332519531, -11071.189453125, -9536.0693359375),Vector(-990.76318359375, -8768.03125, -9104.517578125)},
}

EntCleanup={
	"info_player_terrorist",
	"info_player_counterterrorist",
	"info_player_start",
}


SURF.bonusZones = {
	Vector(-13.973316192627, -7194.9067382813, 6624.03125),
	Vector(-7729.0302734375, 9939.8095703125, 12432.03125)
}

local function NewSpawn()
	local playerSpawn = ents.Create("bb_player_spawn")
	playerSpawn:SetPos(Vector(9.3088140487671, -1209.2098388672, 400.03125))
	playerSpawn:SetAngles(Angle(0,90, 0))
	playerSpawn:Spawn()
	hook.Run("SURF.UpdateSpawns")
	
end
hook.Add("InitPostEntity", "CreateNewSpawn", NewSpawn)

SURF.splitInfo = {
	{Vector(-8320,6976.13671875,-2047.96875), Vector(-9632.03125,9279.8583984375,-864.03125), target = 1, type = 'both'},
	{Vector(8319.96875,9279.904296875,-2048.1643066406), Vector(9631.7470703125,6976.1044921875,-864.03125), target = 1, type = 'both'},
	{Vector(6912.416015625,63.968742370605,-3264.2309570313), Vector(4608.03125,1216.5777587891,-2016.03125), target = 2, type = 'both'},
	{Vector(-4608.1982421875,1216.03125,-3263.9794921875), Vector(-6911.837890625,63.96875,-2016.03125), target = 2, type = 'both'},
	{Vector(1151.3621826172,-3360.9372558594,-6495.96875), Vector(-1151.0032958984,-5407.5600585938,-4064.03125), target = 3, type = 'both'},
	{Vector(11007.96875,-2638.8198242188,-8126.5590820313), Vector(8703.4013671875,-1406.6362304688,-5536.03125), target = 4, type = 'both'},
	{Vector(-11007.96875,-2637.6589355469,-8126.0942382813), Vector(-8706.009765625,-1409.1198730469,-5536.03125), target = 4, type = 'both'},

}



