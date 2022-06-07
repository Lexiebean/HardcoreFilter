HardcoreFilter_ChatFrame_OnEvent = ChatFrame_OnEvent
local HardcoreFilter_Level = 20

function ChatFrame_OnEvent(event)

	if (event == "CHAT_MSG_SYSTEM") then
		_, _, Dchr, Dlvl = string.find(arg1,"A tragedy has occurred. Hardcore character (%a+) has fallen in combat at level (%d+)")
		_, _, Lchr, Llvl = string.find(arg1,"(%a+) has reached level (%d+)")
		if (Dlvl >= HardcoreFilter_Level) then
			return
		elseif (Llvl >= HardcoreFilter_Level) then
			return
		end
	end
	
  HardcoreFilter_ChatFrame_OnEvent(event);
end