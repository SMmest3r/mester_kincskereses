ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

function sendToDiscord(name, message)
	if message == nil or message == '' then return FALSE end
	PerformHttpRequest(Config.discord, function(err, text, headers) end, 'POST', json.encode({content = message}), { ['Content-Type'] = 'application/json' })
  end

RegisterServerEvent('mesterkincspenzsok')
AddEventHandler('mesterkincspenzsok', function()
    local src = source
    local xPlayer = ESX.GetPlayerFromId(source)
    sendToDiscord('Mester kincsesláda system', GetPlayerName(source) .. Config.dcuzenetpenz)
    if Config.keszpenz == true then
        xPlayer.addMoney(Config.nyeremenynagy)
    else
        xPlayer.addAccountMoney('bank', Config.nyeremenynagy)
    end
    end)

    RegisterServerEvent('mesterkincspenz')
AddEventHandler('mesterkincspenz', function()
    local src = source
    local xPlayer = ESX.GetPlayerFromId(source)
    sendToDiscord('Mester kincsesláda system', GetPlayerName(source) .. Config.dcuzenetpenzkeves)
    if Config.keszpenz == true then
        xPlayer.addMoney(Config.nyeremeny)
    else
        xPlayer.addAccountMoney('bank', Config.nyeremeny)
    end
    end)

RegisterServerEvent('mesterkincstargy')
AddEventHandler('mesterkincstargy', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    sendToDiscord('Mester kincsesláda system', GetPlayerName(source) .. Config.dcuzenetdia)
    xPlayer.addInventoryItem(Config.nyeremenytargy, Config.nyeremenytargyszam)
    end)

    RegisterServerEvent('mesterkulcsell')
AddEventHandler('mesterkulcsell', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local oneQuantity = xPlayer.getInventoryItem(Config.kulcsitem).count
	
	if oneQuantity > 0 then
		TriggerClientEvent('mestervankulcs', source) -- igaz
	else
		TriggerClientEvent('mesternincskulcs', source) -- hamis
	end
end)

RegisterServerEvent('mesterkulcselvetel')
AddEventHandler('mesterkulcselvetel', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
    if Config.kellkulcs == true then
    xPlayer.removeInventoryItem(Config.kulcsitem, 1)
    end
end)
