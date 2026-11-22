local active = false
lib.onCache('weapon', function(value)
    if not value then return end
    if active then return end
    active = true

    CreateThread(function()
        while value and IsPedArmed(cache.ped, 1) do
            SetPedResetFlag(cache.ped, 438, true)
            SetPedResetFlag(cache.ped, 155, true)
            SetPedResetFlag(cache.ped, 457, true)
            Wait(0)
        end
        active = false
    end)
end)
