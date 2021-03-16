-- Simple script that kills everyone in the server

-- THIS SCRIPT REQUIRES keyfinder.lua IN THE AUTOEXECUTE FOLDER
-- The keyfinder.lua script is here: https://raw.githubusercontent.com/iNeedABetterUser/scripts/main/keyfinder.lua

local Players = game:GetService("Players")
local me = Players.LocalPlayer

for i,v in pairs(Players:GetPlayers()) do
    game:GetService("ReplicatedStorage").ServerEvents.Damage:FireServer(_G.HistoricalKey, me.Character.Musket.Animation.BulletDamage, v.Character["Head"], me)
end
