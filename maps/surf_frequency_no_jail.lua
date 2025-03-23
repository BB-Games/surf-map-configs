SURF.Payout = 11500
SURF.disablePreSpeed = true
SURF.TrialVectors = {Vector(-1152.6882324219, 5280.03125, 7833.6489257813),Vector(-1854.8017578125, 6943.96875, 7733.0458984375)}

CubeLines={
	{Vector(-1317.7069091797,6118.7133789063,7840.03125),Vector(2011.8894042969,6431.96875,-9903.8173828125),Vector(1476.1704101563,5792.03125,-9378.48046875)},
}

EntCleanup={
	"func_button",
}

SURF.splitInfo = {
	{Vector(-5183.810546875,6938.6918945313,3743.96875), Vector(-3792.03125,5321.181640625,2629.2646484375), target = 1, type = 'both'},
	{Vector(7296.03125,5152.625,-3296.5749511719), Vector(8693.208984375,7067.376953125,-5471.96875), target = 2, type = 'both'},
}

SURF.bonusZones = {
	Vector(13213.5703125, -1744.7980957031, 9008.03125)
}

local stepAutohopZones = {
	{Vector(3903.96875, 7071.1259765625, -2656.5314941406), Vector(4580.220703125, 5171.3168945313, -3935.96875), maxHops = 1, enabled = true},
	{SURF.splitInfo[2][1],SURF.splitInfo[2][2]},
}

hook.Add("InitPostEntity", "CreateZones", function()
	SURF.CreateAutohopStepZones(stepAutohopZones)
end)
	

