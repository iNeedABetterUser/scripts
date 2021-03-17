-- Simple script that spams smoke out of every player's musket
local name = "Musket" -- Change this to the Musket tool's name

local Players = game:GetService("Players")
while true do
	for i,plr in pairs(Players:GetPlayers()) do
		if plr ~= nil and plr.Character ~= nil then
			if plr.Character:FindFirstChild(name) then
				plr.Character[name].Core.Fire:FireServer()
			end
		end
	end
	wait(0.1)
end
