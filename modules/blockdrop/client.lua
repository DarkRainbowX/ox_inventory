local ox_inventory = exports.ox_inventory


ox_inventory:registerHook('swapItems', function(payload)
    print(json.encode(payload, { indent = true }))
    return false
end, {
    print = true,
    itemFilter = {
        money = true,
    },
})
