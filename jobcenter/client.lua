--[[
 ───────────────────────────────────────────────────────────────────────────────────────────
─██████████████─██████████─██████─────────██████████████─██████─────────████████──████████─
─██░░░░░░░░░░██─██░░░░░░██─██░░██─────────██░░░░░░░░░░██─██░░██─────────██░░░░██──██░░░░██─
─██░░██████░░██─████░░████─██░░██─────────██░░██████████─██░░██─────────████░░██──██░░████─
─██░░██──██░░██───██░░██───██░░██─────────██░░██─────────██░░██───────────██░░░░██░░░░██───
─██░░██████░░██───██░░██───██░░██─────────██░░██████████─██░░██───────────████░░░░░░████───
─██░░░░░░░░░░██───██░░██───██░░██─────────██░░░░░░░░░░██─██░░██─────────────████░░████─────
─██░░██████████───██░░██───██░░██─────────██░░██████████─██░░██───────────────██░░██───────
─██░░██───────────██░░██───██░░██─────────██░░██─────────██░░██───────────────██░░██───────
─██░░██─────────████░░████─██░░██████████─██░░██████████─██░░██████████───────██░░██───────
─██░░██─────────██░░░░░░██─██░░░░░░░░░░██─██░░░░░░░░░░██─██░░░░░░░░░░██───────██░░██───────
─██████─────────██████████─██████████████─██████████████─██████████████───────██████───────
───────────────────────────────────────────────────────────────────────────────────────────
]]--
local delay = 500

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(delay)
            for k,v in pairs(Config.Jobcenter) do
                while GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), v.x, v.y, v.z, true ) <= 3 do
                    delay = 1
                    Citizen.Wait(delay)
                    DrawMarker(27, v.x, v.y, v.z-0.8, 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, 2.5, 2.5, 0.2, 255, 31, 0, 150, false, true, 2, nil, nil, false)
                    drawTxt('Tryk ~r~[E]~s~ for at åbne ~r~Jobcenter~s~', 4, 1, 0.50, 0.70, 0.6, 255, 255, 255, 255)
                    if IsControlJustPressed(1, 38) then
                        openJobcenter()
                    end
                end
            end
            delay = 500
    end
end)

--[[ ////////////////////////////////////////// ]]

function openJobcenter()
    SetNuiFocus(true, true)
    SendNUIMessage({
        type = "login",
        status = true,
        job1 = Config.job1,
        job2 = Config.job2,
        job3 = Config.job3,
        job4 = Config.job4,
        job5 = Config.job5,
        job6 = Config.job6,
        job7 = Config.job7,
        job8 = Config.job8,
        job9 = Config.job9,
    })
end

RegisterNetEvent("jobcenter:jobpage")
AddEventHandler("jobcenter:jobpage", function()
    SetNuiFocus(true, true)
    SendNUIMessage({
        type = "jobpage",
        status = true,
        job1 = Config.job1,
        job2 = Config.job2,
        job3 = Config.job3,
        job4 = Config.job4,
        job5 = Config.job5,
        job6 = Config.job6,
        job7 = Config.job7,
        job8 = Config.job8,
        job9 = Config.job9,
    })
end)

--[[ ////////////////////////////////////////// ]]

RegisterNUICallback("close", function (data, callback)
    SetNuiFocus(false, false)
end)

RegisterNUICallback("jobpageopen", function (data, callback)
    SetNuiFocus(false, false)
    TriggerEvent("jobcenter:jobpage")
end)

--[[ ////////////////////////////////////////// ]]

RegisterNUICallback("job1", function (data, callback)
    SetNuiFocus(true, true)
    job = Config.job1data
    TriggerServerEvent("pil:addjob", job)
end)

RegisterNUICallback("job2", function (data, callback)
    SetNuiFocus(true, true)
    job = Config.job2data
    TriggerServerEvent("pil:addjob", job)
end)

RegisterNUICallback("job3", function (data, callback)
    SetNuiFocus(true, true)
    job = Config.job3data
    TriggerServerEvent("pil:addjob", job)
end)

RegisterNUICallback("job4", function (data, callback)
    SetNuiFocus(true, true)
    job = Config.job4data
    TriggerServerEvent("pil:addjob", job)
end)

RegisterNUICallback("job5", function (data, callback)
    SetNuiFocus(true, true)
    job = Config.job5data
    TriggerServerEvent("pil:addjob", job)
end)

RegisterNUICallback("job6", function (data, callback)
    SetNuiFocus(true, true)
    job = Config.job6data
    TriggerServerEvent("pil:addjob", job)
end)

RegisterNUICallback("job7", function (data, callback)
    SetNuiFocus(true, true)
    job = Config.job7data
    TriggerServerEvent("pil:addjob", job)
end)

RegisterNUICallback("job8", function (data, callback)
    SetNuiFocus(true, true)
    job = Config.job8data
    TriggerServerEvent("pil:addjob", job)
end)

RegisterNUICallback("job9", function (data, callback)
    SetNuiFocus(true, true)
    job = Config.job9data
    TriggerServerEvent("pil:addjob", job)
end)

--[[ ////////////////////////////////////////// ]]

function drawTxt(text, font, centre, x, y, scale, r, g, b, a)
	SetTextFont(font)
	SetTextProportional(0)
	SetTextScale(scale, scale)
	SetTextColour(r, g, b, a)
	SetTextDropShadow(0, 0, 0, 0, 255)
	SetTextEdge(1, 0, 0, 0, 255)
	SetTextDropShadow()
	SetTextOutline()
	SetTextCentre(centre)
	SetTextEntry("STRING")
	AddTextComponentString(text)
	DrawText(x, y)
end

--[[ ////////////////////////////////////////// ]]

-- VED GENSTRAT AF SCRIPTET KAN FOLK IKKE FRYSE I NUI
AddEventHandler("onResourceStop",function(a)if a==GetCurrentResourceName()then SetNuiFocus(false,false) end end)