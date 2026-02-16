-- Local script example for Roblox game
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")

local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

-- Handle player input
UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    
    if input.KeyCode == Enum.KeyCode.Space then
        print("Space key pressed!")
    end
end)

-- Monitor character health
local humanoid = character:WaitForChild("Humanoid")
humanoid.Died:Connect(function()
    print("Player died")
end)
