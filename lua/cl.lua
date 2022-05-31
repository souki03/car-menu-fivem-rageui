ESX = nil
Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent("esx:getSharedObject", function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
    TriggerServerEvent( "souki_carmenu:checkadmin")
end)
local statIndexboats = 1
local Indexboats = {
"Dinghy",
"Dinghy2",
"Dinghy3",
"Dinghy4",
"Jetmax",
"Marquis",
"Seashark",
"Seashark2",
"Seashark3",
"Speeder",
"Speeder2",
"Squalo",
"Submersible",
"Submersible2",
"Toro",
"Toro2",
"Tropic",
"Tropic2",
"Tug", 
"avisa", 
"dinghy5", 
"kosatka", 
"longfin", 
"patrolboat" 
}
local statPedIndexCommercials = 1
local PedIndexCommercials = {
"Benson",
"Biff",
"Hauler",
"Hauler2",
"Mule",
"Mule2",
"Mule3",
"Packer",
"Phantom",
"Phantom2",
"Phantom3",
"Pounder",
"Stockade",
"Stockade3",
"terbyte"

}
local statIndexCompacts = 1
local IndexCompacts = {
"Blista",
"Blista2",
"Blista3",
"Brioso",
"Dilettante",
"Dilettante2",
"Issi2",
"Panto",
"Prairie",
"Rhapsody",
"brioso2",
"weevil"

}
local statIndexCoupes = 1
local IndexCoupes = {
"CogCabrio",
"Exemplar",
"F620",
"Felon",
"Felon2",
"Jackal",
"Oracle",
"Oracle2",
"Sentinel",
"Sentinel2",
"Windsor",
"Windsor2",
"Zion",
"Zion2",
"previon"
}
local statIndexCycles = 1
local IndexCycles = {
"Bmx",
"Cruiser",
"Fixter",
"Scorcher",
"TriBike",
"TriBike2",
"TriBike3"
}
local statIndexEmergency = 1
local IndexEmergency = {
"Ambulance",
"FBI",
"FBI2",
"FireTruck",
"PBus",
"Police",
"Police2",
"Police3",
"Police4",
"PoliceOld1",
"PoliceOld2",
"PoliceT",
"Policeb",
"Polmav",
"Pranger",
"Predator",
"Riot",
"Sheriff",
"Sheriff2"
}
local statIndexHelicopters = 1
local IndexHelicopters = {
"Annihilator",
"Buzzard",
"Buzzard2",
"Cargobob",
"Cargobob2",
"Cargobob3",
"Cargobob4",
"Frogger",
"Frogger2",
"havok",
"hunter", 
"seasparrow",
"Maverick",
"Savage",
"Skylift",
"Supervolito",
"Supervolito2",
"Swift",
"Swift2",
"Valkyrie",
"Valkyrie2",
"Volatus",
"annihilator2",
"seasparrow2",
"seasparrow3"

}
local statIndexIndustrial = 1
local IndexIndustrial = {
"Bulldozer",
"Cutter",
"Dump",
"Flatbed",
"Guardian",
"Handler",
"Mixer",
"Mixer2",
"Rubble",
"TipTruck",
"TipTruck2"
}
local statIndexMilitary = 1
local IndexMilitary = {
"APC",
"Barracks",
"Barracks2",
"Barracks3",
"barrage",
"chernobog",
"Crusader",
"Halftrack",
"khanjali",
"minitank",
"Rhino",
"scarab",
"scarab2",
"scarab3",
"thruster",
"vetir",
"Trailersmall2"
}
local statIndexMotorcycles = 1
local IndexMotorcycles = {
"akuma",
"avarus", 
"bagger", 
"bati", 
"bati2", 
"bf400", 
"carbonrs", 
"chimera", 
"cliffhanger", 
"daemon", 
"daemon2", 
"defiler", 
"deathbike",
"deathbike2",
"deathbike3", 
"diablous", 
"diablous2", 
"double", 
"enduro", 
"esskey", 
"faggio", 
"faggio2", 
"faggio3", 
"fcr", 
"fcr2",
"gargoyle",
"hakuchou", 
"hakuchou2",
"hexer",
"innovation",
"lectro",
"manchez",
"nemesis",
"nightblade",
"oppressor",
"oppressor2",
"pcj",
"ratbike",
"ruffian",
"rrocket",
"sanchez",
"sanchez2",
"sanctus",
"shotaro",
"sovereign",
"stryder",
"thrust",
"vader",
"vindicator",
"vortex",
"wolfsbane",
"zombiea",
"zombieb",
"manchez2"
}
local statIndexMuscle = 1
local IndexMuscle = {
"blade",
"buccaneer",
"buccaneer2",
"chino",
"chino2",
"clique",
"coquette3",
"deviant",
"dominator",
"dominator2",
"dominator3",
"dominator4",
"dominator5",
"dominator6",
"dukes",
"dukes2",
"dukes3",
"faction",
"faction2",
"faction3",
"ellie",
"gauntlet",
"gauntlet2",
"gauntlet3",
"gauntlet4",
"gauntlet5",
"hermes",
"hotknife",
"hustler",
"impaler",
"impaler2",
"impaler3",
"impaler4",
"imperator",
"imperator2",
"imperator3",
"lurcher",
"moonbeam",
"moonbeam2",
"nightshade",
"peyote2",
"phoenix",
"picador",
"ratloader",
"ratloader2",
"ruiner",
"ruiner2",
"ruiner3",
"sabregt",
"sabregt2",
"slamvan",
"slamvan2",
"slamvan3",
"slamvan4",
"slamvan5",
"slamvan6",
"stalion",
"stalion2",
"tampa",
"tampa3",
"tulip",
"vamos",
"vigero",
"virgo",
"virgo2",
"virgo3",
"voodoo",
"voodoo2",
"yosemite",
"yosemite2",
"yosemite3",
"dominator7"
}
local statIndexOffRoad = 1
local IndexOffRoad = {
"bfinjection",
"bifta",
"blazer",
"blazer2",
"blazer3",
"blazer4",
"blazer5",
"bodhi2",
"brawler",
"bruiser",
"bruiser2",
"bruiser3",
"brutus",
"brutus2",
"brutus3",
"caracara",
"caracara2",
"dloader",
"dubsta3",
"dune",
"dune2",
"dune3",
"dune4",
"dune5",
"everon",
"freecrawler",
"hellion",
"insurgent",
"insurgent2",
"insurgent3",
"kalahari",
"kamacho",
"marshall",
"mesa3",
"monster",
"monster3",
"monster4",
"monster5",
"menacer",
"outlaw",
"nightshark",
"rancherxl",
"rancherxl2",
"rebel",
"rebel2",
"rcbandito",
"riata",
"sandking",
"sandking2",
"technical",
"technical2",
"technical3",
"trophytruck",
"trophytruck2",
"vagrant",
"zhaba",
"verus",
"winky"
}
local statIndexOpenWheel = 1
local IndexOpenWheel = {
"formula",
"formula2",
"openwheel1",
"openwheel2"
}
local statIndexPlanes = 1
local IndexPlanes = {
"alphaz1",
"avenger",
"avenger2",
"besra",
"blimp",
"blimp2",
"blimp3",
"bombushka",
"cargoplane",
"cuban800",
"dodo",
"duster",
"howard",
"hydra",
"jet",
"lazer",
"luxor",
"luxor2",
"mammatus",
"microlight",
"miljet",
"mogul",
"molotok",
"nimbus",
"nokota",
"pyro",
"rogue",
"seabreeze",
"shamal",
"starling",
"strikeforce",
"stunt",
"titan",
"tula",
"velum",
"velum2",
"vestra",
"volatol",
"alkonost"
}
local statIndexSUVs = 1
local IndexSUVs = {
"baller",
"baller2",
"baller3",
"baller4",
"baller5",
"baller6",
"bjxl",
"cavalcade",
"cavalcade2",
"contender",
"dubsta",
"dubsta2",
"fq2",
"granger",
"gresley",
"habanero",
"huntley",
"landstalker",
"landstalker2",
"mesa",
"mesa2",
"novak",
"patriot",
"patriot2",
"radi",
"rebla",
"rocoto",
"seminole",
"seminole2",
"serrano",
"toros",
"xls",
"xls2",
"squaddie"
}
local statIndexSedans = 1
local IndexSedans = {
"asea",
"asea2",
"asterope",
"cog55",
"cog552",
"cognoscenti",
"cognoscenti2",
"emperor",
"emperor2",
"emperor3",
"fugitive",
"glendale",
"glendale2",
"ingot",
"intruder",
"limo2",
"premier",
"primo",
"primo2",
"regina",
"romero",
"stafford",
"stanier",
"stratum",
"stretch",
"superd",
"surge",
"tailgater",
"warrener",
"washington",
"tailgater2"
}
local statIndexService = 1
local IndexService = {
"airbus",
"brickade",
"bus",
"coach",
"pbus2",
"rallytruck",
"rentalbus",
"taxi",
"tourbus",
"trash",
"trash2",
"wastelander"
}
local statIndexSports = 1
local IndexSports = {
"alpha",
"banshee",
"bestiagts",
"blista2",
"blista3",
"buffalo",
"buffalo2",
"buffalo3",
"carbonizzare",
"comet2",
"comet3",
"comet4",
"comet5",
"coquette",
"coquette4",
"drafter",
"deveste",
"elegy",
"elegy2",
"feltzer2",
"flashgt",
"furoregt",
"fusilade",
"futo",
"gb200",
"hotring",
"komoda",
"imorgon",
"issi7",
"italigto",
"jugular",
"jester",
"jester2",
"jester3",
"khamelion",
"kuruma",
"kuruma2",
"locust",
"lynx",
"massacro",
"massacro2",
"neo",
"neon",
"ninef",
"ninef2",
"omnis",
"paragon",
"paragon2",
"pariah",
"penumbra",
"penumbra2",
"raiden",
"rapidgt",
"rapidgt2",
"raptor",
"revolter",
"ruston",
"schafter2",
"schafter3",
"schafter4",
"schafter5",
"schafter6",
"schlagen",
"schwarzer",
"sentinel3",
"seven70",
"specter",
"specter2",
"streiter",
"sugoi",
"sultan",
"sultan2",
"surano",
"tampa2",
"tropos",
"verlierer2",
"vstr",
"zr380",
"zr3802",
"zr3803",
"italirsx",
"veto",
"veto2",
"zr350",
"calico",
"futo2",
"euros",
"jester4",
"remus",
"comet6",
"growler",
"vectre",
"cypher",
"sultan3",
"rt3000"
}
local statIndexSportsClassic = 1
local IndexSportsClassic = {
"ardent",
"btype",
"btype2",
"btype3",
"casco",
"cheetah2",
"coquette2",
"deluxo",
"dynasty",
"fagaloa",
"feltzer3",
"gt500",
"infernus2",
"jb700",
"jb7002",
"mamba",
"manana",
"manana2",
"michelli",
"monroe",
"nebula",
"peyote",
"peyote3",
"pigalle",
"rapidgt3",
"retinue",
"retinue2",
"savestra",
"stinger",
"stingergt",
"stromberg",
"swinger",
"torero",
"tornado",
"tornado2",
"tornado3",
"tornado4",
"tornado5",
"tornado6",
"turismo2",
"viseris",
"z190",
"ztype",
"zion3",
"cheburek",
"toreador"
}
local statIndexSuper = 1
local IndexSuper = {
"adder",
"autarch",
"banshee2",
"bullet",
"cheetah",
"cyclone",
"entity2",
"entityxf",
"emerus",
"fmj",
"furia",
"gp1",
"infernus",
"italigtb",
"italigtb2",
"krieger",
"le7b",
"nero",
"nero2",
"osiris",
"penetrator",
"pfister811",
"prototipo",
"reaper",
"s80",
"sc1",
"scramjet",
"sheava",
"sultanrs",
"t20",
"taipan",
"tempesta",
"tezeract",
"thrax",
"tigon",
"turismor",
"tyrant",
"tyrus",
"vacca",
"vagner",
"vigilante",
"visione",
"voltic",
"voltic2",
"xa21",
"zentorno",
"zorrusso"
}

local statIndexTrailer = 1
local IndexTrailer = {
"armytanker",
"armytrailer",
"armytrailer2",
"baletrailer",
"boattrailer",
"cablecar",
"docktrailer",
"freighttrailer",
"graintrailer",
"proptrailer",
"raketrailer",
"tr2",
"tr3",
"tr4",
"trflat",
"tvtrailer",
"tanker",
"tanker2",
"trailerlarge",
"trailerlogs",
"trailersmall",
"trailers",
"trailers2",
"trailers3",
"trailers4"
}
local statIndexTrains = 1
local IndexTrains = {
"freight",
"freightcar",
"freightcont1",
"freightcont2",
"freightgrain",
"metrotrain",
"tankercar"
}
local statIndexUtility = 1
local IndexUtility = {
"airtug",
"caddy",
"caddy2",
"caddy3",
"docktug",
"forklift",
"mower",
"ripley",
"sadler",
"sadler2",
"scrap",
"towtruck",
"towtruck2",
"tractor",
"tractor2",
"tractor3",
"utillitruck",
"utillitruck2",
"utillitruck3",
"slamtruck"
}
local statIndexVans = 1
local IndexVans = {
"bison",
"bison2",
"bison3",
"bobcatxl",
"boxville",
"boxville2",
"boxville3",
"boxville4",
"boxville5",
"burrito",
"burrito2",
"burrito3",
"burrito4",
"burrito5",
"camper",
"gburrito",
"gburrito2",
"journey",
"minivan",
"minivan2",
"paradise",
"pony",
"pony2",
"rumpo",
"rumpo2",
"rumpo3",
"speedo",
"speedo2",
"speedo4",
"surfer",
"surfer2",
"taco",
"youga",
"youga2",
"youga3"
}
arraycaraction = {
    "Delete",
    "Repair",
    "Full Custom"
} 
local arrayIndexcaraction = 1
local arraycar = {
    "Black", --1
    "Red",--2
    "Green",--3
    "White",--4
    "Yellow",--5
    "Purple",--6
    "Orange",--7
    "Blue"--8
}
local couleur = {
    [1] = {color = 0, color2 = 0},
    [2] = {color = 27, color2 = 27},
    [3] = {color = 50, color2 = 50},
    [4] = {color = 112, color2 = 112},
    [5] = {color = 88, color2 = 88},
    [6] = {color = 71, color2 = 71},
    [7] = {color = 38, color2 = 38},
    [8] = {color = 64, color2 = 64},
}
local arrayIndexcar = 1
function FullVehicleBoost()
	if IsPedInAnyVehicle(PlayerPedId(), false) then
        local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
        SetVehicleModKit(vehicle, 0)
		SetVehicleMod(vehicle, 14, 0, true)
		SetVehicleNumberPlateTextIndex(vehicle, 5)
		ToggleVehicleMod(vehicle, 18, true)
		SetVehicleWindowTint(vehicle, 2)
		ToggleVehicleMod(vehicle, 22, true)
		SetVehicleMod(vehicle, 23, 11, false)
		SetVehicleMod(vehicle, 24, 11, false)
		SetVehicleWindowTint(vehicle, 3)
		ToggleVehicleMod(vehicle, 20, true)
		LowerConvertibleRoof(vehicle, true)
		SetVehicleIsStolen(vehicle, false)
		SetVehicleIsWanted(vehicle, false)
		SetVehicleHasBeenOwnedByPlayer(vehicle, true)
		SetVehicleNeedsToBeHotwired(vehicle, false)
		SetCanResprayVehicle(vehicle, true)
		SetPlayersLastVehicle(vehicle)
		SetVehicleFixed(vehicle)
		SetVehicleDeformationFixed(vehicle)
		SetVehicleTyresCanBurst(vehicle, false)
		SetVehicleWheelsCanBreak(vehicle, false)
		SetVehicleCanBeTargetted(vehicle, false)
		SetVehicleExplodesOnHighExplosionDamage(vehicle, false)
		SetVehicleHasStrongAxles(vehicle, true)
		SetVehicleDirtLevel(vehicle, 0)
		SetVehicleCanBeVisiblyDamaged(vehicle, false)
		IsVehicleDriveable(vehicle, true)
		SetVehicleEngineOn(vehicle, true, true)
		SetVehicleStrong(vehicle, true)
		for i = 0,14 do
			SetVehicleExtra(veh, i, 0)
		end
		SetVehicleModKit(veh, 0)
		for i = 0,49 do
			local custom = GetNumVehicleMods(veh, i)
			for j = 1,custom do
				SetVehicleMod(veh, i, math.random(1,j), 1)
			end
		end
	end
end
function Keyboardput(TextEntry, ExampleText, MaxStringLength)

	AddTextEntry('FMMC_KEY_TIP1', TextEntry .. ':')
	DisplayOnscreenKeyboard(1, "FMMC_KEY_TIP1", "", ExampleText, "", "", "", MaxStringLength)
	blockinput = true

	while UpdateOnscreenKeyboard() ~= 1 and UpdateOnscreenKeyboard() ~= 2 do
		Citizen.Wait(0)
	end

	if UpdateOnscreenKeyboard() ~= 2 then
		local result = GetOnscreenKeyboardResult()
		Citizen.Wait(500)
		blockinput = false
		return result
	else
		Citizen.Wait(500)
		blockinput = false
		return nil
	end
end
RegisterNetEvent('souki_carmenu:checkid')
AddEventHandler('souki_carmenu:checkid', function()
    admindetect = true
end)
RegisterKeyMapping('+carmenu', 'Menu Car', 'keyboard', 'F9')
RegisterCommand('+carmenu', function()
	if admindetect == true then
    carmenu()
    end
end)
function carmenu()
    local soukimenucar = RageUI.CreateMenu("Car Menu", "Categories")
    local soukimenucarSub = RageUI.CreateSubMenu(soukimenucar, "Menu Car", "Categories")
    RageUI.Visible(soukimenucar, not RageUI.Visible(soukimenucar))
    while soukimenucar do
        Wait(0)
            RageUI.IsVisible(soukimenucar, true, true, true, function()
                RageUI.ButtonWithStyle("Put Car By Name", nil, {RightLabel = nil}, true, function(Hovered, Active, Selected)
                    if (Selected) then
                        local newcar = Keyboardput('Enter the name of the car', '', 45)
                        spawncar(newcar)
                    end
                end)
                RageUI.List("Actions", arraycaraction, arrayIndexcaraction, nil, {}, true, function(Hovered, Active, Selected, i) arrayIndexcaraction = i
                    if (Selected) then
                        local plyVeh = GetVehiclePedIsIn(PlayerPedId(), false)
                        if arrayIndexcaraction == 1 then
                            DeleteVehicle(plyVeh)
                            ESX.ShowNotification("~r~You have just deleted a vehicle")
                        end
                        if arrayIndexcaraction == 2 then
                            SetVehicleFixed(plyVeh)
                            SetVehicleDirtLevel(plyVeh, 0.0)
                        end
                        if arrayIndexcaraction == 3 then
                            FullVehicleBoost(plyVeh)
                        end
                    end
                end)
                RageUI.List("Colors", arraycar, arrayIndexcar, nil, {}, true, function(Hovered, Active, Selected, i) arrayIndexcar = i
                    if (Selected) then
                        local plyVeh = GetVehiclePedIsIn(PlayerPedId(), false)
                        if couleur[arrayIndexcar] then
                            SetVehicleColours(plyVeh, couleur[arrayIndexcar].color, couleur[arrayIndexcar].color2)
                            ESX.ShowNotification("~g~You have just changed the color of the vehicle")
                        end
                    end
                end)
                RageUI.Separator("↓ Car Catégories ↓")
                RageUI.List("Boats", Indexboats, statIndexboats, nil, {}, true, function(Hovered, Active, Selected, i) statIndexboats = i
                    if (Selected) then
                        spawncar(Indexboats[statIndexboats])
                    end
                end)
                RageUI.List("Commercials", PedIndexCommercials, statPedIndexCommercials, nil, {}, true, function(Hovered, Active, Selected, i) statPedIndexCommercials = i
                    if (Selected) then
                        spawncar(PedIndexCommercials[statPedIndexCommercials])
                    end
                end)
                RageUI.List("Compacts", IndexCompacts, statIndexCompacts, nil, {}, true, function(Hovered, Active, Selected, i) statIndexCompacts = i
                    if (Selected) then
                        spawncar(IndexCompacts[statIndexCompacts])
                    end
                end)
                RageUI.List("Coupes", IndexCoupes, statIndexCoupes, nil, {}, true, function(Hovered, Active, Selected, i) statIndexCoupes = i
                    if (Selected) then
                        spawncar(IndexCoupes[statIndexCoupes])
                    end
                end)
                RageUI.List("Cycles", IndexCycles, statIndexCycles, nil, {}, true, function(Hovered, Active, Selected, i) statIndexCycles = i
                    if (Selected) then
                        spawncar(IndexCycles[statIndexCycles])
                    end
                end)
                RageUI.List("Emergency", IndexEmergency, statIndexEmergency, nil, {}, true, function(Hovered, Active, Selected, i) statIndexEmergency = i
                    if (Selected) then
                        spawncar(IndexEmergency[statIndexEmergency])
                    end
                end)
                RageUI.List("Helicopters", IndexHelicopters, statIndexHelicopters, nil, {}, true, function(Hovered, Active, Selected, i) statIndexHelicopters = i
                    if (Selected) then
                        spawncar(IndexHelicopters[statIndexHelicopters])
                    end
                end)
                RageUI.List("Industrial", IndexIndustrial, statIndexIndustrial, nil, {}, true, function(Hovered, Active, Selected, i) statIndexIndustrial = i
                    if (Selected) then
                        spawncar(IndexIndustrial[statIndexIndustrial])
                    end
                end)
                RageUI.List("Military", IndexMilitary, statIndexMilitary, nil, {}, true, function(Hovered, Active, Selected, i) statIndexMilitary = i
                    if (Selected) then
                        spawncar(IndexMilitary[statIndexMilitary])
                    end
                end)
                RageUI.List("Motorcycles", IndexMotorcycles, statIndexMotorcycles, nil, {}, true, function(Hovered, Active, Selected, i) statIndexMotorcycles = i
                    if (Selected) then
                        spawncar(IndexMotorcycles[statIndexMotorcycles])
                    end
                end)
                RageUI.List("Muscle", IndexMuscle, statIndexMuscle, nil, {}, true, function(Hovered, Active, Selected, i) statIndexMuscle = i
                    if (Selected) then
                        spawncar(IndexMuscle[statIndexMuscle])
                    end
                end)
                RageUI.List("Off-Road", IndexOffRoad, statIndexOffRoad, nil, {}, true, function(Hovered, Active, Selected, i) statIndexOffRoad = i
                    if (Selected) then
                        spawncar(IndexOffRoad[statIndexOffRoad])
                    end
                end)
                RageUI.List("Open Wheel", IndexOpenWheel, statIndexOpenWheel, nil, {}, true, function(Hovered, Active, Selected, i) statIndexOpenWheel = i
                    if (Selected) then
                        spawncar(IndexOpenWheel[statIndexOpenWheel])
                    end
                end) 
                RageUI.List("Planes", IndexPlanes, statIndexPlanes, nil, {}, true, function(Hovered, Active, Selected, i) statIndexPlanes = i
                    if (Selected) then
                        spawncar(IndexPlanes[statIndexPlanes])
                    end
                end)
                RageUI.List("SUVs", IndexSUVs, statIndexSUVs, nil, {}, true, function(Hovered, Active, Selected, i) statIndexSUVs = i
                    if (Selected) then
                        spawncar(IndexSUVs[statIndexSUVs])
                    end
                end)
                RageUI.List("Sedans", IndexSedans, statIndexSedans, nil, {}, true, function(Hovered, Active, Selected, i) statIndexSedans = i
                    if (Selected) then
                        spawncar(IndexSedans[statIndexSedans])
                    end
                end)
                RageUI.List("Service", IndexService, statIndexService, nil, {}, true, function(Hovered, Active, Selected, i) statIndexService = i
                    if (Selected) then
                        spawncar(IndexService[statIndexService])
                    end
                end)
                RageUI.List("Sports", IndexSports, statIndexSports, nil, {}, true, function(Hovered, Active, Selected, i) statIndexSports = i
                    if (Selected) then
                        spawncar(IndexSports[statIndexSports])
                    end
                end)
                RageUI.List("Sports Classic", IndexSportsClassic, statIndexSportsClassic, nil, {}, true, function(Hovered, Active, Selected, i) statIndexSportsClassic = i
                    if (Selected) then
                        spawncar(IndexSportsClassic[statIndexSportsClassic])
                    end
                end)
                RageUI.List("Sports Classic", IndexSuper, statIndexSuper, nil, {}, true, function(Hovered, Active, Selected, i) statIndexSuper = i
                    if (Selected) then
                        spawncar(IndexSuper[statIndexSuper])
                    end
                end)
                RageUI.List("Trailer", IndexTrailer, statIndexTrailer, nil, {}, true, function(Hovered, Active, Selected, i) statIndexTrailer = i
                    if (Selected) then
                        spawncar(IndexTrailer[statIndexTrailer])
                    end
                end)
                RageUI.List("Trains", IndexTrains, statIndexTrains, nil, {}, true, function(Hovered, Active, Selected, i) statIndexTrains = i
                    if (Selected) then
                        spawncar(IndexTrains[statIndexTrains])
                    end
                end)
                RageUI.List("Utility", IndexUtility, statIndexUtility, nil, {}, true, function(Hovered, Active, Selected, i) statIndexUtility = i
                    if (Selected) then
                        spawncar(IndexUtility[statIndexUtility])
                    end
                end)
                RageUI.List("Vans", IndexVans, statIndexVans, nil, {}, true, function(Hovered, Active, Selected, i) statIndexVans = i
                    if (Selected) then
                        spawncar(IndexVans[statIndexVans])
                    end
                end)
			end, function()
			end)
              if not RageUI.Visible(soukimenucar) and not RageUI.Visible(soukimenucarSub) then
              soukimenucar = RMenu:DeleteType("soukimenucar", true)
        end
    end
end
function spawncar(car)
    local ModelHash = car -- Use Compile-time hashes to get the hash of this model
    if not IsModelInCdimage(ModelHash) then return end
    RequestModel(ModelHash) -- Request the model
    while not HasModelLoaded(ModelHash) do -- Waits for the model to load with a check so it does not get stuck in an infinite loop
      Citizen.Wait(10)
    end
    local MyPed = PlayerPedId()
    local Vehicle = CreateVehicle(ModelHash, GetEntityCoords(MyPed), GetEntityHeading(MyPed), true, false) -- Spawns a networked vehicle on your current coords
    SetModelAsNoLongerNeeded(ModelHash)
    TaskWarpPedIntoVehicle(MyPed, Vehicle, -1) -- removes model from game memory as we no longer need it
    ESX.ShowNotification("~g~You have just spawned a vehicle")
end
--by Souki | https://discord.gg/g4Kcnhahwj