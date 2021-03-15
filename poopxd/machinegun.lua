-- Simple script that automatically reloads your musket
local name = "Musket" -- Change this to the Musket tool's name

game:GetService("RunService").RenderStepped:Connect(function()
    local musket = game.Players.LocalPlayer.Character:FindFirstChild(name)
    if musket then
        musket.Loaded.Value = true
        musket.Ammo.Value = 1
        musket.MadeReady.Value = true
        musket.LDS.Value = true
        musket.Aiming.Value = true
    end
end)
