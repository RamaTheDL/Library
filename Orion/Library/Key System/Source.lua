-- // Function // --
UserInputService = game:GetService("UserInputService")
TweenService = game:GetService("TweenService")
HttpService = game:GetService("HttpService")
MarketplaceService = game:GetService("MarketplaceService")
RunService = game:GetService("RunService")
TeleportService = game:GetService("TeleportService")
NetworkClient = game:GetService("NetworkClient")
ReplicatedStorage = game:GetService("ReplicatedStorage")
StarterPlayer = game:GetService("StarterPlayer")
InsertService = game:GetService("InsertService")
ChatService = game:GetService("Chat")
ProximityPromptService = game:GetService("ProximityPromptService")
StatsService = game:GetService("Stats")
MaterialService = game:GetService("MaterialService")

sethidden = sethiddenproperty or set_hidden_property or set_hidden_prop
gethidden = gethiddenproperty or get_hidden_property or get_hidden_prop
queueteleport = (syn and syn.queue_on_teleport) or queue_on_teleport or (fluxus and fluxus.queue_on_teleport)
httprequest = (syn and syn.request) or (http and http.request) or http_request or (fluxus and fluxus.request) or request
PlaceId, JobId = game.PlaceId, game.JobId
local IsOnMobile = table.find({Enum.Platform.IOS, Enum.Platform.Android}, UserInputService:GetPlatform())

local Asset = MarketplaceService:GetProductInfo(PlaceId)

local Players = game:GetService("Players")

local Player = game.Players.LocalPlayer
local GetName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId)

-- // Key System // --
_G.KeyInput = "string"

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/RamaTheDL/Library/main/Orion/Library/Source.lua')))()
local Window = OrionLib:MakeWindow({Name = "Key System", HidePremium = true, SaveConfig = false, ConfigFolder = "OrionTest", IntroEnabled = true, IntroText = "Key System", IntroIcon = "rbxassetid://7733965118"})

local Tab1 = Window:MakeTab({
	Name = "Key",
	Icon = "rbxassetid://7733992528",
	PremiumOnly = false
})

local Section = Tab1:AddSection({
	Name = "—Key System"
})

Tab1:AddTextbox({
	Name = "Key",
	Default = "",
	TextDisappear = false,
	Callback = function(Value)
		_G.KeyInput = Value
	end	  
})

Tab1:AddButton({
	Name = "Check Key",
	Callback = function()
      		if _G.KeyInput == _G.Key then
               OrionLib:MakeNotification({
	Name = "Notication!",
	Content = "Correct Key!",
	Image = "rbxassetid://7733911828",
	Time = 5
})
wait(1)
ScriptHub()
            else
              OrionLib:MakeNotification({
	Name = "Notication!",
	Content = "Wrong Key!",
	Image = "rbxassetid://7733911828",
	Time = 5
})
       end
  	end    
})

Tab1:AddButton({
	Name = "Get Key | Copy Link",
	Callback = function()
      		toclipboard("https://direct-link.net/678621/key-system")
  	end    
})

local Tab2 = Window:MakeTab({
	Name = "Support",
	Icon = "rbxassetid://7733978098",
	PremiumOnly = false
})

local Section = Tab2:AddSection({
	Name = "—Support"
})

Tab2:AddParagraph("Important!","If you want to send Message, make sure you send important message and don't try to troll us! or you will get BLACKLISTED.")

Tab2:AddTextbox({
	Name = "Support Message:",
	Default = "",
	TextDisappear = false,
	Callback = function(text)
		_G.SmSw = text
	end	  
})

Tab2:AddButton({
	Name = "Send",
	Callback = function()
      	OrionLib:MakeNotification({
	Name = "Notification!",
	Content = "Succesfully send to Owner!",
	Image = "rbxassetid://7733911828",
	Time = 7
})

-- // Webhook // --

function SendMessage(url, message)
    local http = game:GetService("HttpService")
    local headers = {
        ["Content-Type"] = "application/json"
    }
    local data = {
        ["content"] = message
    }
    local body = http:JSONEncode(data)
    local response = request({
        Url = url,
        Method = "POST",
        Headers = headers,
        Body = body
    })
    print(" ")
end

function SendMessageEMBED(url, embed)
    local http = game:GetService("HttpService")
    local headers = {
        ["Content-Type"] = "application/json"
    }
    local data = {
        ["embeds"] = {
            {
                ["title"] = embed.title,
                ["description"] = embed.description,
                ["color"] = embed.color,
                ["fields"] = embed.fields,
                ["footer"] = {
                    ["text"] = embed.footer.text
                }
            }
        }
    }
    local body = http:JSONEncode(data)
    local response = request({
        Url = url,
        Method = "POST",
        Headers = headers,
        Body = body
    })
    print(" ")
end


--Examples 

local url = "https://discord.com/api/webhooks/1163436763331706932/2Qk2Mw1VaJj9fb8PqYqNk1l_ZuB3kWMmyHvNxxO4y_h0TuH1ldPU3O2_lOuFTQLn0EeD"
SendMessage(url, "")


local embed = {
    ["title"] = "– Notification!",
    ["description"] = "You Received Message From Members!",
    ["color"] = 0396ff,
    ["fields"] = {
        {
            ["name"] = "Message:",
            ["value"] = "```".. _G.SmSw .. "```",
            ["inline"] = false
	},
    	{
            ["name"] = "Time:",
            ["value"] = "- ".. os.date("%d/%m/%y - %H:%M:%S %p"),
	    ["inline"] = false
        },
        {
            ["name"] = "User-Name:",
            ["value"] = ("- ".. Player.Name),
	    ["inline"] = false
        },
        {
            ["name"] = "Place:",
            ["value"] = "- " .. Asset.Name,
            ["inline"] = false
        },
        {
            ["name"] = "Job-Id:",
            ["value"] = "- ".. game.JobId,
            ["inline"] = false
        }
    },
    ["footer"] = {
        ["text"] = "Credit: Rama102031"
    }
}
SendMessageEMBED(url, embed)
  	end    
})

local Tab3 = Window:MakeTab({
	Name = "Credits",
	Icon = "rbxassetid://7733765398",
	PremiumOnly = false
})

local Section = Tab3:AddSection({
	Name = "—Credits Information"
})

Tab3:AddLabel("Library: Orion | Shlexware")

local Section = Tab3:AddSection({
	Name = "—Creator Information"
})

Tab3:AddDropdown({
	Name = "Creators:",
	Default = "",
	Options = {"Rama102031"},
	Callback = function(Value)
		-- Hi
	end    
})

OrionLib:Init()
