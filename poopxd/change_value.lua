-- Simple script that changes the value of a given Value object, serverside (everyone will be able to see it)
local path = "game:GetService("Players").LocalPlayer.leaderstats.Kills" -- Change this to the path of the value you want changed
local val = "69420" -- Change this to the desired new value

-- THIS SCRIPT REQUIRES keyfinder.lua IN THE AUTOEXECUTE FOLDER
-- The keyfinder.lua script is here: https://raw.githubusercontent.com/iNeedABetterUser/scripts/main/keyfinder.lua

game:GetService("ReplicatedStorage").ServerEvents.ChangeVal:FireServer(_G.HistoricalKey, path, val)
