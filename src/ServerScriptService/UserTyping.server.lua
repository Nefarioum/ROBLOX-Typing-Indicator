--[[ UserTyping (s) script by Nefarioum

	Detects when a player is typing 

]]

--// Services
local ReplicatedStorage = game:GetService("ReplicatedStorage")

--// Variables
local TypingEvent = ReplicatedStorage.playerTyping.Events.TypingDetection
local TypingGui = ReplicatedStorage.playerTyping.Other.Typing

--// Core
TypingEvent.OnServerEvent:Connect(function (player, request)
	local typingChar = player.Character
	if request == "true" then
		local typingClone = TypingGui:Clone()
		if not typingChar:WaitForChild("Head"):FindFirstChild("Typing") then
			typingClone.Parent = typingChar.Head
		end
		
	else 
		if typingChar:WaitForChild("Head"):FindFirstChild("Typing") then
			typingChar:WaitForChild("Head"):FindFirstChild("Typing"):Destroy()
		end
	end
end)

