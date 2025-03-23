SURF.Payout = 3000
SURF.disableNoRunZones = true

SURF.TrialVectors = {
	Vector(-1772.056640625, -9672.966796875, 14336.03125),
	{
		Vector(-800.12329101563, -9248.248046875, 14336.03125),
		Vector(-2911.96875, -9247.947265625, 14335.814453125),
		Vector(-2911.9125976563, -10143.805664063, 14336.03125),
		Vector(-800.22406005859, -10143.942382813, 14336.03125)
	},

	useMesh = true,
	targetZHeight = 14437.935546875
}

CubeLines={
	{Vector(-1834.4271240234,-9522.73046875,14336.03125), Vector(9280.89453125, 4463.96875, -10241.421875), Vector(14889.984375, 907, -14398.069335938)},
}


EntCleanup = {
	"startbonus_trigger",
	"endbonus_trigger",
	"bonusf",
	"secret",
	"speedmod",
	"info_player_counterterrorist",
	"info_player_terrorist",
	"spawn"
}

local function NewSpawn()
	local blockZone = ents.Create("surf_blockzone")
	blockZone:SetTriggerPosition(Vector(-1696.4749755859, -9177.478515625, 14104.03125), Vector(-1760.0377197266, -9240.13671875, 14336.03125))
	blockZone:Spawn()

	local blockZone = ents.Create("surf_blockzone")
	blockZone:SetTriggerPosition(Vector(-1952.3352050781, -9176.826171875, 14104.03125), Vector(-2016.109375, -9240.490234375, 14336.03125))
	blockZone:Spawn()

	local e = ents.Create("surf_disablenewrun")
	e:SetTriggerPosition(Vector(-2911.96875, -9247.451171875, 14488.795898438), Vector(-800.34002685547, -10143.96875, 14703.48828125), nil, true)
	e:Spawn()

	local startEnt = ents.FindByName("coursestart")[1]
	startEnt:SetPos(Vector(-1858.254150, -9593.888672, 14400.031250))
	startEnt:Spawn()

	local startEnt = ents.FindByName("start")[1]
	startEnt:SetPos(Vector(-1858.254150, -9593.888672, 14400.031250))
	startEnt:Spawn()

	local playerSpawn = ents.Create("bb_player_spawn")
	playerSpawn:SetPos(Vector(-1858.254150, -9593.888672, 14400.031250))
	playerSpawn:SetAngles(Angle(0, 90, 0))
	playerSpawn:Spawn()
	hook.Run("SURF.UpdateSpawns")

	local noMovementEnt = ents.Create("surf_stopinitialmovement")
	noMovementEnt:SetTriggerPosition(Vector(-800.23699951172, -10143.96875, 14437.84765625), Vector(-2911.96875, -9247.912109375, 14335.8515625))
	noMovementEnt:Spawn()

	RunConsoleCommand("surf_report_bad_area", "0")
end
hook.Add("InitPostEntity", "CreateNewSpawn", NewSpawn)

SURF.splitInfo = {
	{Vector(-11588.767578125,1986.4926757812,8192.03125), Vector(-14655.96875,11247.004882812,12799.642578125), target = 1, type = 'both'},
	{Vector(7604.3139648438,1120.03125,770.25463867188), Vector(2816.03125,-6470.4013671875,4349.5317382812), target = 2, type = 'both'},
	{Vector(-15295.96875,14004.604492188,-260.39233398438), Vector(-2008.2055664062,10456.250976562,-13120.565429688), target = 3, type = 'both'},
}



