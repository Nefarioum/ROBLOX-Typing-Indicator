--[[ UserTyping (c) by Nefarioum

	Detects when a player is typing 

]]

--// Services
local userInputService = game:GetService("UserInputService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

--// Variables
local TypingEvent = ReplicatedStorage.playerTyping.Events.TypingDetection

--// Core
userInputService.InputBegan:Connect(function(inputType, gameProcessEvent)
	if gameProcessEvent and inputType.UserInputType ~= Enum.UserInputType.MouseButton1 and inputType.UserInputType ~= Enum.UserInputType.MouseButton2 then
		local currentValue = true
		for _, value in pairs (userInputService:GetKeysPressed()) do
			if ((value.KeyCode == Enum.KeyCode.I) or (value.KeyCode == Enum.KeyCode.O) or (value.KeyCode == Enum.KeyCode.Escape)) then 
				currentValue = false 
			end 
		end
		
		if currentValue == true then
			TypingEvent:FireServer("true")
		end 

	end
end)


userInputService.InputBegan:Connect(function(input, gameProcessEvent)
	if not gameProcessEvent then
		TypingEvent:FireServer("false")
	end
end)
