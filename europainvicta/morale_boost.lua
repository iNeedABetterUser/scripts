-- Simple script that boosts your morale to 100 points

game:GetService("RunService").RenderStepped:Connect(function()
    game:GetService("Players").LocalPlayer.Settings.Morale.Value = 100
end)
