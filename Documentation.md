# Introduction
This Documentation Is Last Updated for Prerelease Beta 6.1
## Why Choose Luna?
  Reliable And Stable  
  Beautful Design  
  Open Sourced  
  Amazing Features like key system, custom configs, prebuilt tabs and more!  
  Smooth And Excellent Performance  
  
*Now Let's Get Started, Shall We?*

**Also hope shlex will add this docs.sirius.menu but its fine here lol**  

***You may use the github MD Sidebar to navigate through the documentation***


# Documentation For Luna
## Booting The Library
```lua
local Luna = loadstring(game:HttpGet("https://raw.githubusercontent.com/Nebula-Softworks/Luna-Interface-Suite/refs/heads/master/source.lua", true))()
```
> This loads up the library to use our Elements. No parameters required

> [!NOTE]
> Luna Gives The User The Option To Load, Save And Autoload Their Own Configurations So manually loading them isnt required

## Windows
#### Creating The Window
Sadly, Unlike Older Projects, Luna Can't Have Multiple Windows. But It's Fine! Right?  

> [!IMPORTANT]
> Luna's Glassmorphism Requires Graphics Level 8 Or Above

```lua
local Window = Luna:CreateWindow({
	Name = "Luna Example Window", -- This Is Title Of Your Window
	Subtitle = nil, -- A Gray Subtitle next To the main title.
	LogoID = "82795327169782", -- The Asset ID of your logo. Set to nil if you do not have a logo for Luna to use.
	LoadingEnabled = true, -- Whether to enable the loading animation. Set to false if you do not want the loading screen or have your own custom one.
	LoadingTitle = "Luna Interface Suite", -- Header for loading screen
	LoadingSubtitle = "by Nebula Softworks", -- Subtitle for loading screen

	ConfigSettings = {
		RootFolder = nil, -- The Root Folder Is Only If You Have A Hub With Multiple Game Scripts and u may remove it. DO NOT ADD A SLASH
		ConfigFolder = "Big Hub" -- The Name Of The Folder Where Luna Will Store Configs For This Script. DO NOT ADD A SLASH
	},

	KeySystem = false, -- As Of Beta 6, Luna Has officially Implemented A Key System!
	KeySettings = {
		Title = "Luna Example Key",
		Subtitle = "Key System",
		Note = "Best Key System Ever! Also, Please Use A HWID Keysystem like Pelican, Luarmor etc. that provide key strings based on your HWID since putting a simple string is very easy to bypass",
		SaveInRoot = false, -- Enabling will save the key in your RootFolder (YOU MUST HAVE ONE BEFORE ENABLING THIS OPTION)
		SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
		Key = {"Example Key"}, -- List of keys that will be accepted by the system, please use a system like Pelican or Luarmor that provide key strings based on your HWID since putting a simple string is very easy to bypass
		SecondAction = {
			Enabled = true, -- Set to false if you do not want a second action,
			Type = "Link", -- Link / Discord.
			Parameter = "" -- If Type is Discord, then put your invite link (DO NOT PUT DISCORD.GG/). Else, put the full link of your key system here.
		}
	}
})
```
> [!IMPORTANT]
> Make sure to always add this code ``Luna:LoadAutoloadConfig()`` at the bottom of your script!
> Luna will now automatically load up your saved configuration 😄

#### Luna Icons
Luna Uses Custom Icons so u do not have to find ans upload your own!
We have 2 sources ; [Lucide](https://github.com/latte-soft/lucide-roblox/blob/master/md/icon-index.md) and [Material](https://fonts.google.com/icons?icon.query=home&icon.set=Material+Icons&icon.style=Sharp).  
Simply grab the name of your icon and paste it into the icon parameter. If you're using Lucide, replace spaces with dashes (-) and if you're on Material, replace spaces with underscores (_)  
Make sure to change ImageSource to the source you're using.
we did not skid this from rayfield, pretty sure rayfield skidded this from us tho.

However, If you would still like to use your own custom icons, You may do so by changing the Icon value to the ID of ur image (DO NOT INCLUDE rbxassetid://) and Changing ImageSource to Custom.

#### Creating A Tab
This will show u how to create the instance of a tab. I reccomend storing them in a table but it is fine for the docs.
```lua
local Tab = Window:CreateTab({
	Name = "Tab Example",
	Icon = "view_in_ar",
	ImageSource = "Material",
	ShowTitle = true -- This will determine whether the big header text in the tab will show
})
```
#### Creating A Section
Sections Help Organize Your Script. You May Add Any Element To A Section Like You Would On A Tab As Of Beta 5.1
```lua
Tab:CreateSection("Section Example")
```
##### Section Methods
> This requires the section to be a variable first!
```lua
Section:Set("New Section Name")
Section:Destroy() -- Destroys the section
```

#### Creating A Divider
> [!NOTE]
> A Section divider is slightly smaller than a regular divider.
```lua
Tab:CreateDivider()
```

#### Destroying The Interface
Destroys the UI And Elements
> [!WARNING]
> Destroying Luna Does Not Toggle Off Your Scripts So When Destroying, make sure you disable them first
```
Luna:Destroy()
```

## Interactions

### Adding Interactive Elements
#### Notifying The User (Notifications)
```lua
Luna:Notification({ 
	Title = "Luna Notification Example",
	Icon = "notifications_active",
	ImageSource = "Material",
	Content = "This Is A Preview Of Luna's Dynamic Notification System Entailing Estimated/Calculated Wait Times, A Sleek Design, Icons, And A Glassmorphic Look"
})
```

> [!TIP]
> While You Can Do Element.Callback = function() ... end when creating the element, I Reccomend using :Set() to set the callback after creating Your UI  
> It is better to seperate Interface and functionallity however it is your opinion  
> All Elements Except Color Picker And Slider Have Description Options, however overusing them can make your UI look weird.  

#### Creating A Button
```lua
local Button = Tab:CreateButton({
	Name = "Button Example!",
	Description = nil, -- Creates A Description For Users to know what the button does (looks bad if you use it all the time),
    	Callback = function()
         -- The function that takes place when the button is pressed
    	end
})
```

#### Creating A Toggle
```lua
local Toggle = Tab:CreateToggle({
	Name = "Toggle Example",
	Description = nil,
	CurrentValue = false,
    	Callback = function(Value)
       	 -- The function that takes place when the toggle is switched
       	 -- The variable (Value) is a boolean on whether the toggle is true or false
    	end
}, "Toggle") -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
```

#### Creating A Color Picker
> [!WARNING]
Color Pickers Are Not Completed And May Have Minor Bugs And Flags Aren't Completely Finished Yet.
```lua
local ColorPicker = Tab:CreateColorPicker({
	Name = "Color Picker Example",
	Color = Color3.fromRGB(86, 171, 128),
	Flag = "ColorPicker1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
		-- The function that takes place every time the color picker is moved/changed
		-- The variable (Value) is a Color3fromRGB value based on which color is selected
	end
}, "ColorPicker") -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
```

#### Creating A Slider
```lua
local Slider = Tab:CreateSlider({
	Name = "Slider Example",
	Range = {0, 200}, -- The Minimum And Maximum Values Respectively
	Increment = 5, -- Basically The Changing Value/Rounding Off
	CurrentValue = 100, -- The Starting Value
    	Callback = function(Value)
       	 -- The function that takes place when the slider changes
       	 -- The variable (Value) is a number which correlates to the value the slider is currently at
    	end
}, "Slider") -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
```

#### Creating A Dynamic Input (Adaptive Input AKA Textbox)
```lua
local Input = Tab:CreateInput({
	Name = "Dynamic Input Example",
	Description = nil,
	PlaceholderText = "Input Placeholder",
	CurrentValue = "", -- the current text
	Numeric = false, -- When true, the user may only type numbers in the box (Example walkspeed)
	MaxCharacters = nil, -- if a number, the textbox length cannot exceed the number
	Enter = false, -- When true, the callback will only be executed when the user presses enter.
    	Callback = function(Text)
       	 -- The function that takes place when the input is changed
	 -- The variable (Text) is a string for the value in the text box
    	end
}, "Input") -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
```

#### Creating A Dropdown Menu
> Currently, The Only Special Type is Player.  
> If SpecialType equals Player, then the dropdown options will be the list of players  
```lua
local Dropdown = Tab:CreateDropdown({
	Name = "Dropdown Example",
    	Description = nil,
	Options = {"Option 1","Option 2"},
    	CurrentOption = {"Option 1"},
    	MultipleOptions = false,
    	SpecialType = nil,
    	Callback = function(Options)
     	 -- The function that takes place when the selected option is changed
    	 -- If MultipleOptions is true then The variable (Options) is a table of strings for the current selected options. Else, it is a string of the currentoption
	end
}, "Dropdown") -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
```

#### Updating And Element Plus Universal Features
> [!IMPORTANT]
> For Any Of These To Work, The Element Needs to be defined as a variable  
  
To Access An Element's Values, you can simply do:
```lua
ElementName.Settings
```
To Update An Element's Values Or Settings you can use :Set
> [!TIP]
> For Dropdowns, if you want to add an option instead of refreshing, you can do `local table = Dropdown.Settings.Options; table.insert(table, "New option name"); Dropdown:Set({ Options = table })`
```lua
ElementName:Set(
  put your new settings table here. unspecified elements will use the previous values.
)
```

To Destroy An Element, You Can Use :Destroy
```lua
ElementName:Destroy()
```

### Binding Keys
> [!NOTE]
> While using :CreateKeybind() is fine, it is superseded by :CreateBind() and shouldn't be used for future work as it won't receive updates.
> (eg. CreateKeybind doesnt have OnChangedCallback)

#### Creating A Keybind
```lua
local Bind = Tab:CreateBind({
	Name = "Bind Example",
	Description = nil,
	CurrentBind = "Q", -- Check Roblox Studio Docs For KeyCode Names
	HoldToInteract = false, -- When true, Instead of toggling, You hold to achieve the active state of the Bind
    	Callback = function(BindState)
     	 -- The function that takes place when the keybind is pressed
     	 -- The variable (BindState) is a boolean for whether the Bind is being held or not (HoldToInteract needs to be true) OR it is whether the Bind is active
    	end,

	OnChangedCallback = function(Bind)
	 -- The function that takes place when the binded key changes
	 -- The variable (Bind) is a Enum.KeyCode for the new Binded Key
	end,
}, "Bind") -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
```  

#### Changing The Window Keybind Using Luna's Binded Keys
```lua
local Bind = Tab:CreateBind({
	Name = "Luna Interface Bind",
	Description = nil,
	CurrentBind = "K", -- Check Roblox Studio Docs For KeyCode Names
	HoldToInteract = false, -- When true, Instead of toggling, You hold to achieve the active state of the Bind
    	Callback = function()
    	end,

	OnChangedCallback = function(Bind)
	 Window.Bind = Bind
	end,
}, "WindowMenuBind") -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
```

#### Updating Binded Keys
Updating Binded Keys Is The Same As Updating Other Elements  
To Access An Element's Values, you can simply do:  
```lua
ElementName.Settings
```
To Update An Element's Values Or Settings you can use :Set
```lua
ElementName:Set(
  put your new settings table here. unspecified elements will use the previous values.
)
```

To Destroy An Element, You Can Use :Destroy
```lua
ElementName:Destroy()
```

## Check the value of an existing element
To check the current value of an existing element, using the variable, you can do ElementName.CurrentValue, if it's a dropdown or colorpicker, you will need to use DropdownName.CurrentOption or ColorpickerName.CurrentColor You can also check it via the flags from Luna.Options

## UI Components

### Textual Elements

> [!NOTE]
> Luna Paragraphs Automatically Size To Your text!

#### Creating A Label
```lua
local Label = Tab:CreateLabel({
	Text = "Label Example",
	Style = 1 -- Luna Labels Have 3 Styles : A Basic Label, A Green Information Label and A Red Warning Label. Look At The Following Image For More Details
})
```
> [!TIP]
> Here Are The Styles For Labels

![Label Styles](https://github.com/user-attachments/assets/9cfc01c7-3017-43a6-a732-6249ffb51993)

#### Creating A Paragraph
```lua
local Paragraph = Tab:CreateParagraph({
	Title = "Paragraph Example ",
	Text = "This Is A Paragraph. You Can Type Very Long Strings Here And They'll Automatically Fit! This Counts As A Description Right? Right? Right? Right? Right? Right? Right? Right? Right? Right? Right? Right? Right? Right? Right? Also Did I Mention This Has Rich Text? Also Did I Mention This Has Rich Text? Also Did I Mention This Has Rich Text? Also Did I Mention This Has Rich Text? Also Did I Mention This Has Rich Text? Also Did I Mention This Has Rich Text?"
})
```

#### Updating Textual Elements
They are the same as regular elements.  
To Access An Element's Values, you can simply do:
```lua
ElementName.Settings
```
To Update An Element's Values Or Settings you can use :Set
```lua
ElementName:Set(
  put your new settings table here. unspecified elements will use the previous values.
)
```

To Destroy An Element, You Can Use :Destroy
```lua
ElementName:Destroy()
```

## Finishing Your Script and Extras  

### Adding A Home Tab.
As Of Beta 4, Luna has implemented a Premade Home tab with a information dashboard similar to Sirius and Eclipse Hub.
```lua
Window:CreateHomeTab({
	SupportedExecutors = {}, -- A Table Of Executors Your Script Supports. Add strings of the executor names for each executor.
	DiscordInvite = "1234", -- The Discord Invite Link. Do Not Include discord.gg/ | Only Include the code.
	Icon = 1, -- By Default, The Icon Is The Home Icon. If You would like to change it to dashboard, replace the interger with 2
})
```

### Finishing Your Script

#### Setting Up Theming
As Of Beta 4, Luna has implemented theming. Users may change the accent of the Interface using Color Pickers or Using Preset Colors handpicked by Nebula Softworks
```lua
Tab:BuildThemeSection() -- Tab Should be the name of the tab you are adding this section to.
```

#### Setting Up Configuration Tab
Create the config section that uses our Flag System Technology to save your configurations
> [!WARNING]
> Until Future Releases, The Config Section Must Be Placed At The VERY BOTTOM of your ENTIRE script for Autoload to work.
```lua
Tab:BuildConfigSection() -- Tab Should be the name of the tab you are adding this section to.
```

### Credits

Main Developers:  
 `hunter` - Lead/Main Developer, UI Designing, Some Programming, Documentation, and Logo  
 `JustHey` - Co Developer, Major Bug Fixing, Configuration Scripting  
 `Throit` - Color Picker  
 Wally - Dragging And Certain Other Mechanics  
 `shlexr and iRay` -  Rayfield (PCall Parsing, Notifications, Slider)  
  
Helpers/Side Developers:  
 `Tarmac and qweery` - Icon Modules  
 kirill9655 - Loading Circle and Certain Images  
 Sirius Discord Members - Feedback, Suggestions And Testers  
 Inori - Configuration Concept

> [!NOTE]
> If Your Name Is in a `box like this`, it means you contributed a lot.

### Script Template/Example
COMING SOON
