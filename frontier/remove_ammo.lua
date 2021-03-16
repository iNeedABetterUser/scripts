-- Simple script that breaks the Frontier musket by removing everyone's ammo

-- THIS SCRIPT REQUIRES keyfinder.lua IN THE AUTOEXECUTE FOLDER
-- The keyfinder.lua script is here: https://raw.githubusercontent.com/iNeedABetterUser/scripts/main/keyfinder.lua

while true do
    local Players = game:GetService("Players")
    for i,v in pairs(Players:GetPlayers()) do
		if v ~= nil and v.Character ~= nil then
        	if v.Character:FindFirstChild("Musket") then
                game:GetService("ReplicatedStorage").gunCollection.Events.ChangeVal:FireServer(_G.FrontierKey, v.Character.Musket._info.Ammo, 0)
        	end
        end
    end
    wait(1)
end
