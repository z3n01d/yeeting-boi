-- This script has been converted to FE by iPxter

if game:GetService("RunService"):IsClient() then error("Script must be server-side in order to work; use h/ and not hl/") end
local Player,Mouse,mouse,UserInputService,ContextActionService = owner
do
	script.Parent = Player.Character

	--RemoteEvent for communicating
	local Event = Instance.new("RemoteEvent")
	Event.Name = "UserInput_Event"

	--Fake event to make stuff like Mouse.KeyDown work
	local function fakeEvent()
		local t = {_fakeEvent=true,Connect=function(self,f)self.Function=f end}
		t.connect = t.Connect
		return t
	end

	--Creating fake input objects with fake variables
	local m = {Target=nil,Hit=CFrame.new(),KeyUp=fakeEvent(),KeyDown=fakeEvent(),Button1Up=fakeEvent(),Button1Down=fakeEvent()}
	local UIS = {InputBegan=fakeEvent(),InputEnded=fakeEvent()}
	local CAS = {Actions={},BindAction=function(self,name,fun,touch,...)
		CAS.Actions[name] = fun and {Name=name,Function=fun,Keys={...}} or nil
	end}
	--Merged 2 functions into one by checking amount of arguments
	CAS.UnbindAction = CAS.BindAction

	--This function will trigger the events that have been :Connect()'ed
	local function te(self,ev,...)
		local t = m[ev]
		if t and t._fakeEvent and t.Function then
			t.Function(...)
		end
	end
	m.TrigEvent = te
	UIS.TrigEvent = te

	Event.OnServerEvent:Connect(function(plr,io)
		if plr~=Player then return end
		if io.isMouse then
			m.Target = io.Target
			m.Hit = io.Hit
		else
			local b = io.UserInputState == Enum.UserInputState.Begin
			if io.UserInputType == Enum.UserInputType.MouseButton1 then
				return m:TrigEvent(b and "Button1Down" or "Button1Up")
			end
			for _,t in pairs(CAS.Actions) do
				for _,k in pairs(t.Keys) do
					if k==io.KeyCode then
						t.Function(t.Name,io.UserInputState,io)
					end
				end
			end
			m:TrigEvent(b and "KeyDown" or "KeyUp",io.KeyCode.Name:lower())
			UIS:TrigEvent(b and "InputBegan" or "InputEnded",io,false)
		end
	end)
	Event.Parent = NLS([==[
	local Player = game:GetService("Players").LocalPlayer
	local Event = script:WaitForChild("UserInput_Event")

	local UIS = game:GetService("UserInputService")
	local input = function(io,a)
		if a then return end
		--Since InputObject is a client-side instance, we create and pass table instead
		Event:FireServer({KeyCode=io.KeyCode,UserInputType=io.UserInputType,UserInputState=io.UserInputState})
	end
	UIS.InputBegan:Connect(input)
	UIS.InputEnded:Connect(input)

	local Mouse = Player:GetMouse()
	local h,t
	--Give the server mouse data 30 times every second, but only if the values changed
	--If player is not moving their mouse, client won't fire events
	while task.wait(1/30) do
		if h~=Mouse.Hit or t~=Mouse.Target then
			h,t=Mouse.Hit,Mouse.Target
			Event:FireServer({isMouse=true,Target=t,Hit=h})
		end
	end]==],Player.Character)
	Mouse,mouse,UserInputService,ContextActionService = m,m,UIS,CAS
end

local char = owner.Character
local hum = char:FindFirstChildWhichIsA("Humanoid")
local ts = game:GetService("TweenService")
local hrp = char:FindFirstChild("HumanoidRootPart") or char:FindFirstChild("Torso")

if not hum.RigType == Enum.HumanoidRigType.R6 then warn("Please switch to R6 and run this script again.") end

--Values

local dbc = false
local keyDbc = false

--Code

local GOINGTOBRAZIL = Instance.new("Sound",hrp)
GOINGTOBRAZIL.SoundId = "rbxassetid://6531010123"
GOINGTOBRAZIL.Volume = 1

local rightC0 = char.Torso["Right Shoulder"].C0
local leftC0 = char.Torso["Left Shoulder"].C0

local rightArm = Instance.new("Weld")
rightArm.Name = "RightArmWeld"
rightArm.Parent = char.Torso
rightArm.Part1 = char["Right Arm"]
rightArm.Part0 = char.Torso
rightArm.C0 = char.Torso["Right Shoulder"].C0
rightArm.C1 = char.Torso["Right Shoulder"].C1

local leftArm = Instance.new("Weld")
leftArm.Name = "LeftArmWeld"
leftArm.Parent = char.Torso
leftArm.Part1 = char["Left Arm"]
leftArm.Part0 = char.Torso
leftArm.C0 = char.Torso["Left Shoulder"].C0
leftArm.C1 = char.Torso["Left Shoulder"].C1

hum.MaxHealth = math.huge
hum.Health = hum.MaxHealth

function readyAnim()
	for i = 0,1,0.2 do
		rightArm.C0 = rightArm.C0:Lerp(rightC0 * CFrame.Angles(0, 0, math.rad(15.011)),i)
		leftArm.C0 = leftArm.C0:Lerp(leftC0 * CFrame.Angles(0, 0, math.rad(-15.011)),i)
		task.wait()
	end
	for i = 0,1,0.2 do
		rightArm.C0 = rightArm.C0:Lerp(rightC0 * CFrame.new(0.224, 0.48, 0) * CFrame.Angles(0, 0, math.rad(154.985)),i)
		leftArm.C0 = leftArm.C0:Lerp(leftC0 * CFrame.new(-0.224, 0.48, 0) * CFrame.Angles(0, 0, math.rad(-154.985)),i)
		task.wait()
	end
end

function yeetAnim()
	for i = 0,1,0.2 do
		rightArm.C0 = rightArm.C0:Lerp(rightC0 * CFrame.new(1.382, 0.582, 0) * CFrame.Angles(0, 0, math.rad(94.996)),i)
		leftArm.C0 = leftArm.C0:Lerp(leftC0 * CFrame.new(-0.925, 0.637, 0) * CFrame.Angles(0, 0, math.rad(-94.996)),i)
		task.wait()
	end
	for i = 0,1,0.2 do
		rightArm.C0 = rightArm.C0:Lerp(rightC0 * CFrame.new(1.355, -0.16, 0) * CFrame.Angles(0, 0, math.rad(-35.008)),i)
		leftArm.C0 = leftArm.C0:Lerp(leftC0 * CFrame.new(-1.32, -0.172, 0) * CFrame.Angles(0, 0, math.rad(19.996)),i)
		task.wait()
	end
end

function defaultAnim()
	for i = 0,1,0.2 do
		rightArm.C0 = rightArm.C0:Lerp(rightC0,i)
		leftArm.C0 = leftArm.C0:Lerp(leftC0,i)
		task.wait()
	end
end

mouse.Button1Down:Connect(function()
	if mouse.Target ~= nil then
		local model = mouse.Target:FindFirstAncestorWhichIsA("Model")
		if model then
			if model:FindFirstChildWhichIsA("Humanoid") then
				local hum = model:FindFirstChildWhichIsA("Humanoid")
				local root = model:FindFirstChild("HumanoidRootPart") or model:FindFirstChild("Torso")
				if root then
					if dbc == false then
						dbc = true
						char:SetPrimaryPartCFrame(root.CFrame + Vector3.new(0,0,1.5))
						readyAnim()
						GOINGTOBRAZIL:Play()
						root.Anchored = false
						local weld = Instance.new("Weld",hrp)
						weld.Part0 = hrp
						weld.Part1 = root
						weld.C0 = CFrame.new(0,3,-0.5)
						hum.PlatformStand = true
						local keyConnection = nil
						keyConnection = mouse.KeyDown:Connect(function(key)
							if keyDbc == false then
								if key == "q" then
									keyDbc = true
									weld:Destroy()
									coroutine.wrap(function()
										yeetAnim()
										defaultAnim()
									end)()
									local Skreem = Instance.new("Sound",root)
									Skreem.SoundId = "rbxassetid://4620905105"
									Skreem.Volume = 1
									Skreem:Play()
									for _,joint in pairs(model:GetDescendants()) do
										if joint:IsA("Motor6D") then
											local A1 = Instance.new("Attachment")
											local A2 = Instance.new("Attachment")
											local socket = Instance.new("BallSocketConstraint")
											A1.Name = "A1"
											A2.Name = "A2"
											A1.Parent = joint.Part0
											A2.Parent = joint.Part1
											A1.CFrame = joint.C0
											A2.CFrame = joint.C1
											socket.Name = "Socket"
											socket.Parent = joint.Parent
											socket.Attachment0 = A1
											socket.Attachment1 = A2
											socket.LimitsEnabled = true
											socket.TwistLimitsEnabled = true
											joint.Enabled = false
										end
									end
									local Force = Instance.new("BodyVelocity")
									Force.Parent = root
									Force.Name = "Force"
									Force.MaxForce = Vector3.new(10000,10000,10000)
									Force.Velocity = (root.CFrame.lookVector)  * 100
									task.wait(3)
									for _,joint in pairs(model:GetDescendants()) do
										if joint:IsA("Motor6D") then
											if joint.Parent:FindFirstChild("Socket") then
												joint.Parent.Socket:Destroy()
											end
											if joint.Part0:FindFirstChild("A1") then
												joint.Part0.A1:Destroy()
											end
											if joint.Part1:FindFirstChild("A2") then
												joint.Part1.A2:Destroy()
											end
											joint.Enabled = true
										end
									end
									Skreem:Destroy()
									Force:Destroy()
									keyDbc = false
									dbc = false
									hum.PlatformStand = false
									keyConnection:Disconnect()
								elseif key == "e" then
									for _,joint in pairs(model:GetDescendants()) do
										if joint:IsA("Motor6D") then
											if joint.Parent:FindFirstChild("Socket") then
												joint.Parent.Socket:Destroy()
											end
											if joint.Part0:FindFirstChild("A1") then
												joint.Part0.A1:Destroy()
											end
											if joint.Part1:FindFirstChild("A2") then
												joint.Part1.A2:Destroy()
											end
											joint.Enabled = true
										end
									end
									coroutine.wrap(function()
										defaultAnim()
									end)()
									hum.PlatformStand = false
									weld:Destroy()
									dbc = false
									keyConnection:Disconnect()
								end
							end
						end)
					end
				end
			end
		end
	end
end)

mouse.KeyDown:Connect(function(key)
	if key == "x" then
		if dbc == false then
			local pos = mouse.Hit.Position
			dbc = true
			hrp.Anchored = true
			local part = Instance.new("Part",workspace)
			part.Name = "Thing"
			part.BrickColor = BrickColor.Random()
			part.Size = Vector3.new(0.5,0.1,0.5)
			part.Transparency = 1
			part.Anchored = true
			part.CanCollide = false
			local mesh = Instance.new("SpecialMesh",part)
			mesh.MeshType = Enum.MeshType.Sphere
			local incTween = ts:Create(part,TweenInfo.new(5,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut,0,false,0),{
				Size = Vector3.new(5,0.1,5),
				Transparency = 0.25,
			})
			incTween:Play()
			incTween.Completed:Wait()
			incTween:Destroy()
			
			local downTween = ts:Create(hrp,TweenInfo.new(5,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut,0,false,0),{
				Position = hrp.Position - Vector3.new(0,6,0)
			})
			downTween:Play()
			downTween.Completed:Wait()
			downTween:Destroy()
			hrp.Position = pos - Vector3.new(0,3,0)
			local part2 = Instance.new("Part",workspace)
			part2.Name = "Thing"
			part2.BrickColor = BrickColor.Random()
			part2.Size = Vector3.new(0.5,0.1,0.5)
			part2.Transparency = 1
			part2.Anchored = true
			part2.CanCollide = false
			local mesh2 = Instance.new("SpecialMesh",part2)
			mesh2.MeshType = Enum.MeshType.Sphere
			local incTween2 = ts:Create(part2,TweenInfo.new(5,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut,0,false,0),{
				Size = Vector3.new(5,0.1,5),
				Transparency = 0.25,
			})
			local upTween = ts:Create(hrp,TweenInfo.new(5,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut,0,false,0),{
				Position = pos + Vector3.new(0,3,0)
			})
			incTween2:Play()
			upTween:Play()
			upTween.Completed:Wait()
			upTween:Destroy()
			incTween2:Destroy()
			dbc = false
		end
	end
end)
