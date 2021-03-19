  -- Simple script that breaks the PoopXD musket by removing everyone's ammo
local name = "Musket" -- Change this to the Musket tool's name

-- THIS SCRIPT REQUIRES keyfinder.lua IN THE AUTOEXECUTE FOLDER
-- The keyfinder.lua script is here: https://raw.githubusercontent.com/iNeedABetterUser/scripts/main/keyfinder.lua

while true do
    for i,plr in pairs(game:GetService("Players"):GetPlayers()) do
        if plr ~= nil and plr.Character ~= nil then
            if plr.Character:FindFirstChild(name) then
                game:GetService("ReplicatedStorage").ServerEvents.ChangeVal:FireServer(_G.HistoricalKey, plr.Character[name].Ammo, 0)
            end
        end
    end
    wait(1)
end
