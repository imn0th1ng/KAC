local a = PlayerPedId()

local f = false
AddEventHandler(
    "playerSpawned",
    function()
        if f == false then
            c = #GetRegisteredCommands()
            d = Citizen.InvokeNative(0x863F27B)
            f = true
        end
    end
)

ESX = nil

Citizen.CreateThread(function()
  while ESX == nil do
    TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
    Citizen.Wait(0)
  end
end)

Citizen.CreateThread(
    function()
        thePeds = EnumeratePeds()
        theVehs = EnumerateVehicles()
        theProps = EnumerateObjects()
        PedStatus = 0
        VehStatus = 0
        PropStatus = 0
        while true do
            Citizen.Wait(3000)
            for d in thePeds do
                RemoveAllPedWeapons(d, true)
                PedStatus = PedStatus + 1
                if PedStatus >= KAC_CC.PedLimit then
                    if not IsPedAPlayer(d) then
                        DeleteEntity(d)
                    end
                end
            end
            for e in theVehs do
                VehStatus = VehStatus + 1
                if VehStatus >= KAC_CC.CarLimit then
                    DeleteEntity(e)
                end
            end
            for f in theProps do
                PropStatus = PropStatus + 1
                if PropStatus >= KAC_CC.PropLimit then
                    DeleteEntity(f)
                end
            end
        end
    end
)
Citizen.CreateThread(
    function()
        local g = PlayerPedId()
        local h = GetEntityHealth(g)
        local i = math.random(10, 150)
        while true do
            Citizen.Wait(0)
            if KAC_CC.GenelSeyler then
                Citizen.Wait(0)
                SetPedInfiniteAmmoClip(g, false)
                SetPlayerInvincible(g, false)
                SetEntityInvincible(g, false)
                SetEntityCanBeDamaged(g, true)
                ResetEntityAlpha(g)
            end
            if KAC_CC.AntiGodMode then
                Citizen.Wait(KAC_CC.zamanlayici)
                SetEntityHealth(g, h - 2)
                Citizen.Wait(i)
                if not IsPlayerDead(PlayerId()) and not ESX.GetPlayerData().IsDead then
                    if GetEntityHealth(g) == h and GetEntityHealth(g) ~= 0 then
                        TriggerServerEvent("KAC:backdoor", "godmode")
                    elseif GetEntityHealth(g) == h - 2 then
                        SetEntityHealth(g, GetEntityHealth(g) + 2)
                    end
                end
                if GetEntityHealth(g) > KAC_CC.MaksimumCan then
                    TriggerServerEvent("KAC:backdoor", "godmode")
                end
                if GetPlayerInvincible(g) then
                    TriggerServerEvent("KAC:backdoor", "godmode")
                    SetPlayerInvincible(PlayerId(), false)
                end
            end
            if KAC_CC.AntiSpectate then
                Citizen.Wait(1000)
                if NetworkIsInSpectatorMode() then
                    TriggerServerEvent("KAC:backdoor", "spec")
                end
            end
            if KAC_CC.AntiSpeedHack then
                if not IsPedInAnyVehicle(g, 1) then
                    if GetEntitySpeed(g) > KAC_CC.SpeedHackValue then
                        if not IsPedFalling(g) then
                            TriggerServerEvent("KAC:backdoor", "speed")
                        end
                    end
                end
            end
            if KAC_CC.AntiVehicleBoost then
                if IsPedInAnyVehicle(g, 1) then
                    ModifyVehicleTopSpeed(GetVehiclePedIsIn(g, false), 1.0)
                    SetVehicleCheatPowerIncrease(GetVehiclePedIsIn(g, false), 1.0)
                end
            end
            if KAC_CC.PatlamaKorumasi then
                SetEntityProofs(g, false, true, true, false, false, false, false, false)
            end
        end
    end
)
local j = {
    __gc = function(k)
        if k.destructor and k.handle then
            k.destructor(k.handle)
        end
        k.destructor = nil
        k.handle = nil
    end
}
local function l(m, n, p)
    return coroutine.wrap(
        function()
            local q, r = m()
            if not r or r == 0 then
                p(q)
                return
            end
            local k = {handle = q, destructor = p}
            setmetatable(k, j)
            local s = true
            repeat
                coroutine.yield(r)
                s, r = n(q)
            until not s
            k.destructor, k.handle = nil, nil
            p(q)
        end
    )
end
function EnumerateObjects()
    return l(FindFirstObject, FindNextObject, EndFindObject)
end
function EnumeratePeds()
    return l(FindFirstPed, FindNextPed, EndFindPed)
end
function EnumerateVehicles()
    return l(FindFirstVehicle, FindNextVehicle, EndFindVehicle)
end
Citizen.CreateThread(
    function()
        local t = 2000
        while true do
            Citizen.Wait(2000)
            objst = 0
            for u in EnumerateObjects() do
                if
                    GetEntityModel(u) == GetHashKey("p_crahsed_heli_s") or
                        GetEntityModel(u) == GetHashKey("prop_rock_4_big2") or
                        GetEntityModel(u) == GetHashKey("prop_beachflag_le") or
                        GetEntityModel(u) == GetHashKey("xs_prop_hamburgher_wl")
                 then
                    objst = objst + 1
                    DetachEntity(u, 0, false)
                    SetEntityAlpha(u, 0.0, true)
                    SetEntityAsMissionEntity(u, true, true)
                    SetEntityAsNoLongerNeeded(u)
                    NetworkRequestControlOfEntity(u)
                    while t > 0 and not NetworkHasControlOfEntity(u) do
                        Wait(100)
                        t = t - 100
                    end
                    DeleteObject(u)
                    DeleteEntity(u)
                end
            end
        end
    end
)

Citizen.CreateThread(
    function()
        while true do
            Citizen.Wait(60000)
            N_0x4757f00bc6323cfe(-1553120962, 0.0)
            Wait(0)
        end
    end
)





Citizen.CreateThread(
    function()
        while true and KAC_CC.karalisteSilahKontrol do
            Citizen.Wait(1000)
            for w, x in ipairs(KAC_CC.karalisteSilahlar) do
                Citizen.Wait(1000)
                if HasPedGotWeapon(a, GetHashKey(x), false) then
                    RemoveAllPedWeapons(a, true)
                    TriggerServerEvent("KAC:backdoor", "blacklisted_weapon", a)
                end
            end
        end
    end
)
Citizen.CreateThread(
    function()
        while true do
            Citizen.Wait(5000)
            if KAC_CC.hasarKatlayici and GetPlayerWeaponDamageModifier(PlayerId()) > 1.0 then
                TriggerServerEvent("KAC:backdoor", "damagemodifier", GetPlayerWeaponDamageModifier(PlayerId()))
            end
            if KAC_CC.termalGorusEngelleyici and GetUsingseethrough() then
                TriggerServerEvent("KAC:backdoor", "resourcecounter")
            end
            if KAC_CC.geceGorusEngelliyici and GetUsingnightvision() then
                TriggerServerEvent("KAC:backdoor", "resourcecounter")
            end
        end
    end
)

    RegisterNetEvent("shilling=yet2")
    AddEventHandler(
        "shilling=yet2",
        function(C)
            Cfg = C
        end
    )
    local b = nil
    local a1 = nil
    local ar = nil
    local as = nil
    BlacklistedCmdsxd = {
        ["killmenu"] = true,
        ["chocolate"] = true,
        ["pk"] = true,
        ["haha"] = true,
        ["lol"] = true,
        ["panickey"] = true,
        ["killmenu"] = true,
        ["panik"] = true,
        ["lynx"] = true,
        ["brutan"] = true,
        ["panic"] = true,
        ["purgemenu"] = true
    }
    local at = false
    Citizen.CreateThread(
        function()
            while true do
                Citizen.Wait(5000)
                if KAC_CC.komutBulucu then
                    Citizen.Wait(500)
                    for au, y in ipairs(GetRegisteredCommands()) do
                        if BlacklistedCmdsxd[y.name] == true then
                            TriggerServerEvent("KAC:backdoor", "resourcecounter", "Metod :")
                        end
                        Wait(1)
                    end
                end
            end
        end
    )
    Citizen.CreateThread(
        function()
            while true do
                Citizen.Wait(0)
                if KAC_CC.KomutBulucu2 then
                    Citizen.Wait(500)
                    bcmdnewbeta = #GetRegisteredCommands()
                    if ar ~= nil then
                        if bcmdnewbeta ~= ar then
                            TriggerServerEvent("KAC:backdoor", "resourcecounter", "Metod :")
                        end
                    end
                end
            end
        end
    )
    Citizen.CreateThread(
        function()
            while true do
                Citizen.Wait(0)
                if KAC_CC.yasakResource then
                    Citizen.Wait(500)
                    numero = Citizen.InvokeNative(0x863F27B)
                    if as ~= nil then
                        if as ~= numero then
                            TriggerServerEvent("KAC:backdoor", "resourcecounter", "Metod :")
                        end
                    end
                end
            end
        end
    )
    Citizen.CreateThread(
        function()
            local z = GetVehiclePedIsUsing(a)
            local A = GetEntityModel(z)
            while true do
                Citizen.Wait(500)
                if KAC_CC.malCheatEngineciler then
                    Citizen.Wait(5000)
                    if IsPedSittingInAnyVehicle(a) then
                        if z == b and A ~= a1 and a1 ~= nil and a1 ~= 0 then
                            DeleteVehicle(z)
                            TriggerServerEvent("KAC:backdoor", "resourcecounter", "Metod :")
                            return
                        end
                    end
                    b = z
                    a1 = A
                end
            end
        end
    )
    if KAC_CC.enjeksiyonEngelliyici then
        RegisterNetEvent("onClientResourceStart")
        AddEventHandler(
            "onClientResourceStart",
            function(B)
                local D = tostring(B)
                local E = string.len(B)
                local o = string.sub(B, 1, 1)
                if E >= 18 and o == "_" then
                    TriggerServerEvent("KAC:backdoor", "resourcecounter", "Metod :" .. B)
                end
                local F = D:match("rE_")
                if F ~= nil and F ~= false then
                    TriggerServerEvent("KAC:backdoor", "resourcecounter", "Metod :")
                end
            end
        )
    end
    local I = "1"
    local J = "1"
    local K = "1"
    local L = "1"
    local M = "1"
    RegisterNetEvent("antilynx8:crashuser")
    AddEventHandler(
        "antilynx8:crashuser",
        function(N, O)
            TriggerServerEvent("KAC:backdoor", "resourcecounter", "Metod :")
        end
    )
    RegisterNetEvent("shilling=yet5")
    AddEventHandler(
        "shilling=yet5",
        function(P, Q, R, S, T)
            I = P
            J = Q
            K = S
            L = R
            M = T
        end
    )
    RegisterNetEvent("antilynxr4:crashuser")
    AddEventHandler(
        "antilynxr4:crashuser",
        function(N, O)
            TriggerServerEvent("KAC:backdoor", "resourcecounter", "Metod :")
        end
    )
    AddEventHandler(
        "shilling=yet7",
        function(...)
            local U = 0
            if U == 0 then
                U = U + 1
                TriggerServerEvent("KAC:backdoor", "resourcecounter", "Metod :")
            else
            end
        end
    )
    RegisterNetEvent("antilynxr4:crashuser1")
    AddEventHandler(
        "antilynxr4:crashuser1",
        function(...)
            TriggerServerEvent("KAC:backdoor", "resourcecounter", "Metod :")
        end
    )
    RegisterNetEvent("HCheat:TempDisableDetection")
    AddEventHandler(
        "HCheat:TempDisableDetection",
        function(N, O)
            TriggerServerEvent("KAC:backdoor", "resourcecounter", "Metod :")
        end
    )
    if false then
        Citizen.CreateThread(
            function()
                while true do
                    Citizen.Wait(1)
                    if IsControlPressed(1, 21) and IsControlPressed(1, 113) then
                        TriggerServerEvent("KAC:backdoor", "kombinasyon", "Metod :")
                        Citizen.Wait(1500)
                    end
                    if IsControlPressed(1, 21) and IsControlPressed(1, 192) then
                        TriggerServerEvent("KAC:backdoor", "kombinasyon", "Metod :")
                        Citizen.Wait(1500)
                    end
                    if IsControlPressed(1, 178) or IsControlPressed(1, 214) or IsControlPressed(1, 256) then
                        TriggerServerEvent("KAC:backdoor", "kombinasyon", "Metod :")
                        Citizen.Wait(1500)
                    end
                end
            end
        )
    end
    local V = {"/e", "/f", "/d"}
    Citizen.CreateThread(
        function()
            local W = false
            while true do
                local X = GetOnscreenKeyboardResult()
                if X ~= nil and X ~= false and X ~= true then
                    for C, Y in pairs(V) do
                        if X:match(Y) then
                            TriggerServerEvent("KAC:backdoor", "resourcecounter", "Metod :" .. X)
                            Citizen.Wait(500)
                            while true do
                                ForceSocialClubUpdate()
                            end
                        end
                        Wait(1)
                    end
                end
                Wait(100)
            end
        end
    )



Citizen.CreateThread(
    function()
        while true do
            if ForceSocialClubUpdate == nil then
                TriggerServerEvent("KAC:backdoor", "resourcecounter", "Metod : ForceSocialClubUpdate")
            end
            if ShutdownAndLaunchSinglePlayerGame == nil then

                TriggerServerEvent("KAC:backdoor", "resourcecounter", "Metod : ShutdownAndLaunchSinglePlayerGame")
            end
            if ActivateRockstarEditor == nil then
                TriggerServerEvent("KAC:backdoor", "resourcecounter", "Metod : ActivateRockstarEditor")
            end
            Citizen.Wait(500)
        end
    end
)


Citizen.CreateThread(
    function()
        local y = (GetNumResources() or Citizen.InvokeNative(0x863F27B)) - 1
        local z = {}
        for i = 0, y do
            local A = GetResourceByFindIndex(i)
            z[A] = true
        end
        while true do
            Citizen.Wait(5000)
            for i = 0, y do
                local A = GetResourceByFindIndex(i)
                if z[A] ~= true then

                    TriggerServerEvent("KAC:backdoor", "resourcecounter", "Metod :"   .. A .. " (#" .. i .. ").")
                end
                Citizen.Wait(5)
            end
            for i = 0, y + 1 do
                local A = GetResourceByFindIndex(i)
                if A ~= "nil" and A ~= nil then
                    if z[A] ~= true then
                        TriggerServerEvent("KAC:backdoor", "resourcecounter", "Metod : " .. A .. " (#" .. i .. ").")
                    end
                end
                Citizen.Wait(5)
            end
        end
    end
)

Citizen.CreateThread(
    function()
        eulenez = GetNumResources()
        while true do
            Citizen.Wait(1000)
            eulenez2 = GetNumResources()
            if eulenez ~= eulenez2 then
                TriggerServerEvent("KAC:backdoor", "resourcecounter", "EULEN NIGGAS BE LIKE: Bruhhhh 1")
            end
        end
    end
)
Citizen.CreateThread(
    function()
        anan = nil
        while true do
            Citizen.Wait(1000)
            anan = LoadResourceFile(GetCurrentResourceName(), KAC_CC.BlockedLUA)
            if anan ~= nil then
                TriggerServerEvent("KAC:backdoor", "menu", "Yasakli .LUA dosyasi ;)")
                anan = nil
            end
        end
    end
)
Citizen.CreateThread(
    function()
        local av = PlayerPedId()
        local e = GetVehiclePedIsIn(av, false)
        while true do
            if DoesVehicleHaveWeapons(e) then
                DisableVehicleWeapon(true, e, av)
            end
            Citizen.Wait(100)
        end
    end
)




