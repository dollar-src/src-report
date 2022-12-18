local steamid   =   'None'
local license   =   'None'
local discord   =   'None'
local xbl       =   'None'
local liveid    =   'None'
local ip        =   'None'

   RegisterServerEvent('src-report:getinfo', function (data)
    
    if data.id then
    for table,identifiers in pairs(GetPlayerIdentifiers(data.id))do
          if string.sub(identifiers, 1, string.len("steam:")) == "steam:" then
            steamid = identifiers
          elseif string.sub(identifiers, 1, string.len("license:")) == "license:" then
            license = identifiers
          elseif string.sub(identifiers, 1, string.len("xbl:")) == "xbl:" then
            xbl  = identifiers
          elseif string.sub(identifiers, 1, string.len("ip:")) == "ip:" then
            ip = identifiers
          elseif string.sub(identifiers, 1, string.len("discord:")) == "discord:" then
            discord = identifiers
          elseif string.sub(identifiers, 1, string.len("live:")) == "live:" then
            liveid = identifiers
          end
        end
    end

    local PlayerName = GetPlayerName(source)
    local TargetName = GetPlayerName(data.id)

    if TargetName then
    local connect = {

        {
            ["color"] = Config.color,
            ["title"] = PlayerName.." Sent Report to "..TargetName,
            ["description"] = "REPORTED ID: **"..data.id.."**\nMessage: **"..data.message.."**\nSteam: **"..steamid.."**\nLicense: **"..license.."**\nDiscord: **"..discord.."**\nXBL: **"..xbl.."**\nIP: **"..ip.."**\nLive: **"..liveid.."**",
	        ["footer"] = {
                ["text"] = Config.communityname,
                ["icon_url"] = Config.communtiylogo,
            },

        }
    }

PerformHttpRequest(Config.logs, function(err, text, headers) end, 'POST', json.encode({username = Config.communityname, embeds = connect}), { ['Content-Type'] = 'application/json' })

else
    --You can change this print with your favorite notification
    print("The player is not online")

    end
end)