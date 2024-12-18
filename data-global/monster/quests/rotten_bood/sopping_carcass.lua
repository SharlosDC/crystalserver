local mType = Game.createMonsterType("Sopping Carcass")
local monster = {}

monster.description = "a sopping carcass"
monster.experience = 23425
monster.outfit = {
	lookType = 1658,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 2396
monster.Bestiary = {
	class = "Undead",
	race = BESTY_RACE_UNDEAD,
	toKill = 5000,
	FirstUnlock = 200,
	SecondUnlock = 2000,
	CharmsPoints = 100,
	Stars = 5,
	Occurrence = 2,
	Locations = "Putrefactory",
}

monster.health = 32700
monster.maxHealth = 32700
monster.race = "venom"
monster.corpse = 43832
monster.speed = 210
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10,
}

monster.strategiesTarget = {
	nearest = 70,
	health = 10,
	damage = 60,
	random = 10,
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = false,
	pushable = false,
	rewardBoss = false,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 80,
	targetDistance = 4,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = true,
	canWalkOnFire = true,
	canWalkOnPoison = true,
}

monster.light = {
	level = 0,
	color = 0,
}

monster.voices = {
	interval = 5000,
	chance = 30,
}

monster.loot = {
	{ name = "crystal coin", chance = 90305 },
	{ name = "soul orb", chance = 27927, minCount = 1, maxCount = 3 },
	{ name = "lichen gobbler", chance = 15243 },
	{ name = "decayed finger bone", chance = 25798 },
	{ name = "rotten roots", chance = 9031 },
	{ name = "yellow gem", chance = 3836 },
	{ name = "underworld rod", chance = 1525 },
	{ id = 3039, chance = 3537 }, -- red gem,
	{ name = "ripper lance", chance = 4752 },
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -1100 },
	{ name = "combat", interval = 2000, chance = 24, type = COMBAT_DEATHDAMAGE, minDamage = -1400, maxDamage = -1500, radius = 5, effect = CONST_ME_MORTAREA, target = false },
	{ name = "combat", interval = 2500, chance = 15, type = COMBAT_ICEDAMAGE, minDamage = -1200, maxDamage = -1400, radius = 5, effect = CONST_ME_GHOSTLY_BITE, target = false },
	{ name = "combat", interval = 2000, chance = 25, type = COMBAT_EARTHDAMAGE, minDamage = -900, maxDamage = -1400, radius = 5, effect = CONST_ME_BIGPLANTS, target = false },
	{ name = "combat", interval = 2000, chance = 25, type = COMBAT_DEATHDAMAGE, minDamage = -1100, maxDamage = -1550, length = 8, spread = 5, effect = CONST_ME_BLACKSMOKE, target = false },
	{ name = "ice chain", interval = 3000, chance = 15, minDamage = -1200, maxDamage = -1500, target = false },
}

monster.defenses = {
	defense = 60,
	armor = 112,
	mitigation = 3.25,
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 0 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 35 },
	{ type = COMBAT_EARTHDAMAGE, percent = -15 },
	{ type = COMBAT_FIREDAMAGE, percent = -5 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = 50 },
	{ type = COMBAT_HOLYDAMAGE, percent = -20 },
	{ type = COMBAT_DEATHDAMAGE, percent = 60 },
}

monster.immunities = {
	{ type = "paralyze", condition = true },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
