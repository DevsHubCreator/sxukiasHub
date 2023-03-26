-- Library

local corePath = game:GetService("CoreGui")
local tweenService = game:GetService("TweenService")

local library = {};

function library:Window(win_name)
    win_name = tostring(win_name) or "sxukiasHub";

    if corePath:FindFirstChild(win_name) then
        corePath:FindFirstChild(win_name):Destroy()
    end

    local sxukyasHub = Instance.new("ScreenGui")
    local Dragger = Instance.new("Frame")
    local UICorner = Instance.new("UICorner")
    local TextLabel_3 = Instance.new("TextLabel")
    
    local Main = Instance.new("Frame")
    local UICorner_2 = Instance.new("UICorner")

    local Tabs = Instance.new("Frame")
    local UICorner_3 = Instance.new("UICorner")

    local Sections = Instance.new("Folder")

    sxukyasHub.Name = win_name
    sxukyasHub.Parent = corePath
    sxukyasHub.ResetOnSpawn = false

    Dragger.Name = "Dragger"
    Dragger.Parent = sxukyasHub
    Dragger.BackgroundColor3 = Color3.fromRGB(21, 21, 21)
    Dragger.BorderSizePixel = 0
    Dragger.Position = UDim2.new(0.285394937, 0, 0.240181267, 0)
    Dragger.Size = UDim2.new(0, 575, 0, 42)
    Dragger.ZIndex = 2
    Dragger.Active = true
    Dragger.Draggable = true
    
    UICorner.CornerRadius = UDim.new(0, 4)
    UICorner.Parent = Dragger

    Main.Name = "Main"
    Main.Parent = Dragger
    Main.BackgroundColor3 = Color3.fromRGB(21, 21, 21)
    Main.BorderSizePixel = 0
    Main.Position = UDim2.new(0, 0, 0.784745336, 0)
    Main.Size = UDim2.new(0, 575, 0, 302)
    
    UICorner_2.CornerRadius = UDim.new(0, 4)
    UICorner_2.Parent = Main
    
    Tabs.Name = "Tabs"
    Tabs.Parent = Main
    Tabs.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
    Tabs.BorderSizePixel = 0
    Tabs.Size = UDim2.new(0, 144, 0, 302)
    
    UICorner_3.CornerRadius = UDim.new(0, 4)
    UICorner_3.Parent = Tabs

    Sections.Name = "Sections"
    Sections.Parent = Main

    TextLabel_3.Parent = Dragger
    TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel_3.BackgroundTransparency = 1.000
    TextLabel_3.BorderSizePixel = 0
    TextLabel_3.Position = UDim2.new(0.0191304386, 0, 0.285714269, 0)
    TextLabel_3.Size = UDim2.new(0, 167, 0, 17)
    TextLabel_3.ZIndex = 2
    TextLabel_3.Font = Enum.Font.Gotham
    TextLabel_3.Text = "sxukyas Hub"
    TextLabel_3.TextColor3 = Color3.fromRGB(186, 186, 186)
    TextLabel_3.TextScaled = true
    TextLabel_3.TextSize = 14.000
    TextLabel_3.TextWrapped = true
    TextLabel_3.TextXAlignment = Enum.TextXAlignment.Left

    local Tabs_return = {};

    function Tabs_return:Tab(tab_name)
        tab_name = tab_name or "Tab";

        local Tab = Instance.new("TextButton")
        local TextLabel = Instance.new("TextLabel")
        local UIListLayout = Instance.new("UIListLayout")
        local UIPadding = Instance.new("UIPadding")

        Tab.Name = "Tab"
        Tab.Parent = Tabs
        Tab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Tab.BackgroundTransparency = 1.000
        Tab.BorderSizePixel = 0
        Tab.Position = UDim2.new(0, 0, 0.059602648, 0)
        Tab.Size = UDim2.new(0, 144, 0, 30)
        Tab.Font = Enum.Font.SourceSans
        Tab.Text = ""
        Tab.TextColor3 = Color3.fromRGB(0, 0, 0)
        Tab.TextSize = 14.000
        
        TextLabel.Parent = Tab
        TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel.BackgroundTransparency = 1.000
        TextLabel.BorderSizePixel = 0
        TextLabel.Position = UDim2.new(0.0763888881, 0, 0.252380878, 0)
        TextLabel.Size = UDim2.new(0, 123, 0, 14)
        TextLabel.ZIndex = 2
        TextLabel.Font = Enum.Font.Gotham
        TextLabel.Text = tab_name
        TextLabel.TextColor3 = Color3.fromRGB(143, 143, 143)
        TextLabel.TextScaled = true
        TextLabel.TextSize = 14.000
        TextLabel.TextWrapped = true
        TextLabel.TextXAlignment = Enum.TextXAlignment.Left
        
        UIListLayout.Parent = Tabs
        UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
        
        UIPadding.Parent = Tabs
        UIPadding.PaddingTop = UDim.new(0, 10)

        local Sections_return = {};

        function Sections_return:Section(section_name)
            section_name = section_name or "Section"

            local Section = Instance.new("Frame")
            local UICorner_4 = Instance.new("UICorner")
            local ScrollingFrame = Instance.new("ScrollingFrame")
            local UIListLayout_2 = Instance.new("UIListLayout")
            local UIPadding_2 = Instance.new("UIPadding")

            Section.Name = "Section"
            Section.Parent = Sections
            Section.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
            Section.BorderSizePixel = 0
            Section.Position = UDim2.new(0.264347821, 0, 0.0299361274, 0)
            Section.Size = UDim2.new(0, 414, 0, 292)
            Section.Visible = false
            
            UICorner_4.CornerRadius = UDim.new(0, 4)
            UICorner_4.Parent = Section
            
            ScrollingFrame.Parent = Section
            ScrollingFrame.Active = true
            ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ScrollingFrame.BackgroundTransparency = 1.000
            ScrollingFrame.BorderSizePixel = 0
            ScrollingFrame.Size = UDim2.new(0, 414, 0, 292)
            ScrollingFrame.ScrollBarImageTransparency = 0.400
            ScrollingFrame.ScrollBarThickness = 3

            UIListLayout_2.Parent = ScrollingFrame
            UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
            UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
            UIListLayout_2.Padding = UDim.new(0, 5)
            
            UIPadding_2.Parent = ScrollingFrame
            UIPadding_2.PaddingTop = UDim.new(0, 5)

            Tab.MouseButton1Click:Connect(function()
                for i,v in pairs(Sections:GetChildren()) do
                    if v:IsA("GuiObject") then
                        v.Visible = false
                    end
                end
                for i,v in pairs(Tabs:GetChildren()) do
                    if v:IsA("GuiObject") and v:FindFirstChild("TextLabel") then
                        v.TextLabel.TextColor3 = Color3.fromRGB(143, 143, 143)
                    end
                end
                TextLabel.TextColor3 = Color3.fromRGB(206, 206, 206)
                Section.Visible = true
            end)

            local Settings = {};

            function Settings:Button(button_name, callback)
                button_name = button_name or "Button";
                callback = callback or function() end;

                local Button = Instance.new("TextButton")
                local UICorner_5 = Instance.new("UICorner")
                local TextLabel_2 = Instance.new("TextLabel")

                Button.Name = "Button"
                Button.Parent = ScrollingFrame
                Button.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
                Button.BorderSizePixel = 0
                Button.Position = UDim2.new(0.0193236712, 0, 0.0256849378, 0)
                Button.Size = UDim2.new(0, 398, 0, 35)
                Button.AutoButtonColor = false
                Button.Font = Enum.Font.SourceSans
                Button.Text = ""
                Button.TextColor3 = Color3.fromRGB(0, 0, 0)
                Button.TextSize = 14.000
                
                UICorner_5.CornerRadius = UDim.new(0, 6)
                UICorner_5.Parent = Button
                
                TextLabel_2.Parent = Button
                TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                TextLabel_2.BackgroundTransparency = 1.000
                TextLabel_2.BorderSizePixel = 0
                TextLabel_2.Position = UDim2.new(0.0201005023, 0, 0.257142872, 0)
                TextLabel_2.Size = UDim2.new(0, 381, 0, 16)
                TextLabel_2.Font = Enum.Font.Gotham
                TextLabel_2.Text = button_name
                TextLabel_2.TextColor3 = Color3.fromRGB(203, 203, 203)
                TextLabel_2.TextScaled = true
                TextLabel_2.TextSize = 14.000
                TextLabel_2.TextWrapped = true
                TextLabel_2.TextXAlignment = Enum.TextXAlignment.Left

                Button.MouseButton1Click:Connect(function()
                    callback()
                end)
            end

            function Settings:Toggle(toggle_name, callback)
                toggle_name = tostring(toggle_name) or "Toggle";
                callback = callback or function() end;

                local Toggle = Instance.new("TextButton")
                local UICorner = Instance.new("UICorner")
                local TextLabel = Instance.new("TextLabel")
                local Bar = Instance.new("Frame")
                local UICorner_2 = Instance.new("UICorner")
                local UIStroke = Instance.new("UIStroke")

                Toggle.Name = "Toggle"
                Toggle.Parent = ScrollingFrame
                Toggle.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
                Toggle.BorderSizePixel = 0
                Toggle.Position = UDim2.new(0.0193236712, 0, 0.0256849378, 0)
                Toggle.Size = UDim2.new(0, 398, 0, 35)
                Toggle.AutoButtonColor = false
                Toggle.Font = Enum.Font.SourceSans
                Toggle.Text = ""
                Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
                Toggle.TextSize = 14.000
                
                UICorner.CornerRadius = UDim.new(0, 6)
                UICorner.Parent = Toggle
                
                TextLabel.Parent = Toggle
                TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                TextLabel.BackgroundTransparency = 1.000
                TextLabel.BorderSizePixel = 0
                TextLabel.Position = UDim2.new(0.0201005023, 0, 0.257142872, 0)
                TextLabel.Size = UDim2.new(0, 347, 0, 16)
                TextLabel.Font = Enum.Font.Gotham
                TextLabel.Text = toggle_name
                TextLabel.TextColor3 = Color3.fromRGB(203, 203, 203)
                TextLabel.TextScaled = true
                TextLabel.TextSize = 14.000
                TextLabel.TextWrapped = true
                TextLabel.TextXAlignment = Enum.TextXAlignment.Left
                
                Bar.Name = "Bar"
                Bar.Parent = Toggle
                Bar.BackgroundColor3 = Color3.fromRGB(93, 93, 93)
                Bar.BackgroundTransparency = 1.000
                Bar.BorderColor3 = Color3.fromRGB(27, 42, 53)
                Bar.BorderSizePixel = 0
                Bar.Position = UDim2.new(0.930000007, 0, 0.200000003, 0)
                Bar.Size = UDim2.new(0, 20, 0, 20)
                
                UICorner_2.CornerRadius = UDim.new(0, 4)
                UICorner_2.Parent = Bar
                
                UIStroke.Color = Color3.fromRGB(65, 65, 65)
                UIStroke.Thickness = 2.000
                UIStroke.Parent = Bar

                local toggle_db = false;

                Toggle.MouseButton1Click:Connect(function()
                    toggle_db = not toggle_db;

                    local bar_transparency = toggle_db and 0 or not toggle_db and 1;
                    tweenService:Create(Bar, TweenInfo.new(0.3), {BackgroundTransparency = bar_transparency}):Play();
                    callback(toggle_db)
                end)
            end

            return Settings;
        end

        return Sections_return;
    end

    return Tabs_return;
end

return library;
