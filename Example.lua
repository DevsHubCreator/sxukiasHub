
local main = library:Window()

local tab1 = main:Tab("TestTab")
local section1 = tab1:Section("TestSection")

section1:Button("Button",function()
    print("clicked!")
end)
section1:Toggle("Toggle",function(x)
    print(x)
end)
