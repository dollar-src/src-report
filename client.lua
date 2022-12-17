

RegisterNUICallback('CloseMenu:NuiCallback', function(data)
    SetNuiFocus(false, false)
end)




    RegisterNUICallback('src-report:client', function (data)

      TriggerServerEvent('src-report:getinfo',data)

    

    end)



    RegisterCommand('reportmenu', function ()
        SetNuiFocus(true, true)
   
   
        SendNUIMessage({
            action = 'showui',

        })
    end)