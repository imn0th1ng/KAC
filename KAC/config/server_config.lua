KAC_SC = {}

--  !!!!  Bypass acesi ekacbypass dır.

--////////// Discord Webhookları \\\\\\\\\\--
KAC_SC.ModelsLogWebhook = "WEBHOOK BURAYA" -- Model (Prop, Araç, Ped) Webhook
KAC_SC.ExplosionLogWebhook = "WEBHOOK BURAYA" -- Patlatmalar Webhook
KAC_SC.LogBanWebhook = "WEBHOOK BURAYA" -- Banlar buraya atılır
KAC_SC.AntiVPNWebhook = "WEBHOOK BURAYA" -- VPN Geçiş Webhooku

--//////////  Server Side Patlama Hasarı  \\\\\\\\\\--
KAC_SC.AntiNuke = true -- Prop ile sunucu patlatmayı engeller.
KAC_SC.ExplosionProtection = true -- Patlatmaları engeller.

--//////////  Yasaklı Şeyler  \\\\\\\\\\--
KAC_SC.BlacklistPropBan = false -- Whitelist olmayan propları banlar.
KAC_SC.WordsProtection = true -- Yasaklı Kelime Kullananları banlar.
KAC_SC.AntiClearPedTask = true -- Ped Görevlerini Silip NPC yapmayı engeller

--//////////  Silah Koruması  \\\\\\\\\\--
KAC_SC.BanBlacklistedWeapon = false -- Karalisteli silahları banlar, Client side ile entegredir burdan kapamanız yeterli olacaktır.
KAC_SC.GiveWeaponsProtection = true -- Hilenin Silah basmasını engeller.
KAC_SC.MaxWeaponAmmo = 200 -- Bir Silahta olabilecek maksimum mermi sayısı.

--////////// Trigger Banlayıcı \\\\\\\\\\--
KAC_SC.TriggerKoruyucu = false -- Şifrelediğimiz triggerlerden birini triggerlamaz ise banlanır.
--Tüm mod menü fonksiyonlarını engeller. :)

--////////// VPN Engelleyici \\\\\\\\\\--
KAC_SC.AntiVPN = true -- VPN Engeller.
KAC_SC.AntiVPNDiscordLogs = true -- Engellenen VPN kullanicilarini loglar.

-- Sunucunun izin verdiği proplar
-- Daha fazla isterseniz ekleyebilirsiniz.
-- Olmamasını istediğiniz şeyleri silebilirsiniz.
KAC_SC.WhitelistedProps = {
	"prop_ballistic_shield",
}

-- Engellenen Patlama Türleri
-- Katmak istediğiniz sayılardaki "--" yerini siliniz.
-- Kaldırmak istediğiniz sayıyı virgülle beraber siliniz.
KAC_SC.BlockedExplosions = {
    0, -- Grenade
    1, -- GrenadeLauncher
    2, -- C4 
    3, -- Molotov
    4, -- Rocket
    5, --TankShell
    6, -- Hi_Octane
    7, -- Car
    --8, -- Plance
    --9, -- PetrolPump
    12, -- Dir_Flam
    --14, -- Dir_Gas_Canister
    15, -- Boat
    16,  --Ship_Destroy
    17, --Truck
    18, -- Bullet
    19, -- SmokeGrenadeLauncher
    20, -- SmokeGrenade
    --21, -- BZGAS
    22, -- flare
    23,--Gas_Canister 
    24, --Extinguisher
    --25, --Programmablear
    26, -- Train
    27, --Barrel
    28, -- PROPANE
    --29, -- Blimp
    --30, -- Dir_Flame_Explode
    31, -- Tanker
    32, -- PlaneRocket-
    33, -- VehicleBullet
    34, -- Gas_Tank
    35, -- FireWork
    --36, -- SnowBall
    37, -- ProxMine
    38, -- Valkyrie_Cannon
	70, -- AutoMizer
}

-- Chat üzerinden yasaklı kelimeler.
-- Daha fazla isterseniz ekleyebilirsiniz.
-- Olmamasını istediğiniz şeyleri silebilirsiniz.
KAC_SC.BlacklistedWords = {
	'Desudo',
	'Brutan',
	'EulenCheats',
	"discord.gg/",
	"lynxmenu",
	"HamHaxia",
	"Ham Mafia",
	"www.renalua.com",
	"Fallen#0811",
	"Rena 8",
	"HamHaxia", 
	"Ham Mafia", 
	"Xanax#0134", 
	">:D Player Crash", 
	"discord.gg", 
	"34ByTe Community", 
	"lynxmenu.com", 
	"Anti-LRAC",
	"Baran#8992",
	"iLostName#7138",
	"85.190.90.118",
	"Melon#1379",
	"hammafia.com",
	"AlphaV ~ 5391",
	"vjuton.pl",
	"Soviet Bear",
	"XARIES",
	"xaries",
	"dc.xaries.pl",
	"aries",
	"aries.pl",
	"youtube.com/c/Aries98/",
	"Aries98",
	"yo many",
	"dezet",
	"333",
	"333GANG",
	
}

-- Yasaklı Araçlar ve pedler.
-- Daha fazla isterseniz ekleyebilirsiniz.
-- Olmamasını istediğiniz şeyleri silebilirsiniz.
KAC_SC.BlacklistedModels = {
	-- Araçlar
	"skylift",
	"valkyrie2",
	"airbus",
	"hunter",
	"bus",
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
	"tug",
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
	"trailers4",
	'RHINO',
	'AKULA',
	'SAVAGE',
	'HUNTER',
	'BUZZARD',
	'BUZZARD2',
	'ANNIHILATOR',
	'VALKYRIE',
	'HYDRA',
	'APC',
	'Trailersmall2',
	'Lazer',
	'oppressor',
	'mogul',
	'barrage',
	'Khanjali',
	'volatol',
	'chernobog',
	'avenger',
	'stromberg',
	'nightshark',
	'besra',
	'babushka ',
	'starling',
	'insurgent',
	'cargobob',
	'cargobob2',
	'cargobob3',
	'cargobob4',
	'caracara',
	'deluxo',
	'menacer',
    'scramjet',
    'oppressor2',
    'revolter',
    'viseris',
    'savestra',
    'thruster',
    'ardent',
    'dune3',
    'tampa3',
    'halftrack',
    'nokota',
    'strikeforce',
    'bombushka',
    'molotok',
    'pyro',
    'ruiner2',
    'limo2',
    'technical',
    'technical2',
    'technical3',
    'jb700w',
    'blazer5',
    'insurgent3',
	'boxville5',
	'bruiser',
    'bruiser2',
    'bruiser3',
    'brutus',
    'brutus2',
    'brutus3',
    'cerberus',
    'cerberus2',
    'cerberus3',
    'dominator4',
    'dominator5',
    'dominator6',
    'impaler2',
    'impaler3',
    'impaler4',
    'imperator',
    'imperator2',
    'imperator3',
    'issi4',
    'issi5',
    'issi6',
    'monster3',
    'monster4',
    'monster5',
    'scarab',
    'scarab2',
    'scarab3',
    'slamvan4',
    'slamvan5',
    'slamvan6',
    'zr380',
    'zr3802',
    'zr3803',
	'alphaz1',
	'avenger2',
	'blimp',
	'blimp2',
	'blimp3',
	'cargoplane',
	'cuban800',
	'dodo',
	'duster',
	'howard',
	'jet',
	'luxor',
	'luxor2',
	'mammatus',
	'microlight',
	'miljet',
	'nimbus',
	'rogue',
	'seabreeze',
	'shamal',
	'stunt',
	'titan',
	'tula',
	'velum',
	'velum2',
	'vestra',

	-- Pedler
	"s_m_y_swat_01",
	"a_m_m_acult_01",
	"a_m_o_acult_01",
	"ig_wade",
	"s_m_y_hwaycop_01",
	"a_m_y_acult_01",
	's_m_m_movalien_01',
	's_m_m_movallien_01',
	'u_m_y_babyd',
	'cs_orleans',
	'a_m_y_acult_01',
	's_m_m_movspace_01',
	'u_m_y_zombie_01',
	's_m_y_blackops_01',
	'a_f_y_topless_01',
	'a_c_boar',
	'a_c_cat_01',
	'a_c_chickenhawk',
	'a_c_chimp',
	's_f_y_hooker_03',
	'a_c_chop',
	'a_c_cormorant',
	'a_c_cow',
	'a_c_coyote',
	'a_c_crow',
	'a_c_dolphin',
	'a_c_fish',
	's_f_y_hooker_01',
	'a_c_hen',
	'a_c_humpback',
	'a_c_husky',
	'a_c_killerwhale',
	'a_c_mtlion',
	'a_c_pigeon',
	'a_c_poodle',
	'a_c_pug',
	'a_c_rabbit_01',
	'a_c_rat',
	'a_c_retriever',
	'a_c_rhesus',
	'a_c_rottweiler',
	'a_c_sharkhammer',
	'a_c_sharktiger',
	'a_c_shepherd',
	'a_c_stingray',
	'a_c_westy',
}

KAC_SC.Events62 = {
	
}

KAC_SC.Version = "v1.34" -- Anticheat Versiyonu