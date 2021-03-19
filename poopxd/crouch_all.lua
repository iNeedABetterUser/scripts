-- Simple script that makes everyone with a musket equipped crouch
local name = "Musket" -- Change this to the Musket tool's name

-- THIS SCRIPT REQUIRES keyfinder.lua IN THE AUTOEXECUTE FOLDER
-- The keyfinder.lua script is here: https://raw.githubusercontent.com/iNeedABetterUser/scripts/main/keyfinder.lua

for i,plr in pairs(game:GetService("Players"):GetPlayers()) do
    if plr ~= nil and plr.Character ~= nil then
        if plr.Character:FindFirstChild("Musket") then
            game:GetService("ReplicatedStorage").ServerEvents.Crouch:FireServer(_G.HistoricalKey, plr.Character.Musket.Animation.CRC, plr.Character)
        end
    end
end
