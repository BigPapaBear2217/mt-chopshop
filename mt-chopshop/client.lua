local QBCore = exports['qb-core']:GetCoreObject()

-- Criar blip para do mapa
Citizen.CreateThread(function()
    local blip = AddBlipForCoord(2353.56, 3135.2, 48.21) -- Mudar coordenadas do blip aqui!
	SetBlipSprite(blip, 527) -- Mudar estilo do blip aqui!
	SetBlipDisplay(blip, 4)
	SetBlipScale(blip, 0.7)
	SetBlipAsShortRange(blip, true)
	SetBlipColour(blip, 28) -- Mudar cor aqui!
	BeginTextCommandSetBlipName("STRING")
	AddTextComponentSubstringPlayerName("Chopshop") -- Mudar nome do Blip aqui!
    EndTextCommandSetBlipName(blip)
end)

RegisterNetEvent('mt-chopshop:client:Desmanchar')
AddEventHandler("mt-chopshop:client:Desmanchar", function()
    local playerPed = PlayerPedId()
    if IsPedInAnyVehicle(playerPed, false) then
    QBCore.Functions.Progressbar("Desmanchar", "Destroying Vehicle..", 15000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() 
        local veh = GetVehiclePedIsIn(PlayerPedId(),true)
        local playerPed = PlayerPedId()
        local success = exports['qb-lock']:StartLockPickCircle(5,20)
   if success then
        DeleteVehicle(veh)
        DeleteEntity(veh)
        TriggerServerEvent("mt-chopshop:server:Desmanchar")
    else
        QBCore.Functions.Notify("Failed!", "error")
        end
    end)
    else
        QBCore.Functions.Notify("You need to be in a vehicle to destroy that!", "error", 4500)
    end
end)

-- Evento da ProgressBar
RegisterNetEvent('mt-chopshop:client:DesmancharMotor')
AddEventHandler("mt-chopshop:client:DesmancharMotor", function()
    QBCore.Functions.Progressbar("DesmancharMotor", "Destroying Vehicle Engine", 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "mini@repair",
        anim = "fixing_a_player",
        flags = 16,
    }, {}, {}, function() 
        local playerPed = PlayerPedId()
        local success = exports['qb-lock']:StartLockPickCircle(1,30)
   if success then
        StopAnimTask(ped, dict, "machinic_loop_mechandplayer", 1.0)
        TriggerServerEvent("mt-chopshop:server:DesmancharMotor")
        ClearPedTasks(playerPed)
    else
        QBCore.Functions.Notify("Failed!", "error")
        ClearPedTasks(playerPed)
        end
    end)
end)

RegisterNetEvent('mt-chopshop:client:DesmancharFarois')
AddEventHandler("mt-chopshop:client:DesmancharFarois", function()
    QBCore.Functions.Progressbar("DesmancharFarois", "Destroying Vehicle Lights", 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "mini@repair",
        anim = "fixing_a_player",
        flags = 16,
    }, {}, {}, function() 
        local playerPed = PlayerPedId()
        local success = exports['qb-lock']:StartLockPickCircle(1,30)
   if success then
        StopAnimTask(ped, dict, "machinic_loop_mechandplayer", 1.0)
        TriggerServerEvent("mt-chopshop:server:DesmancharFarois")
        ClearPedTasks(playerPed)
    else
        QBCore.Functions.Notify("Failed!", "error")
        ClearPedTasks(playerPed)
        end
    end)
end)

RegisterNetEvent('mt-chopshop:client:DesmancharPortas')
AddEventHandler("mt-chopshop:client:DesmancharPortas", function()
    QBCore.Functions.Progressbar("DesmancharPortas", "Destroying Vehicle Doors", 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "mini@repair",
        anim = "fixing_a_player",
        flags = 16,
    }, {}, {}, function() 
        local playerPed = PlayerPedId()
        local success = exports['qb-lock']:StartLockPickCircle(1,30)
   if success then
        StopAnimTask(ped, dict, "machinic_loop_mechandplayer", 1.0)
        TriggerServerEvent("mt-chopshop:server:DesmancharPortas")
        ClearPedTasks(playerPed)
    else
        QBCore.Functions.Notify("Failed!", "error")
        ClearPedTasks(playerPed)
        end
    end)
end)

RegisterNetEvent('mt-chopshop:client:DesmancharVidros')
AddEventHandler("mt-chopshop:client:DesmancharVidros", function()
    QBCore.Functions.Progressbar("DesmancharVidros", "Destrying Vehicle Glasses", 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "mini@repair",
        anim = "fixing_a_player",
        flags = 16,
    }, {}, {}, function() 
        local playerPed = PlayerPedId()
        local success = exports['qb-lock']:StartLockPickCircle(1,30)
   if success then
        StopAnimTask(ped, dict, "machinic_loop_mechandplayer", 1.0)
        TriggerServerEvent("mt-chopshop:server:DesmancharVidros")
        ClearPedTasks(playerPed)
    else
        QBCore.Functions.Notify("Failed!", "error")
        ClearPedTasks(playerPed)
        end
    end)
end)

RegisterNetEvent('mt-chopshop:client:DesmancharPneus')
AddEventHandler("mt-chopshop:client:DesmancharPneus", function()
    QBCore.Functions.Progressbar("DesmancharPneus", "Destroying Vehicle Tires", 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "mini@repair",
        anim = "fixing_a_player",
        flags = 16,
    }, {}, {}, function() 
        local playerPed = PlayerPedId()
        local success = exports['qb-lock']:StartLockPickCircle(1,30)
   if success then
        StopAnimTask(ped, dict, "machinic_loop_mechandplayer", 1.0)
        TriggerServerEvent("mt-chopshop:server:DesmancharPneus")
        ClearPedTasks(playerPed)
    else
        QBCore.Functions.Notify("Failed!", "error")
        ClearPedTasks(playerPed)
        end
    end)
end)

RegisterNetEvent('mt-chopshop:client:DesmancharRodas')
AddEventHandler("mt-chopshop:client:DesmancharRodas", function()
    QBCore.Functions.Progressbar("DesmancharRodas", "Destroying Vehicle Wheels", 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "mini@repair",
        anim = "fixing_a_player",
        flags = 16,
    }, {}, {}, function() 
        local playerPed = PlayerPedId()
        local success = exports['qb-lock']:StartLockPickCircle(1,30)
   if success then
        StopAnimTask(ped, dict, "machinic_loop_mechandplayer", 1.0)
        TriggerServerEvent("mt-chopshop:server:DesmancharRodas")
        ClearPedTasks(playerPed)
    else
        QBCore.Functions.Notify("Failed!", "error")
        ClearPedTasks(playerPed)
        end
    end)
end)

RegisterNetEvent('mt-chopshop:client:DesmancharParachoques')
AddEventHandler("mt-chopshop:client:DesmancharParachoques", function()
    QBCore.Functions.Progressbar("DesmancharParachoques", "Destroying Vehicle Bumpers", 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() 
        local playerPed = PlayerPedId()
        local success = exports['qb-lock']:StartLockPickCircle(1,30)
   if success then
        TriggerServerEvent("mt-chopshop:server:DesmancharParachoques")
    else
        QBCore.Functions.Notify("Failed!", "error")
        end
    end)
end)

-- Menu para venda das peças
RegisterNetEvent('mt-chopshop:client:MenuDesmache', function()
    exports['qb-menu']:openMenu({
        {
            id = 1,
            header = "Destroy Car Parts",
            txt = ""
        },
        {
            id = 2,
            header = "Vehicle Engine",
            txt = "",
            params = {
                event = "mt-chopshop:client:DesmancharMotor",
            }
        },
        {
            id = 3,
            header = "Car Doors",
            txt = "",
            params = {
                event = "mt-chopshop:client:DesmancharPortas",
            }
        },
        {
            id = 4,
            header = "Car Glasses",
            txt = "",
            params = {
                event = "mt-chopshop:client:DesmancharVidros",
            }
        },
        {
            id = 5,
            header = "Car Tires",
            txt = "",
            params = {
                event = "mt-chopshop:client:DesmancharPneus",
            }
        },
        {
            id = 6,
            header = "Car Bumpers",
            txt = "",
            params = {
                event = "mt-chopshop:client:DesmancharParachoques",
            }
        },
        {
            id = 7,
            header = "Car Lights",
            txt = "",
            params = {
                event = "mt-chopshop:client:DesmancharFarois",
            }
        },
        {
            id = 8,
            header = "Car Wheels",
            txt = "",
            params = {
                event = "mt-chopshop:client:DesmancharRodas",
            }
        },
        {
            id = 9,
            header = "< Close",
            txt = "",
            params = {
                event = "qb-menu:closeMenu",
            }
        },
    })
end)

-- Target para desmanchar
CreateThread(function() 
    exports['qb-target']:AddBoxZone("Desmanche", vector3(2354.35, 3134.15, 48.21), 20, 20,  {
      name = "Desmanche",
      heading = 0,
      debugPoly = false,
    }, {
      options = {
        {
          type = "client",
          event = "mt-chopshop:client:Desmanchar",
          icon = 'fas fa-car',
          label = 'Destroy vehicle',
          canInteract = function()
            if IsPedInAnyVehicle(PlayerPedId(), false) then return true end
          end,
        }
      },
      distance = 5,
    })
end)

-- Target para desmanchar peças
CreateThread(function()
    exports['qb-target']:AddBoxZone("DesmanchePecas", vector3(-521.36, -1625.32, 17.8), 2, 2,  {
      name = "DesmanchePecas",
      heading = 0,
      debugPoly = false,
    }, {
      options = {
        {
          type = "client",
          event = "mt-chopshop:client:MenuDesmache",
          icon = 'fas fa-car',
          label = 'Destroy Car Parts',
        }
      },
      distance = 2.5,
    })
end)
