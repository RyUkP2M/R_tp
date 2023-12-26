--//////////////////////////////////////////### By RyUk Discord : ryukp2m ###\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

RegisterCommand("tp", function(source, args, rawCommand)
    local x, y, z = tonumber(args[1]), tonumber(args[2]), tonumber(args[3])

    if x and y and z then
        TeleportPlayer(vector3(x, y, z))
        TriggerEvent("chatMessage", "SYSTEM", {255, 0, 0}, "Téléportation effectuée.") -- EN ? Translation : Teleportation completed
    else
        TriggerEvent("chatMessage", "SYSTEM", {255, 0, 0}, "Utilisation : /tp x y z") -- EN ? Translation : Use
    end
end, false)

function TeleportPlayer(coords)
    local player = GetPlayerPed(-1)

    if IsPedInAnyVehicle(player, false) then
        TaskLeaveVehicle(player, GetVehiclePedIsIn(player, false), 0)
    end

    SetEntityCoordsNoOffset(player, coords.x, coords.y, coords.z, true, true, true)
end
