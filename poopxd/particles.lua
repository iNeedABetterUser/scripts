-- Simple script that creates blood particles around every player's head
 
while true do
    for i,plr in pairs(game:GetService("Players"):GetPlayers()) do
        if plr ~= nil and plr.Character ~= nil then
            game:GetService("ReplicatedStorage").ServerEvents.Projectile:FireServer(plr.Character.Torso, plr.Character.HumanoidRootPart.Position)
        end
    end
    wait(0.1)
end
