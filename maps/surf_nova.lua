SURF.Payout = 5500
SURF.disableNoRunZones = true

SURF.TrialVectors = {
	Vector(16.404861450195, 2298.6179199219, 13088.03125),
	{
		Vector(1247.4206542969, 2000.0355224609, 13088.03125),
		Vector(1247.6876220703, 2511.8532714844, 13088.03125),
		Vector(-1247.96875, 2511.8618164063, 13088.388671875),
		Vector(-1247.96875, 2000.5451660156, 13088.989257813)
	},

	useMesh = true,
	targetZHeight = 13204.411132813
}

CubeLines={
	{Vector(5.2810015678406,2172.8386230469,13088.03125), Vector(1151.3521728516, -12687.96875, 95.681579589844), Vector(-1152.03125, -13769.146484375, 971.63586425781)},
}

EntCleanup = {
	"b2end",
	"b3end",
	"end_house"
}

local stepAutohopZones = {
	{Vector(791.78515625, -15261.62890625, 983.96875),Vector(3.3699741363525, -14785.11328125, 192.03121948242), maxHops = 2, enabled = true},
	{Vector(8.0229768753052, -14232.20703125, 192.03125), Vector(1135.0786132813, -14679.96875, 901.50396728516)},	
}

local function NewSpawn()
	RunConsoleCommand("sv_maxvelocity", "4000")
	SURF.CreateAutohopStepZones(stepAutohopZones)

	local bonus2 = ents.Create("surf_globalahop")
	bonus2:SetTriggerPosition(Vector(511.96875, 3407.9008789063, -5600.099609375), Vector(-507.3212890625, 3663.96875, -5350.8930664063))
	bonus2:Spawn()

	local bonus2 = ents.Create("surf_globalahop")
	bonus2:SetTriggerPosition(Vector(511.96875, 3472.6357421875, -5599.9248046875), Vector(-511.96875, 3410.0100097656, -5489.8662109375))
	bonus2:Spawn()

	local e = ents.Create("surf_disableahop")
	e:SetTriggerPosition(Vector(1695.96875, 12055.926757813, -10240.208007813), Vector(-1694.7254638672, 12439.96875, -10016.822265625))
	e:Spawn()
end
hook.Add("InitPostEntity", "CreateNewSpawn", NewSpawn)


SURF.splitInfo = {
	{Vector(-10329.005859375,2672.03125,9326.54296875), Vector(6635.771484375,4350.560546875,5632.03125), target = 1, type = 'both'},
	{Vector(5165.5625,12148.4609375,4387.0224609375), Vector(-5247.73828125,9555.9619140625,6108.5966796875), target = 2, type = 'both'},
	{Vector(-13484.870117188,10576.03125,5883.59765625), Vector(-15642.6875,6339.345703125,1403.9282226562), target = 3, type = 'both'},
	{Vector(13480.03125,10577.748046875,5887.1171875), Vector(15644.325195312,6501.681640625,1272.8208007812), target = 3, type = 'both'},
}

SURF.bonusZones = {
	Vector(967.55792236328, -15111.645507813, 752.03125),
	Vector(-0.19972801208496, 3538.3215332031, -5599.96875),
	Vector(-10.478240966797, 2574.5341796875, -1887.96875)
}


