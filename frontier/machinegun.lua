-- Simple script that automatically reloads your musket
local name = "Musket" -- Change this to the Musket tool's name

game:GetService("RunService").RenderStepped:Connect(function()
    local musket = game.Players.LocalPlayer.Character:FindFirstChild(name)
    if musket then
        musket._info.Loaded.Value = true
        musket._info.Ammo.Value = 20
    end
end)
