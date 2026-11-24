-- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
-- ┃                                               ┃
-- ┃           O S A M A   D U M P E R             ┃
-- ┃                                               ┃
-- ┃      https://discord.gg/R6vnkNQNbP            ┃
-- ┃                                               ┃
-- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
-- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
-- ┃           O S A M A   D U M P E R             ┃
-- ┃      https://discord.gg/R6vnkNQNbP            ┃
-- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
do
    local Players = game:GetService("Players")
    local LP = Players.LocalPlayer
    local DISCORD_LINK = "https://discord.gg/R6vnkNQNbP"

    local function getParent()
        local ok, h = pcall(function() return gethui and gethui() end)
        if ok and h then return h end
        return LP:WaitForChild("PlayerGui")
    end

    local wmGui = Instance.new("ScreenGui")
    wmGui.Name = "OSAMA_Watermark_GUI"
    wmGui.ResetOnSpawn = false
    wmGui.IgnoreGuiInset = true
    wmGui.DisplayOrder = 9999
    wmGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    wmGui.Parent = getParent()

    local main = Instance.new("Frame")
    main.Name = "Watermark"
    main.AnchorPoint = Vector2.new(1, 0)
    main.Position = UDim2.new(1, -15, 0, 15)
    main.Size = UDim2.fromOffset(180, 36)
    main.BackgroundColor3 = Color3.fromRGB(12, 12, 15)
    main.BackgroundTransparency = 0.15
    main.BorderSizePixel = 0
    main.Active = true
    main.Draggable = true
    main.ClipsDescendants = true
    main.Parent = wmGui

    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 8)
    corner.Parent = main

    local stroke = Instance.new("UIStroke")
    stroke.Color = Color3.fromRGB(255, 65, 82)
    stroke.Thickness = 1.5
    stroke.Transparency = 0.2
    stroke.Parent = main

    local accent = Instance.new("Frame")
    accent.Size = UDim2.new(0, 3, 1, 0)
    accent.BackgroundColor3 = Color3.fromRGB(255, 65, 82)
    accent.BorderSizePixel = 0
    accent.Parent = main

    local accentGlow = Instance.new("UIGradient")
    accentGlow.Color = ColorSequence.new(Color3.fromRGB(255, 65, 82), Color3.fromRGB(150, 20, 40))
    accentGlow.Rotation = 90
    accentGlow.Parent = accent

    local title = Instance.new("TextLabel")
    title.Size = UDim2.new(1, -30, 0, 20)
    title.Position = UDim2.fromOffset(12, 4)
    title.BackgroundTransparency = 1
    title.Text = "By OSAMA DUMPER"
    title.TextColor3 = Color3.fromRGB(245, 246, 250)
    title.Font = Enum.Font.GothamBold
    title.TextSize = 12
    title.TextXAlignment = Enum.TextXAlignment.Left
    title.Parent = main

    local linkLabel = Instance.new("TextLabel")
    linkLabel.Size = UDim2.new(1, -30, 0, 12)
    linkLabel.Position = UDim2.fromOffset(12, 20)
    linkLabel.BackgroundTransparency = 1
    linkLabel.Text = "Click to copy Discord link"
    linkLabel.TextColor3 = Color3.fromRGB(155, 155, 165)
    linkLabel.Font = Enum.Font.GothamMedium
    linkLabel.TextSize = 10
    linkLabel.TextXAlignment = Enum.TextXAlignment.Left
    linkLabel.Parent = main

    local clickBtn = Instance.new("TextButton")
    clickBtn.Size = UDim2.fromScale(1, 1)
    clickBtn.BackgroundTransparency = 1
    clickBtn.Text = ""
    clickBtn.ZIndex = 5
    clickBtn.Parent = main

    local successColor = Color3.fromRGB(37, 227, 81)
    local defaultColor = Color3.fromRGB(155, 155, 165)

    clickBtn.MouseButton1Click:Connect(function()
        if setclipboard or toclipboard then
            local func = setclipboard or toclipboard
            pcall(func, DISCORD_LINK)
            linkLabel.Text = "✅ Link Copied!"
            linkLabel.TextColor3 = successColor
            stroke.Color = successColor
            accent.BackgroundColor3 = successColor
            task.delay(2, function()
                if linkLabel and linkLabel.Parent then
                    linkLabel.Text = "Click to copy Discord link"
                    linkLabel.TextColor3 = defaultColor
                    stroke.Color = Color3.fromRGB(255, 65, 82)
                    accent.BackgroundColor3 = Color3.fromRGB(255, 65, 82)
                end
            end)
        else
            linkLabel.Text = "❌ Executor doesn't support copy"
            linkLabel.TextColor3 = Color3.fromRGB(255, 50, 50)
            task.delay(2, function()
                if linkLabel and linkLabel.Parent then
                    linkLabel.Text = "Click to copy Discord link"
                    linkLabel.TextColor3 = defaultColor
                end
            end)
        end
    end)

    local closeBtn = Instance.new("TextButton")
    closeBtn.Size = UDim2.fromOffset(16, 16)
    closeBtn.Position = UDim2.new(1, -20, 0, 4)
    closeBtn.BackgroundTransparency = 1
    closeBtn.Text = "×"
    closeBtn.TextColor3 = Color3.fromRGB(255, 65, 82)
    closeBtn.Font = Enum.Font.GothamBold
    closeBtn.TextSize = 18
    closeBtn.ZIndex = 6
    closeBtn.Parent = main

    local miniBtn = Instance.new("TextButton")
    miniBtn.AnchorPoint = Vector2.new(1, 0)
    miniBtn.Position = UDim2.new(1, -15, 0, 15)
    miniBtn.Size = UDim2.fromOffset(90, 24)
    miniBtn.BackgroundColor3 = Color3.fromRGB(12, 12, 15)
    miniBtn.BackgroundTransparency = 0.15
    miniBtn.BorderSizePixel = 0
    miniBtn.Text = "OSAMA DUMPER"
    miniBtn.TextColor3 = Color3.fromRGB(255, 65, 82)
    miniBtn.Font = Enum.Font.GothamBold
    miniBtn.TextSize = 11
    miniBtn.Visible = false
    miniBtn.Parent = wmGui

    local miniCorner = Instance.new("UICorner")
    miniCorner.CornerRadius = UDim.new(0, 6)
    miniCorner.Parent = miniBtn

    local miniStroke = Instance.new("UIStroke")
    miniStroke.Color = Color3.fromRGB(255, 65, 82)
    miniStroke.Thickness = 1
    miniStroke.Transparency = 0.2
    miniStroke.Parent = miniBtn

    closeBtn.MouseButton1Click:Connect(function()
        main.Visible = false
        miniBtn.Visible = true
    end)

    miniBtn.MouseButton1Click:Connect(function()
        miniBtn.Visible = false
        main.Visible = true
    end)
end

local Players     = game:GetService("Players")
local UIS         = game:GetService("UserInputService")
local HttpService = game:GetService("HttpService")
local RunService  = game:GetService("RunService")
local Lighting    = game:GetService("Lighting")
local TweenService= game:GetService("TweenService")
local LP          = Players.LocalPlayer
local PlayerGui   = LP:WaitForChild("PlayerGui")

local CONFIG_FILE = "rxz_opps.json"
local DEFAULTS = {
    SilentAim=false, SilentAimHitPart="Head", TargetLine=true,
    SA_FOV=120, StickyTurn=16, StickyRatio=0.5, StickyMinPix=100,
    ESP_Box=false, ESP_Lines=false, ESP_Highlight=false, ESP_Name=false,
    ESP_Health=false, ESP_Dist=false, ESP_Weapon=false, ESP_Item=false,
    ESP_MaxRange=1000000, ESP_Size=1, ESP_LineThickness=1,
    ESP_OffsetX=-1, ESP_OffsetY=12,
    Friends={},
    SkipCrates=false, AutoPickup=false, AutoPickupRadius=85,
    NoRecoil=false, InfAccuracy=false, InfRange=false, FastFire=false,
    FastReload=false, AutoMode=false,
    AutoFinish=false, AutoRespawn=false, RespawnToItem=false,
    GodMode=false, Invisible=false, Giro=-101,
    OptimizeFPS=false, PurpleSky=false, PanelHue=-1,
    ShowFPS=false, UIScale=1,
}
local S = {}
for k,v in pairs(DEFAULTS) do S[k]=(type(v)=="table") and {} or v end

local function save() pcall(function() if writefile then writefile(CONFIG_FILE, HttpService:JSONEncode(S)) end end) end
pcall(function()
    if isfile and isfile(CONFIG_FILE) then
        local data = HttpService:JSONDecode(readfile(CONFIG_FILE))
        for k,v in pairs(data) do if S[k]~=nil and type(S[k])==type(v) then S[k]=v end end
    end
end)

local Hooks = {}
local function fire(key, value) local f=Hooks[key] if f then task.spawn(f, value) end end

local C = {
    Panel=Color3.fromRGB(12,12,15), Card=Color3.fromRGB(18,18,22),
    Border=Color3.fromRGB(45,20,25), Red=Color3.fromRGB(165,24,38),
    White=Color3.fromRGB(245,246,250), Gray=Color3.fromRGB(155,155,165),
    Green=Color3.fromRGB(37,227,81), Off=Color3.fromRGB(22,23,28),
    Blue=Color3.fromRGB(60,90,200), Glass=Color3.fromRGB(7,18,32),
}
local function new(class, props, parent)
    local o=Instance.new(class) for k,v in pairs(props or {}) do o[k]=v end
    if parent then o.Parent=parent end return o
end
local function corner(o,r) return new("UICorner",{CornerRadius=UDim.new(0,r)},o) end
local function stroke(o,c,t,tr) return new("UIStroke",{Color=c or C.Border,Thickness=t or 1,Transparency=tr or 0},o) end
local function redGradient(o) return new("UIGradient",{Color=ColorSequence.new(Color3.fromRGB(100,12,22),Color3.fromRGB(185,28,44)),Rotation=45},o) end
local function label(parent,text,pos,size,ts,col,font)
    return new("TextLabel",{Position=pos,Size=size,BackgroundTransparency=1,Text=text,
        TextColor3=col or C.White,Font=font or Enum.Font.Gotham,TextSize=ts or 14,
        TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Center},parent)
end
local function guiParent()
    local ok,p=pcall(function() return (gethui and gethui()) or game:GetService("CoreGui") end)
    if ok and p then return p end return PlayerGui
end
for _,root in ipairs({guiParent(), PlayerGui}) do
    local old=root and root:FindFirstChild("RXZ_BLACK_GUI")
    if old then old:Destroy() end
end

local gui = new("ScreenGui",{Name="RXZ_BLACK_GUI",ResetOnSpawn=false,IgnoreGuiInset=true,
    DisplayOrder=999,ZIndexBehavior=Enum.ZIndexBehavior.Sibling},guiParent())

local main = new("Frame",{Name="Main",AnchorPoint=Vector2.new(0.5,0.5),
    Position=UDim2.fromScale(0.5,0.5),Size=UDim2.fromOffset(530,350),
    BackgroundColor3=C.Panel,BorderSizePixel=0,ClipsDescendants=true},gui)
corner(main,20); stroke(main,Color3.fromRGB(29,25,83),1.5)

local bgImg = new("ImageLabel",{Name="RXZ_Background",Size=UDim2.fromScale(1,1),
    BackgroundTransparency=1,ScaleType=Enum.ScaleType.Crop,ZIndex=1,
    Image="rbxthumb://type=Asset&id=76824741629432&w=420&h=420"},main)
corner(bgImg,20)
local ov = new("Frame",{Name="RXZ_Overlay",Size=UDim2.fromScale(1,1),
    BackgroundColor3=Color3.fromRGB(10,10,14),BackgroundTransparency=0.35,BorderSizePixel=0,ZIndex=1},main)
corner(ov,20)
redGradient(new("Frame",{Position=UDim2.new(0,0,0,70),Size=UDim2.new(0,3,1,-75),
    BackgroundColor3=C.Red,BorderSizePixel=0},main))
redGradient(new("Frame",{Position=UDim2.new(0,5,1,-4),Size=UDim2.new(0.7,0,0,3),
    BackgroundColor3=C.Red,BorderSizePixel=0},main))

local header = new("Frame",{Name="Header",Size=UDim2.new(1,0,0,66),
    BackgroundTransparency=1,ZIndex=2},main)
label(header,"RXZ BLOCK SPIN",UDim2.new(0,20,0,10),UDim2.new(1,-125,0,26),18,C.White,Enum.Font.GothamBold)
label(header,"V4 EDITION",UDim2.new(0,21,0,34),UDim2.new(1,-125,0,20),12,C.Gray)

local locked=false
local lockBtn = new("TextButton",{Position=UDim2.new(1,-68,0,18),Size=UDim2.fromOffset(24,24),
    BackgroundColor3=Color3.fromRGB(20,24,38),BackgroundTransparency=0.5,
    BorderSizePixel=0,Text="U",TextColor3=C.White,TextSize=12,
    Font=Enum.Font.GothamBold,AutoButtonColor=false,ZIndex=3},header)
corner(lockBtn,8)
lockBtn.Activated:Connect(function()
    locked=not locked lockBtn.Text=locked and "L" or "U"
    lockBtn.BackgroundColor3=locked and Color3.fromRGB(180,35,60) or Color3.fromRGB(20,24,38)
end)

local closeBtn=new("TextButton",{Position=UDim2.new(1,-38,0,18),Size=UDim2.fromOffset(24,24),
    BackgroundColor3=Color3.fromRGB(255,65,82),BorderSizePixel=0,Text="×",
    TextColor3=C.White,TextSize=18,Font=Enum.Font.GothamBold,AutoButtonColor=false,ZIndex=3},header)
corner(closeBtn,50)

do
    local drag,sPos,sMou=false,nil,nil
    header.InputBegan:Connect(function(i) if locked then return end
        if i.UserInputType==Enum.UserInputType.MouseButton1 or i.UserInputType==Enum.UserInputType.Touch then
            drag,sMou,sPos=true,i.Position,main.Position end end)
    UIS.InputChanged:Connect(function(i) if drag and (i.UserInputType==Enum.UserInputType.MouseMovement or i.UserInputType==Enum.UserInputType.Touch) then
        local d=i.Position-sMou
        main.Position=UDim2.new(sPos.X.Scale,sPos.X.Offset+d.X,sPos.Y.Scale,sPos.Y.Offset+d.Y) end end)
    UIS.InputEnded:Connect(function(i) if i.UserInputType==Enum.UserInputType.MouseButton1 or i.UserInputType==Enum.UserInputType.Touch then drag=false end end)
end

local mini=new("Frame",{Name="RXZ_MiniBar",Position=UDim2.new(0.5,-120,0,18),
    Size=UDim2.fromOffset(250,46),BackgroundTransparency=1,ZIndex=1000},gui)
local pillBody=new("Frame",{Position=UDim2.fromOffset(34,0),Size=UDim2.new(1,-34,1,0),
    BackgroundColor3=Color3.fromRGB(10,10,12),BackgroundTransparency=0.05,BorderSizePixel=0,ZIndex=1000},mini)
corner(pillBody,50); stroke(pillBody,Color3.fromRGB(40,40,46),1.5)
local cartBtn=new("TextButton",{Position=UDim2.fromOffset(0,3),Size=UDim2.fromOffset(40,40),
    BackgroundColor3=Color3.fromRGB(14,14,16),Text="🛒",TextColor3=C.White,
    TextSize=18,Font=Enum.Font.GothamBold,AutoButtonColor=false,ZIndex=1001},mini)
corner(cartBtn,50)
local pill=new("TextButton",{Name="RXZ_TogglePill",Position=UDim2.fromOffset(58,0),
    Size=UDim2.new(1,-58,1,0),BackgroundTransparency=1,Text="",AutoButtonColor=false,ZIndex=1002},pillBody)
label(pill,"RXZ HUB",UDim2.fromOffset(-14,0),UDim2.new(1,-30,1,0),16,C.White,Enum.Font.GothamMedium).ZIndex=1003
local dot=new("Frame",{Position=UDim2.new(1,-14,0.5,0),AnchorPoint=Vector2.new(0.5,0.5),
    Size=UDim2.fromOffset(7,7),BackgroundColor3=C.Green,BorderSizePixel=0,ZIndex=1003},pill)
corner(dot,50)
local function setVisible(v) main.Visible=v dot.BackgroundColor3=v and C.Green or Color3.fromRGB(180,25,40) end
pill.Activated:Connect(function() setVisible(not main.Visible) end)
cartBtn.Activated:Connect(function() setVisible(not main.Visible) end)
closeBtn.Activated:Connect(function() setVisible(false) end)
do
    local drag,sPos,sMou=false,nil,nil
    cartBtn.InputBegan:Connect(function(i)
        if i.UserInputType==Enum.UserInputType.MouseButton1 or i.UserInputType==Enum.UserInputType.Touch then
            drag,sMou,sPos=true,i.Position,mini.Position end end)
    UIS.InputChanged:Connect(function(i) if drag and (i.UserInputType==Enum.UserInputType.MouseMovement or i.UserInputType==Enum.UserInputType.Touch) then
        local d=i.Position-sMou
        mini.Position=UDim2.new(sPos.X.Scale,sPos.X.Offset+d.X,sPos.Y.Scale,sPos.Y.Offset+d.Y) end end)
    UIS.InputEnded:Connect(function(i) if i.UserInputType==Enum.UserInputType.MouseButton1 or i.UserInputType==Enum.UserInputType.Touch then drag=false end end)
end

local content=new("Frame",{Name="Content",Position=UDim2.new(0,14,0,72),Size=UDim2.new(1,-28,1,-86),
    BackgroundColor3=Color3.fromRGB(8,8,10),BackgroundTransparency=0.35,BorderSizePixel=0,ZIndex=2},main)
corner(content,16); stroke(content,Color3.fromRGB(21,25,44),1)
local sidebar=new("Frame",{Name="TabSidebar",Position=UDim2.new(0,8,0,8),Size=UDim2.new(0,112,1,-16),
    BackgroundColor3=Color3.fromRGB(14,14,18),BackgroundTransparency=0.45,BorderSizePixel=0},content)
corner(sidebar,14); stroke(sidebar,Color3.fromRGB(45,20,25),1)
new("UIListLayout",{Padding=UDim.new(0,6),HorizontalAlignment=Enum.HorizontalAlignment.Center,
    SortOrder=Enum.SortOrder.LayoutOrder},sidebar)
new("UIPadding",{PaddingTop=UDim.new(0,8),PaddingBottom=UDim.new(0,8),
    PaddingLeft=UDim.new(0,6),PaddingRight=UDim.new(0,6)},sidebar)
local container=new("Frame",{Name="TabContainer",Position=UDim2.new(0,128,0,8),
    Size=UDim2.new(1,-136,1,-16),BackgroundTransparency=1},content)

local tabs={}
local function selectTab(name)
    for n,t in pairs(tabs) do
        local on=(n==name)
        t.Page.Visible=on
        t.Btn.TextColor3=on and C.White or C.Gray
        t.Btn.BackgroundTransparency=on and 0 or 1
        t.Stroke.Transparency=on and 0 or 1
    end
end
local function addTab(name)
    local page=new("ScrollingFrame",{Name=name.."Page",Size=UDim2.fromScale(1,1),
        BackgroundTransparency=1,BorderSizePixel=0,ScrollBarThickness=3,
        ScrollBarImageColor3=Color3.fromRGB(150,20,32),CanvasSize=UDim2.new(),Visible=false},container)
    local layout=new("UIListLayout",{Padding=UDim.new(0,6),SortOrder=Enum.SortOrder.LayoutOrder},page)
    new("UIPadding",{PaddingRight=UDim.new(0,6),PaddingTop=UDim.new(0,2),
        PaddingBottom=UDim.new(0,8),PaddingLeft=UDim.new(0,2)},page)
    layout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
        page.CanvasSize=UDim2.new(0,0,0,layout.AbsoluteContentSize.Y+12) end)
    local btn=new("TextButton",{Name=name.."Btn",Size=UDim2.new(1,0,0,32),BackgroundColor3=C.Card,
        BackgroundTransparency=1,Text=name,TextColor3=C.Gray,Font=Enum.Font.GothamMedium,
        TextSize=12,AutoButtonColor=false,TextXAlignment=Enum.TextXAlignment.Left,
        LayoutOrder=#sidebar:GetChildren()},sidebar)
    corner(btn,8); new("UIPadding",{PaddingLeft=UDim.new(0,10)},btn)
    local st=stroke(btn,C.Red,1.2,1)
    btn.Activated:Connect(function() selectTab(name) end)
    tabs[name]={Page=page,Btn=btn,Stroke=st}
    return page
end

local function section(page,text)
    local f=new("Frame",{Size=UDim2.new(1,0,0,22),BackgroundTransparency=1},page)
    label(f,string.upper(text),UDim2.fromOffset(4,0),UDim2.new(1,-4,1,0),11,Color3.fromRGB(210,45,60),Enum.Font.GothamBold)
end
local function toggle(page,text,key,callback)
    local card=new("Frame",{Size=UDim2.new(1,0,0,34),BackgroundColor3=C.Card,BorderSizePixel=0},page)
    corner(card,8); stroke(card,C.Border,1)
    label(card,text,UDim2.fromOffset(12,0),UDim2.new(1,-60,1,0),12,C.White)
    local sw=new("TextButton",{Position=UDim2.new(1,-44,0.5,-10),Size=UDim2.fromOffset(34,20),
        BackgroundColor3=S[key] and C.Red or C.Off,Text="",AutoButtonColor=false,BorderSizePixel=0},card)
    corner(sw,50)
    local knob=new("Frame",{Position=S[key] and UDim2.new(1,-17,0.5,-7) or UDim2.fromOffset(3,3),
        Size=UDim2.fromOffset(14,14),BackgroundColor3=C.White,BorderSizePixel=0},sw)
    corner(knob,50)
    local function render()
        local on=S[key]
        sw.BackgroundColor3=on and C.Red or C.Off
        knob.Position=on and UDim2.new(1,-17,0.5,-7) or UDim2.fromOffset(3,3)
    end
    sw.Activated:Connect(function()
        S[key]=not S[key] save() render()
        if callback then callback(S[key]) end
        fire(key, S[key])
    end)
    return card
end
local activeSlider
local function slider(page,text,key,minV,maxV,step,callback)
    local card=new("Frame",{Size=UDim2.new(1,0,0,48),BackgroundColor3=C.Card,BorderSizePixel=0},page)
    corner(card,8); stroke(card,C.Border,1)
    label(card,text,UDim2.fromOffset(12,4),UDim2.new(1,-70,0,18),12,C.White)
    local valLbl=label(card,tostring(S[key]),UDim2.new(1,-60,0,4),UDim2.fromOffset(50,18),12,Color3.fromRGB(80,140,255),Enum.Font.GothamBold)
    valLbl.TextXAlignment=Enum.TextXAlignment.Right
    local bar=new("Frame",{Position=UDim2.fromOffset(12,28),Size=UDim2.new(1,-24,0,6),
        BackgroundColor3=Color3.fromRGB(20,24,42),BorderSizePixel=0},card)
    corner(bar,50)
    local fill=new("Frame",{Size=UDim2.new(math.clamp((S[key]-minV)/(maxV-minV),0,1),0,1,0),
        BackgroundColor3=C.Red,BorderSizePixel=0},bar)
    corner(fill,50); redGradient(fill)
    local function setFromX(x)
        local r=math.clamp((x-bar.AbsolutePosition.X)/math.max(bar.AbsoluteSize.X,1),0,1)
        local v=math.floor((minV+(maxV-minV)*r)/step+0.5)*step
        v=math.clamp(v,minV,maxV) S[key]=v
        fill.Size=UDim2.new(r,0,1,0) valLbl.Text=tostring(v) save()
        if callback then callback(v) end
        fire(key,v)
    end
    bar.InputBegan:Connect(function(i)
        if i.UserInputType==Enum.UserInputType.MouseButton1 or i.UserInputType==Enum.UserInputType.Touch then
            activeSlider=setFromX setFromX(i.Position.X) end end)
    return card
end
UIS.InputChanged:Connect(function(i)
    if activeSlider and (i.UserInputType==Enum.UserInputType.MouseMovement or i.UserInputType==Enum.UserInputType.Touch) then
        activeSlider(i.Position.X) end end)
UIS.InputEnded:Connect(function(i)
    if i.UserInputType==Enum.UserInputType.MouseButton1 or i.UserInputType==Enum.UserInputType.Touch then
        activeSlider=nil end end)
local function dropdown(page,text,key,options,callback)
    local card=new("Frame",{Size=UDim2.new(1,0,0,36),BackgroundColor3=C.Card,BorderSizePixel=0},page)
    corner(card,8); stroke(card,C.Border,1)
    label(card,text,UDim2.fromOffset(12,0),UDim2.new(0.5,-12,1,0),12,C.White)
    local btn=new("TextButton",{Position=UDim2.new(0.5,0,0.5,-11),Size=UDim2.new(0.5,-12,0,22),
        BackgroundColor3=C.Off,Text=tostring(S[key]),TextColor3=C.White,
        Font=Enum.Font.GothamBold,TextSize=11,AutoButtonColor=false,BorderSizePixel=0},card)
    corner(btn,6); stroke(btn,C.Border,1)
    local idx=table.find(options,S[key]) or 1
    btn.Activated:Connect(function()
        idx=idx%#options+1 S[key]=options[idx] btn.Text=tostring(S[key]) save()
        if callback then callback(S[key]) end
        fire(key,S[key])
    end)
    return card
end
local function button(parent,text,callback,size,pos,colorFn)
    local b=new("TextButton",{Size=size or UDim2.new(1,0,0,34),Position=pos or UDim2.new(),
        BackgroundColor3=colorFn and colorFn() or C.Red,Text=text,TextColor3=C.White,
        Font=Enum.Font.GothamBold,TextSize=12,AutoButtonColor=false,BorderSizePixel=0},parent)
    corner(b,8)
    if not colorFn then redGradient(b) end
    b.Activated:Connect(function() if callback then callback() end end)
    return b
end

local pAim=addTab("Aim")
section(pAim,"Silent Aim Settings")
toggle(pAim,"Silent Aim","SilentAim")
toggle(pAim,"Target Line","TargetLine")
dropdown(pAim,"Hit Part","SilentAimHitPart",{"Head","Neck","Chest"})
slider(pAim,"FOV Radius","SA_FOV",20,800,5)
slider(pAim,"Sticky Turn","StickyTurn",5,45,1)
slider(pAim,"Sticky Ratio","StickyRatio",0.2,0.9,0.05)
slider(pAim,"Sticky Min Pix","StickyMinPix",20,300,5)

local pEsp=addTab("ESP")
section(pEsp,"ESP Visuals")
toggle(pEsp,"ESP Box","ESP_Box")
toggle(pEsp,"ESP Lines","ESP_Lines")
toggle(pEsp,"ESP Highlight","ESP_Highlight")
toggle(pEsp,"ESP Names","ESP_Name")
toggle(pEsp,"ESP Health","ESP_Health")
toggle(pEsp,"ESP Distance","ESP_Dist")
toggle(pEsp,"ESP Weapons","ESP_Weapon")
toggle(pEsp,"ESP Items","ESP_Item")
section(pEsp,"ESP Calibration")
slider(pEsp,"ESP Range","ESP_MaxRange",100,1000000,100)
slider(pEsp,"ESP Size","ESP_Size",0.6,2,0.05)
slider(pEsp,"ESP Line Width","ESP_LineThickness",1,5,1)
slider(pEsp,"ESP Offset X","ESP_OffsetX",-50,50,1)
slider(pEsp,"ESP Offset Y","ESP_OffsetY",-50,50,1)

local pSys=addTab("System")
section(pSys,"Automation System")
toggle(pSys,"Skip Crates","SkipCrates")
toggle(pSys,"Auto Pickup","AutoPickup")
slider(pSys,"Pickup Radius","AutoPickupRadius",20,500,5)

local pFriends=addTab("Friends")
section(pFriends,"Safe Players Protection")
local btnRow=new("Frame",{Size=UDim2.new(1,0,0,30),BackgroundTransparency=1},pFriends)
local listFrame=new("Frame",{Size=UDim2.new(1,0,0,0),AutomaticSize=Enum.AutomaticSize.Y,BackgroundTransparency=1},pFriends)
new("UIListLayout",{Padding=UDim.new(0,4),SortOrder=Enum.SortOrder.LayoutOrder},listFrame)
local function refreshFriends()
    for _,c in ipairs(listFrame:GetChildren()) do if c:IsA("TextButton") then c:Destroy() end end
    for _,p in ipairs(Players:GetPlayers()) do
        if p~=LP then
            local safe=S.Friends[tostring(p.UserId)]==true
            local b=new("TextButton",{Size=UDim2.new(1,0,0,30),BackgroundColor3=C.Card,BorderSizePixel=0,
                Text=(safe and "SAFE: " or "TARGET: ")..p.DisplayName.." (@"..p.Name..")",
                TextColor3=safe and C.Green or C.White,Font=Enum.Font.Gotham,TextSize=12,
                TextXAlignment=Enum.TextXAlignment.Left,AutoButtonColor=false},listFrame)
            corner(b,8); stroke(b,C.Border,1)
            new("UIPadding",{PaddingLeft=UDim.new(0,10)},b)
            b.Activated:Connect(function()
                local id=tostring(p.UserId)
                if S.Friends[id] then S.Friends[id]=nil else S.Friends[id]=true end
                save() refreshFriends() fire("Friends",S.Friends)
            end)
        end
    end
end
button(btnRow,"Clear All",function() S.Friends={} save() refreshFriends() fire("Friends",S.Friends) end,
    UDim2.new(0.5,-3,1,0),UDim2.new())
button(btnRow,"Refresh List",refreshFriends,UDim2.new(0.5,-3,1,0),UDim2.new(0.5,3,0,0))
Players.PlayerAdded:Connect(refreshFriends)
Players.PlayerRemoving:Connect(function() task.defer(refreshFriends) end)
refreshFriends()

local pGun=addTab("Gun")
section(pGun,"Gun Mod")
toggle(pGun,"No Recoil","NoRecoil")
toggle(pGun,"Inf Accuracy","InfAccuracy")
toggle(pGun,"Inf Range","InfRange")
toggle(pGun,"Fast Fire Rate","FastFire")
toggle(pGun,"Fast Reload","FastReload")
toggle(pGun,"Automatic Mode","AutoMode")
-- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
-- ┃                                               ┃
-- ┃           O S A M A   D U M P E R             ┃
-- ┃                                               ┃
-- ┃      https://discord.gg/R6vnkNQNbP            ┃
-- ┃                                               ┃
-- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
local pCfg=addTab("Config")
section(pCfg,"Player")
toggle(pCfg,"Auto Finish","AutoFinish")
toggle(pCfg,"Auto Respawn","AutoRespawn")
toggle(pCfg,"Respawn To Item","RespawnToItem")
toggle(pCfg,"God Mode","GodMode")
toggle(pCfg,"Invisible (Car)","Invisible")
slider(pCfg,"Giro","Giro",-120,120,1)
section(pCfg,"Visual")
toggle(pCfg,"Optimize FPS","OptimizeFPS")
toggle(pCfg,"Purple Sky","PurpleSky")
section(pCfg,"Actions")
button(pCfg,"Save Config",function() save() end)
button(pCfg,"Reset To Defaults",function()
    for k,v in pairs(DEFAULTS) do S[k]=(type(v)=="table") and {} or v end
    save() gui:Destroy()
end)
button(pCfg,"Unload UI",function() gui:Destroy() end)

do
    local card=new("Frame",{Size=UDim2.new(1,0,0,48),BackgroundColor3=C.Card,BorderSizePixel=0},pCfg)
    corner(card,8); stroke(card,C.Border,1)
    label(card,"Panel Hue",UDim2.fromOffset(12,4),UDim2.new(1,-24,0,18),12,C.White)
    local bar=new("Frame",{Position=UDim2.fromOffset(12,27),Size=UDim2.new(1,-24,0,12),
        BackgroundColor3=C.White,BorderSizePixel=0},card)
    corner(bar,50)
    local stops={} for i=0,6,1 do table.insert(stops,ColorSequenceKeypoint.new(i/6,Color3.fromHSV((i/6)%1,0.85,0.95))) end
    new("UIGradient",{Color=ColorSequence.new(stops)},bar)
    local knob=new("Frame",{AnchorPoint=Vector2.new(0.5,0.5),
        Position=UDim2.fromScale(math.max(S.PanelHue or 0,0),0.5),
        Size=UDim2.fromOffset(10,18),BackgroundColor3=C.White,BorderSizePixel=0},bar)
    corner(knob,4)
    local function setPanelColor(hue)
        local col=Color3.fromHSV(math.clamp(hue,0,1),0.85,0.9)
        pcall(function()
            local s=main:FindFirstChildOfClass("UIStroke") if s then s.Color=col end
            for _,obj in ipairs({ov,bgImg}) do
                if obj then
                    local g=obj:FindFirstChildOfClass("UIGradient")
                    if g then g.Color=ColorSequence.new(col:Lerp(Color3.new(0,0,0),0.4),col) end
                end
            end
        end)
    end
    Hooks.PanelHue=setPanelColor
    if (S.PanelHue or -1)>=0 then setPanelColor(S.PanelHue) end
    local dragging=false
    local function setFromX(x)
        local r=math.clamp((x-bar.AbsolutePosition.X)/math.max(bar.AbsoluteSize.X,1),0,1)
        S.PanelHue=r knob.Position=UDim2.fromScale(r,0.5) setPanelColor(r)
    end
    bar.InputBegan:Connect(function(i) if i.UserInputType==Enum.UserInputType.MouseButton1 or i.UserInputType==Enum.UserInputType.Touch then
        dragging=true setFromX(i.Position.X) end end)
    UIS.InputChanged:Connect(function(i) if dragging and (i.UserInputType==Enum.UserInputType.MouseMovement or i.UserInputType==Enum.UserInputType.Touch) then
        setFromX(i.Position.X) end end)
    UIS.InputEnded:Connect(function(i) if i.UserInputType==Enum.UserInputType.MouseButton1 or i.UserInputType==Enum.UserInputType.Touch then
        dragging=false save() end end)
end

local pExtra=addTab("Extras")
section(pExtra,"Interface")
toggle(pExtra,"FPS / Ping Counter","ShowFPS")
slider(pExtra,"UI Size","UIScale",0.6,1.2,0.05)
section(pExtra,"Keys")
local keyCard=new("Frame",{Size=UDim2.new(1,0,0,34),BackgroundColor3=C.Card,BorderSizePixel=0},pExtra)
corner(keyCard,8); stroke(keyCard,C.Border,1)
label(keyCard,"RightShift  =  Show / Hide window",UDim2.fromOffset(12,0),UDim2.new(1,-24,1,0),12,C.Gray)

local uiScale=new("UIScale",{Scale=S.UIScale},main)
Hooks.UIScale=function(v) uiScale.Scale=v end
UIS.InputBegan:Connect(function(i,gpe) if gpe then return end
    if i.KeyCode==Enum.KeyCode.RightShift then setVisible(not main.Visible) end end)

local a0,a1,a2,a4,a6,a7 = Players,game:GetService("ReplicatedStorage"),RunService,HttpService,LP,PlayerGui
local a10=S
local a12,a13,a14,a15,a16,a17 = Color3.fromRGB(0,255,0),Color3.fromRGB(255,0,0),
    Color3.fromRGB(0,255,40),Color3.fromRGB(255,200,40),Color3.fromRGB(255,50,50),Color3.fromRGB(20,20,20)
local a18={Common=Color3.fromRGB(255,255,255),Uncommon=Color3.fromRGB(99,255,52),
    Rare=Color3.fromRGB(51,170,255),Epic=Color3.fromRGB(237,44,255),
    Legendary=Color3.fromRGB(255,150,0),Omega=Color3.fromRGB(255,20,51)}

local function a20(player) return player~=nil and a10.Friends[tostring(player.UserId)]==true end

local a21={}
local function a22()
    local active={}
    for _,plr in ipairs(a0:GetPlayers()) do
        local char=a10.Friends[tostring(plr.UserId)] and plr.Character
        if char then
            active[char]=true
            local head=char:FindFirstChild("Head")
            if head then
                local hl=char:FindFirstChild("CHINO_SafeFriendHighlight")
                if not hl then hl=Instance.new("Highlight") hl.Name="CHINO_SafeFriendHighlight" hl.Parent=char end
                hl.Adornee=char hl.DepthMode=Enum.HighlightDepthMode.AlwaysOnTop
                hl.FillColor=Color3.fromRGB(46,245,109) hl.FillTransparency=0.59
                hl.OutlineColor=Color3.fromRGB(132,255,151) hl.OutlineTransparency=0
                hl.Enabled=true
                local tag=head:FindFirstChild("CHINO_SafeFriendTag")
                if not tag then
                    tag=Instance.new("BillboardGui") tag.Name="CHINO_SafeFriendTag"
                    tag.Size=UDim2.fromOffset(112,19) tag.StudsOffsetWorldSpace=Vector3.new(0,1.65,0)
                    tag.AlwaysOnTop=true tag.MaxDistance=1400 tag.Parent=head
                    local lbl=Instance.new("TextLabel")
                    lbl.Name="Label" lbl.Size=UDim2.fromScale(1,1)
                    lbl.BackgroundColor3=Color3.fromRGB(13,32,24) lbl.BackgroundTransparency=0.19
                    lbl.BorderSizePixel=0 lbl.Text="MY TEAM"
                    lbl.Font=Enum.Font.GothamBold lbl.TextSize=10
                    lbl.TextColor3=Color3.fromRGB(163,255,187) lbl.TextStrokeTransparency=0.76
                    lbl.Parent=tag
                    Instance.new("UICorner",lbl).CornerRadius=UDim.new(0,6)
                    local s=Instance.new("UIStroke",lbl)
                    s.Color=Color3.fromRGB(75,235,118) s.Thickness=0.8 s.Transparency=0.26
                end
                tag.Adornee=head tag.Enabled=true
            end
        end
    end
    for char in pairs(a21) do
        if not active[char] and char and char.Parent then
            local hl=char:FindFirstChild("CHINO_SafeFriendHighlight") if hl then hl:Destroy() end
            local head=char:FindFirstChild("Head")
            if head then
                local tag=head:FindFirstChild("CHINO_SafeFriendTag") if tag then tag:Destroy() end
            end
        end
    end
    a21=active
end
task.spawn(function() while a7 and a7.Parent do pcall(a22) task.wait(0.55) end end)

local a23=a1:WaitForChild("Remotes",10)
local a24,a25,a26
if a23 then
    a24=a23:FindFirstChild("Send") or a23:FindFirstChild("FireServer")
    a25=a23:FindFirstChild("Get")
end
pcall(function()
    if getgc then
        for _,obj in ipairs(getgc(true)) do
            if typeof(obj)=="table" then
                local ev,fn=rawget(obj,"event"),rawget(obj,"func")
                if ev and fn then a26=obj break end
            end
        end
    end
end)
local function findNet()
    local ok,mod=pcall(function() return require(a1.Modules.Core.Net) end)
    if ok and type(mod)=="table" then return mod end return nil
end
local function a27(...)
    if not a26 or not a26.func or not a25 then return end
    local args={...} a26.func=a26.func+1
    return (pcall(function() return a25:InvokeServer(a26.func,unpack(args)) end))
end
local function a28(...)
    if not a24 then return false end
    local args={...}
    if a26 and type(a26.event)=="number" then
        a26.event=a26.event+1
        return pcall(function() a24:FireServer(a26.event,unpack(args)) end)
    end
    return pcall(function() a24:FireServer(unpack(args)) end)
end

local a31=a10.AutoPickupRadius or 85
local a32=a10.AutoPickup==true
local a33={}
local a34=workspace:WaitForChild("DroppedItems",10)
local a35=(function()
    local genv=_G
    if type(getgenv)=="function" then local ok,g=pcall(getgenv) if ok and type(g)=="table" then genv=g end end
    if genv.CHINO_AutoSkipCrate and type(genv.CHINO_AutoSkipCrate.Destroy)=="function" then pcall(genv.CHINO_AutoSkipCrate.Destroy) end
    local sys={Enabled=false,Running=true}
    local function findModule(...)
        local node=a1
        for _,name in ipairs({...}) do node=node:FindFirstChild(name) if not node then return nil end end
        if not node:IsA("ModuleScript") then return nil end
        local ok,mod=pcall(require,node)
        if ok and type(mod)=="table" then return mod end
    end
    local function stopCrateAnims()
        local char=a6.Character if not char then return end
        local hum=char:FindFirstChildOfClass("Humanoid")
        local anim=hum and hum:FindFirstChildOfClass("Animator") if not anim then return end
        for _,track in ipairs(anim:GetPlayingAnimationTracks()) do
            local n=tostring(track.Name):lower()
            if n:find("crate",1,true) or n:find("use",1,true) then pcall(function() track:Stop(0) end) end
        end
    end
    sys.CrateController=findModule("Modules","Game","CrateSystem","Crate")
    sys.UtilModule=findModule("Modules","Core","Util")
    if sys.UtilModule and type(sys.UtilModule.tween)=="function" then
        sys.OriginalTween=sys.UtilModule.tween
        sys.WrappedTween=function(target,info,props,...)
            if sys.Enabled and target and target:IsA("NumberValue") and typeof(info)=="TweenInfo" and type(props)=="table" and props.Value==1 and info.Time>0 then
                info=TweenInfo.new(0,info.EasingStyle,info.EasingDirection)
            end
            return sys.OriginalTween(target,info,props,...)
        end
        sys.UtilModule.tween=sys.WrappedTween
    end
    sys.StepConnection=a2.Stepped:Connect(function() if sys.Running and sys.Enabled then pcall(stopCrateAnims) end end)
    task.spawn(function()
        while sys.Running do
            task.wait(0.1)
            if sys.Enabled and sys.CrateController then
                pcall(function()
                    local cc=sys.CrateController
                    local objs=cc.class and cc.class.objects
                    if type(objs)=="table" then
                        for _,o in pairs(objs) do
                            local open=o.states and o.states.open
                            if open and type(open.set)=="function" then open.set(true) end
                        end
                    end
                    local skip=cc.skipping
                    if skip and type(skip.set)=="function" then skip.set(true) end
                end)
            end
        end
    end)
    function sys:SetEnabled(v) if not self.Running then return false end self.Enabled=v==true return self.Enabled end
    function sys:IsEnabled() return self.Enabled end
    function sys:Destroy()
        self.Enabled=false self.Running=false
        if self.StepConnection then self.StepConnection:Disconnect() self.StepConnection=nil end
        if self.UtilModule and self.UtilModule.tween==self.WrappedTween then self.UtilModule.tween=self.OriginalTween end
        if genv.CHINO_AutoSkipCrate==self then genv.CHINO_AutoSkipCrate=nil end
    end
    genv.CHINO_AutoSkipCrate=sys
    return sys
end)()
a35:SetEnabled(a10.SkipCrates==true)

local function autoPickupTick()
    local char=a6.Character local hrp=char and char:FindFirstChild("HumanoidRootPart")
    if not a34 or not hrp then return end
    local now=tick() local batch={}
    for _,item in ipairs(a34:GetChildren()) do
        if item:IsA("Model") then
            local part=item:FindFirstChildWhichIsA("BasePart") or item:FindFirstChild("PickUpZone")
            if part and (hrp.Position-part.Position).Magnitude<=a31 and now-(a33[item] or 0)>=0.25 then
                table.insert(batch,item) a33[item]=now
                if #batch>=6 then break end
            end
        end
    end
    for _,it in ipairs(batch) do task.spawn(function() a27("pickup_dropped_item",it) end) end
end
task.spawn(function() while a7 and a7.Parent do task.wait(0.25) if a32 then pcall(autoPickupTick) end end end)

local T={Locked=nil,LockForward=nil,CacheAt=0,CacheValue=nil}
local TTURN,TMINPIX,TRATIO,THARD,TTTL,TSCORE=16,100,0.5,3.2,0.055,30
local function hasLOS(char,part)
    local cam=workspace.CurrentCamera if not cam or not char or not part then return false end
    local origin=cam.CFrame.Position local delta=part.Position-origin
    if delta.Magnitude<=0.001 then return true end
    local params=RaycastParams.new()
    params.FilterType=Enum.RaycastFilterType.Exclude
    params.IgnoreWater=true
    params.FilterDescendantsInstances={a6.Character}
    local hit=workspace:Raycast(origin,delta,params)
    if not hit then return true end
    return hit.Instance:IsDescendantOf(char)
end
local function ammoCount(player)
    local n=0 local char=player and player.Character
    if char then
        for _,t in ipairs(char:GetChildren()) do
            if t:IsA("Tool") and t.Name~="Fists" and t:GetAttribute("AmmoType")~=nil then n=n+1 break end
        end
    end
    return n
end
local function computeTarget(fov)
    local cam=workspace.CurrentCamera
    if not cam then T.Locked,T.CacheValue=nil,nil return nil end
    local now=os.clock()
    if now-(T.CacheAt or 0)<TTTL then return T.CacheValue end
    T.CacheAt=now
    local maxFov=math.max(35,tonumber(fov) or 120)
    local vp=cam.ViewportSize/2
    local center=Vector2.new(vp.X,vp.Y)
    local myChar=a6.Character local myRoot=myChar and myChar:FindFirstChild("HumanoidRootPart")
    local myPos=myRoot and myRoot.Position or cam.CFrame.Position
    local look=cam.CFrame.LookVector
    local function scoreFor(player)
        if not player or player==a6 or a20(player) or not player.Character then return nil end
        local char=player.Character
        local hum=char:FindFirstChildOfClass("Humanoid")
        local root=char:FindFirstChild("HumanoidRootPart")
        local head=char:FindFirstChild("Head")
        local chest=char:FindFirstChild("UpperTorso")
        local aimPart=head or chest or root
        if not hum or hum.Health<=0 or not root or not aimPart then return nil end
        local sp,onScreen=cam:WorldToViewportPoint(aimPart.Position)
        if not onScreen or sp.Z<=0 then return nil end
        local distPx=(Vector2.new(sp.X,sp.Y)-center).Magnitude
        local dist3D=(root.Position-myPos).Magnitude
        local los=hasLOS(char,aimPart)
        local ammo=ammoCount(player)
        local score=distPx+math.min(dist3D,300)*0.26
        if dist3D>120 then score=score+(dist3D-120)*0.16 end
        if los then score=score-8 end
        return {Player=player,Screen=distPx,Score=score-ammo,Distance=dist3D}
    end
    local sticky=scoreFor(T.Locked)
    if sticky and sticky.Screen>maxFov*THARD then sticky=nil end
    local best
    for _,p in ipairs(a0:GetPlayers()) do
        if p~=a6 then
            local e=scoreFor(p)
            if e and e.Screen<=maxFov then if not best or e.Score<best.Score then best=e end end
        end
    end
    local chosen=sticky and T.Locked or nil
    if not sticky then chosen=best and best.Player or nil
    elseif best and best.Player~=T.Locked then
        local forward=T.LockForward or look
        local angle=math.deg(math.acos(math.clamp(forward:Dot(look),-1,1)))
        local turned=angle>=TTURN and sticky.Screen>=TMINPIX
        local better=best.Screen<=sticky.Screen*TRATIO and best.Score<=sticky.Score-TSCORE
        if turned and better then chosen=best.Player end
    end
    if chosen~=T.Locked then T.LockForward=chosen and look or nil T.Locked=chosen end
    T.CacheValue=chosen return chosen
end
local function resolveHitPart(char,partName)
    if not char then return nil,Vector3.zero end
    local head=char:FindFirstChild("Head")
    local upper=char:FindFirstChild("UpperTorso")
    local torso=upper or char:FindFirstChild("Torso")
    if partName=="Head" then return head or torso,Vector3.zero
    elseif partName=="Neck" then
        if torso then return torso,Vector3.new(0,torso.Size.Y*0.08,0) end
        if head then return head,Vector3.new(0,-(head.Size.Y*1.15),0) end
        return nil,Vector3.zero
    elseif partName=="Chest" then
        if torso then return torso,Vector3.new(0,-(torso.Size.Y*0.3),0) end
        if head then return head,Vector3.new(0,-(head.Size.Y*1.65),0) end
        return nil,Vector3.zero
    end
    return head or torso,Vector3.zero
end

local a48=Instance.new("ScreenGui")
a48.Name="RXZ_SimpleSA" a48.ResetOnSpawn=false a48.IgnoreGuiInset=true
a48.DisplayOrder=200 a48.ZIndexBehavior=Enum.ZIndexBehavior.Sibling
a48.Parent=guiParent()
local a49=3
local a50=new("Frame",{Name="TargetLine",AnchorPoint=Vector2.new(0.5,0.5),BackgroundColor3=a13,
    BackgroundTransparency=0,BorderSizePixel=0,Size=UDim2.fromOffset(0,a49),Visible=false,ZIndex=20},a48)
corner(a50,1)
local a51=new("Frame",{Name="TargetOctagon",Size=UDim2.fromOffset(12,12),
    AnchorPoint=Vector2.new(0.5,0.5),BackgroundTransparency=1,Visible=false,ZIndex=30},a48)
local a52={} local a53=0
local function addOct(size,px,py,rot,dx,dy)
    local f=new("Frame",{AnchorPoint=Vector2.new(0.5,0.5),BackgroundColor3=a13,BorderSizePixel=0,
        Size=size,Position=UDim2.fromOffset(px,py),Rotation=rot or 0,ZIndex=30},a51)
    table.insert(a52,{Frame=f,BasePosition=Vector2.new(px,py),Dir=Vector2.new(dx,dy)})
end
addOct(UDim2.fromOffset(5,1),6,1,0,0,-1)
addOct(UDim2.fromOffset(5,1),6,11,0,0,1)
addOct(UDim2.fromOffset(1,5),1,6,0,-1,0)
addOct(UDim2.fromOffset(1,5),11,6,0,1,0)
addOct(UDim2.fromOffset(3,1),2.5,2.5,45,-0.707,-0.707)
addOct(UDim2.fromOffset(3,1),9.5,2.5,-45,0.707,-0.707)
addOct(UDim2.fromOffset(3,1),2.5,9.5,-45,-0.707,0.707)
addOct(UDim2.fromOffset(3,1),9.5,9.5,45,0.707,0.707)
local a55=new("BillboardGui",{Name="CHINO_TargetArrow3D",Size=UDim2.fromOffset(38,38),
    StudsOffset=Vector3.new(0,3.2,0),AlwaysOnTop=true,LightInfluence=0,
    MaxDistance=1000000,Enabled=false},a7)
local a56=new("TextLabel",{BackgroundTransparency=1,Size=UDim2.fromScale(1,1),
    Font=Enum.Font.GothamBlack,Text="▼",TextColor3=a13,TextSize=28,TextStrokeTransparency=1},a55)
local function hideTL()
    a50.Visible=false a51.Visible=false a55.Enabled=false a55.Adornee=nil
    a55.StudsOffset=Vector3.new(0,3.2,0)
    for _,e in ipairs(a52) do if e.Frame then e.Frame.Position=UDim2.fromOffset(e.BasePosition.X,e.BasePosition.Y) end end
end
-- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
-- ┃                                               ┃
-- ┃           O S A M A   D U M P E R             ┃
-- ┃                                               ┃
-- ┃      https://discord.gg/R6vnkNQNbP            ┃
-- ┃                                               ┃
-- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
local function paintTL(losOk)
    local col=losOk and a12 or a13
    a50.BackgroundColor3=Color3.fromRGB(0,0,0) a56.TextColor3=col
    for _,e in ipairs(a52) do if e.Frame then e.Frame.BackgroundColor3=col end end
end
local function tickTL(dt)
    a53=(a53 or 0)+(dt or 0) if a53>10000 then a53=0 end
    local pulse=0.18+(math.sin(a53*8.5)+1)*0.5*1.12
    for _,e in ipairs(a52) do
        if e.Frame then e.Frame.Position=UDim2.fromOffset(e.BasePosition.X+e.Dir.X*pulse,e.BasePosition.Y+e.Dir.Y*pulse) end
    end
    a55.StudsOffset=Vector3.new(0,3.15+math.sin(a53*6.5)*0.26,0)
end
local function bboxOf(char)
    local cam=workspace.CurrentCamera if not cam or not char then return nil end
    local root=char:FindFirstChild("HumanoidRootPart") or char:FindFirstChild("UpperTorso") or char:FindFirstChild("Torso")
    local ok,cf,size=pcall(function() return char:GetBoundingBox() end)
    if not (ok and cf and size) then return nil end
    local anchor=root and (cf.Position-root.Position).Magnitude or 0
    if size.X>12 or size.Y>14 or size.Z>12 or anchor>7 then return nil end
    local hx,hy,hz=size.X*0.5,size.Y*0.5,size.Z*0.5
    local minX,minY,maxX,maxY,hits=math.huge,math.huge,-math.huge,-math.huge,0
    for _,sx in ipairs({-1,1}) do for _,sy in ipairs({-1,1}) do for _,sz in ipairs({-1,1}) do
        local sp=cam:WorldToViewportPoint(cf:PointToWorldSpace(Vector3.new(hx*sx,hy*sy,hz*sz)))
        if sp.Z>0 then
            hits=hits+1
            minX,maxX=math.min(minX,sp.X),math.max(maxX,sp.X)
            minY,maxY=math.min(minY,sp.Y),math.max(maxY,sp.Y)
        end
    end end end
    if hits==0 then return nil end
    return {Left=minX,Right=maxX,Top=minY,Bottom=maxY,
        Width=math.max(8,maxX-minX),Height=math.max(12,maxY-minY),
        Center=Vector2.new((minX+maxX)*0.5,(minY+maxY)*0.5)}
end

local a61={}
a2.Heartbeat:Connect(function()
    for _,p in ipairs(a0:GetPlayers()) do
        if p~=a6 and p.Character then
            local hrp=p.Character:FindFirstChild("HumanoidRootPart")
            local hum=p.Character:FindFirstChildOfClass("Humanoid")
            if hrp and hum and hum.Health>0 then
                local buf=a61[p] or {}
                table.insert(buf,{t=os.clock(),pos=hrp.Position})
                if #buf>6 then table.remove(buf,1) end
                a61[p]=buf
            else a61[p]=nil end
        end
    end
end)
a0.PlayerRemoving:Connect(function(p) a61[p]=nil if T.Locked==p then T.Locked=nil end end)
local function currentPing()
    local pg=a6:FindFirstChild("PlayerGui")
    local ns=pg and pg:FindFirstChild("NetworkStats")
    local pl=ns and ns:FindFirstChild("PingLabel")
    if not pl then return 0.2 end
    local n=tonumber(tostring(pl.Text):match("%d+")) or 200
    return math.clamp(n/1000,0.04,1.2)
end
local function predictPos(part,offset)
    if not part then return Vector3.zero end
    offset=offset or Vector3.zero
    local base=part.Position+offset
    local parent=part.Parent
    local player=parent and a0:GetPlayerFromCharacter(parent)
    if not player then return base end
    local buf=a61[player] if not buf or #buf<2 then return base end
    local vel,n=Vector3.new(),0
    for i=2,#buf do local dt=buf[i].t-buf[i-1].t if dt>0 then vel=vel+(buf[i].pos-buf[i-1].pos)/dt n=n+1 end end
    if n==0 then return base end
    return base+(vel/n)*currentPing()*1.2
end
local a64
a2.RenderStepped:Connect(function()
    if a10.SilentAim or a10.TargetLine then a64=computeTarget(a10.SA_FOV) else a64=nil end
end)
local function rewriteShot(args)
    if type(args)~="table" or not a10.SilentAim or args[2]~="shoot_gun" then return args end
    local target=a64 if not target or not target.Character then return args end
    local aimPart,offset=resolveHitPart(target.Character,a10.SilentAimHitPart or "Head")
    if not aimPart then return args end
    local aimPos=predictPos(aimPart,offset)
    local myChar=a6.Character local myHead=myChar and myChar:FindFirstChild("Head")
    if not myHead then return args end
    if args[4]~=nil then
        args[4]=CFrame.new(myHead.Position,aimPos)
        args[5]={{Instance=aimPart,Normal=Vector3.new(0,1,0),Position=aimPos}}
    end
    return args
end
if a24 and type(hookfunction)=="function" then
    pcall(function()
        local orig=a24.FireServer
        hookfunction(orig,function(self,...)
            if self~=a24 then return orig(self,...) end
            local args={...}
            if a10.SilentAim and args[2]=="shoot_gun" then args=rewriteShot(args) end
            return orig(self,unpack(args))
        end)
    end)
end

local itemsRoot=a1:FindFirstChild("Items")
local itemDB={}
local function itemSig(tool)
    if not tool or not tool:IsA("Tool") then return nil end
    local handle=tool:FindFirstChild("Handle")
    local display=tool:GetAttribute("DisplayName") or tool.Name
    local itemId=tool:GetAttribute("ItemId") or tool:GetAttribute("Id") or tool.Name
    local rarity=tool:GetAttribute("RarityName") or "Common"
    local image=tool:GetAttribute("ImageId") or ""
    local sig
    if handle then
        local sm=handle:FindFirstChildOfClass("SpecialMesh")
        if sm and sm.MeshId~="" then sig=sm.MeshId..(sm.TextureId or "").."_RARITY_"..rarity
        elseif handle:IsA("MeshPart") and handle.MeshId~="" then sig=handle.MeshId..(handle.TextureID or "").."_RARITY_"..rarity end
    end
    if not sig and itemId~="" and itemId~=tool.Name then sig="ITEMID_"..itemId.."_RARITY_"..rarity end
    sig=sig or ("NAME_"..display.."_"..tool.Name.."_RARITY_"..rarity)
    return sig,{Name=display,Rarity=rarity,ImageId=image,ToolName=tool.Name}
end
if itemsRoot then
    for _,folderName in ipairs({"gun","melee","throwable","consumable","farming","misc","rod","fish"}) do
        local folder=itemsRoot:FindFirstChild(folderName)
        if folder then
            for _,tool in ipairs(folder:GetChildren()) do
                if tool:IsA("Tool") then local sig,info=itemSig(tool) if sig then itemDB[sig]=info end end
            end
        end
    end
end
local function lookupItem(tool)
    if not tool or not tool:IsA("Tool") then return nil end
    local sig=itemSig(tool) return sig and itemDB[sig] or nil
end

local a70=Instance.new("ScreenGui")
a70.Name="RXZ_ESP" a70.ResetOnSpawn=false a70.IgnoreGuiInset=true
a70.DisplayOrder=60 a70.ZIndexBehavior=Enum.ZIndexBehavior.Sibling
a70.Parent=guiParent()
local esp,hlCache,nameCache,distCache,weaponCache,weaponHash={},{},{},{},{},{}
local KNOWN={Head=true,HumanoidRootPart=true,Torso=true,UpperTorso=true,LowerTorso=true,
    ["Left Arm"]=true,["Right Arm"]=true,["Left Leg"]=true,["Right Leg"]=true,
    LeftUpperArm=true,LeftLowerArm=true,LeftHand=true,
    RightUpperArm=true,RightLowerArm=true,RightHand=true,
    LeftUpperLeg=true,LeftLowerLeg=true,LeftFoot=true,
    RightUpperLeg=true,RightLowerLeg=true,RightFoot=true}
local function partCornersBox(char)
    local cam=workspace.CurrentCamera if not cam or not char then return nil end
    local root=char:FindFirstChild("HumanoidRootPart") or char:FindFirstChild("UpperTorso") or char:FindFirstChild("Torso")
    local minX,minY,maxX,maxY,hits=math.huge,math.huge,-math.huge,-math.huge,0
    for _,p in ipairs(char:GetChildren()) do
        if p:IsA("BasePart") and KNOWN[p.Name] then
            if not root or (p.Position-root.Position).Magnitude<=8 then
                local s=Vector3.new(math.min(p.Size.X,4.5),math.min(p.Size.Y,4.5),math.min(p.Size.Z,4.5))
                local hx,hy,hz=s.X*0.5,s.Y*0.5,s.Z*0.5
                for _,sx in ipairs({-1,1}) do for _,sy in ipairs({-1,1}) do for _,sz in ipairs({-1,1}) do
                    local sp=cam:WorldToViewportPoint(p.CFrame:PointToWorldSpace(Vector3.new(hx*sx,hy*sy,hz*sz)))
                    if sp.Z>0 then
                        hits=hits+1
                        minX,maxX=math.min(minX,sp.X),math.max(maxX,sp.X)
                        minY,maxY=math.min(minY,sp.Y),math.max(maxY,sp.Y)
                    end
                end end end
            end
        end
    end
    if hits==0 then if root then return bboxOf(char) end return nil end
    return {Left=minX,Right=maxX,Top=minY,Bottom=maxY,
        Width=math.max(8,maxX-minX),Height=math.max(12,maxY-minY),
        Center=Vector2.new((minX+maxX)*0.5,(minY+maxY)*0.5)}
end
local function ensureESP(player)
    if player==a6 then return nil end
    local existing=esp[player] and esp[player].Root
    if existing and existing.Parent then return esp[player] end
    if existing then pcall(function() existing:Destroy() end) end
    local root=new("Frame",{Size=UDim2.fromScale(1,1),BackgroundTransparency=1,BorderSizePixel=0,ZIndex=25},a70)
    local box=new("Frame",{BackgroundTransparency=1,BorderSizePixel=0,Visible=false,ZIndex=25},root)
    local boxStroke=new("UIStroke",{Thickness=1,Transparency=0,Color=a13,ApplyStrokeMode=Enum.ApplyStrokeMode.Border},box)
    local tracer=new("Frame",{AnchorPoint=Vector2.new(0.5,0.5),BackgroundColor3=a13,BorderSizePixel=0,Visible=false,ZIndex=24},root)
    corner(tracer,1)
    local hpOutline=new("Frame",{BackgroundColor3=a17,BackgroundTransparency=0.15,BorderSizePixel=0,Visible=false,ZIndex=26},root)
    corner(hpOutline,2)
    local hpBar=new("Frame",{Size=UDim2.fromScale(1,1),BackgroundColor3=a14,BorderSizePixel=0,ZIndex=27},hpOutline)
    corner(hpBar,2)
    local hpText=new("TextLabel",{Size=UDim2.fromScale(1,1),BackgroundTransparency=1,Font=Enum.Font.GothamBold,
        TextSize=8,TextColor3=Color3.new(1,1,1),TextStrokeTransparency=0,TextStrokeColor3=Color3.new(0,0,0),Text="100/100",ZIndex=28},hpOutline)
    esp[player]={Root=root,Box=box,BoxStroke=boxStroke,Tracer=tracer,HealthOutline=hpOutline,HealthBar=hpBar,HealthText=hpText}
    return esp[player]
end
local function hideESP(entry)
    if not entry then return end
    for _,k in ipairs({"Box","Tracer","HealthOutline","HealthBar","HealthText"}) do
        if entry[k] then entry[k].Visible=false end
    end
end
local function destroyESP(player)
    local e=esp[player] if e and e.Root then pcall(function() e.Root:Destroy() end) end
    esp[player]=nil
    for _,cache in ipairs({hlCache,nameCache,distCache,weaponCache}) do
        if cache[player] then pcall(function() cache[player]:Destroy() end) cache[player]=nil end
    end
    weaponHash[player]=nil
end
for _,p in ipairs(a0:GetPlayers()) do ensureESP(p) end
a0.PlayerAdded:Connect(ensureESP)
a0.PlayerRemoving:Connect(destroyESP)

local function scanWeapons(char)
    local icons,bits={},{}
    local function takeFrom(container)
        if not container then return end
        for _,t in ipairs(container:GetChildren()) do
            if t:IsA("Tool") and t.Name~="Fists" then
                local info=lookupItem(t)
                if t:GetAttribute("AmmoType")~=nil or (info and info.Name) then
                    local icon=info and info.ImageId or ""
                    if type(icon)=="string" and icon~="" then
                        if icon:match("^%d+$") then icon="rbxassetid://"..icon end
                        local r=info and info.Rarity or "Common"
                        table.insert(icons,{Icon=icon,Rarity=r})
                        table.insert(bits,icon..":"..r)
                    end
                end
            end
        end
    end
    takeFrom(char) takeFrom(char:FindFirstChild("Backpack"))
    return icons,table.concat(bits,"|")
end
task.spawn(function()
    while a70 and a70.Parent do
        task.wait(0.12)
        if a10.ESP_Weapon then
            for _,p in ipairs(a0:GetPlayers()) do
                if p~=a6 and not a20(p) and p.Character then
                    local char=p.Character
                    local root=char:FindFirstChild("HumanoidRootPart") or char.PrimaryPart or char:FindFirstChildWhichIsA("BasePart")
                    if root then
                        local icons,hash=scanWeapons(char)
                        local bb=weaponCache[p]
                        if not bb or not bb.Parent or bb.Adornee~=root then
                            if bb then pcall(function() bb:Destroy() end) end
                            bb=Instance.new("BillboardGui",a7)
                            bb.Name="WeaponESP_"..p.Name bb.Adornee=root
                            bb.Size=UDim2.new(0,140,0,18) bb.StudsOffset=Vector3.new(0,8,0)
                            bb.AlwaysOnTop=true bb.MaxDistance=a10.ESP_MaxRange or 1000000
                            bb.LightInfluence=0 weaponCache[p]=bb weaponHash[p]=nil
                        end
                        if weaponHash[p]~=hash then
                            weaponHash[p]=hash bb:ClearAllChildren()
                            local layout=Instance.new("UIListLayout",bb)
                            layout.FillDirection=Enum.FillDirection.Horizontal
                            layout.HorizontalAlignment=Enum.HorizontalAlignment.Center
                            layout.Padding=UDim.new(0,4)
                            for i=1,math.min(#icons,8) do
                                local it=icons[i]
                                local img=Instance.new("ImageLabel",bb)
                                img.Size=UDim2.fromOffset(16,16) img.BackgroundTransparency=1
                                img.Image=it.Icon img.ScaleType=Enum.ScaleType.Fit
                                Instance.new("UICorner",img).CornerRadius=UDim.new(0,6)
                                local st=Instance.new("UIStroke",img)
                                st.Color=a18[it.Rarity] or Color3.fromRGB(255,255,255) st.Thickness=1.5
                            end
                        end
                        bb.Enabled=true
                    end
                end
            end
        else
            for _,bb in pairs(weaponCache) do if bb then bb.Enabled=false end end
        end
    end
end)

a2.RenderStepped:Connect(function(dt)
    local cam=workspace.CurrentCamera
    if not cam then for _,e in pairs(esp) do hideESP(e) end hideTL() return end
    local vp=cam.ViewportSize
    local sb=Vector2.new(vp.X/2,vp.Y-2)
    local myChar=a6.Character
    local myRoot=myChar and myChar:FindFirstChild("HumanoidRootPart")
    for player,entry in pairs(esp) do
        local char=player.Character
        local hum=char and char:FindFirstChildOfClass("Humanoid")
        local anchor=char and (char:FindFirstChild("HumanoidRootPart") or char.PrimaryPart)
        if not char or not hum or hum.Health<=0 or not anchor then
            hideESP(entry)
            if hlCache[player] then hlCache[player].Enabled=false end
            if nameCache[player] then nameCache[player].Enabled=false end
            if distCache[player] then distCache[player].Enabled=false end
        else
            local bb=bboxOf(char) or partCornersBox(char)
            if not bb then hideESP(entry)
            else
                local torso=char:FindFirstChild("UpperTorso") or char:FindFirstChild("Torso") or anchor
                local los=hasLOS(char,torso)
                local color=los and a12 or a13
                local isFriend=a20(player)
                local ox,oy=a10.ESP_OffsetX or 0,a10.ESP_OffsetY or 0
                if a10.ESP_Box and not isFriend then
                    entry.Box.Position=UDim2.fromOffset(bb.Center.X-bb.Width/2+ox,bb.Top+oy)
                    entry.Box.Size=UDim2.fromOffset(bb.Width,bb.Height)
                    entry.BoxStroke.Color=color
                    entry.Box.Visible=true
                else entry.Box.Visible=false end
                if a10.ESP_Lines and not isFriend then
                    local cx,cy=bb.Center.X+ox,bb.Center.Y+oy
                    local dx,dy=cx-sb.X,cy-sb.Y
                    local len=math.sqrt(dx*dx+dy*dy)
                    entry.Tracer.Position=UDim2.fromOffset((sb.X+cx)/2,(sb.Y+cy)/2)
                    entry.Tracer.Size=UDim2.fromOffset(len,a10.ESP_LineThickness or 1)
                    entry.Tracer.Rotation=math.deg(math.atan2(dy,dx))
                    entry.Tracer.BackgroundColor3=color
                    entry.Tracer.Visible=true
                else entry.Tracer.Visible=false end
                if a10.ESP_Health and not isFriend then
                    local frac=math.clamp(hum.Health/math.max(hum.MaxHealth,1),0,1)
                    local w=66
                    entry.HealthOutline.Position=UDim2.fromOffset(bb.Center.X-w/2+ox,bb.Bottom+3+oy)
                    entry.HealthOutline.Size=UDim2.fromOffset(w,8)
                    entry.HealthOutline.Visible=true
                    entry.HealthBar.Size=UDim2.fromScale(frac,1)
                    entry.HealthBar.BackgroundColor3=(frac>0.6 and a14) or (frac>0.3 and a15) or a16
                    entry.HealthBar.Visible=true
                    entry.HealthText.Text=string.format("%d/%d",math.floor(hum.Health+0.5),math.floor(hum.MaxHealth+0.5))
                    entry.HealthText.Visible=true
                else
                    entry.HealthOutline.Visible=false entry.HealthBar.Visible=false entry.HealthText.Visible=false
                end
                if a10.ESP_Highlight and not isFriend then
                    local hl=hlCache[player]
                    if not hl or not hl.Parent or hl.Adornee~=char then
                        if hl then hl:Destroy() end
                        hl=Instance.new("Highlight") hl.Adornee=char
                        hl.FillColor=Color3.fromRGB(135,150,255) hl.FillTransparency=0.5
                        hl.OutlineColor=Color3.fromRGB(200,210,255) hl.OutlineTransparency=0.3
                        hl.DepthMode=Enum.HighlightDepthMode.AlwaysOnTop hl.Parent=char
                        hlCache[player]=hl
                    end
                    hl.Enabled=true
                elseif hlCache[player] then hlCache[player].Enabled=false end
                if a10.ESP_Name then
                    local nbb=nameCache[player]
                    if not nbb or not nbb.Parent or nbb.Adornee~=anchor then
                        if nbb then nbb:Destroy() end
                        nbb=Instance.new("BillboardGui") nbb.Adornee=anchor
                        nbb.Size=UDim2.new(0,140,0,16) nbb.StudsOffset=Vector3.new(0,2.6,0)
                        nbb.AlwaysOnTop=true nbb.MaxDistance=a10.ESP_MaxRange nbb.Parent=a7
                        local lbl=Instance.new("TextLabel",nbb)
                        lbl.Name="Label" lbl.Size=UDim2.fromScale(1,1) lbl.BackgroundTransparency=1
                        lbl.TextColor3=Color3.new(1,1,1) lbl.TextStrokeTransparency=0.2
                        lbl.TextSize=11 lbl.Font=Enum.Font.GothamBold
                        nameCache[player]=nbb
                    end
                    nbb.Enabled=true nbb.MaxDistance=a10.ESP_MaxRange
                    local lbl=nbb:FindFirstChild("Label")
                    if lbl then
                        lbl.Text=(player.DisplayName~="" and player.DisplayName) or player.Name
                        lbl.TextColor3=isFriend and Color3.fromRGB(46,245,109) or Color3.new(1,1,1)
                    end
                elseif nameCache[player] then nameCache[player].Enabled=false end
                if a10.ESP_Dist then
                    local dbb=distCache[player]
                    if not dbb or not dbb.Parent or dbb.Adornee~=anchor then
                        if dbb then dbb:Destroy() end
                        dbb=Instance.new("BillboardGui") dbb.Adornee=anchor
                        dbb.Size=UDim2.new(0,100,0,14) dbb.StudsOffset=Vector3.new(0,2.15,0)
                        dbb.AlwaysOnTop=true dbb.MaxDistance=a10.ESP_MaxRange dbb.Parent=a7
                        local lbl=Instance.new("TextLabel",dbb)
                        lbl.Name="Label" lbl.Size=UDim2.fromScale(1,1) lbl.BackgroundTransparency=1
                        lbl.TextColor3=Color3.fromRGB(230,230,240) lbl.TextSize=9 lbl.Font=Enum.Font.Gotham
                        distCache[player]=dbb
                    end
                    dbb.Enabled=true dbb.MaxDistance=a10.ESP_MaxRange
                    local lbl=dbb:FindFirstChild("Label")
                    if lbl then
                        local d=myRoot and (anchor.Position-myRoot.Position).Magnitude or 0
                        lbl.Text=string.format("%.0f m",d*0.28)
                    end
                elseif distCache[player] then distCache[player].Enabled=false end
            end
        end
    end
    local tgt=a10.TargetLine and a64 or nil
    if a20(tgt) then tgt=nil end
    local draw=a48.Enabled and a10.TargetLine and tgt
    local tChar=draw and tgt.Character
    local myChar2=tChar and a6.Character
    if myChar2 then
        local myHead=myChar2:FindFirstChild("Head") or myChar2:FindFirstChild("HumanoidRootPart")
        local aimPart,offset=resolveHitPart(tChar,a10.SilentAimHitPart or "Head")
        if not aimPart then
            aimPart=tChar:FindFirstChild("UpperTorso") or tChar:FindFirstChild("Torso") or tChar:FindFirstChild("HumanoidRootPart") or tChar:FindFirstChild("Head")
            offset=Vector3.zero
        end
        if myHead and aimPart then
            local sp1,on1=cam:WorldToViewportPoint(myHead.Position)
            local sp2,on2=cam:WorldToViewportPoint(aimPart.Position+offset)
            local bb2=bboxOf(tChar)
            if on2 and sp2.Z>0 and bb2 then
                local origin=(on1 and sp1.Z>0) and Vector2.new(sp1.X+61,sp1.Y+10) or Vector2.new(cam.ViewportSize.X/2+61,cam.ViewportSize.Y/2+10)
                local dest=Vector2.new(bb2.Center.X+a10.ESP_OffsetX,bb2.Center.Y+a10.ESP_OffsetY)
                local delta=dest-origin
                local mag=delta.Magnitude
                if mag>0.001 then
                    a50.Position=UDim2.fromOffset((origin.X+dest.X)/2,(origin.Y+dest.Y)/2)
                    a50.Size=UDim2.fromOffset(mag,a49)
                    a50.Rotation=math.deg(math.atan2(delta.Y,delta.X))
                    a50.Visible=true
                else a50.Visible=false end
                a51.Position=UDim2.fromOffset(dest.X,dest.Y) a51.Visible=true
                local head=tChar:FindFirstChild("Head") or aimPart
                a55.Adornee=head a55.Enabled=a55.Adornee~=nil
                paintTL(hasLOS(tChar,aimPart)) tickTL(dt)
            else hideTL() end
        else hideTL() end
    else hideTL() end
end)

local fpsLabel=new("TextLabel",{Position=UDim2.new(0,10,0,10),Size=UDim2.fromOffset(150,22),
    BackgroundColor3=Color3.fromRGB(10,10,12),BackgroundTransparency=0.2,
    TextColor3=C.White,Font=Enum.Font.GothamBold,TextSize=12,
    Text="FPS --",Visible=S.ShowFPS,BorderSizePixel=0},gui)
corner(fpsLabel,8); stroke(fpsLabel,C.Border,1)
Hooks.ShowFPS=function(v) fpsLabel.Visible=v end
do
    local frames,last=0,os.clock()
    a2.RenderStepped:Connect(function()
        frames=frames+1
        local now=os.clock()
        if now-last>=1 then
            local ping=0
            pcall(function() ping=game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue() end)
            fpsLabel.Text=string.format("FPS %d  |  %d ms",frames,math.floor(ping+0.5))
            frames,last=0,now
        end
    end)
end

local Gun={}
Gun.Originals=setmetatable({},{__mode="k"})
local ATTRS={Recoil={"Recoil","recoil"},Accuracy={"accuracy","Accuracy"},
    Range={"range","Range"},Reload={"reload_time","ReloadTime"}}
local FLAGS={Recoil="NoRecoil",Accuracy="InfAccuracy",Range="InfRange",
    FireRate="FastFire",Reload="FastReload",Automatic="AutoMode"}
local function findGunAttr(tool,name)
    if name=="FireRate" then
        if tool:GetAttribute("fire_rate")~=nil then return "fire_rate" end
        for a in pairs(tool:GetAttributes()) do
            if type(a)=="string" and a:sub(-3)=="486" then return a end
        end
        return nil
    elseif name=="Automatic" then
        if tool:GetAttribute("automatic")~=nil then return "automatic" end
        for a in pairs(tool:GetAttributes()) do
            if type(a)=="string" and a:sub(-3)=="492" then return a end
        end
        return nil
    else
        for _,cand in ipairs(ATTRS[name] or {}) do
            if tool:GetAttribute(cand)~=nil then return cand end
        end
        return nil
    end
end
local function computeGunValue(name,v)
    if name=="Automatic" then return type(v)=="boolean" and true or nil end
    if type(v)~="number" or v~=v or math.abs(v)>1e9 then return nil end
    if name=="Recoil" then return v>=0 and 0 or nil
    elseif name=="Accuracy" then
        if v<0 then return nil end
        return v<=1 and math.max(v,0.95) or math.max(v,math.min(v*1.12,100))
    elseif name=="Range" then return v>0 and math.max(v,math.min(v*2,1200)) or nil
    elseif name=="FireRate" then
        if v<=0 then return nil end
        return v<1 and 0.001 or 9999
    elseif name=="Reload" then return v>0 and math.min(v,math.max(0.18,v*0.7)) or nil
    end
end
local function isGun(tool)
    if not tool or not tool:IsA("Tool") or tool.Name=="Fists" then return false end
    if tool:GetAttribute("AmmoType")~=nil then return true end
    for name in pairs(FLAGS) do if findGunAttr(tool,name) then return true end end
    return false
end
function Gun.Apply(tool)
    if not isGun(tool) then return end
    local orig=Gun.Originals[tool] or {} Gun.Originals[tool]=orig
    for name,flagKey in pairs(FLAGS) do
        local attrName=findGunAttr(tool,name)
        if attrName then
            if S[flagKey] then
                if not orig[name] then
                    local oldVal=tool:GetAttribute(attrName)
                    local newVal=computeGunValue(name,oldVal)
                    if newVal~=nil and newVal~=oldVal then
                        orig[name]={A=attrName,O=oldVal,D=newVal}
                        pcall(function() tool:SetAttribute(attrName,newVal) end)
                    end
                end
            elseif orig[name] then
                pcall(function()
                    if tool:GetAttribute(orig[name].A)==orig[name].D then
                        tool:SetAttribute(orig[name].A,orig[name].O)
                    end
                end)
                orig[name]=nil
            end
        end
    end
end
function Gun.Refresh()
    local c=LP.Character
    if c then
        for _,child in ipairs(c:GetChildren()) do
            if child:IsA("Tool") then Gun.Apply(child) end
        end
    end
end
local function hookGunChar(char)
    char.ChildAdded:Connect(function(c) if c:IsA("Tool") then task.defer(Gun.Apply,c) end end)
    Gun.Refresh()
end
if LP.Character then hookGunChar(LP.Character) end
LP.CharacterAdded:Connect(hookGunChar)
for _,flagKey in pairs(FLAGS) do
    local prev=Hooks[flagKey]
    Hooks[flagKey]=function(v) if prev then prev(v) end Gun.Refresh() end
end

local GodMode={Enabled=false,Hook=false,Patched=false,Fn=nil,O3=nil,O4=nil}
local function setGod(on)
    GodMode.Enabled=on==true _G.Bypass=GodMode.Enabled
    local setConst=setconstant or (debug and debug.setconstant)
    if not GodMode.Enabled then
        if GodMode.Patched and GodMode.Fn and setConst then
            pcall(setConst,GodMode.Fn,3,GodMode.O3) pcall(setConst,GodMode.Fn,4,GodMode.O4)
            GodMode.Patched=false
        end
        return
    end
    local net=findNet() if not net then return end
    if not GodMode.Hook and type(hookfunction)=="function" and type(net.send)=="function" then
        local orig=nil
        local ok,res=pcall(function()
            return hookfunction(net.send,function(...)
                local first=select(1,...)
                if GodMode.Enabled and (first=="leave_character_creator" or first=="player_created_outfit") then return nil end
                if orig then return orig(...) end
            end)
        end)
        if ok and type(res)=="function" then GodMode.Hook=true end
    end
    local getUpval=getupvalue or (debug and debug.getupvalue)
    local getConst=getconstant or (debug and debug.getconstant)
    if not GodMode.Patched and getUpval and getConst and setConst and type(net.get)=="function" then
        local ok,fn=pcall(getUpval,net.get,2)
        if ok and type(fn)=="function" then
            local ok1,v3=pcall(getConst,fn,3)
            local ok2,v4=pcall(getConst,fn,4)
            if ok1 and ok2 and v3~=nil and v4~=nil then
                pcall(setConst,fn,3,"KUYIENGOKUYIENGO")
                pcall(setConst,fn,4,"KUYIENGOKUYIENGO")
                GodMode.Fn,GodMode.O3,GodMode.O4=fn,v3,v4
                GodMode.Patched=true
            end
        end
    end
end
local function godRespawn()
    task.spawn(function()
        task.wait(0.2)
        local used=type(replicatesignal)=="function" and pcall(function() replicatesignal(LP.Kill) end)
        if not used then
            pcall(function()
                local hum=LP.Character and LP.Character:FindFirstChildOfClass("Humanoid")
                if hum and hum.Health>0 then hum.Health=0 end
            end)
        end
        task.wait(7)
        pcall(function()
            local net=findNet()
            if net and net.send then net.send("death_screen_request_respawn") end
        end)
    end)
end
Hooks.GodMode=function(v) setGod(v) if v then godRespawn() end end
if S.GodMode then setGod(true) end

local finishing=setmetatable({},{__mode="k"})
task.spawn(function()
    while gui and gui.Parent do
        if S.AutoFinish then
            for _,p in ipairs(Players:GetPlayers()) do
                if p~=LP and p.Character and not S.Friends[tostring(p.UserId)] then
                    local hrp=p.Character:FindFirstChild("HumanoidRootPart")
                    local prompt=hrp and hrp:FindFirstChild("FinishPrompt")
                    if prompt and prompt:IsA("ProximityPrompt") and not finishing[prompt] then
                        finishing[prompt]=true
                        task.spawn(function()
                            pcall(function() prompt.HoldDuration=1 prompt.MaxActivationDistance=20 end)
                            pcall(function() prompt:InputHoldBegin() end)
                            task.wait(1)
                            pcall(function() prompt:InputHoldEnd() end)
                            finishing[prompt]=nil
                        end)
                    end
                end
            end
        end
        task.wait(0.4)
    end
end)
-- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
-- ┃                                               ┃
-- ┃           O S A M A   D U M P E R             ┃
-- ┃                                               ┃
-- ┃      https://discord.gg/R6vnkNQNbP            ┃
-- ┃                                               ┃
-- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
local respawning=false
local function findNearestDroppedItem(fromPos)
    local container=workspace:FindFirstChild("DroppedItems") or workspace:FindFirstChild("DroppedItem")
    if not container then return nil end
    local bestPart,bestDist=nil,math.huge
    for _,item in ipairs(container:GetChildren()) do
        if item:IsA("Model") then
            local pick=item:FindFirstChild("PickUpZone",true)
            local part
            if pick and pick:IsA("BasePart") then part=pick
            elseif pick and pick:IsA("Attachment") and pick.Parent and pick.Parent:IsA("BasePart") then part=pick.Parent end
            part=part or item.PrimaryPart or item:FindFirstChildWhichIsA("BasePart",true)
            if part then
                local d=(part.Position-fromPos).Magnitude
                if d<bestDist then bestPart,bestDist=part,d end
            end
        end
    end
    return bestPart
end
task.spawn(function()
    while gui and gui.Parent do
        local want=S.AutoRespawn or S.RespawnToItem
        if want and not respawning then
            local hum=LP.Character and LP.Character:FindFirstChildOfClass("Humanoid")
            if hum and hum.Health<=0 then
                respawning=true
                task.spawn(function()
                    task.wait(6)
                    if S.AutoRespawn or S.RespawnToItem then
                        local net=findNet()
                        if net and net.send then pcall(function() net.send("death_screen_request_respawn") end)
                        else a28("death_screen_request_respawn") end
                    end
                    if S.RespawnToItem then
                        local deadline=os.clock()+8
                        while os.clock()<deadline do
                            local c=LP.Character
                            local h=c and c:FindFirstChildOfClass("Humanoid")
                            local root=c and c:FindFirstChild("HumanoidRootPart")
                            if h and root and h.Health>0 then
                                local part=findNearestDroppedItem(root.Position)
                                if part then
                                    local pivot=c:GetPivot()
                                    local target=CFrame.new(part.Position+Vector3.new(0,1.15,0))*(pivot-pivot.Position)
                                    local until_=os.clock()+0.85
                                    while root.Parent and part.Parent and os.clock()<until_ do
                                        c:PivotTo(target)
                                        root.AssemblyLinearVelocity=Vector3.zero
                                        RunService.Heartbeat:Wait()
                                    end
                                end
                                break
                            end
                            task.wait(0.15)
                        end
                    end
                    task.wait(1)
                    respawning=false
                end)
            end
        end
        task.wait(0.5)
    end
end)

local giroState={Motor=nil,C0=nil,Neck=nil,NeckC0=nil}
local function restoreGiro()
    if giroState.Motor and giroState.C0 then pcall(function() giroState.Motor.C0=giroState.C0 end) end
    if giroState.Neck and giroState.NeckC0 then pcall(function() giroState.Neck.C0=giroState.NeckC0 end) end
    giroState.Motor,giroState.C0,giroState.Neck,giroState.NeckC0=nil,nil,nil,nil
end
local function findRootMotor(char)
    local root=char:FindFirstChild("HumanoidRootPart") if not root then return nil end
    for _,d in ipairs(char:GetDescendants()) do
        if d:IsA("Motor6D") and (d.Part0==root or d.Part1==root) then return d end
    end
    return nil
end
local function findNeckMotor(char)
    local head=char:FindFirstChild("Head")
    for _,d in ipairs(char:GetDescendants()) do
        if d:IsA("Motor6D") and (d.Name=="Neck" or (head and d.Part1==head)) then return d end
    end
    return nil
end
RunService.Heartbeat:Connect(function()
    local char=LP.Character
    local hum=char and char:FindFirstChildOfClass("Humanoid")
    local seat=hum and hum.SeatPart
    if not S.Invisible or not seat then
        if giroState.Motor then restoreGiro() end
        return
    end
    local motor=findRootMotor(char)
    if not motor then restoreGiro() return end
    if giroState.Motor~=motor then
        restoreGiro()
        giroState.Motor=motor giroState.C0=motor.C0
        local neck=findNeckMotor(char)
        if neck then giroState.Neck,giroState.NeckC0=neck,neck.C0 end
    end
    local giro=math.clamp(tonumber(S.Giro) or -101,-120,120)
    local ratio=-giro/101
    local absRatio=math.clamp(math.abs(giro)/101,0,1)
    local roll=math.rad(17*absRatio)
    pcall(function()
        local newC0=giroState.C0*CFrame.new(0,-0.24*absRatio,-1.38*ratio)*CFrame.Angles(math.rad(giro),0,0)
        motor.C0=newC0*CFrame.Angles(0,math.rad(180*absRatio),roll)
        if giroState.Neck and giroState.NeckC0 then
            local neckC0=giroState.NeckC0*CFrame.new(0,-0.28*absRatio,-0.34*ratio)
            giroState.Neck.C0=neckC0*CFrame.Angles(math.rad(-42*ratio),math.rad(12*absRatio),-roll)
        end
    end)
end)

local fpsState={On=false,Ticket=0,Changed=setmetatable({},{__mode="k"}),Shadows=nil,Conn=nil}
local function applyPerf(obj)
    if not fpsState.On or fpsState.Changed[obj] or not obj.Parent then return end
    if obj:IsA("BasePart") then
        if obj.Material==Enum.Material.Neon then return end
        fpsState.Changed[obj]={p=true,m=obj.Material,s=obj.CastShadow}
        pcall(function() obj.Material=Enum.Material.SmoothPlastic obj.CastShadow=false end)
    else
        local isEffect=obj:IsA("ParticleEmitter") or obj:IsA("Trail")
            or obj:IsA("Smoke") or obj:IsA("Fire") or obj:IsA("Sparkles")
            or (obj:IsA("PostEffect") and not obj:IsA("BloomEffect"))
        if isEffect then
            fpsState.Changed[obj]={e=obj.Enabled}
            pcall(function() obj.Enabled=false end)
        end
    end
end
local function setFPS(on)
    if on==fpsState.On then return end
    fpsState.On=on==true fpsState.Ticket=fpsState.Ticket+1
    if fpsState.On then
        local ticket=fpsState.Ticket
        fpsState.Shadows=Lighting.GlobalShadows
        Lighting.GlobalShadows=false
        if type(setfpscap)=="function" then pcall(setfpscap,120) end
        if fpsState.Conn then fpsState.Conn:Disconnect() end
        fpsState.Conn=workspace.DescendantAdded:Connect(function(obj) task.defer(applyPerf,obj) end)
        task.spawn(function()
            for i,obj in ipairs(workspace:GetDescendants()) do
                if fpsState.Ticket~=ticket then return end
                applyPerf(obj)
                if i%175==0 then task.wait() end
            end
        end)
    else
        if fpsState.Conn then fpsState.Conn:Disconnect() fpsState.Conn=nil end
        if fpsState.Shadows~=nil then Lighting.GlobalShadows=fpsState.Shadows end
        for obj,st in pairs(fpsState.Changed) do
            pcall(function()
                if st.p then obj.Material=st.m obj.CastShadow=st.s
                else obj.Enabled=st.e end
            end)
        end
        fpsState.Changed=setmetatable({},{__mode="k"})
    end
end
Hooks.OptimizeFPS=setFPS
if S.OptimizeFPS then setFPS(true) end

local hiddenSkies={}
local PURPLE_SKY_ASSET="rbxassetid://105275560374583"
local function setSky(on)
    if on then
        for _,obj in ipairs(Lighting:GetChildren()) do
            if obj:IsA("Sky") and obj.Name~="RXZ_PurpleSky" then
                table.insert(hiddenSkies,obj) obj.Parent=nil
            end
        end
        local sky=Lighting:FindFirstChild("RXZ_PurpleSky") or Instance.new("Sky")
        sky.Name="RXZ_PurpleSky"
        sky.SkyboxBk=PURPLE_SKY_ASSET sky.SkyboxDn=PURPLE_SKY_ASSET sky.SkyboxFt=PURPLE_SKY_ASSET
        sky.SkyboxLf=PURPLE_SKY_ASSET sky.SkyboxRt=PURPLE_SKY_ASSET sky.SkyboxUp=PURPLE_SKY_ASSET
        sky.CelestialBodiesShown=false sky.StarCount=0
        sky.Parent=Lighting
    else
        local sky=Lighting:FindFirstChild("RXZ_PurpleSky") if sky then sky:Destroy() end
        for _,obj in ipairs(hiddenSkies) do pcall(function() obj.Parent=Lighting end) end
        table.clear(hiddenSkies)
    end
end
Hooks.PurpleSky=setSky
if S.PurpleSky then setSky(true) end

local RXZ={}
_G.RXZ=RXZ
local snapUp=false
local snapInitialY=nil
local snapOffset=20
local depthValue=20
local touchPanel={}
RXZ.LP=LP RXZ.Blue=C.Blue RXZ.Red=C.Red RXZ.ThemeColor=C.Blue
RXZ.ThemeBright=Color3.fromRGB(255,255,255)
RXZ.ExecutorGuiParent=PlayerGui
RXZ.TouchPanelKey=Enum.KeyCode.Z
RXZ.TouchLeftBoxKey=Enum.KeyCode.X
RXZ.TouchRightBoxKey=Enum.KeyCode.C
RXZ.TouchPanelUpMode=false
RXZ.TouchRightDroppedItemsEnabled=false
RXZ.VehicleRarityModeEnabled=false
RXZ.VehicleRarityTarget=nil
RXZ.VehicleRarityArrived=false
RXZ.VehicleRarityAvoidSide=0
RXZ.VehicleRarityAvoidUntil=0
RXZ.VehicleRarityStopDistance=18
RXZ.VehicleRarityResumeDistance=28
RXZ.VehicleRarityObstacleDistance=22
RXZ.VehicleRarityAvoidAngle=58
RXZ.SelectedVehiclePlayer=nil
RXZ.VehicleForwardMaxSpeed=90
RXZ.VehicleReverseMaxSpeed=90
RXZ.VehicleAcceleration=200
RXZ.VehicleBraking=200
RXZ.VehicleDirectionRate=200
RXZ.VehicleSteerPower=200
RXZ.TouchTargetFollowEnabled=false
RXZ.VehicleSliderDriveState=nil
RXZ.ChinoCarHover=nil
RXZ.TouchItemDistanceManualLocked=false
RXZ.TouchItemDistanceManualValue=nil
RXZ.TouchItemDistanceTarget=nil
RXZ.TouchItemDistanceSavedValue=nil

RXZ.TouchSnapCarState={
    Enabled=false, JoystickActive=false, JoystickThrottle=0, JoystickSteer=0,
    AboveMode=false, AboveHeightStuds=19, AboveMoveSpeed=24, AboveLowerSpeed=20,
    AboveLowering=false, AboveLandingReady=false,
    Vehicle=nil, Root=nil, Seat=nil, DesiredRootY=nil, RootToBottom=nil,
    Depth=13, BaseDepth=13, DepthMoveSpeed=32, DepthMoveActive=false,
    VerticalChaseMode="ready", VerticalChaseEnabled=false, VerticalChaseDescending=false,
    VerticalChaseTarget=nil, VerticalChaseHomeY=nil, VerticalChaseAnchorXZ=nil,
    VerticalChaseStart=0, VerticalChaseSpeed=72, VerticalChaseRiseSpeed=56,
    Exiting=false, SnapGroundY=nil, Speed=90, ReverseSpeed=90,
    AccelRate=200, StopRate=200, DirectionRate=200, SteerPower=200,
    CurrentDriveSpeed=0,
    NativeForwardHeld=false, NativeReverseHeld=false,
    NativeForwardTouch=nil, NativeReverseTouch=nil,
    NativeSteerTouch=nil, NativeSteerAxis=0,
    OriginalProps=setmetatable({},{__mode="k"}),
    ItemTarget=nil, ItemTargetPart=nil, ItemReturnPivot=nil, ItemNextAcquireTime=0,
    ItemPulseBusy=false, ItemPulseTargetRootY=nil, ItemPulseLastItem=nil,
    ItemPulseGeneration=0, ItemPulseHoldTime=1, ItemPulseBelowOffset=4,
    ManualJumpBusy=false, ManualJumpTargetY=nil, ManualJumpGeneration=0,
    OneShotBusy=false, AutoEnemySnapEnabled=false,
    AutoEnemySnapStillSince=nil, AutoEnemySnapLastTrigger=0,
    AutoEnemySnapStopSeconds=1, AutoEnemySnapSpeedThreshold=1.35, AutoEnemySnapCooldown=0.6,
    SeatPoseMotor=nil, SeatPoseOriginalC0=nil, SeatPoseApplied=false,
    OneShotPersistentFloors=setmetatable({},{__mode="k"}),
    ItemTriggerDistance=5, ItemVerticalDrop=4,
    AvatarDisc=nil, AvatarDiscWeld=nil, AvatarImage=nil,
    ImpactProtectionEnabled=true,
    ObstacleProtectionEnabled=true, ObstacleProbeDistance=8,
    ObstacleLowLift=3.2, ObstacleWallLift=1.35,
    ObstacleLiftOffset=0, ObstacleLiftUntil=0, ObstacleCooldownUntil=0,
    ExitRiseSteps=14, ExitGhostHold=0.35, ExitClearanceStep=0.55, ExitClearanceChecks=10,
}

function RXZ.SetTouchTargetFollow(v) RXZ.TouchTargetFollowEnabled=v==true end
function RXZ.SyncVehicleDriveToSnap() end
function RXZ.VehicleGetSafeMaxSpeed(_,_)
    return math.clamp(RXZ.VehicleForwardMaxSpeed or 90, 28, 200)
end
function RXZ.VehicleModeGetAvoidanceDirection(vehicle,root,targetChar)
    if not targetChar or not root then return nil,nil end
    local targetRoot=targetChar:FindFirstChild("HumanoidRootPart")
    if not targetRoot then return nil,nil end
    local dir=targetRoot.Position-root.Position
    dir=Vector3.new(dir.X,0,dir.Z)
    if dir.Magnitude<0.01 then return nil,nil end
    return dir.Unit,1
end
function RXZ.TouchCarRescueVoidOnSnapPress() return false end
function RXZ.TouchCarPRescueIfEjected() end
function RXZ.TouchCarCancelPTeleport() end
function RXZ.WorldPhaseReleasePart() end
function RXZ.ChinoCarHoverStop() end
function RXZ.FindNearestDroppedItem(pos,radius,_inside)
    local c=workspace:FindFirstChild("DroppedItems") or workspace:FindFirstChild("DroppedItem")
    if not c then return nil,nil,math.huge end
    local best,bestPart,bestDist=nil,nil,math.huge
    for _,item in ipairs(c:GetChildren()) do
        if item:IsA("Model") then
            local pick=item:FindFirstChild("PickUpZone",true)
            local part
            if pick and pick:IsA("BasePart") then part=pick
            elseif pick and pick:IsA("Attachment") and pick.Parent and pick.Parent:IsA("BasePart") then part=pick.Parent end
            part=part or item.PrimaryPart or item:FindFirstChildWhichIsA("BasePart",true)
            if part then
                local d=(part.Position-pos).Magnitude
                if d<=radius and d<bestDist then best,bestPart,bestDist=item,part,d end
            end
        end
    end
    return best,bestPart,bestDist
end

function RXZ.TouchSnapCarGetVehicle()
    local c=LP.Character
    local h=c and c:FindFirstChildOfClass("Humanoid")
    local seat=h and h.SeatPart
    if not seat or not seat:IsA("VehicleSeat") then return nil,nil,nil end
    local model=seat:FindFirstAncestorOfClass("Model")
    if not model then return nil,nil,nil end
    local root=model.PrimaryPart or seat.AssemblyRootPart or seat
    root=root.AssemblyRootPart or root
    return model,root,seat
end
function RXZ.TouchSnapCarFlatLook(cf,seat)
    local v=Vector3.new(cf.LookVector.X,0,cf.LookVector.Z)
    if v.Magnitude<=0.001 then v=Vector3.new(0,0,-1) else v=v.Unit end
    if seat and seat:IsA("VehicleSeat") then
        local s=Vector3.new(seat.CFrame.LookVector.X,0,seat.CFrame.LookVector.Z)
        if s.Magnitude>0.001 and v:Dot(s.Unit)<0 then v=-v end
    end
    return v
end
function RXZ.TouchSnapCarUpright(pos,look)
    local f=Vector3.new(look.X,0,look.Z)
    if f.Magnitude<=0.001 then f=Vector3.new(0,0,-1) else f=f.Unit end
    return CFrame.lookAt(pos,pos+f,Vector3.yAxis)
end
function RXZ.TouchSnapCarMoveTowards(a,b,step)
    if a<b then return math.min(a+step,b) elseif a>b then return math.max(a-step,b) else return b end
end
function RXZ.TouchSnapCarSavePart(part,allowTouch)
    local st=RXZ.TouchSnapCarState
    if not part or not part:IsA("BasePart") then return end
    if st.OriginalProps[part]==nil then
        st.OriginalProps[part]={CanCollide=part.CanCollide,CanTouch=part.CanTouch,CanQuery=part.CanQuery}
    end
    pcall(function()
        part.CanCollide=false
        part.CanTouch=allowTouch==true
        part.CanQuery=false
    end)
end
function RXZ.TouchSnapCarPhase(model)
    if not model then return end
    for _,p in ipairs(model:GetDescendants()) do
        if p:IsA("BasePart") then RXZ.TouchSnapCarSavePart(p,true) end
    end
    local c=LP.Character
    if c then
        for _,p in ipairs(c:GetDescendants()) do
            if p:IsA("BasePart") then RXZ.TouchSnapCarSavePart(p,false) end
        end
    end
end
function RXZ.TouchSnapCarFullGhost(model)
    if not model then return end
    for _,p in ipairs(model:GetDescendants()) do
        if p:IsA("BasePart") then
            RXZ.TouchSnapCarSavePart(p,false)
            pcall(function() p.CanCollide=false p.CanTouch=false p.CanQuery=false end)
        end
    end
    local c=LP.Character
    if c then
        for _,p in ipairs(c:GetDescendants()) do
            if p:IsA("BasePart") then
                RXZ.TouchSnapCarSavePart(p,false)
                pcall(function() p.CanCollide=false p.CanTouch=false p.CanQuery=false end)
            end
        end
    end
end
function RXZ.TouchCarKeepFloorPassThrough(part)
    local st=RXZ.TouchSnapCarState
    if not st or not part or not part:IsA("BasePart") then return false end
    if RXZ.WorldPhaseReleasePart then RXZ.WorldPhaseReleasePart(part) end
    st.OneShotPersistentFloors=st.OneShotPersistentFloors or setmetatable({},{__mode="k"})
    if st.OneShotPersistentFloors[part]==nil then
        st.OneShotPersistentFloors[part]={CanCollide=part.CanCollide,CanTouch=part.CanTouch,CanQuery=part.CanQuery}
    end
    pcall(function()
        part.CanCollide=false part.CanTouch=false
        part.CanQuery=st.OneShotPersistentFloors[part].CanQuery
    end)
    return true
end
function RXZ.TouchCarRestorePersistentFloors()
    local st=RXZ.TouchSnapCarState
    if not st or not st.OneShotPersistentFloors then return end
    for part,orig in pairs(st.OneShotPersistentFloors) do
        if part and part.Parent then
            pcall(function()
                part.CanCollide=orig.CanCollide part.CanTouch=orig.CanTouch part.CanQuery=orig.CanQuery
            end)
        end
        st.OneShotPersistentFloors[part]=nil
    end
end
function RXZ.TouchSnapCarRestore()
    local st=RXZ.TouchSnapCarState
    RXZ.TouchCarRestorePersistentFloors()
    for part,orig in pairs(st.OriginalProps) do
        if part and part.Parent then
            pcall(function()
                part.CanCollide=orig.CanCollide part.CanTouch=orig.CanTouch part.CanQuery=orig.CanQuery
            end)
        end
        st.OriginalProps[part]=nil
    end
end
function RXZ.TouchSnapCarZeroMotion(model,root)
    if root and root.Parent then
        pcall(function() root.AssemblyLinearVelocity=Vector3.zero root.AssemblyAngularVelocity=Vector3.zero end)
    end
    if model then
        for _,p in ipairs(model:GetDescendants()) do
            if p:IsA("BasePart") then
                pcall(function() p.AssemblyLinearVelocity=Vector3.zero p.AssemblyAngularVelocity=Vector3.zero end)
            end
        end
    end
end
function RXZ.TouchSnapCarObstacleProbe(vehicle,root,look)
    local st=RXZ.TouchSnapCarState
    if not st.ObstacleProtectionEnabled or not vehicle or not root or not look or look.Magnitude<=0.001 then
        return nil,math.huge
    end
    local flat=Vector3.new(look.X,0,look.Z)
    if flat.Magnitude<=0.001 then return nil,math.huge end
    flat=flat.Unit
    local params=RaycastParams.new()
    params.FilterType=Enum.RaycastFilterType.Exclude
    params.IgnoreWater=true
    local f={vehicle}
    if LP.Character then table.insert(f,LP.Character) end
    params.FilterDescendantsInstances=f
    local bcf,bsize=vehicle:GetBoundingBox()
    local baseY=bcf.Position.Y-bsize.Y*0.5
    local right=Vector3.new(root.CFrame.RightVector.X,0,root.CFrame.RightVector.Z)
    if right.Magnitude<=0.001 then right=Vector3.xAxis else right=right.Unit end
    local offX=math.clamp(bsize.X*0.28,1.25,3.4)
    local probeDist=math.clamp((tonumber(st.ObstacleProbeDistance) or 8)+math.abs(tonumber(st.CurrentDriveSpeed) or root.AssemblyLinearVelocity.Magnitude or 0)*0.025,6,11)
    local yLow=baseY+math.min(1.15,bsize.Y*0.3)
    local yHigh=baseY+math.clamp(bsize.Y*0.72,2.8,5.2)
    local minLow,minHigh=math.huge,math.huge
    local function hits(h) if not h then return false end
        local inst=h.Instance
        return inst==workspace.Terrain or (inst and inst:IsA("BasePart") and inst.Anchored)
    end
    for _,off in ipairs({0,offX,-offX}) do
        local cxz=Vector3.new(bcf.Position.X,0,bcf.Position.Z)+right*off
        local lo=workspace:Raycast(Vector3.new(cxz.X,yLow,cxz.Z),flat*probeDist,params)
        if hits(lo) then minLow=math.min(minLow,(lo.Position-Vector3.new(cxz.X,yLow,cxz.Z)).Magnitude) end
        local hi=workspace:Raycast(Vector3.new(cxz.X,yHigh,cxz.Z),flat*probeDist,params)
        if hits(hi) then minHigh=math.min(minHigh,(hi.Position-Vector3.new(cxz.X,yHigh,cxz.Z)).Magnitude) end
    end
    if minLow<math.huge and minHigh==math.huge then return "low",minLow
    elseif minLow<math.huge and minHigh<math.huge then return "wall",math.min(minLow,minHigh)
    elseif minHigh<math.huge then return "wall",minHigh
    end
    return nil,math.huge
    -- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
-- ┃                                               ┃
-- ┃           O S A M A   D U M P E R             ┃
-- ┃                                               ┃
-- ┃      https://discord.gg/R6vnkNQNbP            ┃
-- ┃                                               ┃
-- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
end
function RXZ.TouchSnapCarGroundY(vehicle,root)
    if not root then return nil end
    local params=RaycastParams.new()
    params.FilterType=Enum.RaycastFilterType.Exclude
    params.IgnoreWater=true
    local f={vehicle}
    if LP.Character then table.insert(f,LP.Character) end
    params.FilterDescendantsInstances=f
    local hit=workspace:Raycast(root.Position+Vector3.new(0,8,0),Vector3.new(0,-300,0),params)
    return hit and hit.Position.Y or root.Position.Y-3
end
function RXZ.TouchSnapCarSurfaceY(vehicle,root)
    if not root then return nil,nil end
    local params=RaycastParams.new()
    params.FilterType=Enum.RaycastFilterType.Exclude
    params.IgnoreWater=true
    local f={vehicle}
    if LP.Character then table.insert(f,LP.Character) end
    local v=workspace:FindFirstChild("Vehicles") if v then table.insert(f,v) end
    params.FilterDescendantsInstances=f
    local prev=RXZ.TouchSnapCarState and tonumber(RXZ.TouchSnapCarState.SnapGroundY)
    local hit=workspace:Raycast(root.Position+Vector3.new(0,0.2,0),Vector3.new(0,340,0),params)
    if not hit then return prev or (root.Position.Y+13),nil end
    local inst=hit.Instance
    local y=hit.Position.Y
    if inst and inst:IsA("BasePart") then
        local cf,sz=inst.CFrame,inst.Size
        y=cf.Position.Y+(math.abs(cf.RightVector.Y)*sz.X*0.5+math.abs(cf.UpVector.Y)*sz.Y*0.5+math.abs(cf.LookVector.Y)*sz.Z*0.5)
    end
    if prev and math.abs(y-prev)>60 then return prev,nil end
    return y,inst
end
function RXZ.TouchSnapCarDestroyAvatar()
    local st=RXZ.TouchSnapCarState
    if st.AvatarDisc then pcall(function() st.AvatarDisc:Destroy() end) end
    st.AvatarDisc=nil st.AvatarDiscWeld=nil st.AvatarImage=nil
end
function RXZ.TouchSnapCarCreateAvatar(vehicle,root)
    local st=RXZ.TouchSnapCarState
    RXZ.TouchSnapCarDestroyAvatar()
    if not vehicle or not root then return end
    local img="rbxthumb://type=Asset&id=76824741629432&w=420&h=420"
    local disc=Instance.new("Part")
    disc.Name="CHINO_SnapCarPurpleDisc"
    disc.Size=Vector3.new(24,0.06,24) disc.Transparency=1 disc.Anchored=false
    disc.Massless=true disc.CanCollide=false disc.CanTouch=false disc.CanQuery=false disc.CastShadow=false
    disc.CFrame=root.CFrame*CFrame.new(0,-((st.RootToBottom or 2.5)+0.22),0)
    disc.Parent=workspace
    local weld=Instance.new("WeldConstraint")
    weld.Name="CHINO_SnapCarAvatarWeld" weld.Part0=root weld.Part1=disc weld.Parent=disc
    local sg=Instance.new("SurfaceGui")
    sg.Name="CHINO_SnapCarPurpleGui" sg.Face=Enum.NormalId.Top sg.AlwaysOnTop=false
    sg.LightInfluence=0 sg.PixelsPerStud=55 sg.SizingMode=Enum.SurfaceGuiSizingMode.PixelsPerStud
    sg.Parent=disc
    local frame=Instance.new("Frame") frame.Size=UDim2.fromScale(1,1)
    frame.BackgroundTransparency=1 frame.ClipsDescendants=true frame.Parent=sg
    Instance.new("UICorner",frame).CornerRadius=UDim.new(0,8)
    local image=Instance.new("ImageLabel")
    image.Name="PurplePanelImage" image.Size=UDim2.fromScale(1,1) image.Position=UDim2.fromScale(0,0)
    image.BackgroundTransparency=1 image.Image=img image.ScaleType=Enum.ScaleType.Crop image.Parent=frame
    Instance.new("UICorner",image).CornerRadius=UDim.new(0,8)
    local s1=Instance.new("UIStroke",frame) s1.Thickness=3 s1.Transparency=0.12 s1.Color=RXZ.ThemeBright
    local s2=Instance.new("UIStroke",image) s2.Thickness=8 s2.Transparency=0.62 s2.Color=RXZ.ThemeColor or C.Blue
    st.AvatarDisc=disc st.AvatarDiscWeld=weld st.AvatarImage=image
end
function RXZ.TouchSnapCarSet(wantOn)
    local st=RXZ.TouchSnapCarState
    wantOn=wantOn==true
    if st.Exiting then return false end
    if wantOn then
        if not st.AboveMode and RXZ.ChinoCarHoverStop then RXZ.ChinoCarHoverStop() end
        if st.Enabled then return true end
        if RXZ.SyncVehicleDriveToSnap then RXZ.SyncVehicleDriveToSnap() end
        local vehicle,root,seat=RXZ.TouchSnapCarGetVehicle()
        if not vehicle or not root or not seat then return false end
        local upMode=snapUp and RXZ.TouchNormalSnapToggle
        if upMode then RXZ.TouchNormalSnapToggle() end
        if RXZ.SetTouchTargetFollow then RXZ.SetTouchTargetFollow(false) end
        local groundY=RXZ.TouchSnapCarGroundY(vehicle,root)
        if not groundY then return false end
        st.SnapGroundY=groundY
        st.SafeStartXZ=Vector3.new(root.Position.X,groundY,root.Position.Z)
        local bcf,bsize=vehicle:GetBoundingBox()
        st.RootToBottom=root.Position.Y-(bcf.Position.Y-bsize.Y*0.5)
        local desired
        if st.AboveMode then
            desired=groundY+(st.AboveHeightStuds or 19)+(st.RootToBottom or 2.5)+0.35
        else
            desired=groundY-(st.Depth or 13)+(st.RootToBottom or 2.5)+0.35
        end
        st.DesiredRootY=desired st.AboveLowering=false st.AboveLandingReady=false
        st.Vehicle=vehicle st.DepthMoveActive=false st.Root=root st.Seat=seat
        st.SnapVehicleSafeMax=RXZ.VehicleGetSafeMaxSpeed(vehicle,seat) or 140
        local vel=root.AssemblyLinearVelocity
        local fwd=RXZ.TouchSnapCarFlatLook(root.CFrame,seat)
        local fwdSpeed=Vector3.new(vel.X,0,vel.Z):Dot(fwd)
        if st.AboveMode then
            st.SnapVehicleSafeMax=math.max(st.SnapVehicleSafeMax,math.abs(fwdSpeed)*1.08)
            st.CurrentDriveSpeed=fwdSpeed
        else st.CurrentDriveSpeed=0 end
        st.ItemTarget=nil st.ItemTargetPart=nil st.ItemReturnPivot=nil st.ItemNextAcquireTime=0
        st.ItemPulseBusy=false st.ItemPulseTargetRootY=nil st.ItemPulseLastItem=nil
        st.ItemPulseGeneration=(st.ItemPulseGeneration or 0)+1
        RXZ.TouchSnapCarPhase(vehicle)
        if not st.AboveMode then
            local cf=RXZ.TouchSnapCarUpright(Vector3.new(root.Position.X,st.DesiredRootY,root.Position.Z),RXZ.TouchSnapCarFlatLook(root.CFrame,seat))
            local off=root.CFrame:ToObjectSpace(vehicle:GetPivot())
            pcall(function()
                vehicle:PivotTo(cf*off)
                root.AssemblyLinearVelocity=Vector3.zero
                root.AssemblyAngularVelocity=Vector3.zero
            end)
        end
        st.Enabled=true
        if RXZ.TouchSnapCarCreateAvatar then RXZ.TouchSnapCarCreateAvatar(vehicle,root) end
        if touchPanel.snapBtn then touchPanel.snapBtn.Text="Snap Car" touchPanel.snapBtn.BackgroundColor3=Color3.fromRGB(180,35,60) end
        if RXZ.SetSnapJoystickVisible then RXZ.SetSnapJoystickVisible(true) end
        return true
    elseif not st.Enabled then return true
    elseif st.Exiting then return false
    else
        st.Exiting=true st.DepthMoveActive=false
        st.VerticalChaseMode="ready" st.VerticalChaseEnabled=false st.VerticalChaseDescending=false
        st.VerticalChaseTarget=nil st.VerticalChaseHomeY=nil st.VerticalChaseAnchorXZ=nil
        if RXZ.TouchCarPRescueIfEjected then pcall(RXZ.TouchCarPRescueIfEjected) end
        if RXZ.TouchCarCancelPTeleport then RXZ.TouchCarCancelPTeleport() end
        if RXZ.TouchCarRestorePersistentFloors then RXZ.TouchCarRestorePersistentFloors() end
        st.Enabled=false
        if RXZ.SetSnapJoystickVisible then RXZ.SetSnapJoystickVisible(false) end
        if RXZ.TouchSnapCarDestroyAvatar then RXZ.TouchSnapCarDestroyAvatar() end
        st.ItemTarget=nil st.ItemTargetPart=nil st.ItemReturnPivot=nil st.ItemNextAcquireTime=0
        st.ItemPulseBusy=false st.ItemPulseTargetRootY=nil st.ItemPulseLastItem=nil
        st.ItemPulseGeneration=(st.ItemPulseGeneration or 0)+1
        st.NativeForwardHeld=false st.NativeReverseHeld=false
        st.NativeForwardTouch=nil st.NativeReverseTouch=nil st.NativeSteerTouch=nil st.NativeSteerAxis=0
        st.CurrentDriveSpeed=0
        local vehicle=st.Vehicle local root=st.Root
        if vehicle and vehicle.Parent and root and root.Parent then
            st.ObstacleLiftOffset=0 st.ObstacleLiftUntil=0 st.ObstacleCooldownUntil=0
            RXZ.TouchSnapCarFullGhost(vehicle)
            RXZ.TouchSnapCarZeroMotion(vehicle,root)
        end
        RXZ.TouchSnapCarRestore()
        st.AboveMode=false st.SafeStartXZ=nil
        if RXZ.ChinoCarHover then
            RXZ.ChinoCarHover.Active=false RXZ.ChinoCarHover.Vehicle=nil RXZ.ChinoCarHover.Root=nil
        end
        st.Depth=tonumber(st.BaseDepth) or 13
        st.SnapGroundY=nil
        st.Exiting=false
        if RXZ.RefreshTouchDepthText then RXZ.RefreshTouchDepthText() end
        st.Vehicle=nil st.Root=nil st.Seat=nil st.DesiredRootY=nil st.RootToBottom=nil
        if touchPanel.snapBtn then
            touchPanel.snapBtn.Text=snapUp and (RXZ.TouchPanelUpMode and "SNAP DOWN" or "SNAP UP") or "SNAP DOWN"
            touchPanel.snapBtn.BackgroundColor3=snapUp and Color3.fromRGB(180,35,60) or C.Blue
        end
        return true
    end
end
function RXZ.TouchSnapCarApplyManualDepth(value)
    local st=RXZ.TouchSnapCarState
    if not st or not st.Enabled or st.AboveMode then return false end
    local vehicle=st.Vehicle local root=st.Root
    if not vehicle or not vehicle.Parent or not root or not root.Parent then return false end
    local depth=math.clamp(tonumber(value) or 20,5,2000)
    local groundY=tonumber(st.SnapGroundY)
    if not groundY then return false end
    st.VerticalChaseMode="ready" st.VerticalChaseEnabled=false st.VerticalChaseDescending=false
    st.VerticalChaseTarget=nil st.VerticalChaseHomeY=nil st.VerticalChaseAnchorXZ=nil
    st.Depth=depth st.DesiredRootY=groundY-depth+(st.RootToBottom or 2.5)+0.35
    st.ItemTarget=nil st.ItemTargetPart=nil st.ItemReturnPivot=nil
    st.ItemPulseBusy=false st.ItemPulseTargetRootY=nil
    st.ItemPulseGeneration=(st.ItemPulseGeneration or 0)+1
    st.ItemNextAcquireTime=os.clock()+0.15
    st.ObstacleLiftOffset=0 st.ObstacleLiftUntil=0 st.ObstacleCooldownUntil=0
    st.DepthMoveSpeed=32 st.DepthMoveActive=true st.CurrentDriveSpeed=0
    RXZ.TouchSnapCarFullGhost(vehicle)
    RXZ.TouchSnapCarZeroMotion(vehicle,root)
    return true
end
function RXZ.TouchVerticalChaseStep()
    local st=RXZ.TouchSnapCarState
    if not st or not st.Enabled or st.AboveMode or st.Exiting then return false end
    local vehicle,root,seat=RXZ.TouchSnapCarGetVehicle()
    if not vehicle or not root or not seat or vehicle~=st.Vehicle or not st.SnapGroundY then return false end
    if root.Position.Y>=st.SnapGroundY-1 then return false end
    local mode=st.VerticalChaseMode or "ready"
    if mode=="down" then
        st.VerticalChaseMode="stop_down" st.VerticalChaseDescending=false st.VerticalChaseEnabled=true
        st.VerticalChaseAnchorXZ=nil st.DesiredRootY=root.Position.Y
        st.DepthMoveActive=false st.DepthMoveSpeed=32 st.CurrentDriveSpeed=0
        RXZ.TouchSnapCarZeroMotion(vehicle,root) return true
    elseif mode=="stop_down" then
        local home=tonumber(st.SnapGroundY)-20
        st.VerticalChaseHomeY=math.max(tonumber(st.VerticalChaseHomeY) or home,home)
        st.VerticalChaseMode="up" st.VerticalChaseDescending=false st.VerticalChaseEnabled=true
        st.VerticalChaseAnchorXZ=Vector2.new(root.Position.X,root.Position.Z)
        st.DesiredRootY=st.VerticalChaseHomeY
        st.ObstacleLiftOffset=0 st.ObstacleLiftUntil=0
        st.DepthMoveSpeed=st.VerticalChaseRiseSpeed or 56
        st.DepthMoveActive=true st.CurrentDriveSpeed=0
        RXZ.TouchSnapCarZeroMotion(vehicle,root) return true
    elseif mode=="up" then
        st.VerticalChaseMode="stop_up" st.VerticalChaseDescending=false st.VerticalChaseEnabled=true
        st.VerticalChaseAnchorXZ=nil st.DesiredRootY=root.Position.Y
        st.DepthMoveActive=false st.DepthMoveSpeed=32 st.VerticalChaseHomeY=nil st.CurrentDriveSpeed=0
        RXZ.TouchSnapCarZeroMotion(vehicle,root) return true
    else
        if st.OneShotBusy or st.ItemPulseBusy or st.ManualJumpBusy then return false end
        st.VerticalChaseMode="down" st.VerticalChaseEnabled=true st.VerticalChaseDescending=true
        st.VerticalChaseHomeY=root.Position.Y
        st.VerticalChaseAnchorXZ=Vector2.new(root.Position.X,root.Position.Z)
        st.VerticalChaseStart=os.clock() st.CurrentDriveSpeed=0
        st.DepthMoveActive=false st.DepthMoveSpeed=32
        st.ObstacleLiftOffset=0 st.ObstacleLiftUntil=0
        RXZ.TouchSnapCarZeroMotion(vehicle,root) return true
    end
end
function RXZ.TouchSnapCarShouldUse()
    if not touchPanel.root or not touchPanel.root.Enabled then return false end
    local _,_,seat=RXZ.TouchSnapCarGetVehicle()
    return seat~=nil
end
function RXZ.TouchNormalSnapToggle()
    if RXZ.TouchTargetFollowEnabled and RXZ.SetTouchTargetFollow then RXZ.SetTouchTargetFollow(false) end
    local c=LP.Character if not c then return end
    local root=c:FindFirstChild("HumanoidRootPart") if not root then return end
    if not snapUp then
        snapInitialY=root.Position.Y
        local off=snapOffset or 20
        local targetY=RXZ.TouchPanelUpMode and (snapInitialY+off) or (snapInitialY-off)
        snapUp=true
        root.CFrame=CFrame.new(root.Position.X,targetY,root.Position.Z)
        if touchPanel.snapBtn then
            touchPanel.snapBtn.Text=RXZ.TouchPanelUpMode and "SNAP DOWN" or "SNAP UP"
            touchPanel.snapBtn.BackgroundColor3=Color3.fromRGB(180,35,60)
        end
    else
        snapUp=false
        if snapInitialY then root.CFrame=CFrame.new(root.Position.X,snapInitialY+1.5,root.Position.Z) end
        snapInitialY=nil
        if touchPanel.snapBtn then
            touchPanel.snapBtn.Text="SNAP DOWN"
            touchPanel.snapBtn.BackgroundColor3=C.Blue
        end
    end
end
function RXZ.ToggleSnap()
    if RXZ.TouchSnapCarShouldUse() then
        local st=RXZ.TouchSnapCarState
        if not st.Enabled and RXZ.TouchCarRescueVoidOnSnapPress and RXZ.TouchCarRescueVoidOnSnapPress() then return end
        RXZ.TouchSnapCarSet(not st.Enabled)
    else
        RXZ.TouchNormalSnapToggle()
    end
end
function RXZ.SetTouchSnapState(v) if v==true~=snapUp then RXZ.ToggleSnap() end end
function RXZ.SetTouchNormalSnapState(v) if v==true==snapUp then return end RXZ.TouchNormalSnapToggle() end
function RXZ.SetVehicleSliderDriveState(v)
    if RXZ.TouchSnapCarState then RXZ.TouchSnapCarState.Enabled=v and true or false end
end

touchPanel.root=Instance.new("ScreenGui")
touchPanel.root.Name="RXZ_TouchPanelSlider"
touchPanel.root.ResetOnSpawn=false touchPanel.root.IgnoreGuiInset=true touchPanel.root.Parent=PlayerGui
-- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
-- ┃                                               ┃
-- ┃           O S A M A   D U M P E R             ┃
-- ┃                                               ┃
-- ┃      https://discord.gg/R6vnkNQNbP            ┃
-- ┃                                               ┃
-- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
local panelFrame=Instance.new("Frame",touchPanel.root)
panelFrame.Size=UDim2.fromOffset(210,150)
panelFrame.AnchorPoint=Vector2.new(0.5,0.5)
panelFrame.Position=UDim2.fromScale(0.5,0.5)
panelFrame.BackgroundColor3=Color3.fromRGB(12,12,15)
panelFrame.BorderSizePixel=0 panelFrame.Active=true panelFrame.Draggable=true panelFrame.ClipsDescendants=true
Instance.new("UICorner",panelFrame).CornerRadius=UDim.new(0,16)
local panelBg=Instance.new("ImageLabel",panelFrame)
panelBg.Name="RXZ_Background" panelBg.Size=UDim2.fromScale(1,1) panelBg.Position=UDim2.fromScale(0,0)
panelBg.BackgroundTransparency=1 panelBg.ScaleType=Enum.ScaleType.Crop
panelBg.Image="rbxthumb://type=Asset&id=76824741629432&w=420&h=420" panelBg.ZIndex=1
Instance.new("UICorner",panelBg).CornerRadius=UDim.new(0,16)

local lockBtn2=Instance.new("TextButton",panelFrame)
lockBtn2.Size=UDim2.fromOffset(28,28) lockBtn2.Position=UDim2.new(1,-66,0,8)
lockBtn2.BackgroundColor3=Color3.fromRGB(20,24,38) lockBtn2.BackgroundTransparency=0.5
lockBtn2.BorderSizePixel=0 lockBtn2.Text="U" lockBtn2.TextSize=12 lockBtn2.ZIndex=3
Instance.new("UICorner",lockBtn2).CornerRadius=UDim.new(0,8)
local lockState=false
lockBtn2.MouseButton1Click:Connect(function()
    lockState=not lockState panelFrame.Draggable=not lockState
    lockBtn2.Text=lockState and "L" or "U"
end)

local joyToggleBtn=Instance.new("TextButton",panelFrame)
joyToggleBtn.Size=UDim2.fromOffset(28,28) joyToggleBtn.Position=UDim2.new(1,-96,0,8)
joyToggleBtn.BackgroundColor3=Color3.fromRGB(20,24,38) joyToggleBtn.BackgroundTransparency=0.5
joyToggleBtn.BorderSizePixel=0 joyToggleBtn.Text="" joyToggleBtn.TextSize=13 joyToggleBtn.ZIndex=3
Instance.new("UICorner",joyToggleBtn).CornerRadius=UDim.new(0,8)
joyToggleBtn.MouseButton1Click:Connect(function() if RXZ.ToggleSnapJoystick then RXZ.ToggleSnapJoystick() end end)

local collapseBtn=Instance.new("TextButton",panelFrame)
collapseBtn.Size=UDim2.fromOffset(28,28) collapseBtn.Position=UDim2.new(1,-36,0,8)
collapseBtn.BackgroundColor3=Color3.fromRGB(220,50,80) collapseBtn.BackgroundTransparency=0.3
collapseBtn.BorderSizePixel=0 collapseBtn.Text="X" collapseBtn.TextColor3=C.White
collapseBtn.TextSize=12 collapseBtn.Font=Enum.Font.GothamBold collapseBtn.ZIndex=3
Instance.new("UICorner",collapseBtn).CornerRadius=UDim.new(0,8)
-- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
-- ┃                                               ┃
-- ┃           O S A M A   D U M P E R             ┃
-- ┃                                               ┃
-- ┃      https://discord.gg/R6vnkNQNbP            ┃
-- ┃                                               ┃
-- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
local compactBtn=Instance.new("TextButton",touchPanel.root)
compactBtn.Size=UDim2.fromOffset(50,50) compactBtn.Position=UDim2.new(0.04,0,0.42,0)
compactBtn.BackgroundColor3=C.Glass compactBtn.BackgroundTransparency=0.3
compactBtn.BorderSizePixel=0 compactBtn.Text="SNAP" compactBtn.TextColor3=C.White
compactBtn.TextSize=10 compactBtn.Font=Enum.Font.GothamBold compactBtn.Visible=false compactBtn.ZIndex=10
Instance.new("UICorner",compactBtn).CornerRadius=UDim.new(0,12)
collapseBtn.MouseButton1Click:Connect(function() panelFrame.Visible=false compactBtn.Visible=true end)
compactBtn.MouseButton1Click:Connect(function() compactBtn.Visible=false panelFrame.Visible=true end)

local sliderFrame=Instance.new("Frame",panelFrame)
sliderFrame.Size=UDim2.new(1,-30,0,40) sliderFrame.Position=UDim2.new(0,15,0,50)
sliderFrame.BackgroundTransparency=1 sliderFrame.ZIndex=3
local depthBar=Instance.new("Frame",sliderFrame)
depthBar.Size=UDim2.new(1,0,0,6) depthBar.Position=UDim2.new(0,0,0.5,-3)
depthBar.BackgroundColor3=Color3.fromRGB(200,200,200) depthBar.BorderSizePixel=0 depthBar.ZIndex=3
Instance.new("UICorner",depthBar).CornerRadius=UDim.new(1,0)
local depthFill=Instance.new("Frame",depthBar)
depthFill.Size=UDim2.new(depthValue/100,0,1,0) depthFill.BackgroundColor3=Color3.fromRGB(90,210,120)
depthFill.BorderSizePixel=0 depthFill.ZIndex=4
Instance.new("UICorner",depthFill).CornerRadius=UDim.new(1,0)
local depthKnob=Instance.new("Frame",depthFill)
depthKnob.Size=UDim2.fromOffset(18,18) depthKnob.AnchorPoint=Vector2.new(1,0.5)
depthKnob.Position=UDim2.new(1,0,0.5,0) depthKnob.BackgroundColor3=C.White
depthKnob.BorderSizePixel=0 depthKnob.ZIndex=5
Instance.new("UICorner",depthKnob).CornerRadius=UDim.new(1,0)
Instance.new("UIStroke",depthKnob).Color=Color3.fromRGB(90,210,120)
depthKnob:FindFirstChildOfClass("UIStroke").Thickness=2

local depthLabel=Instance.new("TextLabel",sliderFrame)
depthLabel.Size=UDim2.fromOffset(40,20) depthLabel.Position=UDim2.new(1,-40,0,-15)
depthLabel.BackgroundTransparency=1 depthLabel.Text=tostring(depthValue)
depthLabel.TextColor3=Color3.fromRGB(90,210,120) depthLabel.TextSize=12
depthLabel.Font=Enum.Font.GothamBold depthLabel.TextXAlignment=Enum.TextXAlignment.Right depthLabel.ZIndex=4

local depthName=Instance.new("TextLabel",sliderFrame)
depthName.Size=UDim2.fromOffset(100,20) depthName.Position=UDim2.new(0,0,0,-15)
depthName.BackgroundTransparency=1 depthName.Text="Snap Down"
depthName.TextColor3=Color3.fromRGB(160,160,170) depthName.TextSize=12
depthName.Font=Enum.Font.GothamMedium depthName.TextXAlignment=Enum.TextXAlignment.Left depthName.ZIndex=4

local depthDragging=false
local function setDepthFromX(x)
    local px=math.clamp(x-depthBar.AbsolutePosition.X,0,depthBar.AbsoluteSize.X)
    local val=math.floor(px/depthBar.AbsoluteSize.X*100+0.5)
    if val~=depthValue then
        depthValue=val
        depthFill.Size=UDim2.new(depthValue/100,0,1,0)
        depthLabel.Text=tostring(depthValue)
        if RXZ.TouchSnapCarApplyManualDepth then pcall(RXZ.TouchSnapCarApplyManualDepth,depthValue) end
    end
end
depthBar.InputBegan:Connect(function(i)
    if i.UserInputType==Enum.UserInputType.Touch or i.UserInputType==Enum.UserInputType.MouseButton1 then
        depthDragging=true setDepthFromX(i.Position.X)
    end
end)
-- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
-- ┃                                               ┃
-- ┃           O S A M A   D U M P E R             ┃
-- ┃                                               ┃
-- ┃      https://discord.gg/R6vnkNQNbP            ┃
-- ┃                                               ┃
-- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
UIS.InputChanged:Connect(function(i)
    if depthDragging and (i.UserInputType==Enum.UserInputType.Touch or i.UserInputType==Enum.UserInputType.MouseMovement) then
        setDepthFromX(i.Position.X)
    end
end)
UIS.InputEnded:Connect(function(i)
    if i.UserInputType==Enum.UserInputType.Touch or i.UserInputType==Enum.UserInputType.MouseButton1 then
        depthDragging=false
    end
end)
RXZ.RefreshTouchDepthText=function() depthLabel.Text=tostring(depthValue) end

local snapBtn=Instance.new("TextButton",panelFrame)
snapBtn.Size=UDim2.new(1,-16,0,36) snapBtn.Position=UDim2.new(0,8,1,-46)
snapBtn.BackgroundColor3=C.Blue snapBtn.BackgroundTransparency=0.25
snapBtn.BorderSizePixel=0 snapBtn.Text="SNAP DOWN" snapBtn.TextColor3=C.White
snapBtn.TextSize=14 snapBtn.Font=Enum.Font.GothamBold snapBtn.ZIndex=3
Instance.new("UICorner",snapBtn).CornerRadius=UDim.new(0,9)
snapBtn.MouseButton1Click:Connect(function() RXZ.ToggleSnap() end)
touchPanel.snapBtn=snapBtn

local joyRing=Instance.new("Frame",touchPanel.root)
joyRing.Name="RXZ_MobileThumbstick" joyRing.Size=UDim2.fromOffset(130,130)
joyRing.Position=UDim2.new(0,85,1,-170) joyRing.AnchorPoint=Vector2.new(0.5,0.5)
joyRing.BackgroundColor3=Color3.fromRGB(15,18,24) joyRing.BackgroundTransparency=0.55
joyRing.BorderSizePixel=0 joyRing.Active=true joyRing.Visible=false
Instance.new("UICorner",joyRing).CornerRadius=UDim.new(0.5,0)
local ringStroke=Instance.new("UIStroke",joyRing)
ringStroke.Color=Color3.fromRGB(220,50,80) ringStroke.Thickness=2 ringStroke.Transparency=0.45
local ringInner=Instance.new("Frame",joyRing)
ringInner.Size=UDim2.fromOffset(78,78) ringInner.AnchorPoint=Vector2.new(0.5,0.5)
ringInner.Position=UDim2.fromScale(0.5,0.5) ringInner.BackgroundTransparency=1
Instance.new("UICorner",ringInner).CornerRadius=UDim.new(0.5,0)
local ringInnerStroke=Instance.new("UIStroke",ringInner)
-- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
-- ┃                                               ┃
-- ┃           O S A M A   D U M P E R             ┃
-- ┃                                               ┃
-- ┃      https://discord.gg/R6vnkNQNbP            ┃
-- ┃                                               ┃
-- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
ringInnerStroke.Color=Color3.fromRGB(255,255,255) ringInnerStroke.Thickness=1 ringInnerStroke.Transparency=0.75
local joyThumb=Instance.new("Frame",joyRing)
joyThumb.Name="Thumb" joyThumb.Size=UDim2.fromOffset(56,56)
joyThumb.AnchorPoint=Vector2.new(0.5,0.5) joyThumb.Position=UDim2.fromScale(0.5,0.5)
joyThumb.BackgroundColor3=Color3.fromRGB(220,50,80) joyThumb.BackgroundTransparency=0.25
joyThumb.BorderSizePixel=0 joyThumb.ZIndex=5
Instance.new("UICorner",joyThumb).CornerRadius=UDim.new(0.5,0)
local thumbStroke=Instance.new("UIStroke",joyThumb)
thumbStroke.Color=Color3.fromRGB(255,255,255) thumbStroke.Thickness=1.5 thumbStroke.Transparency=0.35
local thumbDot=Instance.new("Frame",joyThumb)
thumbDot.Size=UDim2.fromOffset(16,16) thumbDot.AnchorPoint=Vector2.new(0.5,0.5)
thumbDot.Position=UDim2.fromScale(0.5,0.5) thumbDot.BackgroundColor3=Color3.fromRGB(255,255,255)
thumbDot.BackgroundTransparency=0.2 thumbDot.BorderSizePixel=0 thumbDot.ZIndex=6
Instance.new("UICorner",thumbDot).CornerRadius=UDim.new(0.5,0)

local joyDragging=false
local joyActiveTouch=nil
local joyMaxRadius=45
local function updateJoy(pos)
    local center=joyRing.AbsolutePosition+joyRing.AbsoluteSize*0.5
    local delta=Vector2.new(pos.X-center.X,pos.Y-center.Y)
    if delta.Magnitude>joyMaxRadius then delta=delta.Unit*joyMaxRadius end
    joyThumb.Position=UDim2.new(0.5,delta.X,0.5,delta.Y)
    local st=RXZ.TouchSnapCarState
    if st then
        st.JoystickActive=true
        st.JoystickSteer=math.clamp(delta.X/joyMaxRadius,-1,1)
        st.JoystickThrottle=math.clamp(-delta.Y/joyMaxRadius,-1,1)
    end
end
local function releaseJoy()
    joyDragging=false joyActiveTouch=nil
    pcall(function()
        TweenService:Create(joyThumb,TweenInfo.new(0.12,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
            {Position=UDim2.fromScale(0.5,0.5)}):Play()
    end)
    local st=RXZ.TouchSnapCarState
    if st then st.JoystickActive=false st.JoystickThrottle=0 st.JoystickSteer=0 end
end
joyRing.InputBegan:Connect(function(i)
    if i.UserInputType==Enum.UserInputType.Touch or i.UserInputType==Enum.UserInputType.MouseButton1 then
        joyDragging=true joyActiveTouch=i updateJoy(i.Position)
    end
end)
UIS.InputChanged:Connect(function(i)
    if joyDragging and (i==joyActiveTouch or i.UserInputType==Enum.UserInputType.MouseMovement or i.UserInputType==Enum.UserInputType.Touch) then
        updateJoy(i.Position)
    end
end)
UIS.InputEnded:Connect(function(i)
    if joyDragging and (i==joyActiveTouch or i.UserInputType==Enum.UserInputType.MouseButton1 or i.UserInputType==Enum.UserInputType.Touch) then
        releaseJoy()
    end
end)
function RXZ.SetSnapJoystickVisible(v)
    joyRing.Visible=v==true
    if not v then releaseJoy() end
end
function RXZ.ToggleSnapJoystick() RXZ.SetSnapJoystickVisible(not joyRing.Visible) end

UIS.InputBegan:Connect(function(input)
    local st=RXZ.TouchSnapCarState
    if not st.Enabled or input.UserInputType~=Enum.UserInputType.Touch then return end
    local vp=workspace.CurrentCamera and workspace.CurrentCamera.ViewportSize or Vector2.new(1920,1080)
    local ratio=vp.X/math.max(vp.Y,1)
    local a1n=math.clamp(0.68+(ratio-1.3)*0.18,0.76,0.845)
    local a2n=math.clamp(a1n-0.12,0.62,0.74)
    local a3n=math.clamp(a1n+0.13,0.88,0.97)
    local pos=input.Position
    local inY=pos.Y>=vp.Y*0.55 and pos.Y<=vp.Y*0.95
    if inY then
        if pos.X>=vp.X*a2n and pos.X<vp.X*a1n then
            st.NativeReverseTouch=input st.NativeReverseHeld=true return
        end
        if pos.X>=vp.X*a1n and pos.X<=vp.X*a3n then
            st.NativeForwardTouch=input st.NativeForwardHeld=true return
        end
    end
    if pos.Y>=vp.Y*0.6 and pos.X>=vp.X*0.04 and pos.X<=vp.X*0.36 then
        st.NativeSteerTouch=input
        local cx=vp.X*0.2
        local span=math.max(vp.X*0.115,1)
        st.NativeSteerAxis=math.clamp((pos.X-cx)/span,-1,1)
    end
end)
UIS.InputChanged:Connect(function(input)
    local st=RXZ.TouchSnapCarState
    if not st.NativeSteerTouch or input~=st.NativeSteerTouch then return end
    local vp=workspace.CurrentCamera and workspace.CurrentCamera.ViewportSize or Vector2.new(1920,1080)
    local cx=vp.X*0.2 local span=math.max(vp.X*0.115,1)
    st.NativeSteerAxis=math.clamp((input.Position.X-cx)/span,-1,1)
end)
UIS.InputEnded:Connect(function(input)
    local st=RXZ.TouchSnapCarState
    if st.NativeForwardTouch and input==st.NativeForwardTouch then
        st.NativeForwardTouch=nil st.NativeForwardHeld=false
    end
    if st.NativeReverseTouch and input==st.NativeReverseTouch then
        st.NativeReverseTouch=nil st.NativeReverseHeld=false
    end
    if st.NativeSteerTouch and input==st.NativeSteerTouch then
        st.NativeSteerTouch=nil st.NativeSteerAxis=0
    end
end)

task.spawn(function()
    while touchPanel.root and touchPanel.root.Parent do
        task.wait(0.1)
        local st=RXZ.TouchSnapCarState
        local _,_,seat=RXZ.TouchSnapCarGetVehicle()
        if not touchPanel.root.Enabled then
            if st.Enabled then RXZ.TouchSnapCarSet(false) end
        elseif seat then
            if snapUp then RXZ.TouchNormalSnapToggle() end
            if touchPanel.snapBtn then
                touchPanel.snapBtn.Text="Snap Car"
                touchPanel.snapBtn.BackgroundColor3=st.Enabled and Color3.fromRGB(180,35,60) or C.Blue
            end
        else
            if st.Enabled then RXZ.TouchSnapCarSet(false) end
            if touchPanel.snapBtn then
                touchPanel.snapBtn.Text=snapUp and (RXZ.TouchPanelUpMode and "SNAP DOWN" or "SNAP UP") or "SNAP DOWN"
                touchPanel.snapBtn.BackgroundColor3=snapUp and Color3.fromRGB(180,35,60) or C.Blue
            end
        end
    end
end)

RunService.Heartbeat:Connect(function(dt)
    local st=RXZ.TouchSnapCarState
    if not st.Enabled then return end
    local vehicle,root,seat=RXZ.TouchSnapCarGetVehicle()
    if not vehicle or not root or not seat or vehicle~=st.Vehicle then
        RXZ.TouchSnapCarSet(false) return
    end
    st.Root=root st.Seat=seat
    if st.OneShotBusy then RXZ.TouchSnapCarPhase(vehicle) return end
    RXZ.TouchSnapCarPhase(vehicle)

    local now=os.clock()
    local trigger=tonumber(st.ItemTriggerDistance) or 5
    local nearItem,nearPart,nearDist=nil,nil,math.huge
    if RXZ.FindNearestDroppedItem then
        nearItem,nearPart,nearDist=RXZ.FindNearestDroppedItem(root.Position,trigger+2,true)
    end
    if st.ItemPulseLastItem and (not nearItem or nearItem~=st.ItemPulseLastItem or nearDist>trigger+1.25) then
        st.ItemPulseLastItem=nil
    end
    local canPulse=not st.AboveMode and not st.ItemPulseBusy and not st.VerticalChaseEnabled and now>=(tonumber(st.ItemNextAcquireTime) or 0)
    if canPulse and nearItem and nearPart and nearDist<=trigger and nearItem~=st.ItemPulseLastItem then
        st.ItemPulseLastItem=nearItem st.ItemPulseBusy=true
        st.ItemPulseGeneration=(st.ItemPulseGeneration or 0)+1
        local gen=st.ItemPulseGeneration
        local rtb=tonumber(st.RootToBottom) or 2.5
        local below=tonumber(st.ItemPulseBelowOffset) or 4
        st.ItemPulseTargetRootY=nearPart.Position.Y-below+rtb
        task.spawn(function()
            local endT=os.clock()+(tonumber(st.ItemPulseHoldTime) or 1)
            while st.Enabled and st.ItemPulseGeneration==gen and os.clock()<endT do
                if nearPart and nearPart.Parent then st.ItemPulseTargetRootY=nearPart.Position.Y-below+rtb end
                task.wait(0.03)
            end
            if st.ItemPulseGeneration==gen then
                st.ItemPulseBusy=false st.ItemPulseTargetRootY=nil st.ItemNextAcquireTime=os.clock()+0.2
            end
        end)
    end

    local throttle,steer=0,0
    pcall(function()
        local tf=tonumber(seat.ThrottleFloat) or 0
        local t=tonumber(seat.Throttle) or 0
        throttle=math.abs(tf)>=math.abs(t) and tf or t
        local sf=tonumber(seat.SteerFloat) or 0
        local s=tonumber(seat.Steer) or 0
        steer=math.abs(sf)>=math.abs(s) and sf or s
    end)
    if math.abs(throttle)<0.05 then throttle=0 end
    if math.abs(steer)<0.05 then steer=0 end
    if st.JoystickActive then
        throttle=st.JoystickThrottle or 0 steer=st.JoystickSteer or 0
    else
    -- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
-- ┃                                               ┃
-- ┃           O S A M A   D U M P E R             ┃
-- ┃                                               ┃
-- ┃      https://discord.gg/R6vnkNQNbP            ┃
-- ┃                                               ┃
-- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
        if throttle==0 then
            if st.NativeForwardHeld and not st.NativeReverseHeld then throttle=1
            elseif st.NativeReverseHeld and not st.NativeForwardHeld then throttle=-1
            elseif st.NativeForwardHeld and st.NativeReverseHeld then throttle=0 end
        end
        if steer==0 and st.NativeSteerTouch then steer=st.NativeSteerAxis or 0 end
    end
    if throttle==0 and steer==0 then
        pcall(function()
            local c=LP.Character
            local h=c and c:FindFirstChildOfClass("Humanoid")
            if h and h.MoveDirection.Magnitude>0.05 then
                local look=RXZ.TouchSnapCarFlatLook(root.CFrame,seat)
                local right=Vector3.new(root.CFrame.RightVector.X,0,root.CFrame.RightVector.Z)
                if right.Magnitude>0.001 then right=right.Unit end
                throttle=math.clamp(h.MoveDirection:Dot(look),-1,1)
                steer=math.clamp(h.MoveDirection:Dot(right),-1,1)
            end
        end)
    end

    if RXZ.VehicleRarityModeEnabled and RXZ.VehicleRarityTarget then
        local tc=RXZ.VehicleRarityTarget.Character
        local th=tc and tc:FindFirstChildOfClass("Humanoid")
        local tr=tc and tc:FindFirstChild("HumanoidRootPart")
        if tr and th and th.Health>0 then
            local flat=Vector3.new(tr.Position.X-root.Position.X,0,tr.Position.Z-root.Position.Z)
            local d=flat.Magnitude
            local stop=RXZ.VehicleRarityStopDistance or 18
            local resume=RXZ.VehicleRarityResumeDistance or 28
            if RXZ.VehicleRarityArrived then
                if d>resume then RXZ.VehicleRarityArrived=false else throttle,steer=0,0 end
            end
            if not RXZ.VehicleRarityArrived and d<=stop then
                RXZ.VehicleRarityArrived=true throttle,steer=0,0
            end
            if not RXZ.VehicleRarityArrived and d>0.01 then
                local dir=flat.Unit
                local avoid,ratio=RXZ.VehicleModeGetAvoidanceDirection(vehicle,root,tc)
                if avoid then dir=avoid end
                local look=RXZ.TouchSnapCarFlatLook(root.CFrame,seat)
                local dot=math.clamp(look:Dot(dir),-1,1)
                steer=math.clamp(math.atan2(look.X*dir.Z-look.Z*dir.X,dot)/math.rad(62),-1,1)
                throttle=math.clamp((tonumber(ratio) or 1)*math.clamp((d-stop)/65,0,1),0,1)
            end
        end
    end

    local tick=os.clock()
    local allowProbe=st.ObstacleProtectionEnabled and not (st.VerticalChaseEnabled and st.VerticalChaseDescending) and not st.AboveMode
    if allowProbe and math.abs(throttle)>0.05 and tick>=(tonumber(st.ObstacleCooldownUntil) or 0) then
        local look=RXZ.TouchSnapCarFlatLook(root.CFrame)
        local dir=throttle<0 and -look or look
        local kind,dist=RXZ.TouchSnapCarObstacleProbe(vehicle,root,dir)
        if kind=="low" and dist<=7 then
            st.ObstacleLiftOffset=math.max(tonumber(st.ObstacleLiftOffset) or 0,tonumber(st.ObstacleLowLift) or 3.2)
            st.ObstacleLiftUntil=tick+0.42 st.ObstacleCooldownUntil=tick+0.18
            throttle=throttle*0.82
        elseif kind=="wall" and dist<=6.5 then
            st.ObstacleLiftOffset=math.max(tonumber(st.ObstacleLiftOffset) or 0,tonumber(st.ObstacleWallLift) or 1.35)
            st.ObstacleLiftUntil=tick+0.25 st.ObstacleCooldownUntil=tick+0.15
            throttle=throttle*0.24
            if (tonumber(st.CurrentDriveSpeed) or 0)>18 then st.CurrentDriveSpeed=18
            elseif (tonumber(st.CurrentDriveSpeed) or 0)<-18 then st.CurrentDriveSpeed=-18 end
        end
    end
    if tick>(tonumber(st.ObstacleLiftUntil) or 0) then
        st.ObstacleLiftOffset=RXZ.TouchSnapCarMoveTowards(tonumber(st.ObstacleLiftOffset) or 0,0,9*math.max(dt,1/240))
    end

    local flatLook=RXZ.TouchSnapCarFlatLook(root.CFrame,seat)
    local desiredY
    if st.ManualJumpBusy and tonumber(st.ManualJumpTargetY) then desiredY=tonumber(st.ManualJumpTargetY)
    elseif st.ItemPulseBusy and tonumber(st.ItemPulseTargetRootY) then desiredY=tonumber(st.ItemPulseTargetRootY)
    else desiredY=st.DesiredRootY or root.Position.Y end
    local newRootY=root.Position.Y
    if st.VerticalChaseMode=="down" and not st.AboveMode then
        throttle,steer=0,0 st.CurrentDriveSpeed=0
        local g=tonumber(st.SnapGroundY) or root.Position.Y
        local bottom=tonumber(st.RootToBottom) or 2.5
        local floorY=(g-2000)+bottom+0.35
        newRootY=math.max(floorY,root.Position.Y-(st.VerticalChaseSpeed or 72)*math.clamp(dt,1/240,0.05))
        if newRootY<=floorY+0.1 then
            st.VerticalChaseMode="stop_down" st.VerticalChaseDescending=false
            st.VerticalChaseAnchorXZ=nil st.DesiredRootY=newRootY st.DepthMoveActive=false
        end
    elseif st.AboveMode and not st.ManualJumpBusy and not st.ItemPulseBusy then
        local speed=st.AboveLowering and (st.AboveLowerSpeed or 20) or (st.AboveMoveSpeed or 24)
        newRootY=RXZ.TouchSnapCarMoveTowards(root.Position.Y,desiredY,speed*math.clamp(dt,1/240,0.05))
        if st.AboveLowering and math.abs(newRootY-desiredY)<=0.22 then st.AboveLandingReady=true end
    elseif st.DepthMoveActive and not st.ManualJumpBusy and not st.ItemPulseBusy then
        if math.abs(root.Position.Y-desiredY)>0.2 then
            local speed=(st.VerticalChaseMode=="up") and (tonumber(st.VerticalChaseRiseSpeed) or 56) or (tonumber(st.DepthMoveSpeed) or 32)
            newRootY=RXZ.TouchSnapCarMoveTowards(root.Position.Y,desiredY,speed*math.clamp(dt,1/240,0.05))
            throttle=0 st.CurrentDriveSpeed=0
        else
            newRootY=desiredY st.DepthMoveActive=false st.ItemNextAcquireTime=os.clock()+0.4
            if st.VerticalChaseMode=="up" then
                st.VerticalChaseMode="stop_up" st.VerticalChaseEnabled=true st.VerticalChaseDescending=false
                st.VerticalChaseHomeY=nil st.VerticalChaseTarget=nil st.VerticalChaseAnchorXZ=nil
                st.DepthMoveSpeed=32 st.DesiredRootY=desiredY
            end
        end
    end
    local anchorXZ
    if (st.VerticalChaseMode=="down" or st.VerticalChaseMode=="up") and st.VerticalChaseAnchorXZ then anchorXZ=st.VerticalChaseAnchorXZ end
    local targetCF=RXZ.TouchSnapCarUpright(
        Vector3.new(anchorXZ and anchorXZ.X or root.Position.X,newRootY+(tonumber(st.ObstacleLiftOffset) or 0),anchorXZ and anchorXZ.Y or root.Position.Z),
        flatLook)
    local tAbs=math.clamp(math.abs(throttle),0,1)
    local targetSpeed=0
    if tAbs>0 then
        if throttle<0 then targetSpeed=-(st.ReverseSpeed or 90)*tAbs
        else targetSpeed=(st.Speed or 90)*tAbs end
    end
    local safeMax=math.clamp(tonumber(st.SnapVehicleSafeMax) or 140,28,200)
    targetSpeed=math.clamp(targetSpeed,-safeMax*0.65,safeMax)
    local curSpeed=tonumber(st.CurrentDriveSpeed) or 0
    local reversing=curSpeed~=0 and targetSpeed~=0 and ((curSpeed>0 and targetSpeed<0) or (curSpeed<0 and targetSpeed>0))
    local rate
    if targetSpeed==0 then rate=st.StopRate or 200
    elseif reversing then rate=st.DirectionRate or 200
    else rate=st.AccelRate or 200 end
    rate=math.min(rate,math.max(25,safeMax*1.15))
    if RXZ.VehicleRarityModeEnabled and RXZ.VehicleRarityArrived then rate=math.min(rate,24) end
    st.CurrentDriveSpeed=RXZ.TouchSnapCarMoveTowards(curSpeed,targetSpeed,rate*math.max(dt,1/240))
    local steerMul=math.clamp((tonumber(st.SteerPower) or 200)/100,0,2)
    local speedFactor=math.max(tAbs,0.42)
    local newCF=targetCF*CFrame.Angles(0,-steer*2.8*steerMul*speedFactor*dt,0)
    local off=root.CFrame:ToObjectSpace(vehicle:GetPivot())
    pcall(function() vehicle:PivotTo(newCF*off) end)
    local vel=newCF.LookVector*st.CurrentDriveSpeed
    root.AssemblyLinearVelocity=Vector3.new(vel.X,0,vel.Z)
    root.AssemblyAngularVelocity=Vector3.zero
    if st.AboveMode and st.AboveLowering and st.AboveLandingReady then
        st.AboveLandingReady=false
        RXZ.TouchSnapCarDestroyAvatar() RXZ.TouchSnapCarRestore()
        st.Enabled=false st.AboveMode=false st.AboveLowering=false
        st.SafeStartXZ=nil st.SnapGroundY=nil st.DesiredRootY=nil st.RootToBottom=nil
        st.Vehicle=nil st.Root=nil st.Seat=nil
        st.Depth=tonumber(st.BaseDepth) or 13
        st.ObstacleLiftOffset=0 st.ObstacleLiftUntil=0 st.ObstacleCooldownUntil=0
        if RXZ.ChinoCarHover then
            RXZ.ChinoCarHover.Active=false RXZ.ChinoCarHover.Vehicle=nil RXZ.ChinoCarHover.Root=nil
            RXZ.ChinoCarHover.GroundY=nil RXZ.ChinoCarHover.LastSafeXZ=nil
        end
        if touchPanel.snapBtn then touchPanel.snapBtn.Text="Snap Car" touchPanel.snapBtn.BackgroundColor3=C.Blue end
    end
    if RXZ.VehicleSliderDriveState and RXZ.VehicleSliderDriveState.Enabled and RXZ.VehicleSliderDriveState.UpdateWheelVisuals then
        pcall(function() RXZ.VehicleSliderDriveState.UpdateWheelVisuals(vehicle,dt,st.CurrentDriveSpeed,throttle) end)
    end
    pcall(function()
        local h=LP.Character and LP.Character:FindFirstChildOfClass("Humanoid")
        if h then h.PlatformStand=false h.Sit=true end
    end)
end)

RunService.Heartbeat:Connect(function(dt)
    if not snapUp or not snapInitialY then return end
    local c=LP.Character local root=c and c:FindFirstChild("HumanoidRootPart")
    local h=c and c:FindFirstChildOfClass("Humanoid")
    if not root then return end
    if h and h.SeatPart then return end
    local targetY=RXZ.TouchPanelUpMode and (snapInitialY+snapOffset) or (snapInitialY-snapOffset)
    local move=Vector3.zero
    if h and h.MoveDirection.Magnitude>0.05 then
        local flat=Vector3.new(h.MoveDirection.X,0,h.MoveDirection.Z)
        if flat.Magnitude>0 then move=flat.Unit*(7*math.clamp(dt,0,0.05)) end
    end
    local p=root.Position+move
    root.CFrame=CFrame.new(p.X,targetY,p.Z)
    root.Velocity=Vector3.zero root.AssemblyLinearVelocity=Vector3.zero
end)

UIS.InputBegan:Connect(function(input,gpe)
    if RXZ.SelectingGhostKey then return end
    if RXZ.SelectingTouchPanelKey and input.UserInputType==Enum.UserInputType.Keyboard then
        if input.KeyCode~=Enum.KeyCode.Unknown then
            RXZ.TouchPanelKey=input.KeyCode RXZ.SelectingTouchPanelKey=false
            S.SnapCarKey=input.KeyCode.Name save()
        end
        return
    end
    if not gpe and input.KeyCode==RXZ.TouchPanelKey then
        RXZ.ToggleSnap()
    end
end)

Hooks.SkipCrates=function(v) if a35 then a35:SetEnabled(v==true) end end
Hooks.AutoPickup=function(v) a32=v==true end
Hooks.AutoPickupRadius=function(v) a31=tonumber(v) or 85 end
Hooks.Friends=function() pcall(a22) end

if S.SkipCrates and a35 then a35:SetEnabled(true) end
if S.AutoPickup then a32=true end
if S.Friends then pcall(a22) end
if S.SnapCarVehicleRarity then RXZ.VehicleRarityModeEnabled=true end
selectTab("Aim")
setVisible(true)
print("[RXZ BLOCK SPIN V4] Loaded — Aim / ESP / System / Friends / Gun / Config / Extras + Snap Car")

return {Settings=S, Hooks=Hooks, Gui=gui, Save=save, RXZ=RXZ}
-- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
-- ┃                                               ┃
-- ┃           O S A M A   D U M P E R             ┃
-- ┃                                               ┃
-- ┃      https://discord.gg/R6vnkNQNbP            ┃
-- ┃                                               ┃
-- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛