-- Simple script that spams smoke out of every player's musket
local name = "Musket" -- Change this to the Musket tool's name

while true do
	for i,plr in pairs(game:GetService("Players"):GetPlayers()) do
		if plr ~= nil and plr.Character ~= nil then
			if plr.Character:FindFirstChild(name) then
				plr.Character[name].Core.Fire:FireServer()
			end
		end
	end
	wait(0.1)
end
