-- Simple script that creates blood particles around every player's head

local Players = game:GetService("Players")
while true do
    for i,v in pairs(Players:GetPlayers()) do
        if v ~= nil and v.Character ~= nil then
            game:GetService("ReplicatedStorage").ServerEvents.Projectile:FireServer(v.Character.Torso, v.Character.HumanoidRootPart.Position)
        end
    end
    wait(0.1)
end
