-- Simple script that allows you to toggle auto reload for your musket
local key = "T" -- Change this to what you want to press on your keyboard to toggle auto reload

local machinegun = false
game:GetService("RunService").RenderStepped:Connect(function()
    if machinegun then
        local musket = game.Players.LocalPlayer.Character:FindFirstChild("Musket")
        if musket then
            musket.Server.Loaded.Value = true
            musket.Server.Ammo.Value = 30
        end
    end
end)

game:GetService("UserInputService").InputBegan:connect(function(io, gpe)
    if io.KeyCode == Enum.KeyCode[key] and not gpe then
        if machinegun then
            machinegun = false
            local musket = game.Players.LocalPlayer.Character:FindFirstChild("Musket")
            if musket then
                musket.Server.Loaded.Value = false
            end
        elseif not machinegun then
            machinegun = true
            local musket = game.Players.LocalPlayer.Character:FindFirstChild("Musket")
            if musket then
                musket.Server.Loaded.Value = true
                musket.Server.Ammo.Value = 30
            end
        end
    end
end)
