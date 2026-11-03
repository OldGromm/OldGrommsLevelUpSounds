OGLUS_Variable_Filename = {}




local function OGLUS_Function_PickRandomSound()
    local OGLUS_Variable_RandomNumber = fastrandom(1, 1)
    local OGLUS_Variable_FileID = string.format("%02d", OGLUS_Variable_RandomNumber)
	OGLUS_Variable_Filename = "Interface\\AddOns\\OldGrommsLevelUpSounds\\files\\"..OGLUS_Variable_FileID..".ogg"
end




OGLUS_Event_PlayerLevelUp = CreateFrame("Frame")
OGLUS_Event_PlayerLevelUp:RegisterEvent("PLAYER_LEVEL_CHANGED")
OGLUS_Event_PlayerLevelUp:SetScript("OnEvent", function(_, event)
    MuteSoundFile(569593)
	OGLUS_Function_PickRandomSound()
	PlaySoundFile(OGLUS_Variable_Filename, "Master")
end)




OGLUS_Event_PlayerLeavingWorld = CreateFrame("Frame")
OGLUS_Event_PlayerLeavingWorld:RegisterEvent("PLAYER_LEAVING_WORLD")
OGLUS_Event_PlayerLeavingWorld:SetScript("OnEvent", function(_, event)
    UnmuteSoundFile(569593)
end)