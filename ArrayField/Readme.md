# - ArrayField Library
This documentation is for ArrayField Library.

## **Booting the Library**
```lua
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/RamaTheDL/Library/main/ArrayField/Library/Source.lua'))()
```

## Creating a Window
```lua
local Window = Rayfield:CreateWindow({
   Name = "Rayfield Example Window",
   LoadingTitle = "Rayfield Interface Suite",
   LoadingSubtitle = "by Sirius",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = "cool lib", -- Create a custom folder for your hub/game
      FileName = "Big Hub"
   },
   Discord = {
      Enabled = false,
      Invite = "sirius", -- The Discord invite code, do not include discord.gg/
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "Sirius Hub",
      Subtitle = "Key System",
      Note = "Join the discord (discord.gg/sirius)",
      FileName = "SiriusKey",
      SaveKey = true,
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = "Hello"
   }
})
```

## Creating a Tab
```lua
local Tab = Window:CreateTab("Tab Example", 4483362458) -- Title, Image
```

## Prompting the Window
```lua
Window:Prompt({
	Title = 'Interface Prompt',
	SubTitle = 'SubTitle',
	Content = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
	Actions = {
		Accept = {
			Name = 'Accept',
			Callback = function()
				-- You know what a callback is...
			end,
		}
	}
})
```

## Creating a Section
```lua
local Section = Tab:CreateSection("Section Example",true/false) -- The 2nd argument is to tell if its only a Title and doesnt contain elements
```

#### Updating a Section
```lua
Section:Set("Section Example")
Section:Destroy()
Section:Lock()
Section:Unlock()
```

# _Interact_

## Notifying the User
```lua
Rayfield:Notify({
	Title = "Notification Title",
	Content = "Notification Content",
	Duration = 6.5,
	Image = 4483362458,
	Actions = { -- Notification Buttons
		Ignore = {
			Name = "Okay!",
			Callback = function()
				print("The user tapped Okay!")
			end
		},
	},
})
```

## Creating a Button
```lua
local Button = Tab:CreateButton({
   Name = "Button Example",
   Info = "Button info/Description.", -- Speaks for itself, Remove if none.
   Interact = 'Changable',
   Callback = function()
   print("this is Button!") -- the function
   end,
})
```

#### Updating Button
```lua
Button:Set("Button Example","Interact") -- if you put nil, the string will not change
```

## Creating a Toggle
```lua
local Toggle = Tab:CreateToggle({
   Name = "Toggle Example",
   Info = "Toggle info/Description.", -- Speaks for itself, Remove if none.
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   -- The function that takes place when the toggle is pressed
   -- The variable (Value) is a boolean on whether the toggle is true or false
   end,
})
```

#### Updating a Toggle
```lua
Toggle:Set(false)
```

## Creating a Color Picker
```lua
local ColorPicker = Tab:CreateColorPicker({
	Name = "Color Picker",
	Info = 'info or description',
	SectionParent = Section, -- The Section it's parented to. (Optional)
	Color = Color3.fromRGB(2,255,255),
	Flag = "ColorPicker1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
		-- The function that takes place every time the color picker is moved/changed
		-- The variable (Value) is a Color3fromRGB value based on which color is selected
	end
})
```

#### Updating a Color Picker
```lua
ColorPicker:Set(Color3.fromRGB(255,255,255)
```

## Creating a Slider
```lua
local Slider = Tab:CreateSlider({
   Name = "Slider Example",
   Info = "Button info/Description.", -- Speaks for itself, Remove if none.
   Range = {0, 100},
   Increment = 10,
   Suffix = "Bananas",
   CurrentValue = 10,
   Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   -- The function that takes place when the slider changes
   -- The variable (Value) is a number which correlates to the value the slider is currently at
   end,
})
```

#### Updating a Slider
```lua
Slider:Set(10) -- The new slider integer value
```