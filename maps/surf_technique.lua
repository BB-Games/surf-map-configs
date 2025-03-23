SURF.Payout = 17000
SURF.disableNoRunZones = true

SURF.TrialVectors = {
	Vector(195.80796813965, 14.015061378479, 1536.03125),
	{
		Vector(383.9296875, 512.03125, 1535.9913330078),
		Vector(-0.03125, 511.90530395508, 1535.8625488281),
		Vector(0.082115173339844, -512.03125, 1535.9383544922),
		Vector(383.96875, -512.13562011719, 1536.0847167969)
	},

	useMesh = true,
	targetZHeight = 1658.3581542969
}

CubeLines={
	{Vector(98.663940429688,10.899133682251,1536.03125),Vector(4093.765625,509.58996582031,1536.03125),Vector(3603.2014160156,-767.96868896484,2031.5793457031)},
	{Vector(4016.4052734375,-38.940586090088,1536.03125),Vector(-195.54995727539,-2049.8994140625,1856.03125),Vector(-1007.1077880859,-3304.8911132813,2415.96875)},
	{Vector(-300.74920654297,-2555.0666503906,1856.03125),Vector(-1795.9906005859,-4996.2739257813,1408.03125),Vector(-2303.96875,-6058.767578125,2020.7958984375)},
	{Vector(-1882.5209960938,-5513.6943359375,1408.03125),Vector(5628.9272460938,-2563.9528808594,1408.03125),Vector(5146.6728515625,-3565.8139648438,2031.96875)},
	{Vector(5524.4409179688,-3051.3376464844,1408.03125),Vector(636.73309326172,3067.3608398438,1664.03125),Vector(132.63887023926,2067.09375,2031.96875)},
	{Vector(525.953125,2560.169921875,1664.03125),Vector(4349.0556640625,-5379.232421875,1152.03125),Vector(3911.58984375,-6386.990234375,1775.96875)},
	{Vector(4243.0180664063,-5886.0190429688,1152.03125),Vector(7616.03125,-6270.685546875,640.00958251953),Vector(7329.2924804688,-5504.03125,1023.2596435547)},
}

EntCleanup = {
	"info_player_terrorist",
	"info_player_counterterrorist",
	"info_player_start"
}
local function NewSpawn()
	local playerSpawn = ents.Create("bb_player_spawn")
	playerSpawn:SetPos(Vector(143.71998596191, 7.0451068878174, 1536.03125))
	playerSpawn:SetAngles(Angle(0, 180, 0.000000))
	playerSpawn:Spawn()
	hook.Run("SURF.UpdateSpawns")

	for k, v in pairs(ents.FindByName("endroom")) do
		v:SetPos(Vector(352.543823, 9.652841, 1600.031250))
		v:SetAngles(Angle(0, 180, 0))
	end
end
hook.Add("InitPostEntity", "CreateNewSpawn", NewSpawn)

SURF.bonusZones = {
	Vector(-4860.1440429688, 8449.8603515625, 2176.03125),
	Vector(-1347.0223388672, -11287.454101563, 1984.03125),
	Vector(-957.53082275391, -8446.2158203125, 1152.03125),
	Vector(-8643.0830078125, -11261.947265625, 1664.03125),
	Vector(-3840.853515625, 5633.9033203125, 1408.03125)
}

SURF.splitInfo = {
	{Vector(799.98986816406,-511.91528320313,1114.03125), Vector(416.11163330078,511.91989135742,1390.03125), target = 1, type = 'end'},
	{Vector(4095.9243164063,900.99124145508,1536.03125), Vector(4531.6083984375,-1007.9686889648,1733.9020996094), target = 2, type = 'start'},
	{Vector(11023.9921875,-511.92617797852,928.03125), Vector(10560.03125,512.02734375,1100.28411865234), target = 2, type = 'end'},
	{Vector(-192.16554260254,-1547.96875,1855.8537597656), Vector(110.80408477783,-3567.96875,2018.0461425781), target = 3, type = 'start'},
	{Vector(2559.984375,-3071.9282226563,1376.03125), Vector(2064.03125,-2047.9976806641,1600.9677734375), target = 3, type = 'end'},
	{Vector(-1792.06640625,-4000.96875,1407.9298095703), Vector(-1510.4484863281,-6895.96875,1615.9842529297), target = 4, type = 'start'},
	{Vector(-3808.0854492188,-6015.9306640625,144.03125), Vector(-4239.2954101563,-4992.03125,623.95581054688), target = 4, type = 'end'},
	{Vector(5631.8461914063,-2000.96875,1407.9038085938), Vector(6062.5903320313,-4079.96875,1750.6893310547), target = 5, type = 'start'},
	{Vector(13328.017578125,-2560.1225585938,640.03125), Vector(13807.96875,-3584.0869140625,900.93341064453), target = 5, type = 'end'},
	{Vector(639.99530029297,3672.03125,1663.7691650391), Vector(921.49047851563,1296.03125,1806.4678955078), target = 6, type = 'start'},
	{Vector(-5232.0307617188,2048.0769042969,288.03125), Vector(-5583.96875,3072.1262207031,500.17144775391), target = 6, type = 'end'},
	{Vector(4351.8828125,-4975.96875,1151.8676757813), Vector(4614.7255859375,-6895.96875,1385.4614257813), target = 7, type = 'start'},
}
