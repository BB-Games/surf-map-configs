SURF.TrialVectors = {Vector(-480.19140625, -14463.779296875, 13406.735351563), Vector(479.96875, -14464.275390625, 13987.5859375)}
SURF.Payout = 3500
SURF.disableNoRunZones = true

CubeLines = {
	{Vector(-1.314398765564,-14609.255859375,13440.03125),Vector(-477.79357910156,-14978.682617188,-7807.96875),Vector(460.5446472168,-15686.778320313,-5376.03125)},
	{Vector(-2.1326410770416,-15114.248046875,-7807.96875),Vector(-479.96875,14301.36328125,-11999.698242188),Vector(490.07559204102,13439.446289063,-5376.0307617188)},
}



SURF.bonusZones = {
	Vector(6148.8486328125, -14688.921875, 1152.03125)
}


EntCleanup = {
	"info_player_counterterrorist",
	"info_player_terrorist",
	"spawn"
}

local noStartZones = {
	{Vector(-481.14443969727, -14336.110351563, 13702.216796875), Vector(-1164.3630371094, -15166.533203125, 14352.03125)},
	{Vector(480.98358154297, -14336.110351563, 13702.02734375), Vector(1024.03125, -15167.00390625, 14352.03125)},
	{Vector(544.142578125, -14528.268554688, 14351.90234375), Vector(-543.76098632813, -15167.213867188, 14652.03125)},
	{Vector(-683.95916748047, -14512.296875, 13768.031250),Vector(703.96875, -15158.728515625, 13779.25390625)}
}

local function ProcessMapRequirements()

	for k, v in ipairs(noStartZones) do
		local e = ents.Create("surf_disablenewrun")
		e:SetTriggerPosition(v[1], v[2], nil, true)
		e:Spawn()
	end

	local playerSpawn = ents.Create("info_player_start")
	playerSpawn:SetPos(Vector(78.956390380859, -14722.729492188, 13440.03125))
	playerSpawn:SetAngles(Angle(5.675974, 90.792160, 0.000000))
	playerSpawn:Spawn()
	hook.Run("SURF.UpdateSpawns")

end
hook.Add("InitPostEntity", "ProcessMapRequirements", ProcessMapRequirements)



SURF.splitInfo = {
	{Vector(-738.47961425781,13055.96875,6128.4116210938), Vector(852.85064697266,15871.96875,6944.6899414063), target = 1, type = 'end'},
	{Vector(-479.91564941406,-14977.787109375,-7807.96875), Vector(479.97271728516,-14976.001953125,-7408.0483398438), target = 2, type = 'start'},
}