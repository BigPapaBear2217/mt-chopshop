local QBCore = exports['qb-core']:GetCoreObject()

-- Evento para desmanchar o veiculo
RegisterServerEvent('mt-chopshop:server:Desmanchar', function()
    local scr = source
    local Player = QBCore.Functions.GetPlayer(source)
    Player.Functions.AddItem("car_wheels", 4)
    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["car_wheels"], "add")
    Player.Functions.AddItem("car_doors", 4)
    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["car_doors"], "add")
    Player.Functions.AddItem("car_windows", 6)
    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["car_windows"], "add")
    Player.Functions.AddItem("car_bonnet", 1)
    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["car_bonnet"], "add")
    Player.Functions.AddItem("car_bumper", 2)
    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["car_bumper"], "add")
    Player.Functions.AddItem("car_tires", 4)
    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["car_tires"], "add")
    Player.Functions.AddItem("motor_carro", 1)
    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["car_engine"], "add")
    Player.Functions.AddItem("car_headlights", 4)
    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["car_headlights"], "add")
    TriggerClientEvent('QBCore:Notify', scr, 'You have spotted a vehicle!')
end)

-- Evento para desmanchar Peças do veiculo
RegisterServerEvent('mt-chopshop:server:DesmancharFarois', function()
    local scr = source
    local Player = QBCore.Functions.GetPlayer(source)
    local quantia = math.random(1,5)
    local farois = Player.Functions.GetItemByName("car_headlights")
    if farois ~= nil then

        if farois.amount >= 1 then
            Player.Functions.RemoveItem("car_headlights", 1)
            TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["glass"], "add")
            Player.Functions.AddItem("aluminum", quantia)
            TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["aluminum"], "add")
            TriggerClientEvent('QBCore:Notify', scr, 'Broken Headlights!')
        else
            TriggerClientEvent('QBCore:Notify', scr, 'You do not have the correct items...', 'error')
        end
    end
end)

RegisterServerEvent('mt-chopshop:server:DesmancharPortas', function()
    local scr = source
    local Player = QBCore.Functions.GetPlayer(source)
    local quantia = math.random(1,5)
    local porta = Player.Functions.GetItemByName("car_doors")
    if porta ~= nil then

        if porta.amount >= 1 then
            Player.Functions.RemoveItem("car_doors", 1)
            Player.Functions.AddItem("aluminum", quantia)
            TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["aluminum"], "add")
            Player.Functions.AddItem("plastic", quantia)
            TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["plastic"], "add")
        else
            TriggerClientEvent('QBCore:Notify', scr, 'You do not have the correct items...', 'error')
        end
    end
end)

RegisterServerEvent('mt-chopshop:server:DesmancharMotor', function()
    local scr = source
    local Player = QBCore.Functions.GetPlayer(source)
    local quantia = math.random(1,5)
    local motor = Player.Functions.GetItemByName("motor_carro")
    if motor ~= nil then

        if motor.amount >= 1 then
            Player.Functions.RemoveItem("motor_carro", 1)
            Player.Functions.AddItem("iron", quantia)
            TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["iron"], "add")
            Player.Functions.AddItem("metalscrap", quantia)
            TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["metalscrap"], "add")
            Player.Functions.AddItem("aluminum", quantia)
            TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["aluminum"], "add")
            Player.Functions.AddItem("copper", quantia)
            TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["copper"], "add")
            TriggerClientEvent('QBCore:Notify', scr, 'Engine Scrapped!')
        else
            TriggerClientEvent('QBCore:Notify', scr, 'You do not have the correct items...', 'error')
        end
    end
end)

RegisterServerEvent('mt-chopshop:server:DesmancharVidros', function()
    local scr = source
    local Player = QBCore.Functions.GetPlayer(source)
    local quantia = math.random(1,5)
    local vidro = Player.Functions.GetItemByName("vidros_carro")
    if vidro ~= nil then

        if vidro.amount >= 1 then
            Player.Functions.RemoveItem("vidors_carro", 1)
            Player.Functions.AddItem("glass", quantia)
            TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["glass"], "add")
            TriggerClientEvent('QBCore:Notify', scr, 'Broken Glass!')
        else
            TriggerClientEvent('QBCore:Notify', scr, 'You do not have the correct items...', 'error')
        end
    end
end)

RegisterServerEvent('mt-chopshop:server:DesmancharPneus', function()
    local scr = source
    local Player = QBCore.Functions.GetPlayer(source)
    local quantia = math.random(1,5)
    local pneu = Player.Functions.GetItemByName("car_tires")
    if pneu ~= nil then

        if pneu.amount >= 1 then
            Player.Functions.RemoveItem("car_tires", 1)
            Player.Functions.AddItem("rubber", quantia)
            TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["rubber"], "add")
            TriggerClientEvent('QBCore:Notify', scr, 'Broken Pens!')
        else
            TriggerClientEvent('QBCore:Notify', scr, 'You do not have the correct items...', 'error')
        end
    end
end)

RegisterServerEvent('mt-chopshop:server:DesmancharParachoques', function()
    local scr = source
    local Player = QBCore.Functions.GetPlayer(source)
    local quantia = math.random(1,5)
    local parachoque = Player.Functions.GetItemByName("car_bumper")
    if parachoque ~= nil then

        if parachoque.amount >= 1 then
            Player.Functions.RemoveItem("car_bumper", 1)
            Player.Functions.AddItem("plastic", quantia)
            TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["plastic"], "add")
            TriggerClientEvent('QBCore:Notify', scr, 'Dismantled Bumpers')
        else
            TriggerClientEvent('QBCore:Notify', scr, 'You do not have the correct items...', 'error')
        end
    end
end)

RegisterServerEvent('mt-chopshop:server:DesmancharRodas', function()
    local scr = source
    local Player = QBCore.Functions.GetPlayer(source)
    local quantia = math.random(1,5)
    local rodas = Player.Functions.GetItemByName("car_wheels")
    if rodas ~= nil then

        if rodas.amount >= 1 then
            Player.Functions.RemoveItem("car_wheels", 1)
            Player.Functions.AddItem("aluminum", quantia)
            TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["aluminum"], "add")
            TriggerClientEvent('QBCore:Notify', scr, 'Broken Rims')
        else
            TriggerClientEvent('QBCore:Notify', scr, 'You do not have the correct items...', 'error')
        end
    end
end)