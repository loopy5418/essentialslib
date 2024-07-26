> Essentials is currently indev. More functions are subject to arrive, please report any bugs by either opening an issue, or by dm'ing the owner (Discord: loopy5418).

<h1 id="essentials-lib">Essentials Lib</h1>

Essentials - A library that has all the functions pre-written, making your scripts 1000x easier to make :)

## What is Essentials?
Essentials is a lua library made for the Roblox exploiters - it has the most useful functions pre-built into the library, making scripting a little more fun.
Essentials was created in 25.07.2024 by Loopy5418, with the sole purpose of helping other scripters in the community.
## How to use Essentials?
To use Essentials in your scripts, insert this loadstring at the top of your script;
```lua
ess = loadstring(game:HttpGet("https://raw.githubusercontent.com/loopy5418/essentialslib/main/src.lua",true))()
```
Now that you have Essentials loaded in your script, you can use the functions. Here are the current functions;

> Essentials functions are already listed in the [source file](https://github.com/loopy5418/essentialslib/blob/main/src.lua), in their respective places. Referring to the source file is easier.

### `es:updateMovement(speed, power)`
```lua
function ess:updateMovement(speed, power)
--  USAGE: The "speed" parameter will change your character's walking speed, the
--  "power" parameter will change your character's jumping height.
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = speed
	game.Players.LocalPlayer.Character.Humanoid.JumpPower = power
end
```

### `ess:getUsername()`
```lua
function ess:getUsername()
--  USAGE: Run this function to return the players name.
	return game.Players.LocalPlayer.Name
end
```

### `ess:getDisplayName()`
```lua
function ess:getDisplayName()
--  USAGE: Run this function to return the players display name.
	return game.Players.LocalPlayer.DisplayName
end
```

### `ess:RoundNumber(int, float)`
```lua
function ess:RoundNumber(int, float)
--  USAGE: The "int" parameter is for the integer, the "float" parameter
--  is for the float. Rounds number based on the parameters.
    return tonumber(string.format("%." .. (int or 0) .. "f", float))
end
```

### `ess:getPlaceID()`
```lua
function ess:getPlaceID()
--  USAGE: Run this function to return the place ID.
	return game.PlaceId
end
```

### `ess:getUserID()`
```lua
function ess:getUserID()
--  USAGE: Run this function to return the players user ID.
	return game.Players.LocalPlayer.UserId
end
```

### `ess:getJobID()`
```lua
function ess:getJobID()
--  USAGE: Run this function to return the job ID.
	return game.JobId
end
```

### `ess:rejoin()`
```lua
function ess:rejoin()
--  USAGE: Run this function to make the player leave, and join the same server. Will join a new server if the old one is unavaible.
    game:GetService("TeleportService"):TeleportToPlaceInstance(ess:GetPlaceID(), ess:GetJobID(), ess:GetUserID())
end
```

### `ess:copyString(query)`
```lua
function ess:copyString(query)
--  USAGE: Run this function to copy a string to the clipboard.
	setclipboard(query)
end
```

### `ess:GetDay(type)`
```lua
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
```

### `ess:GetTime(type)`
```lua
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
```

### `ess:GetMonth(type)`
```lua
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
```

### `ess:GetWeek(type)`
```lua
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
```

### `ess:GetYear(type)`
```lua
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
```

> Thank you for using Essentials. Keep in mind this is only an indev build, and more (hundreds) functions will be subject to come.

<kbd> <br> [Scroll to the top](#essentials-lib) <br> </kbd>
