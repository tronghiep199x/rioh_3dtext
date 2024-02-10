Citizen.CreateThread(function()
    -- THIS IS CREDIT, PLEASE DON't REMOVE
    print('#hiepthedrum on the Discord, join Rioh on the Cloud')
    print('This resource is FREE, not for sale')

    while true do
        Citizen.Wait(0)
        local coords = GetEntityCoords(PlayerPedId())
        for k,v in pairs(Config.Text) do
            if Vdist(coords, v.coords) < Config.Distance then
                DrawText3D(v.coords.x, v.coords.y, v.coords.z, v.text, v.r, v.g, v.b, v.scale)
            end
        end
    end
end)
--End

function DrawText3D(x, y, z, text, r, g, b, stext)
    local onScreen, _x, _y = World3dToScreen2d(x, y, z)
    local px, py, pz = table.unpack(GetGameplayCamCoord())
    local dist = GetDistanceBetweenCoords(px, py, pz, x, y, z, 1)

    local scale = ((1 / dist) * 2) * (1 / GetGameplayCamFov()) * 100

    if onScreen then
        SetTextColour(r, g, b, 200)
        SetTextScale(0.0 * scale, stext * scale)
        SetTextFont(7)
        SetTextProportional(1)
        SetTextCentre(true)

        SetTextDropshadow(1, 1, 1, 1, 255)

        BeginTextCommandWidth("STRING")
        local height = GetTextScaleHeight(0.55 * scale, 4)
        local width = EndTextCommandGetWidth(4)

        SetTextEntry("STRING")
        if Config.UseFont == false then
            AddTextComponentString(text)
        else
            AddTextComponentString("<FONT FACE = '"..Config.UseFont.."'>"..text)
        end
        EndTextCommandDisplayText(_x, _y)
    end
end