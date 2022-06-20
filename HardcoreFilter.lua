HardcoreFilter_ChatFrame_OnEvent = ChatFrame_OnEvent
local HardcoreFilter_Level = 20 -- Filters messages about players that are a lower level than this value. Set to 61 to filter all messages.
-- Please note that ~70% of Hardcore players that make it to level 10 don't make it past level 20. And ~90% don't make it past level 30.
-- So the default value of 20 will filter out ~70% of messages. 

function ChatFrame_OnEvent(event)

	if (event == "CHAT_MSG_SYSTEM") then
		_, _, Dchr, Dlvl = string.find(arg1,"A tragedy has occurred. Hardcore character (%a+) has fallen in combat at level (%d+)")
		_, _, Lchr, Llvl = string.find(arg1,"(%a+) has reached level (%d+)")
		if (Dlvl) then
			if (tonumber(Dlvl) <= tonumber(HardcoreFilter_Level)) then
				return
			end
		end
		if (Llvl) then
			if (tonumber(Llvl) <= tonumber(HardcoreFilter_Level)) then
				return
			end
		end
	end
	
  HardcoreFilter_ChatFrame_OnEvent(event);
end
