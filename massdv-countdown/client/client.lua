------------MADE BY VOIE420-----------
---Do not try to resell this script---
------for any type of exchange.-------

local isrunning = false
local stopmdv = false

RegisterCommand('mdvc', function()
    if (isrunning==true) then
        stopmdv = true
    end
end, false)


RegisterNetEvent("wld:massdv")
AddEventHandler("wld:massdv", function()
    isrunning = true
    msg("All unoccupied vehicles will be deleted in 10 seconds. If you would like to keep your vehicle, please sit in it.")
    Citizen.Wait(1000) --1
    if (stopmdv==true) then
        TriggerEvent('chat:clear')
        msg{"Mass vehicle deletion canceled by " .. GetPlayerName(PlayerId()) .. "."}
        isrunning = false
        stopmdv = false
        return
        end
    Citizen.Wait(1000) --2
    if (stopmdv==true) then
        TriggerEvent('chat:clear')
        msg{"Mass vehicle deletion canceled by " .. GetPlayerName(PlayerId()) .. "."}
        isrunning = false
        stopmdv = false
        return
        end
    Citizen.Wait(1000) --3
    if (stopmdv==true) then
        TriggerEvent('chat:clear')
        msg{"Mass vehicle deletion canceled by " .. GetPlayerName(PlayerId()) .. "."}
        isrunning = false
        stopmdv = false
        return
        end
    Citizen.Wait(1000) --4
    if (stopmdv==true) then
        TriggerEvent('chat:clear')
        msg{"Mass vehicle deletion canceled by " .. GetPlayerName(PlayerId()) .. "."}
        isrunning = false
        stopmdv = false
        return
        end
    Citizen.Wait(1000) --5
    if (stopmdv==true) then
        TriggerEvent('chat:clear')
        msg{"Mass vehicle deletion canceled by " .. GetPlayerName(PlayerId()) .. "."}
        isrunning = false
        stopmdv = false
        return
        end
    msg("All unoccupied vehicles will be deleted in 5 second(s). If you would like to keep your vehicle, please sit in it.")
    Citizen.Wait(1000)
    if (stopmdv==true) then
        TriggerEvent('chat:clear')
        msg{"Mass vehicle deletion canceled by " .. GetPlayerName(PlayerId()) .. "."}
        isrunning = false
        stopmdv = false
        return
        end
    msg("All unoccupied vehicles will be deleted in 4 second(s). If you would like to keep your vehicle, please sit in it.")
    Citizen.Wait(1000)
    if (stopmdv==true) then
        TriggerEvent('chat:clear')
        msg{"Mass vehicle deletion canceled by " .. GetPlayerName(PlayerId()) .. "."}
        isrunning = false
        stopmdv = false
        return
        end
    msg("All unoccupied vehicles will be deleted in 3 second(s). If you would like to keep your vehicle, please sit in it.")
    Citizen.Wait(1000)
    if (stopmdv==true) then
        TriggerEvent('chat:clear')
        msg{"Mass vehicle deletion canceled by " .. GetPlayerName(PlayerId()) .. "."}
        isrunning = false
        stopmdv = false
        return
        end
    msg("All unoccupied vehicles will be deleted in 2 second(s). If you would like to keep your vehicle, please sit in it.")
    Citizen.Wait(1000)
    if (stopmdv==true) then
        TriggerEvent('chat:clear')
        msg{"Mass vehicle deletion canceled by " .. GetPlayerName(PlayerId()) .. "."}
        isrunning = false
        stopmdv = false
        return
        end
    msg("All unoccupied vehicles will be deleted in 1 second(s). If you would like to keep your vehicle, please sit in it.")
    Citizen.Wait(1000)
    if (stopmdv==true) then
        TriggerEvent('chat:clear')
        msg{"Mass vehicle deletion canceled by " .. GetPlayerName(PlayerId()) .. "."}
        isrunning = false
        stopmdv = false
        return
        end
    TriggerEvent('chat:clear')
    msg{"Deleted unoccupied vehicles. This event was triggered by " .. GetPlayerName(PlayerId()) .. "."}
    isrunning = false
    stopmdv = false

    for vehicle in EnumerateVehicles() do
        if (not IsPedAPlayer(GetPedInVehicleSeat(vehicle, -1))) then 
            SetVehicleHasBeenOwnedByPlayer(vehicle, false) 
            SetEntityAsMissionEntity(vehicle, false, false) 
            DeleteVehicle(vehicle)
            if (DoesEntityExist(vehicle)) then 
                DeleteVehicle(vehicle) 
            end
        end
    end
end)

function msg(text)
    TriggerEvent("chatMessage",  "[Server]", {255,0,0}, text)
end