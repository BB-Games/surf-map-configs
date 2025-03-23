SURF.Payout = 17000
SURF.disablePreSpeed = true
SURF.disableNoRunZones = true

SURF.TrialVectors = {Vector(9151.96875, 14912.784179688, 5073.3012695313),Vector(8426.03125, 14203.818359375, 4806.4228515625)}

CubeLines={
	{Vector(8767.251953125,14886.426757813,5090.1860351563),Vector(-14252.204101563,-9569.6591796875,12986.03125),Vector(-13673.94140625,-9174.650390625,15324.96875)},
	{Vector(-13964.626953125,-9282.654296875,12986.03125),Vector(-12444.374023438,-6347.3325195313,5455.03125), Vector(-14276.852539063,-5966.96875, 5772.337890625)},
}

SURF.autohopZones = {
	{Vector(-12470.788085938,327.78768920898,5789.03125), Vector(-12294.733398438,512.66040039063,5989.03125), Vector(-12464.159179688,425.97970581055,5989.03125)},
}

EntCleanup = {
	"poolbonus",
	"func_button",
	"func_respawnroom",
	"path_track",
	"keyframe_rope",
	"move_rope",
	"phys_bone_follower"
}

hook.Add("InitPostEntity", "CreateZones", function()
	SURF.CreateAutoHopZones()
end)

SURF.splitInfo = {
	{Vector(3867.03125,5714.4736328125,166.16735839844), Vector(5490.6044921875,6535.841796875,2817.96875), target = 1, type = 'both'},
	{Vector(11.168579101563,5129.03125,-2148.314453125), Vector(-1224.5528564453,7079.6337890625,-1775.03125), target = 2, type = 'both'},
	{Vector(-2445.96875,5163.7084960938,-1773.5428466797), Vector(-1273.0478515625,7089.501953125,-1042.03125), target = 3, type = 'both'},
	{Vector(5264.96875,7126.5771484375,-4840.345703125), Vector(4199.03125,5102.751953125,-4453.0405273438), target = 3, type = 'both'},
	{Vector(13498.225585938,7125.4418945313,-9253.7236328125), Vector(12289.77734375,5100.1459960938,-7293.03125), target = 4, type = 'both'},
	{Vector(-1345.8454589844,7643.23828125,-8654.03125), Vector(-16.491638183594,4584.1181640625,-9588.96875), target = 5, type = 'both'},
	{Vector(-14252.295898438,-9187.177734375,12986.03125), Vector(-13693.119140625,-9570.580078125,13081.608398438), target = 6, type = 'end'},
	{Vector(-14252.96875,-9186.255859375,12977.727539063), Vector(-13693.03125,-9074.74609375,13467.270507813), target = 7, type = 'start'},
	{Vector(-15868.96875, -4995.5356445313, 11189.486328125), Vector(-12093.03125, -2005.1848144531, 9842.650390625), target = 7, type = 'both'},
	{Vector(-8855.6728515625, -704.49908447266, 8682.03125), Vector(-11976.96875, 1940.6395263672, 11078.694335938), target = 8, type = 'both'},
	{Vector(-7101.03125, 1204.0347900391, 11188.505859375), Vector(-8737.96875, 6909.12109375, 11119.278320313), target = 9, type = 'both'},
	{Vector(3253.2092285156,2969.3588867188,10974.797851563), Vector(2031.0544433594,-210.57678222656,8243.033203125), target = 10, type = 'both'},
	{Vector(-8887.8515625,1149.3587646484,5736.5205078125), Vector(-9833.66796875,-287.90637207031,8473.96875), target = 11, type = 'both'},
	{Vector(-16246.685546875,3830.4643554688,7555.6484375), Vector(-12504.864257813,7253.3588867188,3832.1254882813), target = 12, type = 'both'},
	{Vector(11810.266601563,4240.4213867188,5312.171875), Vector(15346.994140625,6509.8735351563,3730.03125), target = 13, type = 'both'},
}



