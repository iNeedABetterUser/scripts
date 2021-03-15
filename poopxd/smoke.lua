-- Simple script that spams smoke out of every player's musket
local name = "Musket" -- Change this to the Musket tool's name

local Players = game:GetService("Players")
while true do
	for i,v in pairs(Players:GetPlayers()) do
		if v ~= nil and v.Character ~= nil then
			if v.Character:FindFirstChild(name) then
				v.Character.Musket.Core.Fire:FireServer()
			end
		end
	end
	wait(0.1)
end
