local QBCore = exports['qb-core']:GetCoreObject()
local itemName = "narcan"
local WaitTime = 5 -- In Seconds

RegisterServerEvent('endAllDrugs')
AddEventHandler('endAllDrugs', function(src)
    local Player = QBCore.Functions.GetPlayer(src)

    -- Meth/TrevorEffect
    TriggerClientEvent('managePlayerEffects', src, 'endDrugEffects', 'DrugsTrevorClownsFight')
    TriggerClientEvent('managePlayerEffects', src, 'endDrugEffects', 'DrugsTrevorClownsFightIn')
    TriggerClientEvent('managePlayerEffects', src, 'endDrugEffects', 'DrugsTrevorClownsFightOut')
    TriggerClientEvent('managePlayerEffects', src, 'restorePlayerSpeed', 1.0)

    -- AlienEffect/Crack Baggy Effect/Coke Baggy Effect
    TriggerClientEvent('managePlayerEffects', src, 'endDrugEffects', 'DrugsMichaelAliensFightIn')
    TriggerClientEvent('managePlayerEffects', src, 'endDrugEffects', 'DrugsMichaelAliensFight')
    TriggerClientEvent('managePlayerEffects', src, 'endDrugEffects', 'DrugsMichaelAliensFightOut')

    -- Will Always Run To Restore player speed to original
    TriggerClientEvent('managePlayerEffects', src, 'restorePlayerStamina', 1.0)
end)


QBCore.Functions.CreateUseableItem(itemName, function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    if Player and Player.Functions and Player.Functions.GetItemByName(item.name) then
        TriggerEvent("endAllDrugs", src)
    end
end)


    -- Wait(WaitTime* 1000)





