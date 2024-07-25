--[[
	███████╗███████╗███████╗███████╗███╗   ██╗████████╗██╗ █████╗ ██╗     ███████╗
	██╔════╝██╔════╝██╔════╝██╔════╝████╗  ██║╚══██╔══╝██║██╔══██╗██║     ██╔════╝
	█████╗  ███████╗███████╗█████╗  ██╔██╗ ██║   ██║   ██║███████║██║     ███████╗
	██╔══╝  ╚════██║╚════██║██╔══╝  ██║╚██╗██║   ██║   ██║██╔══██║██║     ╚════██║
	███████╗███████║███████║███████╗██║ ╚████║   ██║   ██║██║  ██║███████╗███████║
	╚══════╝╚══════╝╚══════╝╚══════╝╚═╝  ╚═══╝   ╚═╝   ╚═╝╚═╝  ╚═╝╚══════╝╚══════╝
	
	Essentials - A library that has all the functions pre-written, making your scripts
	1000x easier to make :)
	
	Crediting is not required, i am happy as long as you use my library
	By "loopy5418" on Discord, github.com/loopy5418/essentialslib
	
	=====CURRENT FUNCTIONS=====
	-----Returners-----
	ess:getUsername()
	ess:getDisplayName()
	ess:getUserID()
	ess:getPlaceID()
	ess:getJobID()
	ess:getTime(type)
	ess:getDay(type)
	ess:getMonth(type)
	ess:getYear(type)
	ess:getWeek(type)
	-----Actions-----
	ess:updateMovement(speed, power)
	ess:RoundNumber(int, float)
	ess:rejoin()
	ess:copyString(query)
]]--

local esse = {
	version = 1
	details = "Essentials - A library that has all the functions pre-written, making your scripts 1000x easier to make :)"
	status = "private - testing"
	name = "Essentials"
	repo = "https://github.com/loopy5418/essentialslib"
}

function ess:updateMovement(speed, power)
--  USAGE: The "speed" parameter will change your character's walking speed, the
--  "power" parameter will change your character's jumping height.
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = speed
	game.Players.LocalPlayer.Character.Humanoid.JumpPower = power
end

function ess:getUsername()
--  USAGE: Run this function to return the players name.
	return game.Players.LocalPlayer.Name
end

function ess:getDisplayName()
--  USAGE: Run this function to return the players display name.
	return game.Players.LocalPlayer.DisplayName
end

function ess:RoundNumber(int, float)
--  USAGE: The "int" parameter is for the integer, the "float" parameter
--  is for the float. Rounds number based on the parameters.
    return tonumber(string.format("%." .. (int or 0) .. "f", float))
end

function ess:getPlaceID()
--  USAGE: Run this function to return the place ID.
	return game.PlaceId
end

function ess:getUserID()
--  USAGE: Run this function to return the players user ID.
	return game.Players.LocalPlayer.UserId
end

function ess:getJobID()
--  USAGE: Run this function to return the job ID.
	return game.JobId
end

function ess:rejoin()
--  USAGE: Run this function to make the player leave, and join the same server. Will join a new server if the old one is unavaible.
    game:GetService("TeleportService"):TeleportToPlaceInstance(ess:GetPlaceID(), ess:GetJobID(), ess:GetUserID())
end

function ess:copyString(query)
--  USAGE: Run this function to copy a string to the clipboard.
	setclipboard(query)
end

function ess:GetDay(type)
--[[ =====USAGE=====
	 GetDay("word")  - Returns the current day in a full word
	 GetDay("short") - Returns the current day in a shortened word
	 GetDay("month") - Returns the current day of the month in digits
	 GetDay("year")  - Returns the current day of the year in digits
]]--
    if type == "word" then
        return os.date("%A")
    elseif type == "short" then
        return os.date("%a")
    elseif type == "month" then
        return os.date("%d")
    elseif type == "year" then
        return os.date("%j")
    end
end

function ess:GetTime(type)
--[[ =====USAGE=====
	 GetTime("24h")    - Returns the current time using a 24 hour clock
	 GetTime("12h")    - Returns the current time using a 12 hour clock
	 GetTime("minute") - Returns the current time in minutes
	 GetTime("half")   - Returns the current time's part (AM or PM)
	 GetTime("second") - Returns the current time in seconds
	 GetTime("full")   - Returns the current time in full format
	 GetTime("zone")   - Returns the current timezone
	
]]--
    if type == "24h" then
			return os.date("%H")
		elseif type == "12h" then
			return os.date("%I")
		elseif type == "minute" then
				return os.date("%M")
		elseif type == "half" then
			return os.date("%p")
		elseif type == "second" then
			return os.date("%S")
		elseif type == "full" then
			return os.date("%X")
		elseif type == "zone" then
			return os.date("%Z") 
	end
end

function ess:GetMonth(type)
--[[ =====USAGE=====
	 GetMonth("word")  - Returns the current month in a full word
	 GetMonth("short") - Returns the current month in a shortened word
	 GetMonth("digit") - Returns the current month's number
]]--
    if type == "word" then
        return os.date("%B")
    elseif type == "short" then
        return os.date("%b")
    elseif type == "digit" then
        return os.date("%m")
    end
end

function ess:GetWeek(type)
--[[ =====USAGE=====
	 GetWeek("year") - Returns the current week from year
	 GetWeek("day")  - Returns the current week day
]]--
    if type == "year" then
        return os.date("%W")
    elseif type == "day" then
        return os.date("%w")
    end
end

function ess:GetYear(type)
--[[ =====USAGE=====
	 GetYear("digits") - Returns the last 2 digits of the current year
	 GetYear("full") - Returns the full year
]]--
    if type == "digits" then
        return os.date("%y")
    elseif type == "full" then
        return os.date("%Y")
    end
end
