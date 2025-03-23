SURF.Payout = 10500
SURF.disablePreSpeed = true
SURF.disableNoRunZones = true

SURF.TrialVectors={Vector(8192.03125, -14351.202148438, 14723.693359375), Vector(8847.96875, -13696.149414063, 14713.99609375)}

CubeLines={
	{Vector(8517.3857421875,-13684.541015625,14861.557617188),Vector(10378.647460938,-15400.301757813,-14460.002929688),Vector(9090.53515625,-16091.03125,-13733.88671875)},
}

Areas={
	{a=Vector(0,0,0),b=Vector(6096.8984375,-14454.060546875,14854.876953125),c=Vector(7465.0678710938,-15463.55859375,15611.96875), t='tp', d=Vector(8982.66796875,-14318.619140625,14860.951171875)},
	{a=Vector(0,0,0),b=Vector(8281.828125,-13653.583984375,14864.208984375),c=Vector(8628.2119140625,-13128.750976563,15116.076171875), t='tp', d=Vector(8908.013671875,-14311.659179688,14862.529296875)},

}

SURF.splitInfo = {
	{Vector(-4801.7426757813,-9503.96875,10088.487304688), Vector(-6431.96875,-7299.1811523438,12388.208007813), target = 1, type = 'both'},
	{Vector(2066.4211425781,-5703.5522460938,2524.03125), Vector(-2110.8950195313,-3030.03125,3461.9860839844), target = 2, type = 'both'},
	{Vector(5972.9384765625,-3372.2531738281,-11615.96875), Vector(1923.7255859375,-5413.96875,-8062.0654296875), target = 3, type = 'both'},
	{Vector(12028.96875,-3374.5439453125,-9566.1591796875), Vector(15835.506835938,-5413.96875,-8068.38671875), target = 4, type = 'both'},
}

EntCleanup = {
	"info_player_terrorist",
	"info_player_counterterrorist",
	"info_player_start",
	"info_player_teamspawn",
}


local function ReplaceSpawns()
	local playerSpawn = ents.Create("bb_player_spawn")
	playerSpawn:SetPos(Vector(8982.667969, -14318.619141, 14925.739258))
	playerSpawn:SetAngles(Angle(8.448000, 148.60800,0.000000))
	playerSpawn:Spawn()
end
hook.Add("InitPostEntity", "FixSpawns", ReplaceSpawns)
