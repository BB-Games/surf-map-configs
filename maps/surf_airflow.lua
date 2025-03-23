SURF.Payout = 11000

CubeLines={
	{Vector(206.07536315918,-521.27886962891,-383.96875),Vector(895.88079833984,5440.1987304688,3232.03125),Vector(-1023.96875,6079.9287109375,3935.8557128906)},
	{Vector(-60.455539703369,5520.2075195313,3232.03125),Vector(-575.73516845703,-6048.1162109375,-1119.96875),Vector(447.25177001953,-7078.5913085938,-672.03125)},
	{Vector(-86.926300048828,-6138.4936523438,-1119.96875),Vector(175.68724060059,-4496.5146484375,4608.03125),Vector(-335.76110839844,-5119.599609375,4791.96875)},
	{Vector(-71.302871704102,-4605.0834960938,4608.03125),Vector(64.03125,9727.779296875,-7167.4497070313),Vector(3519.2263183594,8704.8876953125,-5696.8754882813)},
	{Vector(1927.4749755859,8848.2041015625,-7167.96875),Vector(-576.48669433594,3648.3073730469,-7247.96875),Vector(-2623.96875,4276.6362304688,-6928.53125)},
	{Vector(-1681.1926269531,4218.109375,-7247.96875),Vector(-1710.6372070313,4127.96875,-11470.952148438),Vector(-1488.6051025391,4085.2990722656,-11280.03125)},
}

SURF.TrialVectors = {Vector(-895.96875, 959.41998291016, -399.29412841797), Vector(863.27899169922, -1983.96875, -447.82958984375)}


Areas = {
	{a=Vector(0,0,0),b=Vector(1742.6466064453,-5681.38671875,9231.96875),c=Vector(-1199.96875,-8103.1923828125,7250.4169921875), t='tp', d=Vector(-6.5441470146179,-525.53485107422,-383.96875)},
}

SURF.splitInfo = {
	{Vector(260.66577148438,5553.703125,3232.03125), Vector(-401.00323486328,5886.1450195313,3935.96875), target = 1, type = 'end'},
	{Vector(255.96875,5394.7177734375,3183.1274414063), Vector(-383.96875,5438.9482421875,3918.8081054688), target = 2, type = 'start'},
	{Vector(-574.12719726563,-6213.4658203125,-1119.96875), Vector(443.43099975586,-6805.6762695313,-672.03125), target = 2, type = 'end'},
	{Vector(-575.96875,-6003.3471679688,-1166.6328125), Vector(447.96875,-6047.5874023438, -672.03125), target = 3, type = 'start'},
	{Vector(-575.96875,-7072.3056640625,-1120.0249023438), Vector(447.96875,-7080.11328125, -672.03125), target = 3, type = 'start'},
	{Vector(-335.29144287109,-4537.6748046875,4608.03125), Vector(175.96876525879,-5118.24609375,4791.6142578125), target = 3, type = 'end'},
	{Vector(-335.57397460938,-4415.6577148438,4592.03125), Vector(175.96873474121,-4368.6557617188,4791.7163085938), target = 4, type = 'start'},
	{Vector(1938.2091064453,8873.48046875,-7167.96875), Vector(1074.5201416016,9555.5244140625,-6494.3408203125), target = 4, type = 'end'},
	{Vector(64.031265258789,8704.7587890625,-7167.7646484375), Vector(3519.96875,8722.8818359375,-6729.2153320313), target = 5, type = 'start'},
	{Vector(-2623.96875,4158.310546875,-7246.3354492188), Vector(-586.80828857422,3650.3640136719,-6928.03125), target = 5, type = 'end'},
	{Vector(-576.45123291016,4287.9619140625,-7247.96875), Vector(-2623.96875,4320.146484375,-6928.3916015625), target = 6, type = 'start'},
}

local function NewSpawn()
	local e = ents.Create("surf_pebblebuster_inhibitor")
	e:SetTriggerPosition(Vector(-336.2844543457, -4367.96875, 4593.7163085938),Vector(175.62237548828, -5119.96875, 4789.3559570313))
	e:Spawn()
end
hook.Add("InitPostEntity", "CreateNewSpawn", NewSpawn)