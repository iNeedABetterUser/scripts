-- Put this into your autoexecute folder so that if you are using Frontier or PoopXD muskets, some scripts will properly work

-- Frontier and PoopXD muskets have keys - randomly generated values that are sent to each player when they join
-- These are used by the player's musket for certain actions, to verify that it is the player calling the action, and not someone else
-- This script saves the keys sent to it, so that they may be used in the future for other scripts

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Count, Max = 0, 20
local Historical
local Frontier
repeat 
wait(1) Count = Count + 1
for i,v in pairs(ReplicatedStorage:GetDescendants()) do
	if v:IsA("RemoteEvent") and v.Name == "SendKey" then
		Historical = v
	elseif v:IsA("RemoteEvent") and v.Name == "sendKey" then
		Frontier = v
	end
end
until Count == Max or Historical or Frontier

if Historical then
	--print("Historical Remote", Historical:GetFullName())
	local listener
	listener = Historical.OnClientEvent:Connect(function(sentKey)
		_G.HistoricalKey = sentKey
		--print("Historical Key Received", _G.HistoricalKey)
		if listener then
			listener:Disconnect()
		end
	end)
end

if Frontier then
	--print("Frontier Remote", Frontier:GetFullName())
	local listener
	listener = Frontier.OnClientEvent:Connect(function(sentKey)
		_G.FrontierKey = sentKey
		--print("Frontier Key Received", _G.HistoricalKey)
		if listener then
			listener:Disconnect()
		end
	end)
end
