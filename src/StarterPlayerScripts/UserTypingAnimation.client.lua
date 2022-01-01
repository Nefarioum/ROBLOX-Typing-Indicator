--[[ UserTyping Animation by Nefarioum

	Animates the chat bubble above head

]]

while true do
	local AnimationObjects = {script.Parent.DotOne, script.Parent.DotTwo, script.Parent.DotThree}
	
	for _, value in pairs(AnimationObjects) do
		local oldUDIM = value.Position
		local newUDIM = value.Position + UDim2.new(0,0, -0.15,0)
		value:TweenPosition(newUDIM, "In", "Quad", 0.2)
		
		wait(0.25)		
		
		value:TweenPosition(oldUDIM, "Out", "Quad", 0.2)

	end
end

