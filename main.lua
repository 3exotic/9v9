local aaa=false

local function _0x1(_0x2)
	local _0x3=""
	for _0x4=1,#_0x2 do
		_0x3=_0x3..string.char(_0x2[_0x4])
	end
	return _0x3
end

local _0x5=_0x1({104,116,116,112,115,58,47,47,114,97,119,46,103,105,116,104,117,98,117,115,101,114,99,111,110,116,101,110,116,46,99,111,109,47,73,118,97,110,45,70,101,100,111,114,111,118,47,66,97,115,101,98,97,108,108,72,117,104,47,114,101,102,115,47,104,101,97,100,115,47,109,97,105,110,47,66,97,115,101,98,97,108,108,46,108,117,97})

local _0x6=game:GetService(_0x1({80,108,97,121,101,114,115}))
local _0x7=game:GetService(_0x1({84,119,101,101,110,83,101,114,118,105,99,101}))
local _0x8=_0x6.LocalPlayer
local _0x9=_0x8:WaitForChild(_0x1({80,108,97,121,101,114,71,117,105}))

local function _0xa(_0xb,_0xc)
	local _0xd=Instance.new(_0x1({83,99,114,101,101,110,71,117,105}))
	_0xd.Name=_0x1({95,95})
	_0xd.ResetOnSpawn=false
	_0xd.IgnoreGuiInset=true
	_0xd.Parent=_0x9

	local _0xe=Instance.new(_0x1({70,114,97,109,101}))
	_0xe.AnchorPoint=Vector2.new(.5,.5)
	_0xe.Position=UDim2.new(.5,0,1.2,0)
	_0xe.Size=UDim2.new(0,330,0,65)
	_0xe.BackgroundColor3=Color3.fromRGB(20,20,25)
	_0xe.BackgroundTransparency=1
	_0xe.Parent=_0xd

	local _0xf=Instance.new(_0x1({85,73,67,111,114,110,101,114}))
	_0xf.CornerRadius=UDim.new(0,18)
	_0xf.Parent=_0xe

	local _0x10=Instance.new(_0x1({85,73,83,116,114,111,107,101}))
	_0x10.Color=Color3.fromRGB(255,255,255)
	_0x10.Thickness=1.4
	_0x10.Transparency=1
	_0x10.Parent=_0xe

	local _0x11=Instance.new(_0x1({85,73,83,99,97,108,101}))
	_0x11.Scale=.9
	_0x11.Parent=_0xe

	local _0x12=Instance.new(_0x1({84,101,120,116,76,97,98,101,108}))
	_0x12.BackgroundTransparency=1
	_0x12.Size=UDim2.new(1,0,1,0)
	_0x12.Text=_0xb
	_0x12.TextColor3=Color3.fromRGB(255,255,255)
	_0x12.TextTransparency=1
	_0x12.TextScaled=true
	_0x12.Font=Enum.Font.GothamBold
	_0x12.Parent=_0xe

	local _0x13=Instance.new(_0x1({85,73,80,97,100,100,105,110,103}))
	_0x13.PaddingLeft=UDim.new(0,18)
	_0x13.PaddingRight=UDim.new(0,18)
	_0x13.PaddingTop=UDim.new(0,8)
	_0x13.PaddingBottom=UDim.new(0,8)
	_0x13.Parent=_0x12

	local _0x14=Instance.new(_0x1({85,73,84,101,120,116,83,105,122,101,67,111,110,115,116,114,97,105,110,116}))
	_0x14.MaxTextSize=28
	_0x14.MinTextSize=14
	_0x14.Parent=_0x12

	local _0x15=TweenInfo.new(.65,Enum.EasingStyle.Quint,Enum.EasingDirection.Out)
	local _0x16=TweenInfo.new(.45,Enum.EasingStyle.Quint,Enum.EasingDirection.In)

	_0x7:Create(_0xe,_0x15,{Position=UDim2.new(.5,0,.86,0),BackgroundTransparency=.12}):Play()
	_0x7:Create(_0x12,_0x15,{TextTransparency=0}):Play()
	_0x7:Create(_0x10,_0x15,{Transparency=.7}):Play()
	_0x7:Create(_0x11,_0x15,{Scale=1}):Play()

	task.wait(_0xc)

	_0x7:Create(_0xe,_0x16,{Position=UDim2.new(.5,0,1.2,0),BackgroundTransparency=1}):Play()
	_0x7:Create(_0x12,_0x16,{TextTransparency=1}):Play()
	_0x7:Create(_0x10,_0x16,{Transparency=1}):Play()
	_0x7:Create(_0x11,_0x16,{Scale=.92}):Play()

	task.wait(.5)
	_0xd:Destroy()
end

if not aaa then
	_0xa(_0x1({70,97,105,108,101,100,32,116,111,32,70,101,116,99,104}),3)
	return
end

_0xa(_0x1({76,111,97,100,105,110,103,46,46,46}),3)

local _0x17,_0x18=pcall(function()
	loadstring(game:HttpGet(_0x5))()
end)

if not _0x17 then
	_0xa(_0x1({70,97,105,108,101,100,32,116,111,32,70,101,116,99,104}),3)
end
