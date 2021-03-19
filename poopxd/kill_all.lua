-- Simple script that kills everyone in the server
local name = "Musket" -- Change this to the Musket tool's name

-- THIS SCRIPT REQUIRES keyfinder.lua IN THE AUTOEXECUTE FOLDER
-- The keyfinder.lua script is here: https://raw.githubusercontent.com/iNeedABetterUser/scripts/main/keyfinder.lua

for i,plr in pairs(game:GetService("Players"):GetPlayers()) do
    if plr ~= nil and plr.Character ~= nil then
        game:GetService("ReplicatedStorage").ServerEvents.Damage:FireServer(_G.HistoricalKey, game:GetService("Players").LocalPlayer.Character[name].Animation.BulletDamage, plr.Character["Head"], game:GetService("Players").LocalPlayer)
    end
end
