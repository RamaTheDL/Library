local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/RamaTheDL/Library/main/Orion/Source.lua')))()

local Window = OrionLib:MakeWindow({Name = "Title of the library", HidePremium = false, SaveConfig = false, ConfigFolder = "OrionTest"})

local Tab1 = Window:MakeTab({
	Name = "Tab 1",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Tab2 = Window:MakeTab({
	Name = "Tab 2",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Tab3 = Window:MakeTab({
	Name = "Tab 3",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

OrionLib:MakeNotification({
	Name = "Title!",
	Content = "Notification content... what will it say??",
	Image = "rbxassetid://4483345998",
	Time = 10
})

Tab1:AddLabel("Label!")

Tab1:AddParagraph("Paragraph","Paragraph Content!")

local Section = Tab1:AddSection({
	Name = "This is Section!"
})

Tab2:AddButton({
	Name = "This Is Button!",
	Callback = function()
      		print("button pressed")
  	end    
})

Tab2:AddToggle({
	Name = "This Is a toggle",
	Default = false,
	Callback = function(Value)
		print(Value)
	end    
})

Tab2:AddDropdown({
	Name = "This Is Dropdown",
	Default = "1",
	Options = {"1", "2"},
	Callback = function(Value)
		print(Value)
	end    
})

Tab2:AddTextbox({
	Name = "This Is Textbox",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		print(Value)
	end	  
})

Tab3:AddBind({
	Name = "This Is Bind",
	Default = Enum.KeyCode.E,
	Hold = false,
	Callback = function()
		print("press")
	end    
})

Tab3:AddColorpicker({
	Name = "This Is Colorpicker",
	Default = Color3.fromRGB(0, 0, 0),
	Callback = function(Value)
		print(Value)
	end	  
})

Tab3:AddSlider({
	Name = "This Is Slider",
	Min = 0,
	Max = 20,
	Default = 5,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "",
	Callback = function(Value)
		print(Value)
	end    
})

OrionLib:Init()
