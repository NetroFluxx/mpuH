
local Players = game:GetService("Players")

local player = Players.LocalPlayer
local PlayerGui = player:WaitForChild("PlayerGui")

local MPUH = Instance.new("ScreenGui")
MPUH.Name = "MPUHScreen"
MPUH.Parent = PlayerGui
MPUH.Enabled = true

local MainFrameMPUH = Instance.new("Frame")
MainFrameMPUH.Name = "MainFrameMPUH"
MainFrameMPUH.Parent = MPUH

MainFrameMPUH.Position = UDim2.new(0.272, 0, 0.214, 0)
MainFrameMPUH.Size = UDim2.new(0, 686, 0, 354)
MainFrameMPUH.Draggable = true
MainFrameMPUH.Visible = true
MainFrameMPUH.Active = true
MainFrameMPUH.BackgroundColor3 = Color3.fromRGB(45,45,45)

local CloseButton = Instance.new("TextButton")
CloseButton.Parent = MainFrameMPUH
CloseButton.Position = UDim2.new(0.75, 0,0.216, 0)
CloseButton.Size = UDim2.new(0, 42,0, 42)
CloseButton.Text = "X"
CloseButton.TextScaled = true

local OpenUIButton = Instance.new("ImageButton")
OpenUIButton.Parent = MPUH
OpenUIButton.Size = UDim2.new(0, 53,0, 57)
OpenUIButton.Position = UDim2.new(0.493, 0,0.047, 0)
OpenUIButton.Visible = false
OpenUIButton.Draggable = true
OpenUIButton.Image = "rbxassetid://76288177787663"

local UICorner = Instance.new("UICorner")
UICorner.Parent = OpenUIButton

CloseButton.MouseButton1Click:Connect(function()
	MainFrameMPUH.Visible = false
	OpenUIButton.Visible = true
	CloseButton.Visible = false
end)


OpenUIButton.MouseButton1Click:Connect(function()
	MainFrameMPUH.Visible = true
	OpenUIButton.Visible = false
	CloseButton.Visible = true
end)

local MPUHTitle = Instance.new("TextLabel")
MPUHTitle.Parent = MainFrameMPUH
MPUHTitle.Text = "Los MPUH's hub"
MPUHTitle.Font = Enum.Font.Montserrat
MPUHTitle.Position = UDim2.new(0.272, 0,0.223, 0)
MPUHTitle.Size = UDim2.new(0, 200,0, 32)


--TABS--

local TabFolder = Instance.new("Folder")
TabFolder.Name = "TabFolder"
TabFolder.Parent = MainFrameMPUH

local FirstTab = Instance.new("Frame")
FirstTab.Parent = TabFolder
FirstTab.Name = "PlayerSection"



