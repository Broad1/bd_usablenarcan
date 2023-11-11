local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('managePlayerEffects')
AddEventHandler('managePlayerEffects', function(effectType, effectValue)
    local player = PlayerId()
if Config.Using.UsingQBDrugs then 
    if effectType == 'endDrugEffects' then
        StopScreenEffect(effectValue)
    elseif effectType == 'restorePlayerSpeed' then
        SetRunSprintMultiplierForPlayer(player, effectValue)
    elseif effectType == 'restorePlayerStamina' then
        RestorePlayerStamina(player, effectValue)
    end
end
if Config.Using.UsingAk47Drugs then end
if Config.Using.UsingApexStudiosDrugs then end
if Config.Using.UsingBoiiDrugs then end 
if Config.Using.UsingD3MBADrugs then end 

TriggerClientEvent('QBCore:Notify', source, "You are using Narcan! Your drug effects will soon negate!", "success", 5000)

end)

