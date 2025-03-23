SURF.TrialVectors = {Vector(-13793.303710938, -5335.5688476563, 12060.62890625),Vector(-5972.3911132813, -6327.0947265625, 16255.96875)}
SURF.Payout = 6000


CubeLines = {
	{Vector(-13054.51953125,-5248.1284179688,12064.03125),Vector(-11453.88671875,-7748.763671875,11968.03125),Vector(-10716,-8039.2177734375,16255.96875)},
	{Vector(-11065.333984375,-7834.7749023438,11968.03125),Vector(-11362.219726563,-999.96881103516,11590.994140625),Vector(-10756.828125,-133.94952392578,16255.96875)},
	{Vector(-10970.026367188,-139.59112548828,11584.03125),Vector(-6469.8139648438,6619.0502929688,10208.03125),Vector(-6185.0209960938,5942.4829101563,16255.96875)},
	{Vector(-6242.5239257813,6382.3286132813,10207.03125),Vector(-6186.294921875,13308.390625,14328.130859375),Vector(-6746.2719726563,12808.509765625,15477.64453125)},
	{Vector(-6226.2153320313,13047.654296875,14328.130859375),Vector(-5556.0327148438,-4945.3608398438,8255.03125),Vector(-4574.7807617188,-5666.6000976563,8703.96875)},
	{Vector(-5063.1508789063,-5007.5649414063,8255.03125),Vector(5830.7353515625,-7720.814453125,-12095.96875),Vector(6323.900390625,-8166.8940429688,-11712.03125)},
	{Vector(6050.6694335938,-7780.0444335938,-12095.96875),Vector(-10188.70703125,-8356.626953125,12160.03125),Vector(-10531.6953125,-9353.26953125,16255.96875)},
	{Vector(-10233.04296875,-9000.2685546875,12160.03125),Vector(-11779.135742188,-15393.328125,-12607.96875),Vector(-11455.092773438,-15637.670898438,-10560.03125)},
	{Vector(-11607.65625,-15520.661132813,-12607.96875),Vector(-12443.4921875,3057.9140625,8400.03125),Vector(-11611.947265625,2503.5981445313,8959.96875)},
	{Vector(-12030.026367188,2965.3059082031,8400.03125),Vector(4990.9086914063,1221.8138427734,11264.03125),Vector(4532.48828125,1688.1208496094,12287.96875)},
	{Vector(4801.0727539063,1293.3465576172,11264.03125),Vector(15722.362304688,-13227.420898438,3328.03125),Vector(13696.03125,-14136.981445313,4721.1108398438)},
}

EntCleanup={
	"buttonok",
	"keycancel",
	"buttonreset",
	"func_button",
	"info_player_terrorist",
	"info_player_counterterrorist",
	"info_payer_spawn",
	"alsonamedfornoreason",
	"tonemap_global",
	"timer_end",
	"spawnarea",
	"endzone"
}

local matsToKill = {
	"fnatic/tube/models/props/tube2/ripcurl",
	"fnatic/tube/models/props/tube2/ripcurl2",
	"maps/surf_summer/ar_dizzy/dizzy_tar_roof_color_8_8_8",
	"FNATIC/SPAWN/DECALINDUSTRIALNUMBER00A_DELIT",
	"RYAN_DEV/85",
	"FNATIC/PIER2/SURFCINEMA",
	"FNATIC/SPAWN/SURFHEAVEN",
	"WOOD/HR_W/HR_WOOD_PANELING_001",
	"FNATIC/SKATEPARK/VERTCONTEST",
	"FNATIC/SKATEPARK/SKATEIMAGE",
	"FNATIC/SPAWN/PICTURE_KSF",
	"fnatic/spawn/yourcredits",
	"fnatic/spawn/slideshow_summer",
	"fnatic/spawn/billboard1",
	"fnatic/spawn/billboard2",
	"fnatic/spawn/billboard3",
	"models/fnatic/pier/tvad1/slideshow_summer",
	"models/fnatic/pier/tvad2/slideshow_gear",
	"models/fnatic/pier/billboard1/billboard1",
	"models/fnatic/pier/billboard2/billboard2",
	"models/fnatic/pier/billboard3/billboard3",
	"models/fnatic/spawn/hoodie1/hoodie1",
	"models/fnatic/spawn/hoodie1/hoodie1_back",
	"models/fnatic/spawn/hoodie2/hoodie2_back",
	"models/fnatic/spawn/hoodie2/hoodie2_front",
	"models/fnatic/spawn/tablecouch1/cloth_blue",
	"models/fnatic/spawn/tablecouch1/cloth_orange",
	"models/fnatic/spawn/tablecouch1/woodfloor01",
	"models/fnatic/spawn/tablecouch1/grey02",
	"models/fnatic/spawn/tablecouch1/cr_miscwood2b",
	"models/fnatic/spawn/tablecouch1/milbeams002",
	"models/fnatic/spawn/tablecouch1/doge_wainscoting_1",
	"models/fnatic/spawn/tablecouch2/cloth_blue",
	"models/fnatic/spawn/tablecouch2/cloth_orange",
	"models/fnatic/spawn/tablecouch2/woodfloor01",
	"models/fnatic/spawn/tablecouch2/grey02",
	"models/fnatic/spawn/tablecouch2/cr_miscwood2b",
	"models/fnatic/spawn/tablecouch2/milbeams002",
	"models/fnatic/spawn/tablecouch2/doge_wainscoting_1",
	"models/fnatic/pier/table_boombox/metal_silver",
	"models/fnatic/pier/table_boombox/unbreakable",
	"models/fnatic/sandcastle/boombox_player/boombox_logo",
	"models/fnatic/sandcastle/boombox_player/dark_red",
	"models/fnatic/sandcastle/boombox_player/metal_silver",
	"models/fnatic/sandcastle/boombox_player/metalfence007a",
	"models/fnatic/sandcastle/boombox_player/unbreakable_glass_a_01",
	"models/fnatic/pier/explainsign_v2/sign_rewards",
	"models/fnatic/pier/explainsign2/sign_summer",
	"models/fnatic/pier/explainsign3/sign_shop",
	"fnatic/music/cassette",
	"fnatic/music/akingalone",
	"fnatic/music/dontspeak",
	"fnatic/music/hope",
	"fnatic/music/lostinthought",
	"fnatic/music/silenceofheartbreak",
	"fnatic/music/spiritism",
}

BB.Modules.Enable("material_override")
hook.Add("BBase.DataHandlesLoaded", "fixtube", function(objPlayer)
	for k, v in ipairs(matsToKill) do
		BB.HideMaterial(objPlayer, v, false)
	end
end)

local function SpawnsAndBlocks()

	local playerSpawn = ents.Create("bb_player_spawn")
	playerSpawn:SetPos(Vector(-13723.724609375, -5136.39453125, 12064.03125))
	playerSpawn:SetAngles(Angle(0, 0, 0))
	playerSpawn:Spawn()
	hook.Run("SURF.UpdateSpawns")


	local blockZone = ents.Create("surf_blockzone")
	blockZone:SetTriggerPosition(Vector(-15013.91015625, -4885.9526367188, 12259.892578125), Vector(-14680.305664063, -4840.0463867188, 12048.03125))
	blockZone:SetPos(Vector(-14855.864257813, -4626.0600585938, 12048.03125))
	blockZone:Spawn()


	local aboveSpawnRoof = ents.Create("surf_disablenewrun")
	aboveSpawnRoof:SetTriggerPosition(Vector(-13628.69140625, -5391.4672851563, 12313.206054688), Vector(-12561.368164063, -4999.8803710938, 12404.03125))
	aboveSpawnRoof:Spawn()
end
hook.Add("InitPostEntity", "SpawnsAndBlocks", SpawnsAndBlocks)



SURF.splitInfo = {
	{Vector(-12609.258789063,-8225.3203125,11328.03125),Vector(-13503.874023438, -8799.6884765625, 12328.03125), target = 1, type = 'end'},
	{Vector(-11455.96875,-7752.3666992188,12063.284179688), Vector(-10688.1484375,-7744.1547851563,11968.03125), target = 2, type = 'start'},
	{Vector(-11807.701171875,-1599.7396240234,10464.03125), Vector(-10335.311523438, -1088.03125, 11463.263671875), target = 2, type = 'end'},
	{Vector(-11367.650390625,-65.777145385742,11584.03125), Vector(-10776.030273438,-64.683723449707,11679.533203125), target = 3, type = 'start'},
	{Vector(-7615.2993164063,7040.8969726563,9664.240234375), Vector(-7071.96875, 4992.3881835938, 11063.611328125), target = 3, type = 'end'},
	{Vector(-6396.123046875, 7581.2866210938, 9440.03125), Vector(-5406.087890625, 5880.9243164063, 10206.235351563), target = 4, type = 'start'},
	{Vector(-6305.8598632813,13309.157226563,14328.130859375), Vector(-6741.203125,12806.821289063,15496.905273438), target = 4, type = 'end'},
	{Vector(-6182.7490234375,12800.958984375,14328.130859375), Vector(-6176.4243164063,13310.206054688,14828.130859375), target = 5, type = 'start'},
	{Vector(13680.7578125,14175.590820313,8184.03125), Vector(14255.467773438, 13087.96875, 8783.783203125), target = 5, type = 'end'},
	{Vector(-6067.4150390625,-4929.4243164063,7055.03125), Vector(-4044.2509765625,-4828.1884765625,8855.03125), target = 6, type = 'start'},
	{Vector(-5823.8081054688,15488.203125,3903.03125), Vector(-4331.3037109375,16255.96875,4490.8125), target = 6, type = 'end'},
	{Vector(5824.2963867188,-7713.9287109375,-12095.96875), Vector(6335.2978515625,-7712.359375,-11595.96875), target = 7, type = 'start'},
	{Vector(-10250.341796875,-8355.9814453125,12160.03125), Vector(-10486.538085938,-9310.0556640625,12560.03125), target = 7, type = 'end'},
	{Vector(-10186.499023438,-9311.7607421875,12160.03125), Vector(-10134.23828125,-8352.3125,12560.03125), target = 8, type = 'start'},
	{Vector(-3313.3081054688,-1917.3316650391,9984.03125), Vector(-4136.03125,-1553.7147216797,10600.94921875), target = 8, type = 'end'},
	{Vector(-11999.96875,-15710.981445313,-12673.662109375), Vector(-11244.423828125,-14945.262695,-12619.40234375), target = 9, type = 'start'},
	{Vector(-11498.198242188,2880.8559570313,8400.03125), Vector(-12493.997070313,2555.5161132813,8761.939453125), target = 9, type = 'end'},
	{Vector(-12535.78125,3072.1020507813,8399.703125), Vector(-11340.221679688,3067.0146484375,8600.3515625), target = 10, type = 'start'},
	{Vector(4508.6953125,1339.5614013672,11264.03125), Vector(5983.96875,2430.4758300781,11543.421875), target = 10, type = 'end'},
	{Vector(4512.1420898438,1222.4855957031,11264.03125), Vector(5983.96875,1216.7235107422,11543.45703125), target = 11, type = 'start'},
}