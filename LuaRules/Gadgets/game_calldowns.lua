function gadget:GetInfo()
	return {
		name      = "Clan wars calldowns",
		desc      = "Implements abilities players can use",
		author    = "Shaman",
		date      = "8/2/2020",
		license   = "Summer days growing colder, we'll know better when we're older.", -- I hate licenses.
		layer     = 32,
		enabled   = true,
	}
end

if not gadgetHandler:IsSyncedCode() then -- no unsynced nonsense
	return
end

local calldowns = {} -- [FRAME] = {calldowntype, target = {x,z}, player = ID,}

-- Speedups --
local NEW_TABLE = {}
local spGetPlayerInfo = Spring.GetPlayerInfo

-- functions --

local function GetPlayerTeam(playerID)
	return select(3, spGetPlayerInfo(playerID))
end

function gadget:RecvLuaMsg(message, playerID)
	if message:find("calldown") then
		local team = GetPlayerTeam(playerID)
	end
 end
