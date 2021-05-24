--[[
						
]]

KAC_CC = {}

--////////// Client Side Patlama Koruması \\\\\\\\\\--
KAC_CC.PatlamaKorumasi = true -- Eğer hile patlama yapmayı becerirse patlama hasarını 0 yapar.

--////////// Genel Anticheat \\\\\\\\\\--
KAC_CC.GenelSeyler = true -- Genel dandik hileler
KAC_CC.HasarDegistirici = true -- Hasar/alma verme hilelerini engeller.
KAC_CC.AntiVehicleBoost = true -- Araç hızlandırma engeller.
KAC_CC.AntiSpeedHack = true -- Oyuncu hız hilesi engeller.
KAC_CC.SpeedHackValue = 10.0 -- Oyuncunun Maks hız değeri
KAC_CC.AntiSpectate = true -- Oyuncu izleme engeller.
KAC_CC.zamanlayici = 20000 -- Zamanlayıcı 1000 = 1 saniye

--////////// Sunucu Limitleri \\\\\\\\\\--
KAC_CC.PedLimit = 50 -- Maximum Ped Limit
KAC_CC.CarLimit = 500 -- Maximum Araba Limiti
KAC_CC.PropLimit = 50 -- Maximum Prop Limiti

--////////// Yasaklı .lua  \\\\\\\\\\--
KAC_CC.BlockedLUA = {"ham.lua", "fallout.lua", "stars.lua", "rape.lua", "Infinity.lua"}
-- Örnektekiler gibi istemediğiniz .lua dosyalarını yazınız

--////////// Anti-Godmode \\\\\\\\\\--
KAC_CC.AntiGodMode = true -- Ölümsüzlük kontrol
KAC_CC.MaksimumCan = 200 -- Maksimum can

--////////// Enjeksiyon Engelleyiciler \\\\\\\\\\--
KAC_CC.modMenuFix = true -- 200+ Mod menü engeller.
KAC_CC.yasakResource = true -- Yeni resourceleri kontrol eder. (Bazı sunucularda hata verebilir.)
KAC_CC.enjeksiyonEngelliyici = true -- Random offset engeller.
KAC_CC.KomutBulucu = true -- Chat enjeksiyon engeller.
KAC_CC.KomutBulucu2 = true -- Daha fazla Chat enjeksiyon engeller.

--////////// Cheat Engine Engelleyici \\\\\\\\\\--
KAC_CC.malCheatEngineciler = true -- Mal cheat engine hilecilerini engeller.
-- Methodlar otomatik olarak güncellenir.

--////////// Görüş Türleri \\\\\\\\\\--
KAC_CC.termalGorusEngelliyici = true -- Termal görüş engeller.
KAC_CC.geceGorusEngelliyici = true -- Gece görüşü engeller.

--////////// Karaliste Silahlar \\\\\\\\\\--
KAC_CC.karalisteSilahKontrol = true -- Yasaklı silah alınca silme şeysi.
KAC_CC.PatlayiciSilahKontrol = true -- Karaliste silahları kontrol eder.
KAC_CC.karalisteSilahlar = { -- Yasklı silahlar isterseniz ekleyiniz.
	"WEAPON_SAWNOFFSHOTGUN",
	"WEAPON_BULLPUPSHOTGUN",
	"WEAPON_GRENADELAUNCHER",
	"WEAPON_GRENADELAUNCHER_SMOKE",
	"WEAPON_RPG",
	"WEAPON_HEAVYSHOTGUN",
	"WEAPON_GARBAGEBAG",
	"WEAPON_RAILGUN",
	"WEAPON_RAILPISTOL",
	"WEAPON_RAYPISTOL", 
	"WEAPON_RAYCARBINE", 
	"WEAPON_RAYMINIGUN",
	"WEAPON_DIGISCANNER",
	"WEAPON_SPECIALCARBINE_MK2",
	"WEAPON_BULLPUPRIFLE_MK2",
	"WEAPON_PUMPSHOTGUN_MK2",
	"WEAPON_MARKSMANRIFLE_MK2",
	"WEAPON_COMPACTLAUNCHER",
	"WEAPON_SNSPISTOL_MK2",
	"WEAPON_REVOLVER_MK2",
	"WEAPON_HOMINGLAUNCHER", 
	"WEAPON_SMG_MK2"
}
