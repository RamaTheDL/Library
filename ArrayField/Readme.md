# ArrayField Library
This documentation is for ArrayField Library.

## 1. Booting the Library
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
      FolderName = nil, -- Create a custom folder for your hub/game
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

### Updating a Section
```lua
Section:Set("Section Example")
Section:Destroy()
Section:Lock()
Section:Unlock()
```

# 2.Interact

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
