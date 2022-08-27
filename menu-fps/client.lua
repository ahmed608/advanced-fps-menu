local display = false
RegisterCommand("fps", function(source, args)
    SetDisplay(not display)
end)
RegisterNUICallback("close", function(data)
    SetDisplay(false)
end)
RegisterNUICallback("button1", function()
    SetTimecycleModifier('MP_Powerplay_blend')
    SetExtraTimecycleModifier('reflection_correct_ambient')
end)
RegisterNUICallback("button2", function() 
    local ped = PlayerPedId()
    SetTimecycleModifier('tunnel')
    ClearAllBrokenGlass()
    ClearAllHelpMessages()
    LeaderboardsReadClearAll()
    ClearBrief()
    ClearGpsFlags()
    ClearPrints()
    ClearSmallPrints()
    ClearReplayStats()
    LeaderboardsClearCacheData()
    ClearFocus()
    ClearHdArea()
    ClearPedBloodDamage(ped)
    ClearPedWetness(ped)
    ClearPedEnvDirt(ped)
    ResetPedVisibleDamage(ped)
    ClearOverrideWeather()
    ClearHdArea()
    DisableVehicleDistantlights(false)
    DisableScreenblurFade()
    SetRainLevel(0.0)
    SetWindSpeed(0.0)
end)
RegisterNUICallback("button3", function()
     local ped = PlayerPedId()
    SetTimecycleModifier('yell_tunnel_nodirect')
    ClearAllBrokenGlass()
    ClearAllHelpMessages()
    LeaderboardsReadClearAll()
    ClearBrief()
    ClearGpsFlags()
    ClearPrints()
    ClearSmallPrints()
    ClearReplayStats()
    LeaderboardsClearCacheData()
    ClearFocus()
    ClearHdArea()
    ClearPedBloodDamage(ped)
    ClearPedWetness(ped)
    ClearPedEnvDirt(ped)
    ResetPedVisibleDamage(ped)
    ClearOverrideWeather()
    DisableVehicleDistantlights(false)
    DisableScreenblurFade()
    SetRainLevel(0.0)
    SetWindSpeed(0.0)
end)
RegisterNUICallback("button4", function()
    SetTimecycleModifier()
    ClearTimecycleModifier()
    ClearExtraTimecycleModifier()
end)

function SetDisplay(bool)
    display = bool
    SetNuiFocus(bool, bool)
    SendNUIMessage({
        type = "ui",
        status = bool,
    })
end
