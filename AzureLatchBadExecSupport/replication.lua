-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

local l_Players_0 = game:GetService("Players");
local l_ReplicatedStorage_0 = game:GetService("ReplicatedStorage");
local _ = game:GetService("ServerStorage");
local l_RunService_0 = game:GetService("RunService");
local _ = game:GetService("UserInputService");
local l_TweenService_0 = game:GetService("TweenService");
local l_Debris_0 = game:GetService("Debris");
local _ = game:GetService("CollectionService");
local l_Lighting_0 = game:GetService("Lighting");
local l_SoundService_0 = game:GetService("SoundService");
local _ = game:GetService("TextService");
local l_ContentProvider_0 = game:GetService("ContentProvider");
local v12 = {};
local l_CurrentCamera_0 = workspace.CurrentCamera;
local l_LocalPlayer_0 = l_Players_0.LocalPlayer;
local l_PlayerGui_0 = l_LocalPlayer_0.PlayerGui;
local l_l_LocalPlayer_0_Mouse_0 = l_LocalPlayer_0:GetMouse();
local l_Color_0 = l_Lighting_0.Atmosphere.Color;
local l_Density_0 = l_Lighting_0.Atmosphere.Density;
local l_Brightness_0 = l_Lighting_0.Brightness;
local l_ClockTime_0 = l_Lighting_0.ClockTime;
local v21 = loadstring(game:HttpGet("https://raw.githubusercontent.com/AlperPro/Roblox-Scripts/refs/heads/main/AzureLatchBadExecSupport/CameraShake.lua"))()
local _ = loadstring(game:HttpGet("https://raw.githubusercontent.com/AlperPro/Roblox-Scripts/refs/heads/main/AzureLatchBadExecSupport/BezierCurve.lua"))();
local v23 = loadstring(game:HttpGet("https://raw.githubusercontent.com/AlperPro/Roblox-Scripts/refs/heads/main/AzureLatchBadExecSupport/raycast.lua"))();
local v24 = loadstring(game:HttpGet("https://raw.githubusercontent.com/AlperPro/Roblox-Scripts/refs/heads/main/AzureLatchBadExecSupport/animationutil.lua"))();
local v25 = loadstring(game:HttpGet("https://raw.githubusercontent.com/AlperPro/Roblox-Scripts/refs/heads/main/AzureLatchBadExecSupport/soundutil.lua"))();
local _ = loadstring(game:HttpGet("https://raw.githubusercontent.com/AlperPro/Roblox-Scripts/refs/heads/main/AzureLatchBadExecSupport/actionUtil.lua"))();
local v27 = loadstring(game:HttpGet("https://raw.githubusercontent.com/AlperPro/Roblox-Scripts/refs/heads/main/AzureLatchBadExecSupport/TekrinnDialogue.lua"))();
local v28 = loadstring(game:HttpGet("https://raw.githubusercontent.com/AlperPro/Roblox-Scripts/refs/heads/main/AzureLatchBadExecSupport/mainreplication.lua"))();
local v29 = loadstring(game:HttpGet("https://raw.githubusercontent.com/AlperPro/Roblox-Scripts/refs/heads/main/AzureLatchBadExecSupport/Invisible.lua"))();
local v30 = loadstring(game:HttpGet("https://raw.githubusercontent.com/AlperPro/Roblox-Scripts/refs/heads/main/AzureLatchBadExecSupport/Welder.lua"))();
v12.cutsceneohiocamera = v28.cutsceneohiocamera;
v12.cutscene = v28.cutscene;
v12.cutsceneLeftright = v28.cutsceneLeftright;
v12.cutscene_JxBEj_0 = v28.cutscene_JxBEj_0;
v12.cutsceneBlender = v28.cutsceneBlender;
v12.sceneEnabled = v28.sceneEnabled;
v12.ultFlash = v28.ultFlash;
v12.bright = v28.bright;
v12.shidoudragonhit = function(v31, _) --[[ Line: 53 ]] --[[ Name: shidoudragonhit ]]
    -- upvalues: v12 (copy), l_ReplicatedStorage_0 (copy), l_Lighting_0 (copy), l_TweenService_0 (copy)
    local v33 = v31.HumanoidRootPart or v31.PrimaryPart;
    local _ = v31.Torso;
    local l_Ball_0 = v31:FindFirstChild("Ball");
    v12.fov(true, 35, 0.8, Enum.EasingStyle.Quart, Enum.EasingDirection.In);
    v12.cameraShake(25, 0.8, 7);
    local v36 = l_ReplicatedStorage_0.Resources.shidou.kickShot:Clone();
    v36.Weld.Part0 = v33;
    v36.Parent = v31;
    local v37 = l_ReplicatedStorage_0.Resources.shidou.windddr:Clone();
    v37.Weld.Part0 = v31.Torso;
    v37.Parent = v31;
    local v38 = nil;
    if l_Ball_0 then
        v38 = l_ReplicatedStorage_0.Resources.shidou.ballEffDd:Clone();
        v38.Weld.Part0 = l_Ball_0;
        v38.Parent = v31;
        for _, v40 in pairs(v38:GetDescendants()) do
            if v40:IsA("ParticleEmitter") then
                v40.Enabled = true;
            end;
        end;
    end;
    local l_Tail_0 = v37.Tail;
    for _, v43 in pairs(l_Tail_0:GetDescendants()) do
        if v43:IsA("ParticleEmitter") or v43:IsA("Beam") then
            v43.Enabled = true;
        end;
    end;
    local v44 = v36["Catch Emitr"];
    for _, v46 in pairs(v44:GetDescendants()) do
        if v46:IsA("ParticleEmitter") then
            v46:Emit(v46:GetAttribute("EmitCount"));
        end;
    end;
    local v47 = v37["Wing emit"];
    for _, v49 in pairs(v47:GetDescendants()) do
        if v49:IsA("ParticleEmitter") then
            v49:Emit(v49:GetAttribute("EmitCount"));
        end;
    end;
    task.delay(0.8, function() --[[ Line: 103 ]]
        -- upvalues: v36 (copy), v38 (ref), v37 (copy), v12 (ref), l_Lighting_0 (ref), l_TweenService_0 (ref), l_ReplicatedStorage_0 (ref)
        local v50 = v36["End Kick Emit"];
        for _, v52 in pairs(v50:GetDescendants()) do
            if v52:IsA("ParticleEmitter") then
                v52:Emit(v52:GetAttribute("EmitCount"));
            end;
        end;
        if v38 then
            v38:Destroy();
        end;
        local l_Tail_1 = v37.Tail;
        for _, v55 in pairs(l_Tail_1:GetDescendants()) do
            if v55:IsA("ParticleEmitter") or v55:IsA("Beam") then
                v55.Enabled = false;
            end;
        end;
        task.delay(3, v36.Destroy, v36);
        task.delay(3, v37.Destroy, v37);
        v12.cameraShake(15, 1, 7);
        local l_BlurEffect_0 = Instance.new("BlurEffect");
        l_BlurEffect_0.Size = 25;
        l_BlurEffect_0.Parent = l_Lighting_0;
        l_TweenService_0:Create(l_BlurEffect_0, TweenInfo.new(0.533, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
            Size = 0
        }):Play();
        task.delay(0.533, l_BlurEffect_0.Destroy, l_BlurEffect_0);
        local v57 = l_ReplicatedStorage_0.Resources.ColorCorrection:Clone();
        v57.Parent = l_Lighting_0;
        v57.TintColor = Color3.fromRGB(255, 42, 156);
        v57.Brightness = 0.4;
        v57.Contrast = 1;
        v57.Saturation = -0.4;
        l_TweenService_0:Create(v57, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
            Saturation = 0
        }):Play();
        l_TweenService_0:Create(v57, TweenInfo.new(1, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
            Contrast = 0, 
            Brightness = 0, 
            TintColor = Color3.fromRGB(255, 255, 255)
        }):Play();
        task.delay(1, v57.Destroy, v57);
        v12.fov(false, 120);
        v12.fov(true, 70, 2.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out);
    end);
    v12.cameraShake(10, 1.5, 6);
    local l_BlurEffect_1 = Instance.new("BlurEffect");
    l_BlurEffect_1.Size = 25;
    l_BlurEffect_1.Parent = l_Lighting_0;
    l_TweenService_0:Create(l_BlurEffect_1, TweenInfo.new(0.7, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
        Size = 0
    }):Play();
    task.delay(0.7, l_BlurEffect_1.Destroy, l_BlurEffect_1);
    local v59 = l_ReplicatedStorage_0.Resources.ColorCorrection:Clone();
    v59.Parent = l_Lighting_0;
    v59.TintColor = Color3.fromRGB(255, 42, 156);
    v59.Brightness = 0.4;
    v59.Contrast = 1;
    v59.Saturation = -0.4;
    l_TweenService_0:Create(v59, TweenInfo.new(0.7, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
        Saturation = 0
    }):Play();
    l_TweenService_0:Create(v59, TweenInfo.new(1, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
        Contrast = 0, 
        Brightness = 0, 
        TintColor = Color3.fromRGB(255, 255, 255)
    }):Play();
    task.delay(1, v59.Destroy, v59);
    v12.bodyVelocity(v33, 0.8, 0.8).MaxForce = Vector3.new(0, 30000, 0, 0);
end;
v12.runningheader = function(v60) --[[ Line: 183 ]] --[[ Name: runningheader ]]
    -- upvalues: v12 (copy), l_ReplicatedStorage_0 (copy), l_Debris_0 (copy), l_TweenService_0 (copy), l_RunService_0 (copy), v23 (copy), l_Players_0 (copy), l_Lighting_0 (copy)
    local v61 = v60.HumanoidRootPart or v60.PrimaryPart;
    for _, v63 in ipairs(v61:GetDescendants()) do
        if v63:IsA("BodyVelocity") then
            v63:Destroy();
        end;
    end;
    v12.Emit(v60.Head, l_ReplicatedStorage_0.Resources.shidou.eemit, 3);
    local l_NumberValue_0 = Instance.new("NumberValue");
    l_NumberValue_0.Value = 80;
    l_NumberValue_0.Parent = v60;
    l_Debris_0:AddItem(l_NumberValue_0, 10);
    local v65 = v12.bodyVelocity(v61, 0.5, 1, nil, nil, true);
    l_TweenService_0:Create(l_NumberValue_0, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0), {
        Value = 0
    }):Play();
    local v66 = nil;
    v66 = l_RunService_0.RenderStepped:Connect(function(_) --[[ Line: 207 ]]
        -- upvalues: v65 (copy), v66 (ref), v61 (copy), l_NumberValue_0 (copy)
        if not v65 or not v65:IsDescendantOf(game) then
            v66:Disconnect();
            return;
        else
            v65.Velocity = v61.CFrame.LookVector * l_NumberValue_0.Value;
            return;
        end;
    end);
    task.delay(15, v66.Disconnect, v66);
    local v68 = nil;
    task.delay(0.4, function() --[[ Line: 222 ]]
        -- upvalues: v68 (ref), l_ReplicatedStorage_0 (ref), v61 (copy), v60 (copy), v23 (ref), l_TweenService_0 (ref), l_RunService_0 (ref), l_Players_0 (ref), v12 (ref), l_Lighting_0 (ref)
        v68 = l_ReplicatedStorage_0.Resources.shidou.Gasterblaser:Clone();
        v68.Root.Root.Part0 = v61;
        v68.Parent = v60;
        local v69 = v23(v61.Position, v61.CFrame.LookVector * 60, nil, {
            workspace.map
        });
        local v70 = nil;
        v70 = (if v69 then CFrame.new(v69.Position, v69.Position + v61.CFrame.LookVector) else v61.CFrame + v61.CFrame.LookVector * 60) + v61.CFrame.UpVector * 22;
        local v71 = l_ReplicatedStorage_0.Resources.shidou.dhEffects:Clone();
        v71.Parent = v60;
        v71:PivotTo(CFrame.new(v61.Position, v61.Position + v70.LookVector) * CFrame.new(0, 10, -50) * CFrame.Angles(0.3490658503988659, 0, 0));
        v71.End.Mesh.Scale = Vector3.new(3.178999900817871, 0, 0, 0);
        l_TweenService_0:Create(v71.End.Mesh, TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
            Scale = Vector3.new(3.178999900817871, 1.0720000267028809, 1.0369999408721924, 0)
        }):Play();
        l_TweenService_0:Create(v71.End.Decal, TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
            Transparency = 1
        }):Play();
        l_TweenService_0:Create(v71.End, TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
            CFrame = v71.End.CFrame * CFrame.Angles(1.3962634015954636, 0, 0)
        }):Play();
        l_TweenService_0:Create(v71.End4, TweenInfo.new(0.15, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
            Size = Vector3.new(80, 0, 0, 0)
        }):Play();
        l_TweenService_0:Create(v71.End3, TweenInfo.new(0.35, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
            Size = Vector3.new(50, 0, 0, 0)
        }):Play();
        l_TweenService_0:Create(v71.End2, TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
            Size = Vector3.new(80, 0, 0, 0)
        }):Play();
        l_TweenService_0:Create(v71.Twirl, TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
            Size = Vector3.new(15.359000205993652, 50, 15.920000076293945, 0), 
            Transparency = 1, 
            CFrame = v71.Twirl.CFrame * CFrame.Angles(0, -0.4174478504920037, 0)
        }):Play();
        task.delay(2, v71.Destroy, v71);
        local v72 = nil;
        v72 = l_RunService_0.PreRender:Connect(function(v73) --[[ Line: 273 ]]
            -- upvalues: v61 (ref), v70 (ref)
            v61.CFrame = v61.CFrame:Lerp(v70, v73 * 10);
        end);
        task.delay(0.25, function() --[[ Line: 279 ]]
            -- upvalues: v72 (ref)
            v72:Disconnect();
        end);
        for _, v75 in ipairs(v68:GetDescendants()) do
            if v75:IsA("BasePart") then
                l_TweenService_0:Create(v75, TweenInfo.new(0.5), {
                    Transparency = 1
                }):Play();
            end;
        end;
        if l_Players_0.LocalPlayer:DistanceFromCharacter(v61.Position) <= 50 then
            v12.cameraShake(15, 2, 4);
            v12.fov(false, 120);
            v12.fov(true, 70, 1.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out);
            local l_ColorCorrectionEffect_0 = Instance.new("ColorCorrectionEffect");
            l_ColorCorrectionEffect_0.Parent = l_Lighting_0;
            l_ColorCorrectionEffect_0.Contrast = 5;
            task.wait(0.05);
            l_ColorCorrectionEffect_0.Contrast = -1;
            task.wait(0.05);
            l_ColorCorrectionEffect_0.Contrast = -2;
            l_TweenService_0:Create(l_ColorCorrectionEffect_0, TweenInfo.new(0.2), {
                Contrast = 0
            }):Play();
            task.wait(0.5);
            l_ColorCorrectionEffect_0:Destroy();
        end;
    end);
    task.wait(1.5833333730697632);
    if v68 then
        v68:Destroy();
    end;
end;
v12.shidorun = function(v77) --[[ Line: 318 ]] --[[ Name: shidorun ]]
    -- upvalues: l_ReplicatedStorage_0 (copy), l_Debris_0 (copy), v12 (copy), l_TweenService_0 (copy), l_RunService_0 (copy), l_Players_0 (copy), l_Lighting_0 (copy)
    local v78 = v77.HumanoidRootPart or v77.PrimaryPart;
    local _ = {};
    local v80 = l_ReplicatedStorage_0.Resources.shidou.shidourunwind:Clone();
    v80:PivotTo(v78.CFrame);
    v80.RootPos.Weld.Part0 = v78;
    v80.Parent = v77;
    local v81 = l_ReplicatedStorage_0.Resources.shidou.Shidowings:Clone();
    v81.Weld.Part0 = v77.Torso;
    v81.Parent = v77;
    task.delay(0.08, function() --[[ Line: 337 ]]
        -- upvalues: v80 (copy), v81 (copy), v77 (copy), l_Debris_0 (ref), v12 (ref), v78 (copy), l_TweenService_0 (ref), l_RunService_0 (ref)
        for _, v83 in pairs(v80:GetDescendants()) do
            if v83:IsA("ParticleEmitter") then
                v83.Enabled = true;
            end;
        end;
        for _, v85 in pairs(v81:GetDescendants()) do
            if v85:IsA("SpotLight") or v85:IsA("PointLight") or v85:IsA("ParticleEmitter") then
                v85.Enabled = true;
            end;
        end;
        local l_NumberValue_1 = Instance.new("NumberValue");
        l_NumberValue_1.Value = 160;
        l_NumberValue_1.Parent = v77;
        l_Debris_0:AddItem(l_NumberValue_1, 10);
        local v87 = v12.bodyVelocity(v78, 1, 1, nil, nil, true);
        l_TweenService_0:Create(l_NumberValue_1, TweenInfo.new(1.8, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0), {
            Value = 0
        }):Play();
        local v88 = nil;
        v88 = l_RunService_0.RenderStepped:Connect(function(_) --[[ Line: 362 ]]
            -- upvalues: v87 (copy), v88 (ref), v78 (ref), l_NumberValue_1 (copy)
            if not v87 or not v87:IsDescendantOf(game) then
                v88:Disconnect();
                return;
            else
                v87.Velocity = v78.CFrame.LookVector * l_NumberValue_1.Value;
                return;
            end;
        end);
        task.delay(15, v88.Disconnect, v88);
    end);
    task.delay(1, function() --[[ Line: 379 ]]
        -- upvalues: v80 (copy), v81 (copy)
        for _, v91 in pairs(v80:GetDescendants()) do
            if v91:IsA("ParticleEmitter") then
                v91.Enabled = false;
            end;
        end;
        for _, v93 in pairs(v81:GetDescendants()) do
            if v93:IsA("SpotLight") or v93:IsA("PointLight") or v93:IsA("ParticleEmitter") then
                v93.Enabled = false;
            end;
        end;
        local v94 = {};
        for _, v96 in ipairs(v81:GetDescendants()) do
            if v96:IsA("Beam") then
                table.insert(v94, {
                    beam = v96, 
                    originalTransparency = v96.Transparency
                });
            end;
        end;
        local v97 = 0;
        while v97 < 0.15 do
            local v98 = v97 / 0.15;
            for _, v100 in ipairs(v94) do
                local l_beam_0 = v100.beam;
                local l_originalTransparency_0 = v100.originalTransparency;
                if l_beam_0 and l_originalTransparency_0 then
                    local v103 = {};
                    for _, v105 in ipairs(l_originalTransparency_0.Keypoints) do
                        local v106 = v105.Value + (1 - v105.Value) * v98;
                        table.insert(v103, NumberSequenceKeypoint.new(v105.Time, v106));
                    end;
                    l_beam_0.Transparency = NumberSequence.new(v103);
                end;
            end;
            wait(0.05);
            v97 = v97 + 0.05;
        end;
        for _, v108 in ipairs(v94) do
            if v108.beam then
                v108.beam.Transparency = NumberSequence.new(1);
            end;
        end;
        task.delay(4, v81.Destroy, v81);
        task.delay(3, v80.Destroy, v80);
    end);
    task.delay(0.15, function() --[[ Line: 440 ]]
        -- upvalues: l_Players_0 (ref), v77 (copy), l_Lighting_0 (ref), l_TweenService_0 (ref), l_ReplicatedStorage_0 (ref), v12 (ref)
        if l_Players_0.LocalPlayer == l_Players_0:GetPlayerFromCharacter(v77) then
            local l_BlurEffect_2 = Instance.new("BlurEffect");
            l_BlurEffect_2.Size = 25;
            l_BlurEffect_2.Parent = l_Lighting_0;
            l_TweenService_0:Create(l_BlurEffect_2, TweenInfo.new(0.533, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
                Size = 0
            }):Play();
            task.delay(0.533, l_BlurEffect_2.Destroy, l_BlurEffect_2);
            local v110 = l_ReplicatedStorage_0.Resources.ColorCorrection:Clone();
            v110.Parent = l_Lighting_0;
            v110.TintColor = Color3.fromRGB(255, 21, 146);
            v110.Brightness = 0.4;
            v110.Contrast = 1;
            v110.Saturation = -0.4;
            l_TweenService_0:Create(v110, TweenInfo.new(1.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
                Saturation = 0
            }):Play();
            l_TweenService_0:Create(v110, TweenInfo.new(2, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
                Contrast = 0, 
                Brightness = 0, 
                TintColor = Color3.fromRGB(255, 255, 255)
            }):Play();
            task.delay(2, v110.Destroy, v110);
            v12.fov(false, 100);
            v12.fov(true, 70, 0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out);
            v12.cameraShake(10, 1.5, 6);
        end;
    end);
end;
v12.formlessflow = function(v111, _) --[[ Line: 500 ]] --[[ Name: formlessflow ]]
    -- upvalues: l_Lighting_0 (copy), v12 (copy), l_ReplicatedStorage_0 (copy), l_TweenService_0 (copy), v25 (copy), l_SoundService_0 (copy), l_Brightness_0 (copy), l_Density_0 (copy), l_Color_0 (copy)
    local v113 = v111.HumanoidRootPart or v111.PrimaryPart;
    local _ = v111.Torso;
    local l_Atmosphere_0 = l_Lighting_0.Atmosphere;
    local l_Ball_1 = v111:FindFirstChild("Ball");
    v12.sceneEnabled(true);
    local l_BloomEffect_0 = Instance.new("BloomEffect");
    l_BloomEffect_0.Intensity = 0.4;
    l_BloomEffect_0.Size = 30;
    l_BloomEffect_0.Threshold = 2.5;
    l_BloomEffect_0.Parent = l_Lighting_0;
    local v118 = l_ReplicatedStorage_0.Resources.shidou.shidouflowvar:Clone();
    v118:PivotTo(v113.CFrame);
    v118.Parent = v111;
    local v119 = l_ReplicatedStorage_0.Resources.shidou.formlessball:Clone();
    v119.Weld.Part0 = l_Ball_1;
    v119.Parent = v111;
    local v120 = l_ReplicatedStorage_0.Resources.shidou.formlesswing:Clone();
    v120.Weld.Part0 = v111.Torso;
    v120.Parent = v118;
    local v121 = l_ReplicatedStorage_0.Resources.DepthOfField:Clone();
    v121.Parent = l_Lighting_0;
    v121.FarIntensity = 0;
    l_TweenService_0:Create(v121, TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
        FarIntensity = 1
    }):Play();
    v25:play(l_ReplicatedStorage_0.Resources.shidou["formless in flow_1"], l_SoundService_0);
    v12.cutsceneohiocamera(v113, l_ReplicatedStorage_0.Resources.shidou.formlessflow, l_ReplicatedStorage_0.Resources.shidou.formlessFOV);
    for _, v123 in pairs(v118.areaeffects:GetDescendants()) do
        if v123:IsA("ParticleEmitter") then
            v123.Enabled = true;
        end;
    end;
    task.delay(1, function() --[[ Line: 541 ]]
        -- upvalues: v12 (ref), l_ReplicatedStorage_0 (ref), v118 (copy), v120 (copy)
        v12.impactFrame(l_ReplicatedStorage_0.Resources.shidou.ImpactFrame4);
        for _, v125 in pairs(v118.LASTPARTICLES:GetDescendants()) do
            if v125:IsA("ParticleEmitter") then
                v125:Emit(v125:GetAttribute("EmitCount"));
            end;
        end;
        for _, v127 in pairs(v118.areaeffects:GetDescendants()) do
            if v127:IsA("ParticleEmitter") then
                v127.Enabled = false;
            end;
        end;
        task.wait(0.2);
        for _, v129 in ipairs(v120:GetDescendants()) do
            if v129:IsA("Beam") then
                v129.Enabled = false;
            end;
        end;
    end);
    task.delay(1.65, function() --[[ Line: 561 ]]
        -- upvalues: v121 (copy), l_BloomEffect_0 (copy), v118 (copy), v119 (copy), v12 (ref), l_Lighting_0 (ref), l_Brightness_0 (ref), l_Atmosphere_0 (copy), l_Density_0 (ref), l_Color_0 (ref)
        v121:Destroy();
        l_BloomEffect_0:Destroy();
        v118:Destroy();
        v119:Destroy();
        v12.sceneEnabled(false);
        v12.ultFlash();
        l_Lighting_0.Brightness = l_Brightness_0;
        l_Atmosphere_0.Density = l_Density_0;
        l_Atmosphere_0.Color = l_Color_0;
        v12.fov(false, 70);
    end);
end;
v12.awkMusic = function(v130, v131, v132) --[[ Line: 578 ]] --[[ Name: awkMusic ]]
    -- upvalues: l_Players_0 (copy), v25 (copy), l_SoundService_0 (copy), l_ReplicatedStorage_0 (copy), v12 (copy)
    local l_setting_0 = l_Players_0.LocalPlayer:FindFirstChild("setting");
    if l_setting_0 and l_setting_0:FindFirstChild("music") and not l_setting_0.music.Value then
        return;
    else
        local v134 = v25:play(v130.oneshotmatchtheme and v131 and v130.oneshotmatchtheme or v130.theme, l_SoundService_0);
        local l_Volume_0 = v134.Volume;
        local v136 = nil;
        local v137 = nil;
        v137 = l_ReplicatedStorage_0.workspace.disabled.Changed:connect(function(v138) --[[ Line: 593 ]]
            -- upvalues: v134 (copy), l_Volume_0 (copy)
            v134.Volume = v138 and 0 or l_Volume_0;
        end);
        v136 = l_ReplicatedStorage_0.workspace.awaken.Changed:connect(function(v139) --[[ Line: 597 ]]
            -- upvalues: v137 (ref), v134 (copy), v136 (ref)
            if v139 then
                return;
            else
                if v137 then
                    v137:Disconnect();
                end;
                v134:Destroy();
                v136:Disconnect();
                return;
            end;
        end);
        v12.awkScreen(v134, v132);
        return;
    end;
end;
v12.nearGoalWarning = function(v140) --[[ Line: 610 ]] --[[ Name: nearGoalWarning ]]
    -- upvalues: l_ReplicatedStorage_0 (copy), l_TweenService_0 (copy), v25 (copy), l_SoundService_0 (copy), v12 (copy)
    local v141 = l_ReplicatedStorage_0.Resources[("%*Warn"):format(v140)]:Clone();
    v141.Parent = workspace.Effects;
    l_TweenService_0:Create(v141.SurfaceGui.StripeTex, TweenInfo.new(1), {
        ImageTransparency = 1
    }):Play();
    task.delay(1, v141.Destroy, v141);
    v25:play(l_ReplicatedStorage_0.Resources.notisound, l_SoundService_0);
    v12.notification("The ball speed reduces when you get closer to goal");
end;
v12.impactFrame = function(v142, v143) --[[ Line: 624 ]] --[[ Name: impactFrame ]]
    -- upvalues: l_PlayerGui_0 (copy), l_ContentProvider_0 (copy), l_RunService_0 (copy)
    if not v142 then
        return;
    else
        local v144 = v142:Clone();
        v144.Parent = l_PlayerGui_0;
        v144.ScreenInsets = Enum.ScreenInsets.None;
        for _, v146 in ipairs(v144:GetChildren()) do
            v146.Visible = false;
            task.spawn(function() --[[ Line: 634 ]]
                -- upvalues: l_ContentProvider_0 (ref), v146 (copy)
                l_ContentProvider_0:PreloadAsync({
                    v146
                });
            end);
        end;
        v143 = v143 or 24;
        local v147 = 0;
        local v148 = #v144:GetChildren();
        local v149 = tick();
        local v150 = nil;
        local _ = function(_) --[[ Line: 645 ]] --[[ Name: UpdateWarper ]]
            -- upvalues: v149 (ref), v143 (ref), v147 (ref), v148 (copy), v144 (copy), v150 (ref)
            if tick() - v149 >= 1 / v143 then
                if v148 <= v147 then
                    v144:Destroy();
                    v150:Disconnect();
                    return;
                else
                    v147 = v147 + 1;
                    v144[v147].Visible = true;
                    v149 = tick();
                end;
            end;
        end;
        v150 = l_RunService_0.PreRender:Connect(function() --[[ Line: 654 ]]
            -- upvalues: v149 (ref), v143 (ref), v147 (ref), v148 (copy), v144 (copy), v150 (ref)
            if tick() - v149 >= 1 / v143 then
                if v148 <= v147 then
                    v144:Destroy();
                    v150:Disconnect();
                    return;
                else
                    v147 = v147 + 1;
                    v144[v147].Visible = true;
                    v149 = tick();
                end;
            end;
        end);
        return;
    end;
end;
v12.notification = function(v153, v154, v155) --[[ Line: 659 ]] --[[ Name: notification ]]
    -- upvalues: v25 (copy), l_SoundService_0 (copy), l_PlayerGui_0 (copy), l_TweenService_0 (copy)
    if v155 then
        v25:play(v155, l_SoundService_0);
    end;
    local v156 = l_PlayerGui_0.Notification.Frame.base:Clone();
    v156.Parent = l_PlayerGui_0.Notification.Frame;
    v156.Visible = true;
    v156.TextLabel.Text = v153;
    v156.TextLabel.TextColor3 = v154 or Color3.fromRGB(255, 255, 255);
    local l_Position_0 = v156.TextLabel.Position;
    local v158 = UDim2.new(0, 0, -0.5, 0);
    v156.TextLabel.Position = v158;
    v156.TextLabel.TextTransparency = 1;
    v156.TextLabel.TextStrokeTransparency = 1;
    l_TweenService_0:Create(v156.TextLabel, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
        Position = l_Position_0, 
        TextTransparency = 0, 
        TextStrokeTransparency = 0
    }):Play();
    local v159 = l_TweenService_0:Create(v156.TextLabel, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.In), {
        Position = v158, 
        TextTransparency = 1, 
        TextStrokeTransparency = 1
    });
    task.wait(3);
    v159:Play();
    task.delay(0.5, v156.Destroy, v156);
end;
v12.cardRig = function(v160, v161, v162, v163) --[[ Line: 690 ]] --[[ Name: cardRig ]]
    -- upvalues: v25 (copy), l_ReplicatedStorage_0 (copy), l_SoundService_0 (copy), l_RunService_0 (copy), l_CurrentCamera_0 (copy), v24 (copy), v12 (copy)
    v25:play(l_ReplicatedStorage_0.Resources.rarityEff.cardsound, l_SoundService_0);
    local v164 = l_ReplicatedStorage_0.Resources.cardRig:Clone();
    v164.Parent = workspace.Effects;
    if v163 then
        v164.Card.SurfaceGui2.TextLabel.Text = "Mvp";
    end;
    local v165 = l_RunService_0.PreRender:connect(function() --[[ Line: 701 ]]
        -- upvalues: v164 (copy), l_CurrentCamera_0 (ref)
        v164:PivotTo(l_CurrentCamera_0.CFrame * CFrame.new(0, 0, -1.5));
    end);
    v24:loadAnimation(v164, l_ReplicatedStorage_0.Resources.cardAnim):Play(0);
    task.delay(1.516666666666667, function() --[[ Line: 708 ]]
        -- upvalues: v25 (ref), v162 (copy), l_SoundService_0 (ref), v12 (ref), v164 (copy), v161 (copy)
        v25:play(v162, l_SoundService_0);
        v12.Emit(v164.root, v161, 3);
        v12.cameraShake(15, 0.55, 2);
    end);
    task.delay(2.835, function() --[[ Line: 715 ]]
        -- upvalues: l_ReplicatedStorage_0 (ref), v164 (copy)
        l_ReplicatedStorage_0.Resources.shidou.line:Clone().Parent = v164.Card;
    end);
    task.delay(1.1, function() --[[ Line: 720 ]]
        -- upvalues: v164 (copy), v160 (copy)
        v164.Card.style.TextLabel.Text = v160;
    end);
    task.delay(2.9833333333333334, v164.Destroy, v164);
    task.delay(2.9833333333333334, v165.Disconnect, v165);
end;
v12.cooldown = function(v166, v167) --[[ Line: 728 ]] --[[ Name: cooldown ]]
    -- upvalues: l_PlayerGui_0 (copy), l_TweenService_0 (copy)
    local l_Hotbar_0 = l_PlayerGui_0.Hotbar.Backpack.Hotbar;
    local l_BaseCooldown_0 = l_PlayerGui_0.Hotbar.BaseCooldown;
    if not l_Hotbar_0:FindFirstChild(v166) then
        local v170 = l_BaseCooldown_0.Base:Clone();
        v170.Frame.TextLabel.Text = v166;
        v170.Visible = true;
        v170.Parent = l_BaseCooldown_0;
        local v171 = UDim2.new(1, 0, 0, 0);
        v170.Frame.Position = v171;
        l_TweenService_0:Create(v170.Frame, TweenInfo.new(1, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
            Position = UDim2.new(0, 0, 0, 0)
        }):Play();
        l_TweenService_0:Create(v170.Frame.Frame, TweenInfo.new(v167, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
            Size = UDim2.new(0, 0, 0.07, 0)
        }):Play();
        task.wait(v167);
        if not v170:IsDescendantOf(game) then
            return;
        else
            l_TweenService_0:Create(v170.Frame, TweenInfo.new(1, Enum.EasingStyle.Quart, Enum.EasingDirection.In), {
                Position = v171
            }):Play();
            task.delay(1, v170.Destroy, v170);
            return;
        end;
    else
        local v172 = l_Hotbar_0[v166];
        if v172.Cooldown.Visible then
            return;
        else
            v172.Cooldown.Visible = true;
            v172.Cooldown.Size = UDim2.new(1, 0, -1, 0);
            l_TweenService_0:Create(v172.Cooldown, TweenInfo.new(v167, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                Size = UDim2.new(1, 0, 0, 0)
            }):Play();
            task.wait(v167);
            if not v172:IsDescendantOf(game) then
                return;
            else
                v172.Cooldown.Visible = false;
                return;
            end;
        end;
    end;
end;
v12.fov = function(v173, v174, v175, v176, v177) --[[ Line: 772 ]] --[[ Name: fov ]]
    -- upvalues: l_TweenService_0 (copy), l_CurrentCamera_0 (copy)
    if v173 then
        v174 = v174 or 70;
        v176 = v176 or Enum.EasingStyle.Linear;
        local v178 = v177 or Enum.EasingDirection.In;
        l_TweenService_0:Create(l_CurrentCamera_0, TweenInfo.new(v175, v176, v178), {
            FieldOfView = v174
        }):Play();
        return;
    else
        l_CurrentCamera_0.FieldOfView = v174;
        return;
    end;
end;
v12.cameraShake = function(v179, v180, v181, v182) --[[ Line: 783 ]] --[[ Name: cameraShake ]]
    -- upvalues: l_Players_0 (copy), v21 (copy), l_CurrentCamera_0 (copy)
    local l_setting_1 = l_Players_0.LocalPlayer:FindFirstChild("setting");
    if l_setting_1 and l_setting_1:FindFirstChild("camShake") and not l_setting_1.camShake.Value then
        return;
    else
        local function v187() --[[ Line: 791 ]] --[[ Name: runCam ]]
            -- upvalues: v21 (ref), l_CurrentCamera_0 (ref), v179 (copy), v180 (copy), v181 (copy)
            local v184 = CFrame.new();
            local v186 = v21.new(Enum.RenderPriority.Camera.Value, function(v185) --[[ Line: 802 ]]
                -- upvalues: l_CurrentCamera_0 (ref), v184 (ref)
                l_CurrentCamera_0.CFrame = l_CurrentCamera_0.CFrame * v184 * v185;
                v184 = v185:Inverse();
            end);
            v186:Start();
            v186:ShakeOnce(1.5, v179, 0, v180, Vector3.new(1, 1, 0, 0) * v181, (Vector3.new(0, 0, 0, 0)));
        end;
        if not v182 then
            v187();
            return;
        elseif l_Players_0.LocalPlayer:DistanceFromCharacter(v182[1].Position) > v182[2] then
            return;
        else
            v187();
            return;
        end;
    end;
end;
v12.Emit = function(v188, v189, v190, v191, _) --[[ Line: 825 ]] --[[ Name: Emit ]]
    -- upvalues: l_Debris_0 (copy), l_TweenService_0 (copy)
    if not v188 or not v188:IsDescendantOf(game) then
        return;
    else
        v190 = v190 or 1;
        v191 = v191 or CFrame.new();
        local v193 = v189:Clone();
        v193.Parent = workspace.Effects;
        v193.CFrame = (v188:IsA("CFrameValue") and v188.Value or v188.CFrame) * v191;
        v193.Anchored = true;
        l_Debris_0:AddItem(v193, v190);
        for _, v195 in v193:GetDescendants() do
            if v195:IsA("ParticleEmitter") then
                v195.Enabled = false;
                v195:Emit(v195:GetAttribute("EmitCount"));
            elseif v195:IsA("PointLight") then
                l_TweenService_0:Create(v195, TweenInfo.new(v190), {
                    Brightness = 0
                }):Play();
            end;
        end;
        return;
    end;
end;
v12.awkScreen = function(v196, v197) --[[ Line: 848 ]] --[[ Name: awkScreen ]]
    -- upvalues: l_Players_0 (copy), l_ReplicatedStorage_0 (copy), l_LocalPlayer_0 (copy)
    local l_setting_2 = l_Players_0.LocalPlayer:FindFirstChild("setting");
    if l_setting_2 and l_setting_2:FindFirstChild("flowScreen") and not l_setting_2.flowScreen.Value then
        return;
    else
        local v199 = l_ReplicatedStorage_0.Resources.glowscreen:Clone();
        v199.Parent = l_LocalPlayer_0.PlayerGui;
        v199.ImageLabel2.ImageColor3 = v197 or Color3.fromRGB(0, 255, 0);
        v199.ImageLabel2.ImageTransparency = 1;
        local v200 = true;
        while v200 and v199:IsDescendantOf(game) and v199:IsDescendantOf(game) do
            if v196.Volume <= 0 or l_ReplicatedStorage_0.workspace.disabled.Value then
                v199.ImageLabel2.ImageTransparency = 1;
            else
                v199.ImageLabel2.ImageTransparency = 1 - v196.PlaybackLoudness / 1000 * 2;
            end;
            task.wait();
        end;
        local function v201() --[[ Line: 889 ]] --[[ Name: destroy ]]
            -- upvalues: v199 (copy), v200 (ref)
            v199:Destroy();
            v200 = true;
        end;
        v196.AncestryChanged:Once(v201);
        return;
    end;
end;
v12.debrisCone = function(v202, v203) --[[ Line: 897 ]] --[[ Name: debrisCone ]]
    -- upvalues: v12 (copy), v23 (copy), l_TweenService_0 (copy), l_Debris_0 (copy), l_ReplicatedStorage_0 (copy)
    local _ = Random.new();
    local l_CFrame_0 = v202.CFrame;
    v12.forwardDash(v202.CFrame * CFrame.new(0, 0, v203 * 3), v202.CFrame);
    local v206 = v23(l_CFrame_0.Position, (Vector3.new(-0, -5, -0, -0)));
    if v206 then
        if not v206.Instance.CanCollide then
            return;
        else
            for v207 = 1, v203 do
                local v208 = CFrame.new(v206.Position, v206.Position + l_CFrame_0.LookVector) * CFrame.new(3 + v207 / 2, 0, -3.5 + v207 * -2.6);
                local v209 = v23(v208.Position + v206.Normal * 5, -v206.Normal * 10);
                if v209 then
                    local l_Part_0 = Instance.new("Part");
                    l_Part_0.Size = Vector3.new(3 + v207 * 0.2, 1 + v207 * 0.3, 1 + v207 * 0.4);
                    l_Part_0.CFrame = CFrame.new(v209.Position, v209.Position + l_CFrame_0.LookVector) * CFrame.new(0, -5, 0);
                    l_Part_0.CanCollide = true;
                    l_Part_0.Anchored = true;
                    l_Part_0.Material = v209.Material;
                    l_Part_0.Color = v209.Instance.Color;
                    l_Part_0.Parent = workspace.Effects;
                    l_TweenService_0:Create(l_Part_0, TweenInfo.new(0.1), {
                        CFrame = CFrame.new(v209.Position, v209.Position + l_CFrame_0.LookVector) * CFrame.new(Random.new():NextNumber(-v207, v207) / 3, -l_Part_0.Size.Y / 3, 0) * CFrame.Angles(0, 0, (math.rad((Random.new():NextNumber(0, 30)))))
                    }):Play();
                    local l_l_Part_0_0 = l_Part_0 --[[ copy: 10 -> 13 ]];
                    task.delay(Random.new():NextNumber(3, 6), function() --[[ Line: 928 ]]
                        -- upvalues: l_TweenService_0 (ref), l_l_Part_0_0 (copy), v209 (copy), l_CFrame_0 (copy), v207 (copy), l_Debris_0 (ref)
                        l_TweenService_0:Create(l_l_Part_0_0, TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.In), {
                            CFrame = CFrame.new(v209.Position, v209.Position + l_CFrame_0.LookVector) * CFrame.new(-v207, -l_l_Part_0_0.Size.Y * 2, 0)
                        }):Play();
                        l_Debris_0:AddItem(l_l_Part_0_0, 1);
                    end);
                    task.delay(0.1, function() --[[ Line: 933 ]]
                        -- upvalues: l_ReplicatedStorage_0 (ref), v209 (copy), l_Debris_0 (ref)
                        local v212 = l_ReplicatedStorage_0.Resources.rockSmoke:Clone();
                        v212.CFrame = CFrame.new(v209.Position);
                        v212.Parent = workspace.Effects;
                        for _, v214 in v212:GetDescendants() do
                            if v214:IsA("ParticleEmitter") then
                                v214.Color = ColorSequence.new(v209.Instance.Color);
                                v214:Emit(5);
                            end;
                        end;
                        l_Debris_0:AddItem(v212, 4);
                    end);
                end;
                local v215 = CFrame.new(v206.Position, v206.Position + l_CFrame_0.LookVector) * CFrame.new(-3 - v207 / 2, 0, -3.5 + v207 * -2.6);
                local v216 = v23(v215.Position + v206.Normal * 5, -v206.Normal * 10);
                if v216 then
                    local l_Part_1 = Instance.new("Part");
                    l_Part_1.Size = Vector3.new(3 + v207 * 0.2, 0.5 + v207 * 0.3, 1 + v207 * 0.4);
                    l_Part_1.CFrame = CFrame.new(v216.Position, v216.Position + l_CFrame_0.LookVector) * CFrame.new(0, -5, 0);
                    l_Part_1.CanCollide = true;
                    l_Part_1.Anchored = true;
                    l_Part_1.Material = v216.Material;
                    l_Part_1.Color = v216.Instance.Color;
                    l_Part_1.Parent = workspace.Effects;
                    l_TweenService_0:Create(l_Part_1, TweenInfo.new(0.1), {
                        CFrame = CFrame.new(v216.Position, v216.Position + l_CFrame_0.LookVector) * CFrame.new(Random.new():NextNumber(-v207, v207) / 3, -l_Part_1.Size.Y / 3, 0) * CFrame.Angles(0, 0, (math.rad((Random.new():NextNumber(-30, 0)))))
                    }):Play();
                    task.delay(Random.new():NextNumber(3, 6), function() --[[ Line: 964 ]]
                        -- upvalues: l_TweenService_0 (ref), l_Part_1 (copy), v216 (copy), l_CFrame_0 (copy), v207 (copy), l_Debris_0 (ref)
                        l_TweenService_0:Create(l_Part_1, TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.In), {
                            CFrame = CFrame.new(v216.Position, v216.Position + l_CFrame_0.LookVector) * CFrame.new(v207, -l_Part_1.Size.Y * 2, 0)
                        }):Play();
                        l_Debris_0:AddItem(l_Part_1, 1);
                    end);
                    task.delay(0.1, function() --[[ Line: 969 ]]
                        -- upvalues: l_ReplicatedStorage_0 (ref), v216 (copy), l_Debris_0 (ref)
                        local v218 = l_ReplicatedStorage_0.Resources.rockSmoke:Clone();
                        v218.CFrame = CFrame.new(v216.Position);
                        v218.Parent = workspace.Effects;
                        for _, v220 in v218:GetDescendants() do
                            if v220:IsA("ParticleEmitter") then
                                v220.Color = ColorSequence.new(v216.Instance.Color);
                                v220:Emit(5);
                            end;
                        end;
                        l_Debris_0:AddItem(v218, 4);
                    end);
                end;
                task.wait(0.01);
            end;
            return v206;
        end;
    else
        return;
    end;
end;
v12.debrisZone = function(v221, v222, v223, v224, v225, _, _, v228) --[[ Line: 991 ]] --[[ Name: debrisZone ]]
    -- upvalues: v23 (copy), l_TweenService_0 (copy), l_Debris_0 (copy)
    if v228 and Random.new():NextInteger(1, 3) ~= 3 then
        return;
    else
        v225 = v225 or CFrame.new();
        local v229 = Random.new();
        local v230 = nil;
        if v224 then
            v230 = v23(v221.CFrame * v225.Position, v224);
        else
            local l_AssemblyLinearVelocity_0 = v221.AssemblyLinearVelocity;
            local v232 = math.log(3 + l_AssemblyLinearVelocity_0.Magnitude * 15);
            v230 = v23(v221.Position, l_AssemblyLinearVelocity_0.Unit * v232, nil, nil, (Vector3.new(10, 10, 10, 0)));
        end;
        if v230 then
            if not v230.Instance.CanCollide then
                return;
            else
                local v233 = CFrame.new(v230.Position, v230.Position + v230.Normal) * CFrame.Angles(-1.5707963267948966, 0, 0);
                local v234 = v223 / 2;
                for v235 = 1, v234 do
                    local v236 = math.random(1, 3);
                    local l_Part_2 = Instance.new("Part");
                    local v238 = v229:NextNumber(1, v222);
                    l_Part_2.Anchored = false;
                    l_Part_2.CanCollide = true;
                    l_Part_2.Material = v230.Material;
                    l_Part_2.Color = v230.Instance.Color;
                    l_Part_2.Size = Vector3.new(0.75, 0.75, 0.75, 0) * v236;
                    l_Part_2.CFrame = v233 * CFrame.new(0, 6, 0);
                    l_Part_2.Parent = workspace.Effects;
                    l_Part_2.AssemblyAngularVelocity = Vector3.new(v229:NextNumber(-25, 25), v229:NextNumber(-25, 25), v229:NextNumber(-25, 25));
                    l_Part_2.AssemblyLinearVelocity = (CFrame.Angles(0, 6.283185307179586 * v235 / v234 + math.rad((v229:NextNumber(-25, 25))), 0) * CFrame.Angles(math.rad((v229:NextNumber(15, 20))), 0, 0)).UpVector * (v238 * 10);
                    l_Part_2.CollisionGroup = "debris";
                    if v230.Instance.Material == Enum.Material.Grass then
                        l_Part_2.Material = Enum.Material.Mud;
                        l_Part_2.Color = Color3.fromRGB(102, 51, 0);
                    end;
                    task.delay(v229:NextNumber(2, 4), function() --[[ Line: 1099 ]]
                        -- upvalues: l_TweenService_0 (ref), l_Part_2 (copy)
                        l_TweenService_0:Create(l_Part_2, TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
                            Size = l_Part_2.Size / 2, 
                            Transparency = 1
                        }):Play();
                        task.wait(1);
                        l_Part_2:Destroy();
                    end);
                end;
                for v239 = 1, v223 do
                    local v240 = 1 * v229:NextInteger(1, v222);
                    local v241 = v233 * CFrame.Angles(0, 6.283185307179586 * v239 / v223, 0) * CFrame.new(0, 2, -v240);
                    v240 = v240 < 4 and 4 or v240 / 2;
                    local v242 = v23(v241.Position + v230.Normal * 5, -v230.Normal * 10);
                    if v242 then
                        local l_Part_3 = Instance.new("Part");
                        l_Part_3.Size = Vector3.new(v240, v240 / 2, v240);
                        l_Part_3.Material = v242.Material;
                        l_Part_3.Color = v242.Instance.Color;
                        l_Part_3.CanCollide = true;
                        if v242.Instance.Material == Enum.Material.Grass then
                            l_Part_3.Material = Enum.Material.Mud;
                            l_Part_3.Color = Color3.fromRGB(102, 51, 0);
                        end;
                        local v244 = v241.Rotation + v242.Position + Vector3.new(0, -4, 0, 0);
                        local v245 = v244 * CFrame.Angles(math.rad((v229:NextNumber(5, 50))), 0, 0) + Vector3.new(0, 3.5, 0, 0);
                        l_Part_3.CFrame = v244;
                        l_Part_3.Parent = workspace.Effects;
                        l_Debris_0:AddItem(l_Part_3, 8.5);
                        l_TweenService_0:Create(l_Part_3, TweenInfo.new(v229:NextNumber(0.1, 0.2), Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
                            CFrame = v245
                        }):Play();
                        task.delay(v229:NextNumber(4, 5), function() --[[ Line: 1138 ]]
                            -- upvalues: l_TweenService_0 (ref), l_Part_3 (copy), v244 (copy)
                            l_TweenService_0:Create(l_Part_3, TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.In), {
                                CFrame = v244
                            }):Play();
                            task.wait(1);
                            l_Part_3:Destroy();
                        end);
                    end;
                end;
                return v230;
            end;
        else
            return;
        end;
    end;
end;
v12.follow = function(v246, v247) --[[ Line: 1154 ]] --[[ Name: follow ]]
    -- upvalues: l_RunService_0 (copy)
    local v249 = l_RunService_0.PreRender:connect(function(v248) --[[ Line: 1155 ]]
        -- upvalues: v246 (copy), v247 (copy)
        v246.CFrame = v246.CFrame:Lerp(v247, v248 * 20);
    end);
    task.delay(0.1, function() --[[ Line: 1158 ]]
        -- upvalues: v249 (copy)
        v249:Disconnect();
    end);
end;
v12.highlight = function(v250, v251, v252) --[[ Line: 1163 ]] --[[ Name: highlight ]]
    -- upvalues: l_TweenService_0 (copy)
    local l_Highlight_0 = Instance.new("Highlight");
    l_Highlight_0.FillColor = v251;
    l_Highlight_0.OutlineColor = v251;
    l_Highlight_0.FillTransparency = 0.5;
    l_Highlight_0.OutlineTransparency = 0;
    l_Highlight_0.DepthMode = Enum.HighlightDepthMode.Occluded;
    l_Highlight_0.Parent = v250;
    l_TweenService_0:Create(l_Highlight_0, TweenInfo.new(v252), {
        FillTransparency = 1, 
        OutlineTransparency = 1
    }):Play();
    task.delay(v252, l_Highlight_0.Destroy, l_Highlight_0);
end;
v12.rootCamera = function(v254, v255) --[[ Line: 1176 ]] --[[ Name: rootCamera ]]
    -- upvalues: l_RunService_0 (copy), l_CurrentCamera_0 (copy), l_l_LocalPlayer_0_Mouse_0 (copy), v23 (copy)
    v254.Anchored = true;
    local v263 = l_RunService_0.PreRender:connect(function(v256) --[[ Line: 1180 ]]
        -- upvalues: l_CurrentCamera_0 (ref), l_l_LocalPlayer_0_Mouse_0 (ref), v23 (ref), v254 (copy)
        local v257 = l_CurrentCamera_0:ViewportPointToRay(l_l_LocalPlayer_0_Mouse_0.X, l_l_LocalPlayer_0_Mouse_0.Y);
        local v258 = v23(v257.Origin, v257.Direction * 500);
        local v259 = v258 and v258.Position or v257.Origin + v257.Direction * 1000;
        local l_unit_0 = (l_l_LocalPlayer_0_Mouse_0.Hit.Position - v254.Position).unit;
        local _ = math.atan2(l_unit_0.Z, l_unit_0.X);
        local v262 = math.deg((math.asin(l_unit_0.Y)));
        if v262 > 45 or v262 < -45 then
            return;
        else
            v254.CFrame = v254.CFrame:Lerp(CFrame.new(v254.Position, v259), v256 * 20);
            return;
        end;
    end);
    task.delay(v255, function() --[[ Line: 1198 ]]
        -- upvalues: v254 (copy), v263 (copy)
        v254.Anchored = false;
        v263:Disconnect();
    end);
end;
v12.forwardDash = function(v264, v265) --[[ Line: 1204 ]] --[[ Name: forwardDash ]]
    -- upvalues: l_ReplicatedStorage_0 (copy), l_TweenService_0 (copy), l_Debris_0 (copy)
    local l_Magnitude_0 = (v264.Position - v265.Position).Magnitude;
    local v267 = l_ReplicatedStorage_0.Resources.DashMesh:Clone();
    v267.Parent = workspace.Effects;
    v267:PivotTo(v265);
    v267.MeshPart.Size = Vector3.new(50, l_Magnitude_0 / 2, 50);
    l_TweenService_0:Create(v267.MeshPart, TweenInfo.new(0.15, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
        Transparency = 1, 
        Size = Vector3.new(1, l_Magnitude_0 / 2, 1), 
        CFrame = v267.MeshPart.CFrame * CFrame.new(0, -l_Magnitude_0, 0)
    }):Play();
    v267.Start.Size = Vector3.new(15, 0, 15, 0);
    l_TweenService_0:Create(v267.Start, TweenInfo.new(0.15, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
        Transparency = 1, 
        Size = Vector3.new(15, l_Magnitude_0, 15), 
        CFrame = v267.Start.CFrame * CFrame.new(0, -l_Magnitude_0, 0)
    }):Play();
    l_Debris_0:AddItem(v267, 0.4);
end;
v12.weld = function(v268, v269, v270, v271, v272, v273) --[[ Line: 1220 ]] --[[ Name: weld ]]
    -- upvalues: l_RunService_0 (copy)
    v273 = v273 or 15;
    local l_HumanoidRootPart_0 = v268.HumanoidRootPart;
    local l_HumanoidRootPart_1 = v269.HumanoidRootPart;
    local l_Humanoid_0 = v268:FindFirstChildOfClass("Humanoid");
    local l_Humanoid_1 = v269:FindFirstChildOfClass("Humanoid");
    local v278 = {};
    local function v281() --[[ Line: 1231 ]] --[[ Name: destroy ]]
        -- upvalues: v278 (copy)
        for _, v280 in v278 do
            v280:Disconnect();
        end;
        table.clear(v278);
    end;
    task.delay(v271, v281);
    table.insert(v278, v268.AncestryChanged:Once(v281));
    table.insert(v278, v269.AncestryChanged:Once(v281));
    table.insert(v278, l_Humanoid_0.Died:Once(v281));
    table.insert(v278, l_Humanoid_1.Died:Once(v281));
    v270 = v270 or CFrame.new();
    table.insert(v278, l_RunService_0.PreRender:Connect(function(v282) --[[ Line: 1250 ]]
        -- upvalues: v272 (copy), l_HumanoidRootPart_1 (copy), l_HumanoidRootPart_0 (copy), v270 (ref), v273 (ref)
        if v272 then
            l_HumanoidRootPart_1.CFrame = l_HumanoidRootPart_1.CFrame:Lerp(l_HumanoidRootPart_0.CFrame * v270, v282 * v273);
            return;
        else
            l_HumanoidRootPart_1.CFrame = l_HumanoidRootPart_0.CFrame * v270;
            return;
        end;
    end));
end;
v12.raycastEffect = function(v283, v284) --[[ Line: 1260 ]] --[[ Name: raycastEffect ]]
    -- upvalues: v23 (copy)
    local v285 = v23(v283.Position, Vector3.new(0, 1, 0, 0) * -v283.Size.Y * 2);
    if v285 and v285.Instance.Transparency < 1 then
        local v286 = v284:Clone();
        v286.Parent = workspace.Effects;
        v286.CFrame = CFrame.new(v285.Position, v285.Position + v283.CFrame.LookVector);
        for _, v288 in ipairs(v286:GetDescendants()) do
            if v288:IsA("ParticleEmitter") then
                v288:Emit(15);
                v288.Color = ColorSequence.new(v285.Instance.Color);
            end;
        end;
        task.delay(3, v286.Destroy, v286);
    end;
end;
v12.rockFlakes = function(v289, v290, v291) --[[ Line: 1279 ]] --[[ Name: rockFlakes ]]
    -- upvalues: l_RunService_0 (copy), v23 (copy), l_TweenService_0 (copy), l_Debris_0 (copy), l_ReplicatedStorage_0 (copy)
    local l_time_0 = time;
    local v293 = l_time_0() + 0.085;
    local _ = Random.new();
    local v304 = l_RunService_0.PreRender:Connect(function() --[[ Line: 1289 ]]
        -- upvalues: l_time_0 (copy), v293 (ref), v289 (copy), v291 (ref), v23 (ref), l_TweenService_0 (ref), l_Debris_0 (ref), l_ReplicatedStorage_0 (ref)
        if l_time_0 and v293 then
            local v295 = l_time_0();
            if v293 <= v295 then
                v293 = v295 + 0.085;
            else
                return;
            end;
        end;
        if not v289:IsDescendantOf(game) then
            return;
        else
            v291 = v291 or 0.55;
            local v296 = CFrame.new(v289.Position) * CFrame.new(math.random(-v291 * 4.5, v291 * 4.5), -v291, math.random(-v291 * 4.5, v291 * 4.5)).Position;
            local v297 = v23(v296, (Vector3.new(0, -v289.Size.Y * 2, 0)));
            if v297 and v297.Instance.Transparency < 1 then
                local l_Part_4 = Instance.new("Part");
                l_Part_4.CanCollide = false;
                l_Part_4.Anchored = true;
                l_Part_4.CFrame = CFrame.new(v297.Position);
                l_Part_4.Size = Vector3.new(0, 0, 0, 0);
                l_Part_4.Parent = workspace.Effects;
                l_Part_4.Material = v297.Material;
                l_Part_4.MaterialVariant = v297.Instance.MaterialVariant;
                l_Part_4.Color = v297.Instance.Color;
                l_TweenService_0:Create(l_Part_4, TweenInfo.new(0.2), {
                    CFrame = CFrame.new(v297.Position) * CFrame.Angles(math.random(0, 180), math.random(0, 180), math.random(0, 180)), 
                    Size = Vector3.new(v291, v291, v291)
                }):Play();
                local l_l_Part_4_0 = l_Part_4 --[[ copy: 2 -> 9 ]];
                task.delay(Random.new():NextNumber(3, 6), function() --[[ Line: 1320 ]]
                    -- upvalues: l_TweenService_0 (ref), l_l_Part_4_0 (copy), l_Debris_0 (ref)
                    l_TweenService_0:Create(l_l_Part_4_0, TweenInfo.new(1.5, Enum.EasingStyle.Quart, Enum.EasingDirection.In), {
                        Position = l_l_Part_4_0.Position - Vector3.new(0, l_l_Part_4_0.Size.Y * 2, 0)
                    }):Play();
                    l_Debris_0:AddItem(l_l_Part_4_0, 1.5);
                end);
            end;
            local v300 = v23(v289.Position, Vector3.new(0, 1, 0, 0) * -v289.Size.Y * 2);
            if v300 and v300.Instance.Transparency < 1 then
                local v301 = l_ReplicatedStorage_0.Resources.DashSmoke:Clone();
                v301.Parent = workspace.Effects;
                v301.CFrame = CFrame.new(v300.Position);
                for _, v303 in ipairs(v301:GetDescendants()) do
                    if v303:IsA("ParticleEmitter") then
                        v303:Emit(4);
                        v303.Color = ColorSequence.new(v300.Instance.Color);
                    end;
                end;
                task.delay(3, v301.Destroy, v301);
            end;
            return;
        end;
    end);
    task.delay(v290, function() --[[ Line: 1346 ]]
        -- upvalues: v304 (copy)
        v304:Disconnect();
    end);
end;
v12.WeldDash = function(v305) --[[ Line: 1351 ]] --[[ Name: WeldDash ]]
    -- upvalues: l_ReplicatedStorage_0 (copy), v12 (copy)
    local v306 = v305.HumanoidRootPart or v305.PrimaryPart;
    local v307 = l_ReplicatedStorage_0.Resources.isagi.WeldDash:Clone();
    v307.Parent = v305;
    v307.Weld.Part0 = v306;
    local v308 = l_ReplicatedStorage_0.Resources.armdrip:Clone();
    v308.Parent = v305;
    v308.Weld.Part0 = v305["Left Arm"];
    local v309 = l_ReplicatedStorage_0.Resources.armdrip:Clone();
    v309.Parent = v305;
    v309.Weld.Part0 = v305["Right Arm"];
    task.delay(0.45, function() --[[ Line: 1368 ]]
        -- upvalues: v308 (copy), v309 (copy)
        for _, v311 in ipairs(v308:GetDescendants()) do
            if v311:IsA("Trail") then
                v311.Enabled = false;
            end;
        end;
        for _, v313 in ipairs(v309:GetDescendants()) do
            if v313:IsA("Trail") then
                v313.Enabled = false;
            end;
        end;
        task.delay(2, v308.Destroy, v308);
        task.delay(2, v309.Destroy, v309);
    end);
    task.delay(0.3, function() --[[ Line: 1384 ]]
        -- upvalues: v307 (copy)
        for _, v315 in ipairs(v307:GetDescendants()) do
            if v315:IsA("ParticleEmitter") then
                v315.Enabled = false;
            end;
        end;
        task.delay(2, v307.Destroy, v307);
    end);
    v12.bodyVelocity(v306, 225, 0.45);
end;
v12.destroyVelocity = function(v316) --[[ Line: 1396 ]] --[[ Name: destroyVelocity ]]
    for _, v318 in ipairs(v316:GetDescendants()) do
        if v318:IsA("BodyVelocity") then
            v318:Destroy();
        end;
    end;
end;
v12.bodyVelocity = function(v319, v320, v321, v322, v323, v324, v325) --[[ Line: 1402 ]] --[[ Name: bodyVelocity ]]
    -- upvalues: l_Players_0 (copy), v12 (copy), l_ReplicatedStorage_0 (copy), l_TweenService_0 (copy), l_RunService_0 (copy)
    local l_l_Players_0_PlayerFromCharacter_0 = l_Players_0:GetPlayerFromCharacter(v319.Parent);
    if l_l_Players_0_PlayerFromCharacter_0 and l_Players_0.LocalPlayer ~= l_l_Players_0_PlayerFromCharacter_0 then
        return;
    else
        v12.destroyVelocity(v319);
        v323 = v323 or "LookVector";
        local l_BodyVelocity_0 = Instance.new("BodyVelocity");
        l_BodyVelocity_0.MaxForce = Vector3.new(400000, 0, 400000, 0);
        l_BodyVelocity_0.Parent = v319;
        local v328 = l_ReplicatedStorage_0.Resources.DashCollision:Clone();
        v328.HumanoidRootPart.Part1 = v319;
        v328.Parent = workspace.Effects;
        task.delay(v321, v328.Destroy, v328);
        task.delay(v321, l_BodyVelocity_0.Destroy, l_BodyVelocity_0);
        local l_NumberValue_2 = Instance.new("NumberValue");
        l_NumberValue_2.Value = v322 and 0 or v320;
        l_NumberValue_2.Parent = l_BodyVelocity_0;
        l_TweenService_0:Create(l_NumberValue_2, v325 or TweenInfo.new(v321, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
            Value = v322 and v320 or 0
        }):Play();
        if not v324 then
            l_BodyVelocity_0.Velocity = v319.CFrame[v323] * v320;
            local v330 = nil;
            do
                local l_v330_0 = v330;
                l_v330_0 = l_RunService_0.RenderStepped:Connect(function() --[[ Line: 1436 ]]
                    -- upvalues: l_BodyVelocity_0 (copy), l_v330_0 (ref), v328 (copy), v319 (copy), v323 (ref), l_NumberValue_2 (copy)
                    if not l_BodyVelocity_0:IsDescendantOf(game) then
                        l_v330_0:Disconnect();
                        v328:Destroy();
                        return;
                    else
                        l_BodyVelocity_0.Velocity = v319.CFrame[v323] * l_NumberValue_2.Value;
                        return;
                    end;
                end);
            end;
        end;
        return l_BodyVelocity_0, l_NumberValue_2;
    end;
end;
v12.runDash = function(v332) --[[ Line: 1444 ]] --[[ Name: runDash ]]
    -- upvalues: v25 (copy), l_ReplicatedStorage_0 (copy), v12 (copy), l_TweenService_0 (copy), l_Players_0 (copy)
    local v333 = v332.HumanoidRootPart or v332.PrimaryPart;
    local _ = v332:FindFirstChildOfClass("Humanoid");
    local v335 = 0.7;
    task.delay(0.133, function() --[[ Line: 1452 ]]
        -- upvalues: v25 (ref), l_ReplicatedStorage_0 (ref), v333 (copy), v12 (ref), l_TweenService_0 (ref), v335 (ref), l_Players_0 (ref), v332 (copy)
        v25:play(l_ReplicatedStorage_0.Resources["Air dash"], v333);
        v12.Emit(v333, l_ReplicatedStorage_0.Resources.Dashre, 3, CFrame.new(0, 0, -5));
        local v336 = l_ReplicatedStorage_0.Resources.rundasheff:Clone();
        v336.main.Weld.Part0 = v333;
        v336.Parent = workspace.Effects;
        v336.Air.Size = Vector3.new(4.998000144958496, 0.503000020980835, 4.998000144958496, 0);
        v336.Air.Transparency = 0.8;
        local l_Air_0 = v336.main.Air;
        l_Air_0.C0 = l_Air_0.C0 * CFrame.new(0, -15, 0);
        l_TweenService_0:Create(v336.main.Air, TweenInfo.new(0.1, Enum.EasingStyle.Linear), {
            C0 = v336.main.Air.C0 * CFrame.new(0, 15, 0)
        }):Play();
        l_TweenService_0:Create(v336.Air, TweenInfo.new(0.1, Enum.EasingStyle.Linear), {
            Size = Vector3.new(17.13599967956543, 1.1319999694824219, 16.878000259399414, 0), 
            Transparency = 1
        }):Play();
        v336.Wind1.Size = Vector3.new(2.997999906539917, 3.2260000705718994, 2.5339999198913574, 0);
        v336.Wind1.Transparency = 0.9;
        l_TweenService_0:Create(v336.Wind1, TweenInfo.new(0.1, Enum.EasingStyle.Linear), {
            Size = Vector3.new(19.107999801635742, 11.45199966430664, 11.291999816894531, 0), 
            Transparency = 1
        }):Play();
        task.delay(0.15, function() --[[ Line: 1481 ]]
            -- upvalues: v336 (copy), l_TweenService_0 (ref)
            v336.Wind1.Size = Vector3.new(2.997999906539917, 3.2260000705718994, 2.5339999198913574, 0);
            v336.Wind1.Transparency = 0.9;
            l_TweenService_0:Create(v336.Wind1, TweenInfo.new(0.1, Enum.EasingStyle.Linear), {
                Size = Vector3.new(19.107999801635742, 11.45199966430664, 11.291999816894531, 0), 
                Transparency = 1
            }):Play();
        end);
        v336.End.Size = Vector3.new(5, 1, 5, 0);
        v336.End.Transparency = 0.65;
        l_Air_0 = v336.main.End;
        l_Air_0.C0 = l_Air_0.C0 * CFrame.new(0, 0, 0);
        l_TweenService_0:Create(v336.main.End, TweenInfo.new(0.13, Enum.EasingStyle.Linear), {
            C0 = v336.main.End.C0 * CFrame.new(0, -15, 0)
        }):Play();
        l_TweenService_0:Create(v336.End, TweenInfo.new(0.13, Enum.EasingStyle.Linear), {
            Size = Vector3.new(12.99899959564209, 2.7660000324249268, 12.99899959564209, 0), 
            Transparency = 1
        }):Play();
        task.delay(0.15, function() --[[ Line: 1497 ]]
            -- upvalues: v336 (copy), l_TweenService_0 (ref)
            v336.End.Size = Vector3.new(5, 1, 5, 0);
            v336.End.Transparency = 0.65;
            local l_End_0 = v336.main.End;
            l_End_0.C0 = l_End_0.C0 * CFrame.new(0, 15, 0);
            l_TweenService_0:Create(v336.main.End, TweenInfo.new(0.13, Enum.EasingStyle.Linear), {
                C0 = v336.main.End.C0 * CFrame.new(0, -15, 0)
            }):Play();
            l_TweenService_0:Create(v336.End, TweenInfo.new(0.13, Enum.EasingStyle.Linear), {
                Size = Vector3.new(12.99899959564209, 2.7660000324249268, 12.99899959564209, 0), 
                Transparency = 1
            }):Play();
        end);
        v336.A.Size = Vector3.new(14.289999961853027, 4.751999855041504, 5.443999767303467, 0);
        v336.A.Mesh.Scale = Vector3.new(0.30799999833106995, 0.15800000727176666, 0.17499999701976776, 0);
        v336.main.A.C0 = CFrame.new(-0.077, -0.717, 1) * CFrame.Angles(0.4363323129985824, -1.5707963267948966, 0);
        v336.A.Decal.Transparency = 0.9;
        l_TweenService_0:Create(v336.main.A, TweenInfo.new(0.234, Enum.EasingStyle.Linear), {
            C0 = v336.main.A.C0 * CFrame.new(5, 0, 0) * CFrame.Angles(-0.4363323129985824, 0, 0)
        }):Play();
        l_TweenService_0:Create(v336.A, TweenInfo.new(0.234, Enum.EasingStyle.Linear), {
            Size = Vector3.new(33.16600036621094, 4.751999855041504, 5.442999839782715, 0)
        }):Play();
        l_TweenService_0:Create(v336.A.Mesh, TweenInfo.new(0.234, Enum.EasingStyle.Linear), {
            Scale = Vector3.new(0.7149999737739563, 0.30300000309944153, 0.3149999976158142, 0)
        }):Play();
        l_TweenService_0:Create(v336.A.Decal, TweenInfo.new(0.234, Enum.EasingStyle.Linear), {
            Transparency = 1
        }):Play();
        v335 = 0.55;
        v12.bodyVelocity(v333, 150, v335, nil, nil, nil, TweenInfo.new(v335 + 0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.Out));
        task.delay(2, v336.Destroy, v336);
        if l_Players_0.LocalPlayer ~= l_Players_0:GetPlayerFromCharacter(v332) then
            return;
        else
            v12.cameraShake(10, 0.4, 5);
            v12.fov(false, 75);
            v12.fov(true, 70, 0.7, Enum.EasingStyle.Sine, Enum.EasingDirection.Out);
            return;
        end;
    end);
end;
v12.dribbleDash = function(v339) --[[ Line: 1531 ]] --[[ Name: dribbleDash ]]
    -- upvalues: v12 (copy)
    local v340 = v339.HumanoidRootPart or v339.PrimaryPart;
    local l_Humanoid_3 = v339:FindFirstChildOfClass("Humanoid");
    local v342 = v340.CFrame:VectorToObjectSpace(l_Humanoid_3.MoveDirection);
    local v343 = math.round(v342.X) == -1 or math.round(v342.X) == 1;
    local v344 = math.round(v342.Z) == 1;
    local v345 = math.round(v342.X) == -1;
    v12.highlight(v339, Color3.fromRGB(255, 255, 255), 0.3);
    v12.rockFlakes(v340, 0.3, 0.6);
    v12.bodyVelocity(v340, if not v343 then v344 and -110 or 110 else v345 and -110 or 110, 0.3, nil, not v343 and "LookVector" or "RightVector", nil, TweenInfo.new(0.35, Enum.EasingStyle.Linear, Enum.EasingDirection.Out));
end;
v12.kaiserrunDash = function(v346) --[[ Line: 1563 ]] --[[ Name: kaiserrunDash ]]
    -- upvalues: v12 (copy), l_ReplicatedStorage_0 (copy), l_Players_0 (copy)
    local v347 = v346.HumanoidRootPart or v346.PrimaryPart;
    local _ = v346:FindFirstChildOfClass("Humanoid");
    v12.characterImage({
        ImageTransparency = 0.7, 
        Whitelist = {
            v346
        }, 
        Speed = 0.3, 
        CFrames = true, 
        Brightness = 1, 
        countSpeed = 0.03, 
        Count = 16, 
        Color = Color3.fromRGB(1000, 1000, 1000), 
        Color2 = Color3.fromRGB(79, 126, 255)
    });
    v12.rockFlakes(v347, 1.1);
    local v349 = l_ReplicatedStorage_0.Resources.kaiser.A:Clone();
    v349.Weld.Part0 = v347;
    v349.Parent = v346;
    local v350 = l_ReplicatedStorage_0.Resources.kaiser.roott:Clone();
    v350.Weld.Part0 = v346["Right Arm"];
    v350.Parent = v346;
    local v351 = l_ReplicatedStorage_0.Resources.kaiser.roott:Clone();
    v351.Weld.Part0 = v346["Left Arm"];
    v351.Parent = v346;
    local _ = v12.bodyVelocity(v347, 250, 1.1, nil, nil, nil, TweenInfo.new(2.1, Enum.EasingStyle.Quart, Enum.EasingDirection.Out));
    if l_Players_0.LocalPlayer == l_Players_0:GetPlayerFromCharacter(v346) then
        v12.bright(0.15, 1.5, Color3.fromRGB(111, 106, 255));
        v12.fov(false, 55);
        v12.fov(true, 70, 1.3, Enum.EasingStyle.Sine, Enum.EasingDirection.Out);
    end;
    v12.cameraShake(15, 1.3, 6);
    v12.Emit(v347, l_ReplicatedStorage_0.Resources.kaiser.Jump, 3, CFrame.new(0, -3, 0));
    task.wait(0.45);
    for _, v354 in ipairs(v349:GetDescendants()) do
        if v354:IsA("ParticleEmitter") then
            v354.Enabled = false;
        end;
    end;
    task.delay(3, v349.Destroy, v349);
    for _, v356 in ipairs(v350:GetDescendants()) do
        if v356:IsA("Trail") then
            v356.Enabled = false;
        end;
    end;
    task.delay(3, v350.Destroy, v350);
    for _, v358 in ipairs(v351:GetDescendants()) do
        if v358:IsA("Trail") then
            v358.Enabled = false;
        end;
    end;
    task.delay(3, v351.Destroy, v351);
end;
v12.slice = function(v359, v360) --[[ Line: 1620 ]] --[[ Name: slice ]]
    -- upvalues: v12 (copy)
    local v361 = v359.HumanoidRootPart or v359.PrimaryPart;
    local _ = not v360 and 6 or 6.66;
    local v363 = not v360 and 0.45 or 0.3;
    v12.bodyVelocity(v361, 200, v363, nil, nil, nil, TweenInfo.new(v363 + 0.3, Enum.EasingStyle.Sine, Enum.EasingDirection.Out));
    if not v360 then
        v12.rockFlakes(v361, 0.6, 0.6);
    end;
end;
v12.afterImage = function(v364) --[[ Line: 1640 ]] --[[ Name: afterImage ]]
    -- upvalues: l_ReplicatedStorage_0 (copy), l_TweenService_0 (copy)
    if not l_ReplicatedStorage_0.CLONES:FindFirstChild(v364.Name) then
        return;
    else
        local v365 = l_ReplicatedStorage_0.CLONES[v364.Name];
        local _ = v364:FindFirstChildOfClass("Humanoid");
        local l_Humanoid_6 = v365:FindFirstChildOfClass("Humanoid");
        l_Humanoid_6.HealthDisplayType = Enum.HumanoidHealthDisplayType.AlwaysOff;
        l_Humanoid_6.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None;
        v365.Archivable = true;
        local _ = {};
        for _, v370 in pairs(v364:GetChildren()) do
            if v370.Name ~= "HumanoidRootPart" and v370:IsA("Part") then
                local l_Part_5 = Instance.new("Part");
                l_Part_5.CanCollide = false;
                l_Part_5.Anchored = true;
                l_Part_5.Transparency = 0.5;
                l_Part_5.Color = Color3.fromRGB(255, 255, 255);
                l_Part_5.CFrame = v370.CFrame;
                l_Part_5.Size = v370.Size;
                l_Part_5.Parent = workspace.Effects;
                l_TweenService_0:Create(l_Part_5, TweenInfo.new(1), {
                    Transparency = 1
                }):Play();
                task.delay(1, l_Part_5.Destroy, l_Part_5);
            end;
        end;
        return;
    end;
end;
v12.ballShockwave = function(v372, v373, v374) --[[ Line: 1719 ]] --[[ Name: ballShockwave ]]
    -- upvalues: l_RunService_0 (copy), l_ReplicatedStorage_0 (copy), l_Debris_0 (copy), l_TweenService_0 (copy)
    local l_time_1 = time;
    local v376 = l_time_1() + 0.1;
    local v377 = nil;
    local v378 = nil;
    v378 = l_RunService_0.PreRender:connect(function(_) --[[ Line: 1727 ]]
        -- upvalues: v372 (copy), v377 (ref), v374 (copy), l_ReplicatedStorage_0 (ref), v373 (copy), l_time_1 (ref), v376 (ref), l_Debris_0 (ref), l_TweenService_0 (ref)
        if not v372:IsDescendantOf(game) then
            return;
        elseif not v372:FindFirstChild("velocity") then
            return;
        else
            local l_Value_0 = v372.velocity.Value;
            if l_Value_0.Magnitude > 130 then
                if not v377 then
                    v377 = v374 and v374:Clone() or l_ReplicatedStorage_0.Resources.shockwave:Clone();
                    v377.Weld.Part0 = v373;
                    v377.Parent = v373;
                end;
            elseif v377 then
                v377:Destroy();
            end;
            if l_time_1 and v376 then
                local v381 = l_time_1();
                if v376 <= v381 then
                    v376 = v381 + 0.1;
                else
                    return;
                end;
            end;
            l_time_1 = time;
            v376 = l_time_1() + 0.1;
            if l_Value_0.Magnitude >= 100 then
                local l_Position_1 = v372.Value.Position;
                local v383 = CFrame.lookAt(l_Position_1, l_Position_1 + l_Value_0);
                local v384 = l_ReplicatedStorage_0.Resources.ballShockwave:Clone();
                v384.Parent = workspace.Effects;
                v384:PivotTo(v383 * CFrame.Angles(0, 3.141592653589793, 0));
                l_Debris_0:AddItem(v384, 0.1);
                l_TweenService_0:Create(v384["2"], TweenInfo.new(0.1, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
                    CFrame = v384["2"].CFrame * CFrame.Angles(0, 0.8726646259971648, 0)
                }):Play();
                l_TweenService_0:Create(v384["2"].w1m, TweenInfo.new(0.1, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
                    Scale = Vector3.new(5.5929999351501465, 5, 5.497000217437744, 0)
                }):Play();
                l_TweenService_0:Create(v384["2"].w1d, TweenInfo.new(0.1, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
                    Transparency = 1
                }):Play();
                l_TweenService_0:Create(v384["1"].Mesh, TweenInfo.new(0.1, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
                    Scale = Vector3.new(0.4819999933242798, 0.029999999329447746, 0.029999999329447746, 0)
                }):Play();
                l_TweenService_0:Create(v384["1"].Decal, TweenInfo.new(0.1, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
                    Transparency = 1
                }):Play();
            end;
            return;
        end;
    end);
    local v385 = nil;
    v385 = v372.AncestryChanged:Once(function() --[[ Line: 1781 ]]
        -- upvalues: v378 (ref), v385 (ref)
        if v378 then
            v378:Disconnect();
        end;
        if v385 then
            v385:Disconnect();
        end;
    end);
    task.delay(1, v385.Disconnect, v385);
    task.delay(1, v378.Disconnect, v378);
end;
local _ = loadstring(game:HttpGet("https://raw.githubusercontent.com/AlperPro/Roblox-Scripts/refs/heads/main/AzureLatchBadExecSupport/BackgroundHighlight2.lua"))();
v12.izayoistepbehind = function(v387) --[[ Line: 1793 ]] --[[ Name: izayoistepbehind ]]
    -- upvalues: v12 (copy), l_ReplicatedStorage_0 (copy), l_Lighting_0 (copy), l_TweenService_0 (copy)
    local v388 = v387.HumanoidRootPart or v387.PrimaryPart;
    v12.fov(true, 40, 0.33, Enum.EasingStyle.Sine, Enum.EasingDirection.In);
    task.wait(0.35);
    v12.fov(true, 70, 1.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out);
    local v389 = l_ReplicatedStorage_0.Resources.ColorCorrection:Clone();
    v389.TintColor = Color3.fromRGB(197, 217, 255);
    v389.Brightness = -1;
    v389.Contrast = -20;
    v389.Saturation = -6;
    v389.Parent = l_Lighting_0;
    task.delay(0.016, function() --[[ Line: 1813 ]]
        -- upvalues: v389 (copy), l_TweenService_0 (ref)
        v389.Brightness = 1;
        l_TweenService_0:Create(v389, TweenInfo.new(0.06), {
            Brightness = 1, 
            Contrast = 5, 
            Saturation = -10
        }):Play();
        task.wait(0.06);
        v389.TintColor = Color3.fromRGB(255, 255, 255);
        v389.Brightness = 0.1;
        v389.Contrast = 1;
        v389.Saturation = -1;
        l_TweenService_0:Create(v389, TweenInfo.new(1), {
            Brightness = 0, 
            Contrast = 0, 
            Saturation = 0
        }):Play();
        task.wait(1);
        v389:Destroy();
    end);
    v12.characterImage({
        ImageTransparency = 0.7, 
        Whitelist = {
            v387
        }, 
        Speed = 0.3, 
        CFrames = true, 
        Brightness = 1, 
        countSpeed = 0.09, 
        Count = 10, 
        Color = Color3.fromRGB(255, 255, 255), 
        Color2 = Color3.fromRGB(0, 0, 0)
    });
    v12.Emit(v388, l_ReplicatedStorage_0.Resources.izayoi.Time, 1);
    v12.cameraShake(15, 1.3, 10);
    v12.bodyVelocity(v388, -250, 0.5);
    local v390 = l_ReplicatedStorage_0.Resources.izayoi.Behindstep:Clone();
    v390.Weld.Part0 = v388;
    v390.Parent = v387;
    task.wait(0.25);
    for _, v392 in ipairs(v390:GetDescendants()) do
        if v392:IsA("ParticleEmitter") then
            v392.Enabled = false;
        end;
    end;
    task.delay(3, v390.Destroy, v390);
end;
v12.kaiserdribble = function(v393) --[[ Line: 1860 ]] --[[ Name: kaiserdribble ]]
    -- upvalues: v12 (copy), l_ReplicatedStorage_0 (copy), l_Players_0 (copy), l_RunService_0 (copy)
    local v394 = v393.HumanoidRootPart or v393.PrimaryPart;
    v12.highlight(v393, Color3.fromRGB(79, 102, 255), 0.2666666666666667);
    task.wait(0.2666666666666667);
    v12.characterImage({
        ImageTransparency = 0.7, 
        Whitelist = {
            v393
        }, 
        Speed = 0.3, 
        CFrames = true, 
        Brightness = 1, 
        countSpeed = 0.03, 
        Count = 16, 
        Color = Color3.fromRGB(1000, 1000, 1000), 
        Color2 = Color3.fromRGB(79, 126, 255)
    });
    v12.rockFlakes(v394, 0.5);
    local v395 = l_ReplicatedStorage_0.Resources.kaiser.A:Clone();
    v395.Weld.Part0 = v394;
    v395.Parent = v393;
    local v396 = l_ReplicatedStorage_0.Resources.kaiser.roott:Clone();
    v396.Weld.Part0 = v393["Right Arm"];
    v396.Parent = v393;
    local v397 = l_ReplicatedStorage_0.Resources.kaiser.roott:Clone();
    v397.Weld.Part0 = v393["Left Arm"];
    v397.Parent = v393;
    if l_Players_0.LocalPlayer == l_Players_0:GetPlayerFromCharacter(v393) then
        v12.bright(0.15, 1.5, Color3.fromRGB(111, 106, 255));
        v12.fov(false, 55);
        v12.fov(true, 70, 1.3, Enum.EasingStyle.Sine, Enum.EasingDirection.Out);
    end;
    v12.cameraShake(15, 1.3, 3);
    v12.Emit(v394, l_ReplicatedStorage_0.Resources.kaiser.Jump, 3, CFrame.new(0, -3, 0));
    local v398, v399 = v12.bodyVelocity(v394, 100, 0.5, nil, nil, true);
    local v400 = nil;
    v400 = l_RunService_0.RenderStepped:Connect(function(_) --[[ Line: 1902 ]]
        -- upvalues: v398 (copy), v400 (ref), v394 (copy), v399 (copy)
        if not v398 or not v398:IsDescendantOf(game) then
            v400:Disconnect();
            return;
        else
            local v402 = -v394.CFrame.RightVector * v399.Value / 2;
            v398.Velocity = v394.CFrame.LookVector * v399.Value + v402;
            return;
        end;
    end);
    task.delay(15, v400.Disconnect, v400);
    task.wait(0.3);
    v12.rockFlakes(v394, 0.5);
    if l_Players_0.LocalPlayer == l_Players_0:GetPlayerFromCharacter(v393) then
        v12.fov(false, 85);
        v12.fov(true, 70, 1.3, Enum.EasingStyle.Sine, Enum.EasingDirection.Out);
    end;
    v12.Emit(v394, l_ReplicatedStorage_0.Resources.kaiser.Jump, 3, CFrame.new(0, -3, 0));
    v12.cameraShake(15, 0.55, 6);
    local v403, v404 = v12.bodyVelocity(v394, 150, 0.5, nil, nil, true);
    local v405 = nil;
    v405 = l_RunService_0.RenderStepped:Connect(function(_) --[[ Line: 1931 ]]
        -- upvalues: v403 (copy), v405 (ref), v394 (copy), v404 (copy)
        if not v403 or not v403:IsDescendantOf(game) then
            v405:Disconnect();
            return;
        else
            local v407 = v394.CFrame.RightVector * v404.Value / 2;
            v403.Velocity = v394.CFrame.LookVector * v404.Value + v407;
            return;
        end;
    end);
    task.delay(15, v405.Disconnect, v405);
    task.wait(0.3);
    for _, v409 in ipairs(v395:GetDescendants()) do
        if v409:IsA("ParticleEmitter") then
            v409.Enabled = false;
        end;
    end;
    task.delay(3, v395.Destroy, v395);
    for _, v411 in ipairs(v396:GetDescendants()) do
        if v411:IsA("Trail") then
            v411.Enabled = false;
        end;
    end;
    task.delay(3, v396.Destroy, v396);
    for _, v413 in ipairs(v397:GetDescendants()) do
        if v413:IsA("Trail") then
            v413.Enabled = false;
        end;
    end;
    task.delay(3, v397.Destroy, v397);
end;
v12.saepass = function(v414) --[[ Line: 1969 ]] --[[ Name: saepass ]]
    -- upvalues: l_Lighting_0 (copy), l_TweenService_0 (copy), l_ReplicatedStorage_0 (copy), v12 (copy)
    local v415 = v414.HumanoidRootPart or v414.PrimaryPart;
    local l_BlurEffect_3 = Instance.new("BlurEffect");
    l_BlurEffect_3.Size = 25;
    l_BlurEffect_3.Parent = l_Lighting_0;
    l_TweenService_0:Create(l_BlurEffect_3, TweenInfo.new(0.533, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
        Size = 0
    }):Play();
    task.delay(0.533, l_BlurEffect_3.Destroy, l_BlurEffect_3);
    local v417 = l_ReplicatedStorage_0.Resources.ColorCorrection:Clone();
    v417.Parent = l_Lighting_0;
    v417.TintColor = Color3.fromRGB(255, 104, 132);
    v417.Brightness = 0.4;
    v417.Contrast = 1;
    v417.Saturation = -0.4;
    l_TweenService_0:Create(v417, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
        Saturation = 0
    }):Play();
    l_TweenService_0:Create(v417, TweenInfo.new(1, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
        Contrast = 0, 
        Brightness = 0, 
        TintColor = Color3.fromRGB(255, 255, 255)
    }):Play();
    task.delay(1, v417.Destroy, v417);
    v12.fov(false, 100);
    v12.fov(true, 70, 0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out);
    v12.cameraShake(10, 2, 6);
    v12.Emit(v415, l_ReplicatedStorage_0.Resources.sae.hota, 5, CFrame.new(3, 0, -4));
end;
v12.rinpass = function(v418) --[[ Line: 1997 ]] --[[ Name: rinpass ]]
    -- upvalues: l_Lighting_0 (copy), l_TweenService_0 (copy), l_ReplicatedStorage_0 (copy), v12 (copy)
    local v419 = v418.HumanoidRootPart or v418.PrimaryPart;
    local l_BlurEffect_4 = Instance.new("BlurEffect");
    l_BlurEffect_4.Size = 25;
    l_BlurEffect_4.Parent = l_Lighting_0;
    l_TweenService_0:Create(l_BlurEffect_4, TweenInfo.new(0.533, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
        Size = 0
    }):Play();
    task.delay(0.533, l_BlurEffect_4.Destroy, l_BlurEffect_4);
    local v421 = l_ReplicatedStorage_0.Resources.ColorCorrection:Clone();
    v421.Parent = l_Lighting_0;
    v421.TintColor = Color3.fromRGB(19, 255, 239);
    v421.Brightness = 0.4;
    v421.Contrast = 1;
    v421.Saturation = -0.4;
    l_TweenService_0:Create(v421, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
        Saturation = 0
    }):Play();
    l_TweenService_0:Create(v421, TweenInfo.new(2.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
        Contrast = 0, 
        Brightness = 0, 
        TintColor = Color3.fromRGB(255, 255, 255)
    }):Play();
    task.delay(2.5, v421.Destroy, v421);
    v12.fov(false, 100);
    v12.fov(true, 70, 0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out);
    v12.cameraShake(10, 2, 6);
    v12.Emit(v419, l_ReplicatedStorage_0.Resources.rin.hota, 5, CFrame.new(3, 0, -4));
end;
v12.rinfakeshot = function(v422) --[[ Line: 2025 ]] --[[ Name: rinfakeshot ]]
    -- upvalues: l_ReplicatedStorage_0 (copy), v12 (copy), l_Players_0 (copy), l_Lighting_0 (copy), l_TweenService_0 (copy), l_RunService_0 (copy)
    local l_Ball_2 = v422:FindFirstChild("Ball");
    local v424 = v422.HumanoidRootPart or v422.PrimaryPart;
    local v425 = {};
    local v426 = l_ReplicatedStorage_0.Resources.rin.allfakeshot:Clone();
    v426:PivotTo(v424.CFrame);
    v426.Parent = v422;
    task.delay(3, v426.Destroy, v426);
    for _, v428 in ipairs(v422:GetDescendants()) do
        if v428:IsA("Part") and v428.Transparency < 1 then
            for _, v430 in ipairs(l_ReplicatedStorage_0.Resources.rin.rinaura:GetChildren()) do
                local v431 = v430:Clone();
                v431.Parent = v428;
                table.insert(v425, v431);
            end;
        end;
    end;
    task.delay(0.45, function() --[[ Line: 2049 ]]
        -- upvalues: v426 (copy), v424 (copy), v12 (ref), l_Ball_2 (copy), l_ReplicatedStorage_0 (ref), v425 (copy)
        v426:PivotTo(v424.CFrame);
        local l_rinfeintgrassstart_0 = v426.rinfeintgrassstart;
        for _, v434 in pairs(l_rinfeintgrassstart_0:GetDescendants()) do
            if v434:IsA("ParticleEmitter") then
                v434:Emit(v434:GetAttribute("EmitCount"));
            end;
        end;
        v12.cameraShake(10, 0.5, 4);
        v12.bodyVelocity(v424, 100, 0.25, nil, nil, nil, TweenInfo.new(0.7, Enum.EasingStyle.Quart, Enum.EasingDirection.Out));
        if not l_Ball_2 then
            return;
        else
            for _, v436 in ipairs(l_ReplicatedStorage_0.Resources.rin.rinaura:GetChildren()) do
                local v437 = v436:Clone();
                v437.Parent = l_Ball_2;
                table.insert(v425, v437);
            end;
            return;
        end;
    end);
    task.delay(0.9, function() --[[ Line: 2071 ]]
        -- upvalues: v426 (copy), v424 (copy), v425 (copy), v12 (ref), v422 (copy), l_Players_0 (ref), l_Lighting_0 (ref), l_TweenService_0 (ref), l_ReplicatedStorage_0 (ref), l_RunService_0 (ref)
        v426:PivotTo(v424.CFrame);
        local l_rinfeintgrass_0 = v426.rinfeintgrass;
        for _, v440 in pairs(l_rinfeintgrass_0:GetDescendants()) do
            if v440:IsA("ParticleEmitter") then
                v440:Emit(v440:GetAttribute("EmitCount"));
            end;
        end;
        for _, v442 in v425 do
            v442.Enabled = false;
            task.delay(3, v442.Destroy, v442);
        end;
        v12.characterImage({
            Whitelist = {
                v422
            }, 
            Speed = 1, 
            CFrames = true, 
            Brightness = 1, 
            countSpeed = 0.03, 
            ImageTransparency = 0.65, 
            Count = 8, 
            Color = Color3.fromRGB(71, 218, 118), 
            Color2 = Color3.fromRGB(0, 0, 0)
        });
        if l_Players_0.LocalPlayer == l_Players_0:GetPlayerFromCharacter(v422) then
            local l_BlurEffect_5 = Instance.new("BlurEffect");
            l_BlurEffect_5.Size = 25;
            l_BlurEffect_5.Parent = l_Lighting_0;
            l_TweenService_0:Create(l_BlurEffect_5, TweenInfo.new(0.533, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
                Size = 0
            }):Play();
            task.delay(0.533, l_BlurEffect_5.Destroy, l_BlurEffect_5);
            local v444 = l_ReplicatedStorage_0.Resources.ColorCorrection:Clone();
            v444.Parent = l_Lighting_0;
            v444.TintColor = Color3.fromRGB(92, 255, 220);
            v444.Brightness = 0.4;
            v444.Contrast = 1;
            v444.Saturation = -0.4;
            l_TweenService_0:Create(v444, TweenInfo.new(1.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
                Saturation = 0
            }):Play();
            l_TweenService_0:Create(v444, TweenInfo.new(2, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
                Contrast = 0, 
                Brightness = 0, 
                TintColor = Color3.fromRGB(255, 255, 255)
            }):Play();
            task.delay(2, v444.Destroy, v444);
            v12.fov(false, 100);
            v12.fov(true, 70, 0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out);
            v12.cameraShake(10, 1.5, 6);
            local v445, v446 = v12.bodyVelocity(v424, 120, 0.3, nil, nil, true);
            local v447 = nil;
            do
                local l_v447_0 = v447;
                l_v447_0 = l_RunService_0.RenderStepped:Connect(function(_) --[[ Line: 2142 ]]
                    -- upvalues: v445 (copy), l_v447_0 (ref), v424 (ref), v446 (copy)
                    if not v445 or not v445:IsDescendantOf(game) then
                        l_v447_0:Disconnect();
                        return;
                    else
                        local v450 = v424.CFrame.RightVector * v446.Value;
                        v445.Velocity = v424.CFrame.LookVector * v446.Value + v450;
                        return;
                    end;
                end);
                task.delay(15, l_v447_0.Disconnect, l_v447_0);
            end;
        end;
    end);
end;
v12.occlusionBreak = function(v451) --[[ Line: 2158 ]] --[[ Name: occlusionBreak ]]
    -- upvalues: l_ReplicatedStorage_0 (copy), v12 (copy), l_Players_0 (copy), l_Lighting_0 (copy), l_TweenService_0 (copy)
    local v452 = v451.HumanoidRootPart or v451.PrimaryPart;
    local v453 = {};
    local v454 = l_ReplicatedStorage_0.Resources.rin.allrun:Clone();
    v454:PivotTo(v452.CFrame);
    v454.Parent = v451;
    task.delay(2, v454.Destroy, v454);
    for _, v456 in ipairs(v451:GetDescendants()) do
        if v456:IsA("Part") and v456.Transparency < 1 then
            for _, v458 in ipairs(l_ReplicatedStorage_0.Resources.rin.rinaura:GetChildren()) do
                local v459 = v458:Clone();
                v459.Parent = v456;
                table.insert(v453, v459);
            end;
        end;
    end;
    for _, v461 in ipairs(l_ReplicatedStorage_0.Resources.rin.flashsteps:GetChildren()) do
        local v462 = v461:Clone();
        v462.Parent = v451.Torso;
        table.insert(v453, v462);
    end;
    local v463 = l_ReplicatedStorage_0.Resources.rin.trail:Clone();
    v463.Weld.Part0 = v451["Right Arm"];
    v463.Parent = v451;
    local v464 = l_ReplicatedStorage_0.Resources.rin.trail:Clone();
    v464.Weld.Part0 = v451["Left Arm"];
    v464.Parent = v451;
    v12.bodyVelocity(v452, 60, 1.333, true, nil, nil, TweenInfo.new(0.15, Enum.EasingStyle.Quart, Enum.EasingDirection.In));
    task.delay(1.333, function() --[[ Line: 2205 ]]
        -- upvalues: v464 (copy), v463 (copy), v453 (copy)
        v464:Destroy();
        v463:Destroy();
        for _, v466 in v453 do
            v466.Enabled = false;
            task.delay(3, v466.Destroy, v466);
        end;
    end);
    task.delay(0.15, function() --[[ Line: 2216 ]]
        -- upvalues: v454 (copy), v452 (copy), l_Players_0 (ref), v451 (copy), l_Lighting_0 (ref), l_TweenService_0 (ref), l_ReplicatedStorage_0 (ref), v12 (ref)
        v454:PivotTo(v452.CFrame);
        local l_ringrasstep1_0 = v454.ringrasstep1;
        for _, v469 in pairs(l_ringrasstep1_0:GetDescendants()) do
            if v469:IsA("ParticleEmitter") then
                v469:Emit(v469:GetAttribute("EmitCount"));
            end;
        end;
        if l_Players_0.LocalPlayer == l_Players_0:GetPlayerFromCharacter(v451) then
            local l_BlurEffect_6 = Instance.new("BlurEffect");
            l_BlurEffect_6.Size = 25;
            l_BlurEffect_6.Parent = l_Lighting_0;
            l_TweenService_0:Create(l_BlurEffect_6, TweenInfo.new(0.533, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
                Size = 0
            }):Play();
            task.delay(0.533, l_BlurEffect_6.Destroy, l_BlurEffect_6);
            local v471 = l_ReplicatedStorage_0.Resources.ColorCorrection:Clone();
            v471.Parent = l_Lighting_0;
            v471.TintColor = Color3.fromRGB(71, 218, 118);
            v471.Brightness = 0.4;
            v471.Contrast = 1;
            v471.Saturation = -0.4;
            l_TweenService_0:Create(v471, TweenInfo.new(1.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
                Saturation = 0
            }):Play();
            l_TweenService_0:Create(v471, TweenInfo.new(2, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
                Contrast = 0, 
                Brightness = 0, 
                TintColor = Color3.fromRGB(255, 255, 255)
            }):Play();
            task.delay(2, v471.Destroy, v471);
            v12.fov(false, 100);
            v12.fov(true, 70, 0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out);
            v12.cameraShake(10, 1.5, 6);
        end;
    end);
    task.delay(0.4, function() --[[ Line: 2278 ]]
        -- upvalues: v454 (copy), v452 (copy)
        v454:PivotTo(v452.CFrame);
        local l_ringrasstep2_0 = v454.ringrasstep2;
        for _, v474 in pairs(l_ringrasstep2_0:GetDescendants()) do
            if v474:IsA("ParticleEmitter") then
                v474:Emit(v474:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(0.717, function() --[[ Line: 2288 ]]
        -- upvalues: v454 (copy), v452 (copy)
        v454:PivotTo(v452.CFrame);
        local l_ringrasstep3_0 = v454.ringrasstep3;
        for _, v477 in pairs(l_ringrasstep3_0:GetDescendants()) do
            if v477:IsA("ParticleEmitter") then
                v477:Emit(v477:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(1, function() --[[ Line: 2298 ]]
        -- upvalues: v454 (copy), v452 (copy)
        v454:PivotTo(v452.CFrame);
        local l_ringrasstep4_0 = v454.ringrasstep4;
        for _, v480 in pairs(l_ringrasstep4_0:GetDescendants()) do
            if v480:IsA("ParticleEmitter") then
                v480:Emit(v480:GetAttribute("EmitCount"));
            end;
        end;
    end);
end;
v12.lorenzoAwk = function(v481) --[[ Line: 2310 ]] --[[ Name: lorenzoAwk ]]
    -- upvalues: l_Lighting_0 (copy), v12 (copy), l_ReplicatedStorage_0 (copy), l_RunService_0 (copy), l_CurrentCamera_0 (copy), l_TweenService_0 (copy), v25 (copy), l_SoundService_0 (copy), l_Density_0 (copy), l_Color_0 (copy), l_Brightness_0 (copy)
    local v482 = v481.HumanoidRootPart or v481.PrimaryPart;
    local _ = v481.Torso;
    local l_Atmosphere_1 = l_Lighting_0.Atmosphere;
    local l_Ball_3 = v481:FindFirstChild("Ball");
    v12.bright(-1, 1);
    v12.sceneEnabled(true);
    local v486 = l_ReplicatedStorage_0.Resources.donlorenzo.DonAwaken:Clone();
    v486:PivotTo(v482.CFrame);
    v486.Parent = v481;
    local v487 = l_ReplicatedStorage_0.Resources.donlorenzo.awkCam:Clone();
    v487.Parent = v486;
    local v488 = nil;
    v488 = l_RunService_0.PreRender:connect(function() --[[ Line: 2327 ]]
        -- upvalues: v487 (copy), v488 (ref), l_CurrentCamera_0 (ref)
        if not v487:IsDescendantOf(game) then
            v488:Disconnect();
        end;
        v487.CFrame = l_CurrentCamera_0.CFrame;
    end);
    local v489 = {};
    for _, v491 in ipairs(v481:GetDescendants()) do
        if v491:IsA("Part") and v491.Transparency < 1 then
            for _, v493 in ipairs(l_ReplicatedStorage_0.Resources.donlorenzo.ult4aura:GetChildren()) do
                local v494 = v493:Clone();
                v494.Parent = v491;
                table.insert(v489, v494);
            end;
        end;
    end;
    local v495 = l_ReplicatedStorage_0.Resources.DepthOfField:Clone();
    v495.Parent = l_Lighting_0;
    v495.FarIntensity = 0;
    l_TweenService_0:Create(v495, TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
        FarIntensity = 1
    }):Play();
    local v496 = l_ReplicatedStorage_0.Resources.donlorenzo.trail:Clone();
    v496.Weld.Part0 = v481["Right Arm"];
    v496.Parent = v481;
    local v497 = l_ReplicatedStorage_0.Resources.donlorenzo.trail:Clone();
    v497.Weld.Part0 = v481["Left Arm"];
    v497.Parent = v481;
    v25:play(l_ReplicatedStorage_0.Resources.donlorenzo.awaken, l_SoundService_0);
    v12.cutsceneBlender(v482, l_ReplicatedStorage_0.Resources.donlorenzo.awkcutscene, l_ReplicatedStorage_0.Resources.donlorenzo.FOV2);
    task.delay(1, function() --[[ Line: 2377 ]]
        -- upvalues: v486 (copy)
        for _, v499 in ipairs(v486.ultballgrasskick:GetDescendants()) do
            if v499:IsA("ParticleEmitter") then
                v499:Emit(v499:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(3.26, function() --[[ Line: 2385 ]]
        -- upvalues: v486 (copy)
        for _, v501 in ipairs(v486.gimme:GetDescendants()) do
            if v501:IsA("ParticleEmitter") then
                v501:Emit(v501:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(3.52, function() --[[ Line: 2393 ]]
        -- upvalues: v486 (copy)
        for _, v503 in ipairs(v486.money:GetDescendants()) do
            if v503:IsA("ParticleEmitter") then
                v503:Emit(v503:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(4.51, function() --[[ Line: 2401 ]]
        -- upvalues: v486 (copy)
        for _, v505 in ipairs(v486.teethshinevfx:GetDescendants()) do
            if v505:IsA("ParticleEmitter") then
                v505:Emit(v505:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(4.8, function() --[[ Line: 2409 ]]
        -- upvalues: v487 (copy)
        for _, v507 in ipairs(v487:GetDescendants()) do
            if v507:IsA("Beam") then
                v507.Enabled = true;
            end;
        end;
    end);
    task.delay(5.35, function() --[[ Line: 2418 ]]
        -- upvalues: v487 (copy)
        for _, v509 in ipairs(v487:GetDescendants()) do
            if v509:IsA("Beam") then
                v509.Enabled = false;
            end;
        end;
        for _, v511 in pairs(v487:GetDescendants()) do
            if v511:IsA("ParticleEmitter") then
                v511.Enabled = true;
            end;
        end;
    end);
    task.delay(5.45, function() --[[ Line: 2433 ]]
        -- upvalues: l_ReplicatedStorage_0 (ref), v481 (copy), v482 (copy), l_Ball_3 (copy)
        local v512 = l_ReplicatedStorage_0.Resources.donlorenzo.awkball:Clone();
        v512.Parent = v481;
        v512:PivotTo(v482.CFrame);
        v512.Weld.Part0 = l_Ball_3;
        task.wait(4);
        v512:Destroy();
    end);
    task.delay(5.57, function() --[[ Line: 2443 ]]
        -- upvalues: v486 (copy)
        for _, v514 in ipairs(v486.lorenzoultflick:GetDescendants()) do
            if v514:IsA("ParticleEmitter") then
                v514:Emit(v514:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(6.22, function() --[[ Line: 2451 ]]
        -- upvalues: v486 (copy)
        for _, v516 in ipairs(v486.ultballcatch:GetDescendants()) do
            if v516:IsA("ParticleEmitter") then
                v516:Emit(v516:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(6.56, function() --[[ Line: 2459 ]]
        -- upvalues: v486 (copy)
        for _, v518 in ipairs(v486.grasstep1:GetDescendants()) do
            if v518:IsA("ParticleEmitter") then
                v518:Emit(v518:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(7.03, function() --[[ Line: 2468 ]]
        -- upvalues: v486 (copy)
        for _, v520 in ipairs(v486.ultballgrasskick1:GetDescendants()) do
            if v520:IsA("ParticleEmitter") then
                v520:Emit(v520:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(7.1, function() --[[ Line: 2476 ]]
        -- upvalues: v486 (copy)
        for _, v522 in pairs(v486.sunglare:GetDescendants()) do
            if v522:IsA("ParticleEmitter") then
                v522.Enabled = true;
            end;
        end;
        for _, v524 in pairs(v486.bodyglare:GetDescendants()) do
            if v524:IsA("ParticleEmitter") then
                v524.Enabled = true;
            end;
        end;
        for _, v526 in pairs(v486.bodybeams:GetDescendants()) do
            if v526:IsA("ParticleEmitter") then
                v526.Enabled = true;
            end;
        end;
        for _, v528 in pairs(v486.ballbeams:GetDescendants()) do
            if v528:IsA("Beam") then
                v528.Enabled = true;
            end;
        end;
        for _, v530 in pairs(v486.bodybeams:GetDescendants()) do
            if v530:IsA("Beam") then
                v530.Enabled = true;
            end;
        end;
        for _, v532 in pairs(v486.torsobeam:GetDescendants()) do
            if v532:IsA("Beam") then
                v532.Enabled = true;
            end;
        end;
    end);
    task.delay(7.14, function() --[[ Line: 2509 ]]
        -- upvalues: v486 (copy)
        for _, v534 in pairs(v486.movingvfx:GetDescendants()) do
            if v534:IsA("ParticleEmitter") then
                v534.Enabled = true;
            end;
        end;
    end);
    task.delay(8.2, function() --[[ Line: 2518 ]]
        -- upvalues: v12 (ref), v495 (copy), v486 (copy), v496 (copy), v497 (copy), v489 (copy), l_Atmosphere_1 (copy), l_Density_0 (ref), l_Color_0 (ref), l_Lighting_0 (ref), l_Brightness_0 (ref)
        v12.blackscene(0.5833333333333333);
        v495:Destroy();
        v486:Destroy();
        v496:Destroy();
        v497:Destroy();
        for _, v536 in v489 do
            v536:Destroy();
        end;
        table.clear(v489);
        l_Atmosphere_1.Density = l_Density_0;
        l_Atmosphere_1.Color = l_Color_0;
        l_Lighting_0.ColorShift_Top = Color3.fromRGB(0, 0, 0);
        l_Lighting_0.Brightness = l_Brightness_0;
        v12.sceneEnabled(false);
        v12.fov(false, 15);
        v12.fov(true, 70, 2, Enum.EasingStyle.Sine, Enum.EasingDirection.Out);
    end);
end;
v12.EXEStrike = function(v537) --[[ Line: 2545 ]] --[[ Name: EXEStrike ]]
    -- upvalues: v12 (copy), l_ReplicatedStorage_0 (copy), l_TweenService_0 (copy)
    local v538 = v537.HumanoidRootPart or v537.PrimaryPart;
    local _ = v537:FindFirstChild("Ball");
    v12.bigshockwave(v538);
    local v540 = l_ReplicatedStorage_0.Resources.izayoi.SakuyaShot:Clone();
    v540.Parent = v537;
    v540:PivotTo(v538.CFrame);
    l_TweenService_0:Create(v540.Haze.Mesh, TweenInfo.new(0.4, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
        Scale = Vector3.new(-0.20000000298023224, -0.18000000715255737, -0.20000000298023224, 0)
    }):Play();
    l_TweenService_0:Create(v540.Haze.Decal, TweenInfo.new(0.4, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
        Transparency = 1
    }):Play();
    l_TweenService_0:Create(v540.Haze, TweenInfo.new(0.4, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
        CFrame = v540.Haze.CFrame * CFrame.new(-20, 0, 0) * CFrame.Angles(1.6277115137024316, 0, 0)
    }):Play();
    l_TweenService_0:Create(v540.Start, TweenInfo.new(0.4, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
        Size = Vector3.new(99.60099792480469, 8.840999603271484, 9.27299976348877, 0)
    }):Play();
    l_TweenService_0:Create(v540.Start.Decal, TweenInfo.new(0.4, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
        Transparency = 1
    }):Play();
    l_TweenService_0:Create(v540.Start, TweenInfo.new(0.4, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
        CFrame = v540.Start.CFrame * CFrame.new(-35, 0, 0) * CFrame.Angles(-1.7444565873683324, 0, 0)
    }):Play();
    l_TweenService_0:Create(v540.Reda.Mesh, TweenInfo.new(0.4, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
        Scale = Vector3.new(3.0390000343322754, 0, 0, 0)
    }):Play();
    l_TweenService_0:Create(v540.Reda.Decal, TweenInfo.new(0.4, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
        Transparency = 1
    }):Play();
    l_TweenService_0:Create(v540.Reda, TweenInfo.new(0.4, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
        CFrame = v540.Reda.CFrame * CFrame.new(-8, 0, 0) * CFrame.Angles(1.4541734261766355, 0, 0)
    }):Play();
    l_TweenService_0:Create(v540.XD.Mesh, TweenInfo.new(0.4, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
        Scale = Vector3.new(3.178999900817871, 1.0720000267028809, 1.0369999408721924, 0)
    }):Play();
    l_TweenService_0:Create(v540.XD.Decal, TweenInfo.new(0.4, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
        Transparency = 1
    }):Play();
    l_TweenService_0:Create(v540.XD, TweenInfo.new(0.4, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
        CFrame = v540.XD.CFrame * CFrame.new(-5, 0, 0) * CFrame.Angles(1.6277115137024316, 0, 0)
    }):Play();
    l_TweenService_0:Create(v540.WaveMesh, TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
        Size = Vector3.new(275.0830078125, 54.48099899291992, 51.90399932861328, 0)
    }):Play();
    l_TweenService_0:Create(v540.WaveMesh.Decal, TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
        Transparency = 1
    }):Play();
    l_TweenService_0:Create(v540.WaveMesh, TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
        CFrame = v540.WaveMesh.CFrame * CFrame.new(-15, 0, 0) * CFrame.Angles(-1.3636781044607293, 0, 0)
    }):Play();
    task.delay(2, v540.Destroy, v540);
end;
v12.TP = function(v541, v542) --[[ Line: 2578 ]] --[[ Name: TP ]]
    -- upvalues: v12 (copy), l_ReplicatedStorage_0 (copy), v29 (copy)
    local v543 = v541.HumanoidRootPart or v541.PrimaryPart;
    local _ = v541:FindFirstChild("Ball");
    v12.cutsceneBlender(v543, l_ReplicatedStorage_0.Resources.exe.Tpcam, l_ReplicatedStorage_0.Resources.exe.FOV);
    local v545 = nil;
    local v546 = nil;
    if not v542 then
        v545 = l_ReplicatedStorage_0.Resources.exe.Exe:Clone();
        v545.Parent = workspace.Effects;
        for _, v548 in ipairs(v545:GetDescendants()) do
            if v548:IsA("Weld") and v541:FindFirstChild(v548.Name) then
                v548.Part1 = v541[v548.Name];
            end;
        end;
        v546 = function(v549, v550) --[[ Line: 2598 ]]
            -- upvalues: v545 (ref)
            v549 = v549 or false;
            v550 = v550 or 0.1;
            for _, v552 in pairs(v545:GetDescendants()) do
                if v552:IsA("ParticleEmitter") then
                    v552.Enabled = v549;
                    if v549 then
                        task.delay(v550, function() --[[ Line: 2605 ]]
                            -- upvalues: v552 (copy)
                            v552.Enabled = false;
                        end);
                    end;
                end;
            end;
        end;
    end;
    task.delay(3, function() --[[ Line: 2614 ]]
        -- upvalues: v545 (ref)
        if v545 then
            v545:Destroy();
        end;
    end);
    task.delay(0.3, function() --[[ Line: 2620 ]]
        -- upvalues: v542 (copy), v546 (ref), v29 (ref), v541 (copy)
        if not v542 then
            v546(true, 0.117);
        end;
        v29({
            Character = v541, 
            Time = 0.117
        });
    end);
end;
v12.Shortcut = function(v553) --[[ Line: 2629 ]] --[[ Name: Shortcut ]]
    -- upvalues: l_Players_0 (copy), v12 (copy), l_ReplicatedStorage_0 (copy), v30 (copy), v29 (copy)
    local v554 = v553.HumanoidRootPart or v553.PrimaryPart;
    local _ = v553:FindFirstChild("Ball");
    task.spawn(function() --[[ Line: 2633 ]]
        -- upvalues: l_Players_0 (ref), v553 (copy), v12 (ref), v554 (copy)
        if l_Players_0.LocalPlayer == l_Players_0:GetPlayerFromCharacter(v553) then
            task.spawn(function() --[[ Line: 2635 ]]
                -- upvalues: v12 (ref)
                v12.cameraShake(10, 2, 6);
                v12.fov(false, 85);
                v12.fov(true, 70, 2, Enum.EasingStyle.Sine, Enum.EasingDirection.Out);
            end);
            local v556 = v12.bodyVelocity(v554, 85, 3, nil, nil, nil);
            task.wait(1.756);
            v556:Destroy();
            v12.bodyVelocity(v554, 210, 0.75, nil, nil, nil);
            task.wait(0.567);
            v12.bodyVelocity(v554, 90, 0.4, nil, nil, nil);
        end;
    end);
    local v557 = l_ReplicatedStorage_0.Resources.exe.Exe:Clone();
    v30:GroupWeld(v553, v557);
    v557.Parent = workspace.Effects;
    local function v562(v558, v559) --[[ Line: 2653 ]] --[[ Name: Displayer ]]
        -- upvalues: v557 (copy)
        v558 = v558 or false;
        v559 = v559 or 0.1;
        for _, v561 in pairs(v557:GetDescendants()) do
            if v561:IsA("ParticleEmitter") then
                v561.Enabled = v558;
                if v558 then
                    task.delay(v559, function() --[[ Line: 2660 ]]
                        -- upvalues: v561 (copy)
                        v561.Enabled = false;
                    end);
                end;
            end;
        end;
    end;
    task.delay(3, function() --[[ Line: 2668 ]]
        -- upvalues: v557 (copy)
        v557:Destroy();
    end);
    task.delay(0.3, function() --[[ Line: 2672 ]]
        -- upvalues: v562 (copy), v29 (ref), v553 (copy)
        v562(true, 0.117);
        v29({
            Character = v553, 
            Time = 0.117
        });
    end);
    task.delay(0.517, function() --[[ Line: 2677 ]]
        -- upvalues: v562 (copy), v29 (ref), v553 (copy)
        v562(true, 0.1);
        v29({
            Character = v553, 
            Time = 0.1
        });
    end);
    task.delay(0.917, function() --[[ Line: 2682 ]]
        -- upvalues: v562 (copy), v29 (ref), v553 (copy)
        v562(true, 0.1);
        v29({
            Character = v553, 
            Time = 0.1
        });
    end);
    task.delay(1.167, function() --[[ Line: 2687 ]]
        -- upvalues: v562 (copy), v29 (ref), v553 (copy)
        v562(true, 0.1);
        v29({
            Character = v553, 
            Time = 0.1
        });
    end);
    task.delay(1.667, function() --[[ Line: 2693 ]]
        -- upvalues: v562 (copy), v29 (ref), v553 (copy)
        v562(true, 0.2);
        v29({
            Character = v553, 
            Time = 0.2
        });
    end);
    task.delay(2.167, function() --[[ Line: 2699 ]]
        -- upvalues: v562 (copy), v29 (ref), v553 (copy)
        v562(true, 0.2);
        v29({
            Character = v553, 
            Time = 0.2
        });
    end);
end;
v12.zombiedribble = function(v563) --[[ Line: 2706 ]] --[[ Name: zombiedribble ]]
    -- upvalues: l_ReplicatedStorage_0 (copy), v12 (copy), l_Players_0 (copy), l_Lighting_0 (copy), l_TweenService_0 (copy)
    local v564 = v563.HumanoidRootPart or v563.PrimaryPart;
    local l_Ball_7 = v563:FindFirstChild("Ball");
    local v566 = {};
    for _, v568 in ipairs(v563:GetDescendants()) do
        if v568:IsA("Part") and v568.Transparency < 1 then
            for _, v570 in ipairs(l_ReplicatedStorage_0.Resources.donlorenzo.zombiedribble:GetDescendants()) do
                local v571 = v570:Clone();
                v571.Parent = v568;
                table.insert(v566, v571);
            end;
        end;
    end;
    local v572 = l_ReplicatedStorage_0.Resources.donlorenzo.trail:Clone();
    v572.Weld.Part0 = v563["Right Arm"];
    v572.Parent = v563;
    local v573 = l_ReplicatedStorage_0.Resources.donlorenzo.trail:Clone();
    v573.Weld.Part0 = v563["Left Arm"];
    v573.Parent = v563;
    local v574 = l_ReplicatedStorage_0.Resources.donlorenzo.balltrail:Clone();
    v574.Weld.Part0 = l_Ball_7;
    v574.Parent = v563;
    local v575 = l_ReplicatedStorage_0.Resources.donlorenzo.skill1movingpart:Clone();
    v575.Weld.Part0 = v564;
    v575.Parent = v563;
    task.spawn(function() --[[ Line: 2744 ]]
        -- upvalues: v12 (ref), v564 (copy)
        v12.bodyVelocity(v564, 70, 0.8, nil, nil, nil);
        task.wait(0.57);
        v12.bodyVelocity(v564, 65, 0.6, nil, nil, nil);
        task.wait(0.1);
        v12.bodyVelocity(v564, 75, 1, nil, nil, nil);
        task.wait(0.62);
        v12.bodyVelocity(v564, 95, 0.8, nil, nil, nil);
        task.wait(0.3);
        v12.bodyVelocity(v564, 85, 0.6, nil, nil, nil);
    end);
    task.delay(2.03, function() --[[ Line: 2757 ]]
        -- upvalues: v573 (copy), v572 (copy), v575 (copy), v574 (copy), v566 (copy)
        v573:Destroy();
        v572:Destroy();
        v575:Destroy();
        v574:Destroy();
        for _, v577 in v566 do
            v577.Enabled = false;
            task.delay(3, v577.Destroy, v577);
        end;
    end);
    task.delay(0.15, function() --[[ Line: 2770 ]]
        -- upvalues: l_Players_0 (ref), v563 (copy), l_Lighting_0 (ref), l_TweenService_0 (ref), l_ReplicatedStorage_0 (ref), v12 (ref)
        if l_Players_0.LocalPlayer == l_Players_0:GetPlayerFromCharacter(v563) then
            local l_BlurEffect_7 = Instance.new("BlurEffect");
            l_BlurEffect_7.Size = 25;
            l_BlurEffect_7.Parent = l_Lighting_0;
            l_TweenService_0:Create(l_BlurEffect_7, TweenInfo.new(0.533, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
                Size = 0
            }):Play();
            task.delay(0.533, l_BlurEffect_7.Destroy, l_BlurEffect_7);
            local v579 = l_ReplicatedStorage_0.Resources.ColorCorrection:Clone();
            v579.Parent = l_Lighting_0;
            v579.TintColor = Color3.fromRGB(85, 0, 255);
            v579.Brightness = 0.4;
            v579.Contrast = 1;
            v579.Saturation = -0.4;
            l_TweenService_0:Create(v579, TweenInfo.new(1.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
                Saturation = 0
            }):Play();
            l_TweenService_0:Create(v579, TweenInfo.new(2, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
                Contrast = 0, 
                Brightness = 0, 
                TintColor = Color3.fromRGB(255, 255, 255)
            }):Play();
            task.delay(2, v579.Destroy, v579);
            v12.fov(false, 100);
            v12.fov(true, 70, 0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out);
            v12.cameraShake(10, 1.5, 6);
        end;
    end);
end;
v12.lorenzoundeadcrash = function(v580) --[[ Line: 2801 ]] --[[ Name: lorenzoundeadcrash ]]
    -- upvalues: l_ReplicatedStorage_0 (copy), v12 (copy), l_Players_0 (copy), l_Lighting_0 (copy), l_TweenService_0 (copy)
    local v581 = v580.HumanoidRootPart or v580.PrimaryPart;
    local l_Ball_8 = v580:FindFirstChild("Ball");
    local v583 = {};
    for _, v585 in ipairs(v580:GetDescendants()) do
        if v585:IsA("Part") and v585.Transparency < 1 then
            for _, v587 in ipairs(l_ReplicatedStorage_0.Resources.donlorenzo.zombiedribble:GetDescendants()) do
                local v588 = v587:Clone();
                v588.Parent = v585;
                table.insert(v583, v588);
            end;
        end;
    end;
    local v589 = l_ReplicatedStorage_0.Resources.donlorenzo.trail:Clone();
    v589.Weld.Part0 = v580["Right Arm"];
    v589.Parent = v580;
    local v590 = l_ReplicatedStorage_0.Resources.donlorenzo.trail:Clone();
    v590.Weld.Part0 = v580["Left Arm"];
    v590.Parent = v580;
    local v591 = l_ReplicatedStorage_0.Resources.donlorenzo.balltrail:Clone();
    v591.Weld.Part0 = l_Ball_8;
    v591.Parent = v580;
    local v592 = l_ReplicatedStorage_0.Resources.donlorenzo.skill1movingpart:Clone();
    v592.Weld.Part0 = v581;
    v592.Parent = v580;
    task.delay(0.12, function() --[[ Line: 2839 ]]
        -- upvalues: v12 (ref), v581 (copy)
        v12.bodyVelocity(v581, 75, 0.6, nil, nil, nil);
        task.wait(0.28);
        v12.bodyVelocity(v581, 135, 1, nil, nil, nil);
    end);
    task.delay(0.55, function() --[[ Line: 2845 ]]
        -- upvalues: l_ReplicatedStorage_0 (ref), v581 (copy), v580 (copy)
        local v593 = l_ReplicatedStorage_0.Resources.donlorenzo.skull2lorenzoheader:Clone();
        v593:PivotTo(v581.CFrame);
        v593.Parent = v580;
        for _, v595 in pairs(v593:GetDescendants()) do
            if v595:IsA("ParticleEmitter") then
                v595:Emit(v595:GetAttribute("EmitCount"));
            end;
        end;
        task.delay(3, v593.Destroy, v593);
    end);
    task.delay(1.25, function() --[[ Line: 2859 ]]
        -- upvalues: v583 (copy), v590 (copy), v589 (copy), v592 (copy), v591 (copy)
        for _, v597 in v583 do
            v597.Enabled = false;
            task.delay(3, v597.Destroy, v597);
        end;
        v590:Destroy();
        v589:Destroy();
        v592:Destroy();
        v591:Destroy();
    end);
    task.delay(0.5, function() --[[ Line: 2872 ]]
        -- upvalues: l_Players_0 (ref), v580 (copy), l_Lighting_0 (ref), l_TweenService_0 (ref), l_ReplicatedStorage_0 (ref), v12 (ref)
        if l_Players_0.LocalPlayer == l_Players_0:GetPlayerFromCharacter(v580) then
            local l_BlurEffect_8 = Instance.new("BlurEffect");
            l_BlurEffect_8.Size = 25;
            l_BlurEffect_8.Parent = l_Lighting_0;
            l_TweenService_0:Create(l_BlurEffect_8, TweenInfo.new(0.533, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
                Size = 0
            }):Play();
            task.delay(0.533, l_BlurEffect_8.Destroy, l_BlurEffect_8);
            local v599 = l_ReplicatedStorage_0.Resources.ColorCorrection:Clone();
            v599.Parent = l_Lighting_0;
            v599.TintColor = Color3.fromRGB(85, 0, 255);
            v599.Brightness = 0.4;
            v599.Contrast = 1;
            v599.Saturation = -0.4;
            l_TweenService_0:Create(v599, TweenInfo.new(1.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
                Saturation = 0
            }):Play();
            l_TweenService_0:Create(v599, TweenInfo.new(2, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
                Contrast = 0, 
                Brightness = 0, 
                TintColor = Color3.fromRGB(255, 255, 255)
            }):Play();
            task.delay(2, v599.Destroy, v599);
            v12.fov(false, 100);
            v12.fov(true, 70, 0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out);
            v12.cameraShake(15, 1.5, 6);
        end;
    end);
end;
v12.doncounter = function(v600) --[[ Line: 2903 ]] --[[ Name: doncounter ]]
    -- upvalues: l_ReplicatedStorage_0 (copy), v25 (copy), l_Players_0 (copy), l_Lighting_0 (copy), l_TweenService_0 (copy), v12 (copy)
    local v601 = v600.HumanoidRootPart or v600.PrimaryPart;
    local v602 = {};
    for _, v604 in ipairs(v600:GetDescendants()) do
        if v604:IsA("Part") and v604.Transparency < 1 then
            for _, v606 in ipairs(l_ReplicatedStorage_0.Resources.donlorenzo.zombiedribble:GetDescendants()) do
                local v607 = v606:Clone();
                v607.Parent = v604;
                table.insert(v602, v607);
            end;
        end;
    end;
    v25:play(l_ReplicatedStorage_0.Resources.rin.dcsound, v601);
    local v608 = nil;
    v608 = v600:GetAttributeChangedSignal("deathCounter"):connect(function() --[[ Line: 2924 ]]
        -- upvalues: v600 (copy), v608 (ref), v602 (copy)
        if v600:GetAttribute("deathCounter") then
            return;
        else
            if v608 then
                v608:Disconnect();
            end;
            for _, v610 in v602 do
                v610.Enabled = false;
                task.delay(3, v610.Destroy, v610);
            end;
            return;
        end;
    end);
    if l_Players_0.LocalPlayer ~= l_Players_0:GetPlayerFromCharacter(v600) then
        return;
    else
        local l_BlurEffect_9 = Instance.new("BlurEffect");
        l_BlurEffect_9.Size = 25;
        l_BlurEffect_9.Parent = l_Lighting_0;
        l_TweenService_0:Create(l_BlurEffect_9, TweenInfo.new(0.533, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
            Size = 0
        }):Play();
        task.delay(0.533, l_BlurEffect_9.Destroy, l_BlurEffect_9);
        local v612 = l_ReplicatedStorage_0.Resources.ColorCorrection:Clone();
        v612.Parent = l_Lighting_0;
        v612.TintColor = Color3.fromRGB(85, 0, 255);
        v612.Brightness = 0.4;
        v612.Contrast = 1;
        v612.Saturation = -0.4;
        l_TweenService_0:Create(v612, TweenInfo.new(1.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
            Saturation = 0
        }):Play();
        l_TweenService_0:Create(v612, TweenInfo.new(2, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
            Contrast = 0, 
            Brightness = 0, 
            TintColor = Color3.fromRGB(255, 255, 255)
        }):Play();
        task.delay(2, v612.Destroy, v612);
        v12.fov(false, 100);
        v12.fov(true, 70, 0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out);
        v12.cameraShake(10, 1.5, 6);
        return;
    end;
end;
v12.lorenzodefenseHit = function(v613, v614) --[[ Line: 2962 ]] --[[ Name: lorenzodefenseHit ]]
    -- upvalues: l_ReplicatedStorage_0 (copy), l_Players_0 (copy), l_Lighting_0 (copy), l_TweenService_0 (copy), v12 (copy)
    local v615 = v613.HumanoidRootPart or v613.PrimaryPart;
    local v616 = nil;
    v616 = if not v614 then l_ReplicatedStorage_0.Resources.donlorenzo.skill3lorenzoA:Clone() else l_ReplicatedStorage_0.Resources.donlorenzo.skill3lorenzoD:Clone();
    v616.Parent = v613;
    v616:PivotTo(v615.CFrame);
    for _, v618 in pairs(v616:GetDescendants()) do
        if v618:IsA("ParticleEmitter") then
            v618:Emit(v618:GetAttribute("EmitCount"));
        end;
    end;
    task.delay(3, v616.Destroy, v616);
    if l_Players_0.LocalPlayer ~= l_Players_0:GetPlayerFromCharacter(v613) then
        return;
    else
        local l_BlurEffect_10 = Instance.new("BlurEffect");
        l_BlurEffect_10.Size = 25;
        l_BlurEffect_10.Parent = l_Lighting_0;
        l_TweenService_0:Create(l_BlurEffect_10, TweenInfo.new(0.533, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
            Size = 0
        }):Play();
        task.delay(0.533, l_BlurEffect_10.Destroy, l_BlurEffect_10);
        local v620 = l_ReplicatedStorage_0.Resources.ColorCorrection:Clone();
        v620.Parent = l_Lighting_0;
        v620.TintColor = Color3.fromRGB(85, 0, 255);
        v620.Brightness = 0.4;
        v620.Contrast = 1;
        v620.Saturation = -0.4;
        l_TweenService_0:Create(v620, TweenInfo.new(1.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
            Saturation = 0
        }):Play();
        l_TweenService_0:Create(v620, TweenInfo.new(2, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
            Contrast = 0, 
            Brightness = 0, 
            TintColor = Color3.fromRGB(255, 255, 255)
        }):Play();
        task.delay(2, v620.Destroy, v620);
        v12.fov(false, 100);
        v12.fov(true, 70, 0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out);
        v12.cameraShake(10, 1.5, 6);
        return;
    end;
end;
v12.lorenzodefense = function(v621, v622) --[[ Line: 3010 ]] --[[ Name: lorenzodefense ]]
    -- upvalues: l_ReplicatedStorage_0 (copy), l_Players_0 (copy), v12 (copy), l_RunService_0 (copy)
    local v623 = v621.HumanoidRootPart or v621.PrimaryPart;
    local v624 = {};
    for _, v626 in ipairs(v621:GetDescendants()) do
        if v626:IsA("Part") and v626.Transparency < 1 then
            for _, v628 in ipairs(l_ReplicatedStorage_0.Resources.donlorenzo.zombiedribble:GetDescendants()) do
                local v629 = v628:Clone();
                v629.Parent = v626;
                table.insert(v624, v629);
            end;
        end;
    end;
    local v630 = l_ReplicatedStorage_0.Resources.donlorenzo.trail:Clone();
    v630.Weld.Part0 = v621["Right Arm"];
    v630.Parent = v621;
    local v631 = l_ReplicatedStorage_0.Resources.donlorenzo.trail:Clone();
    v631.Weld.Part0 = v621["Left Arm"];
    v631.Parent = v621;
    task.delay(0.3, function() --[[ Line: 3082 ]]
        -- upvalues: v630 (copy), v631 (copy), v624 (copy)
        v630:Destroy();
        v631:Destroy();
        for _, v633 in v624 do
            v633.Enabled = false;
            task.delay(3, v633.Destroy, v633);
        end;
        table.clear(v624);
    end);
    if l_Players_0.LocalPlayer == l_Players_0:GetPlayerFromCharacter(v621) then
        local v634 = nil;
        v634 = if not v622 then v623.CFrame.RightVector * -70 else v623.CFrame.RightVector * 70;
        local v635 = v12.bodyVelocity(v623, 1, 0.15, nil, nil, true);
        v635.MaxForce = Vector3.new(300000, 300000, 300000, 0);
        local v636 = nil;
        do
            local l_v634_0, l_v636_0 = v634, v636;
            l_v636_0 = l_RunService_0.RenderStepped:Connect(function(_) --[[ Line: 3110 ]]
                -- upvalues: v635 (copy), l_v636_0 (ref), l_v634_0 (ref)
                if not v635 or not v635:IsDescendantOf(game) then
                    l_v636_0:Disconnect();
                    return;
                else
                    v635.Velocity = l_v634_0;
                    return;
                end;
            end);
            task.delay(15, l_v636_0.Disconnect, l_v636_0);
        end;
    end;
end;
v12.lorenzocatch = function(v640) --[[ Line: 3122 ]] --[[ Name: lorenzocatch ]]
    -- upvalues: v12 (copy), l_ReplicatedStorage_0 (copy), l_RunService_0 (copy), l_Players_0 (copy)
    local v641 = v640.HumanoidRootPart or v640.PrimaryPart;
    local _ = v640.Torso;
    v12.raycastEffect(v641, l_ReplicatedStorage_0.Resources.nagi.jumpsmoke, 3);
    local v643 = v12.bodyVelocity(v641, 1, 0.13, nil, nil, true);
    v643.MaxForce = Vector3.new(300000, 300000, 300000, 0);
    local v644 = nil;
    v644 = l_RunService_0.RenderStepped:Connect(function(_) --[[ Line: 3134 ]]
        -- upvalues: v643 (copy), v644 (ref), v641 (copy)
        if not v643 or not v643:IsDescendantOf(game) then
            v644:Disconnect();
            return;
        else
            v643.Velocity = v641.CFrame.LookVector * 135 + v641.CFrame.UpVector * 25;
            return;
        end;
    end);
    task.delay(15, v644.Disconnect, v644);
    if l_Players_0.LocalPlayer ~= l_Players_0:GetPlayerFromCharacter(v640) then
        return;
    else
        v12.cameraShake(15, 0.7, 4);
        v12.fov(false, 90);
        v12.fov(true, 70, 1.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out);
        return;
    end;
end;
v12.finalmatch = function(v646, v647) --[[ Line: 3156 ]] --[[ Name: finalmatch ]]
    -- upvalues: l_Lighting_0 (copy), v12 (copy), l_ReplicatedStorage_0 (copy), l_TweenService_0 (copy), v25 (copy), l_SoundService_0 (copy), l_Brightness_0 (copy), l_RunService_0 (copy), l_CurrentCamera_0 (copy)
    local v648 = v646.HumanoidRootPart or v646.PrimaryPart;
    if not v647.HumanoidRootPart then
        local _ = v647.PrimaryPart;
    end;
    local l_Ball_9 = v646:FindFirstChild("Ball");
    local _ = v646.Torso;
    local _ = l_Lighting_0.Atmosphere;
    v12.sceneEnabled(true);
    local v653 = l_ReplicatedStorage_0.Resources.rin.finalmatcheff:Clone();
    v653:PivotTo(v648.CFrame);
    v653.Parent = v646;
    for _, v655 in ipairs(v653:GetDescendants()) do
        if v655:IsA("ParticleEmitter") or v655:IsA("Beam") then
            v655.Enabled = false;
        end;
    end;
    l_Lighting_0.Brightness = 0;
    local v656 = l_ReplicatedStorage_0.Resources.Blur:Clone();
    v656.Size = 0;
    v656.Parent = l_Lighting_0;
    local v657 = l_ReplicatedStorage_0.Resources.ColorCorrection:Clone();
    v657.Parent = l_Lighting_0;
    v657.Brightness = 0;
    v657.TintColor = Color3.fromRGB(255, 255, 255);
    v657.Contrast = 0.2;
    v657.Saturation = -0.4;
    local v658 = l_ReplicatedStorage_0.Resources.DepthOfField:Clone();
    v658.Parent = l_Lighting_0;
    v658.FarIntensity = 0;
    l_TweenService_0:Create(v658, TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
        FarIntensity = 1
    }):Play();
    v25:play(l_ReplicatedStorage_0.Resources.rin.finalmatchs, l_SoundService_0);
    v12.cutscene(v648, nil, 52.083, l_ReplicatedStorage_0.Resources.rin.finalmatchFOV);
    task.delay(5.987, function() --[[ Line: 3200 ]]
        -- upvalues: v12 (ref), v647 (copy), l_ReplicatedStorage_0 (ref)
        v12.Emit(v647.Head, l_ReplicatedStorage_0.Resources.rin.oxygen, 3);
    end);
    task.delay(7.933, function() --[[ Line: 3204 ]]
        -- upvalues: v12 (ref), v647 (copy), l_ReplicatedStorage_0 (ref)
        v12.Emit(v647.Head, l_ReplicatedStorage_0.Resources.rin.oxygen, 3);
    end);
    task.delay(11.783, function() --[[ Line: 3208 ]]
        -- upvalues: v12 (ref), v647 (copy), l_ReplicatedStorage_0 (ref)
        v12.Emit(v647.Head, l_ReplicatedStorage_0.Resources.rin.oxygen, 3);
    end);
    task.delay(14.467, function() --[[ Line: 3212 ]]
        -- upvalues: l_Lighting_0 (ref), l_Brightness_0 (ref), v658 (copy), l_ReplicatedStorage_0 (ref), l_RunService_0 (ref), l_CurrentCamera_0 (ref)
        l_Lighting_0.Brightness = l_Brightness_0;
        v658.Enabled = false;
        local v659 = l_ReplicatedStorage_0.Resources.rin.zoomCam:Clone();
        v659.Parent = workspace.Effects;
        local v660 = nil;
        v660 = l_RunService_0.PreRender:connect(function() --[[ Line: 3221 ]]
            -- upvalues: v659 (copy), v660 (ref), l_CurrentCamera_0 (ref)
            if not v659:IsDescendantOf(game) then
                v660:Disconnect();
            end;
            v659.CFrame = l_CurrentCamera_0.CFrame;
        end);
        task.delay(2.716, function() --[[ Line: 3231 ]]
            -- upvalues: v659 (copy), v658 (ref)
            v659:Destroy();
            v658.Enabled = true;
        end);
    end);
    task.delay(17.183, function() --[[ Line: 3237 ]]
        -- upvalues: v653 (copy), v12 (ref), v646 (copy), l_ReplicatedStorage_0 (ref)
        local l_steppingparticleslol1_0 = v653.steppingparticleslol1;
        for _, v663 in pairs(l_steppingparticleslol1_0:GetDescendants()) do
            if v663:IsA("ParticleEmitter") then
                v663:Emit(v663:GetAttribute("EmitCount"));
            end;
        end;
        v12.Emit(v646["Left Leg"], l_ReplicatedStorage_0.Resources.rin.speedlineLeg, 1);
    end);
    task.delay(17.283, function() --[[ Line: 3248 ]]
        -- upvalues: v653 (copy), v12 (ref), v646 (copy), l_ReplicatedStorage_0 (ref)
        local l_steppingparticleslol2_0 = v653.steppingparticleslol2;
        for _, v666 in pairs(l_steppingparticleslol2_0:GetDescendants()) do
            if v666:IsA("ParticleEmitter") then
                v666:Emit(v666:GetAttribute("EmitCount"));
            end;
        end;
        v12.Emit(v646["Right Leg"], l_ReplicatedStorage_0.Resources.rin.speedlineLeg, 1);
    end);
    task.delay(17.383, function() --[[ Line: 3259 ]]
        -- upvalues: v12 (ref), v646 (copy), l_ReplicatedStorage_0 (ref)
        v12.Emit(v646["Right Leg"], l_ReplicatedStorage_0.Resources.rin.speedlineLeg, 1);
    end);
    task.delay(17.917, function() --[[ Line: 3263 ]]
        -- upvalues: v12 (ref), v646 (copy), l_ReplicatedStorage_0 (ref)
        v12.Emit(v646["Left Leg"], l_ReplicatedStorage_0.Resources.rin.speedlineLeg, 1);
    end);
    task.delay(18.017, function() --[[ Line: 3267 ]]
        -- upvalues: v12 (ref), v646 (copy), l_ReplicatedStorage_0 (ref)
        v12.Emit(v646["Right Leg"], l_ReplicatedStorage_0.Resources.rin.speedlineLeg, 1);
    end);
    task.delay(18.133, function() --[[ Line: 3271 ]]
        -- upvalues: v12 (ref), v646 (copy), l_ReplicatedStorage_0 (ref)
        v12.Emit(v646["Right Leg"], l_ReplicatedStorage_0.Resources.rin.speedlineLeg, 1);
    end);
    task.delay(18.25, function() --[[ Line: 3275 ]]
        -- upvalues: v12 (ref), v646 (copy), l_ReplicatedStorage_0 (ref)
        v12.Emit(v646["Right Leg"], l_ReplicatedStorage_0.Resources.rin.speedlineLeg, 1);
    end);
    task.delay(18.267, function() --[[ Line: 3279 ]]
        -- upvalues: v12 (ref), v646 (copy), l_ReplicatedStorage_0 (ref)
        v12.Emit(v646["Left Leg"], l_ReplicatedStorage_0.Resources.rin.speedlineLeg, 1);
    end);
    task.delay(17.4, function() --[[ Line: 3283 ]]
        -- upvalues: v653 (copy)
        local l_steppingparticleslol3_0 = v653.steppingparticleslol3;
        for _, v669 in pairs(l_steppingparticleslol3_0:GetDescendants()) do
            if v669:IsA("ParticleEmitter") then
                v669:Emit(v669:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(17.917, function() --[[ Line: 3292 ]]
        -- upvalues: v653 (copy)
        local l_steppingparticleslol4_0 = v653.steppingparticleslol4;
        for _, v672 in pairs(l_steppingparticleslol4_0:GetDescendants()) do
            if v672:IsA("ParticleEmitter") then
                v672:Emit(v672:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(18.133, function() --[[ Line: 3301 ]]
        -- upvalues: v653 (copy)
        local l_steppingparticleslol5_0 = v653.steppingparticleslol5;
        for _, v675 in pairs(l_steppingparticleslol5_0:GetDescendants()) do
            if v675:IsA("ParticleEmitter") then
                v675:Emit(v675:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(18.233, function() --[[ Line: 3310 ]]
        -- upvalues: v653 (copy)
        local l_steppingparticleslol6_0 = v653.steppingparticleslol6;
        for _, v678 in pairs(l_steppingparticleslol6_0:GetDescendants()) do
            if v678:IsA("ParticleEmitter") then
                v678:Emit(v678:GetAttribute("EmitCount"));
            end;
        end;
        local l_dash_0 = v653.dash;
        for _, v681 in pairs(l_dash_0:GetDescendants()) do
            if v681:IsA("ParticleEmitter") then
                v681:Emit(v681:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(18.25, function() --[[ Line: 3326 ]]
        -- upvalues: v653 (copy)
        local l_Step_0 = v653.Step;
        for _, v684 in pairs(l_Step_0:GetDescendants()) do
            if v684:IsA("ParticleEmitter") then
                v684:Emit(v684:GetAttribute("EmitCount"));
            end;
        end;
        local l_fastjump_0 = v653.fastjump;
        for _, v687 in pairs(l_fastjump_0:GetDescendants()) do
            if v687:IsA("ParticleEmitter") then
                v687:Emit(v687:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(19.133, function() --[[ Line: 3342 ]]
        -- upvalues: v653 (copy)
        local l_Step21_0 = v653.Step21;
        for _, v690 in pairs(l_Step21_0:GetDescendants()) do
            if v690:IsA("ParticleEmitter") then
                v690:Emit(v690:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(19.167, function() --[[ Line: 3351 ]]
        -- upvalues: v653 (copy)
        local l_Step1_0 = v653.Step1;
        for _, v693 in pairs(l_Step1_0:GetDescendants()) do
            if v693:IsA("ParticleEmitter") then
                v693:Emit(v693:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(19.233, function() --[[ Line: 3360 ]]
        -- upvalues: v653 (copy)
        local l_Step22_0 = v653.Step22;
        for _, v696 in pairs(l_Step22_0:GetDescendants()) do
            if v696:IsA("ParticleEmitter") then
                v696:Emit(v696:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(19.25, function() --[[ Line: 3369 ]]
        -- upvalues: v653 (copy)
        local l_Step2_0 = v653.Step2;
        for _, v699 in pairs(l_Step2_0:GetDescendants()) do
            if v699:IsA("ParticleEmitter") then
                v699:Emit(v699:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(19.45, function() --[[ Line: 3378 ]]
        -- upvalues: v653 (copy)
        local l_Step23_0 = v653.Step23;
        for _, v702 in pairs(l_Step23_0:GetDescendants()) do
            if v702:IsA("ParticleEmitter") then
                v702:Emit(v702:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(19.333, function() --[[ Line: 3387 ]]
        -- upvalues: v653 (copy)
        local l_Step3_0 = v653.Step3;
        for _, v705 in pairs(l_Step3_0:GetDescendants()) do
            if v705:IsA("ParticleEmitter") then
                v705:Emit(v705:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(20.35, function() --[[ Line: 3396 ]]
        -- upvalues: v653 (copy)
        local l_Stepball_0 = v653.Stepball;
        for _, v708 in pairs(l_Stepball_0:GetDescendants()) do
            if v708:IsA("ParticleEmitter") then
                v708:Emit(v708:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(20.817, function() --[[ Line: 3405 ]]
        -- upvalues: v653 (copy)
        local l_ballkick_0 = v653.ballkick;
        for _, v711 in pairs(l_ballkick_0:GetDescendants()) do
            if v711:IsA("ParticleEmitter") then
                v711:Emit(v711:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(21.617, function() --[[ Line: 3414 ]]
        -- upvalues: v653 (copy), l_Ball_9 (copy), l_ReplicatedStorage_0 (ref)
        local l_ballkick2_0 = v653.ballkick2;
        for _, v714 in pairs(l_ballkick2_0:GetDescendants()) do
            if v714:IsA("ParticleEmitter") then
                v714:Emit(v714:GetAttribute("EmitCount"));
            end;
        end;
        if not l_Ball_9 then
            return;
        else
            local v715 = l_ReplicatedStorage_0.Resources.rin.balltrail:Clone();
            v715.Weld.Part0 = l_Ball_9;
            v715.Parent = l_Ball_9;
            task.delay(0.884, v715.Destroy, v715);
            return;
        end;
    end);
    task.delay(23.233, function() --[[ Line: 3430 ]]
        -- upvalues: v653 (copy)
        local l_StepSlaam_0 = v653.StepSlaam;
        for _, v718 in pairs(l_StepSlaam_0:GetDescendants()) do
            if v718:IsA("ParticleEmitter") then
                v718:Emit(v718:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(23.833, function() --[[ Line: 3439 ]]
        -- upvalues: v653 (copy)
        local l_RINRUNPARTICLES_0 = v653.RINRUNPARTICLES;
        for _, v721 in pairs(l_RINRUNPARTICLES_0:GetDescendants()) do
            if v721:IsA("ParticleEmitter") or v721:IsA("Beam") then
                v721.Enabled = true;
            end;
        end;
        local l_saerinrunpart_0 = v653.saerinrunpart;
        for _, v724 in pairs(l_saerinrunpart_0:GetDescendants()) do
            if v724:IsA("ParticleEmitter") or v724:IsA("Beam") then
                v724.Enabled = true;
            end;
        end;
    end);
    task.delay(23.95, function() --[[ Line: 3457 ]]
        -- upvalues: v653 (copy)
        local l_Steprun1_0 = v653.Steprun1;
        for _, v727 in pairs(l_Steprun1_0:GetDescendants()) do
            if v727:IsA("ParticleEmitter") then
                v727:Emit(v727:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(24.083, function() --[[ Line: 3466 ]]
        -- upvalues: v653 (copy)
        local l_Steprun2_0 = v653.Steprun2;
        for _, v730 in pairs(l_Steprun2_0:GetDescendants()) do
            if v730:IsA("ParticleEmitter") then
                v730:Emit(v730:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(24.3, function() --[[ Line: 3475 ]]
        -- upvalues: v653 (copy)
        local l_Steprun3_0 = v653.Steprun3;
        for _, v733 in pairs(l_Steprun3_0:GetDescendants()) do
            if v733:IsA("ParticleEmitter") then
                v733:Emit(v733:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(24.45, function() --[[ Line: 3484 ]]
        -- upvalues: v653 (copy)
        local l_Steprun4_0 = v653.Steprun4;
        for _, v736 in pairs(l_Steprun4_0:GetDescendants()) do
            if v736:IsA("ParticleEmitter") then
                v736:Emit(v736:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(24.567, function() --[[ Line: 3493 ]]
        -- upvalues: v653 (copy)
        local l_Steprun5_0 = v653.Steprun5;
        for _, v739 in pairs(l_Steprun5_0:GetDescendants()) do
            if v739:IsA("ParticleEmitter") then
                v739:Emit(v739:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(24.767, function() --[[ Line: 3502 ]]
        -- upvalues: v653 (copy)
        local l_Steprun6_0 = v653.Steprun6;
        for _, v742 in pairs(l_Steprun6_0:GetDescendants()) do
            if v742:IsA("ParticleEmitter") then
                v742:Emit(v742:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(24.917, function() --[[ Line: 3511 ]]
        -- upvalues: v653 (copy)
        local l_Steprun7_0 = v653.Steprun7;
        for _, v745 in pairs(l_Steprun7_0:GetDescendants()) do
            if v745:IsA("ParticleEmitter") then
                v745:Emit(v745:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(23.917, function() --[[ Line: 3522 ]]
        -- upvalues: v653 (copy)
        local l_Steprunsae1_0 = v653.Steprunsae1;
        for _, v748 in pairs(l_Steprunsae1_0:GetDescendants()) do
            if v748:IsA("ParticleEmitter") then
                v748:Emit(v748:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(24.05, function() --[[ Line: 3531 ]]
        -- upvalues: v653 (copy)
        local l_Steprunsae2_0 = v653.Steprunsae2;
        for _, v751 in pairs(l_Steprunsae2_0:GetDescendants()) do
            if v751:IsA("ParticleEmitter") then
                v751:Emit(v751:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(24.133, function() --[[ Line: 3540 ]]
        -- upvalues: v653 (copy)
        local l_Steprunsae3_0 = v653.Steprunsae3;
        for _, v754 in pairs(l_Steprunsae3_0:GetDescendants()) do
            if v754:IsA("ParticleEmitter") then
                v754:Emit(v754:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(24.3, function() --[[ Line: 3549 ]]
        -- upvalues: v653 (copy)
        local l_Steprunsae4_0 = v653.Steprunsae4;
        for _, v757 in pairs(l_Steprunsae4_0:GetDescendants()) do
            if v757:IsA("ParticleEmitter") then
                v757:Emit(v757:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(24.433, function() --[[ Line: 3558 ]]
        -- upvalues: v653 (copy)
        local l_Steprunsae5_0 = v653.Steprunsae5;
        for _, v760 in pairs(l_Steprunsae5_0:GetDescendants()) do
            if v760:IsA("ParticleEmitter") then
                v760:Emit(v760:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(24.633, function() --[[ Line: 3567 ]]
        -- upvalues: v653 (copy)
        local l_Steprunsae6_0 = v653.Steprunsae6;
        for _, v763 in pairs(l_Steprunsae6_0:GetDescendants()) do
            if v763:IsA("ParticleEmitter") then
                v763:Emit(v763:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(24.767, function() --[[ Line: 3576 ]]
        -- upvalues: v653 (copy)
        local l_Steprunsae7_0 = v653.Steprunsae7;
        for _, v766 in pairs(l_Steprunsae7_0:GetDescendants()) do
            if v766:IsA("ParticleEmitter") then
                v766:Emit(v766:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(24.95, function() --[[ Line: 3585 ]]
        -- upvalues: v653 (copy)
        local l_Steprunsae8_0 = v653.Steprunsae8;
        for _, v769 in pairs(l_Steprunsae8_0:GetDescendants()) do
            if v769:IsA("ParticleEmitter") then
                v769:Emit(v769:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(25.383, function() --[[ Line: 3596 ]]
        -- upvalues: v653 (copy)
        local l_RINRUNPARTICLES_1 = v653.RINRUNPARTICLES;
        for _, v772 in pairs(l_RINRUNPARTICLES_1:GetDescendants()) do
            if v772:IsA("ParticleEmitter") or v772:IsA("Beam") then
                v772.Enabled = false;
            end;
        end;
        local l_saerinrunpart_1 = v653.saerinrunpart;
        for _, v775 in pairs(l_saerinrunpart_1:GetDescendants()) do
            if v775:IsA("ParticleEmitter") or v775:IsA("Beam") then
                v775.Enabled = false;
            end;
        end;
    end);
    task.delay(26.133, function() --[[ Line: 3612 ]]
        -- upvalues: v653 (copy)
        local l_hit_0 = v653.hit;
        for _, v778 in pairs(l_hit_0:GetDescendants()) do
            if v778:IsA("ParticleEmitter") then
                v778:Emit(v778:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(30.983, function() --[[ Line: 3621 ]]
        -- upvalues: l_Lighting_0 (ref), l_Brightness_0 (ref), l_ReplicatedStorage_0 (ref), l_RunService_0 (ref), l_CurrentCamera_0 (ref)
        l_Lighting_0.Brightness = l_Brightness_0;
        local v779 = l_ReplicatedStorage_0.Resources.rin.zoomCam:Clone();
        v779.camvfx.camparticles.Enabled = false;
        v779.camvfx.CAM2.Enabled = true;
        v779.Parent = workspace.Effects;
        local v780 = nil;
        v780 = l_RunService_0.PreRender:connect(function() --[[ Line: 3630 ]]
            -- upvalues: v779 (copy), v780 (ref), l_CurrentCamera_0 (ref)
            if not v779:IsDescendantOf(game) then
                v780:Disconnect();
            end;
            v779.CFrame = l_CurrentCamera_0.CFrame;
        end);
        task.delay(0.867, v779.Destroy, v779);
    end);
    task.delay(35.383, function() --[[ Line: 3641 ]]
        -- upvalues: v653 (copy)
        local l_hit2_0 = v653.hit2;
        for _, v783 in pairs(l_hit2_0:GetDescendants()) do
            if v783:IsA("ParticleEmitter") then
                v783:Emit(v783:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(37.217, function() --[[ Line: 3650 ]]
        -- upvalues: v12 (ref), v647 (copy), l_ReplicatedStorage_0 (ref)
        v12.Emit(v647["Right Arm"], l_ReplicatedStorage_0.Resources.rin.armline, 3);
    end);
    task.delay(39.65, function() --[[ Line: 3654 ]]
        -- upvalues: v653 (copy)
        local l_BRO_0 = v653.BRO;
        for _, v786 in pairs(l_BRO_0:GetDescendants()) do
            if v786:IsA("ParticleEmitter") then
                v786:Emit(v786:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(40.483, function() --[[ Line: 3663 ]]
        -- upvalues: l_TweenService_0 (ref), v657 (copy), l_Lighting_0 (ref), v653 (copy)
        l_TweenService_0:Create(v657, TweenInfo.new(0.4, Enum.EasingStyle.Linear), {
            TintColor = Color3.fromRGB(255, 177, 177), 
            Brightness = -0.2, 
            Contrast = 1, 
            Saturation = -0.4
        }):Play();
        l_TweenService_0:Create(l_Lighting_0, TweenInfo.new(0.4, Enum.EasingStyle.Linear), {
            Brightness = 0
        }):Play();
        local l_saebeams_0 = v653.saebeams;
        for _, v789 in pairs(l_saebeams_0:GetDescendants()) do
            if v789:IsA("ParticleEmitter") or v789:IsA("Beam") then
                if v789:IsA("Beam") then
                    local l_CurveSize0_0 = v789.CurveSize0;
                    local l_CurveSize1_0 = v789.CurveSize1;
                    local l_Width0_0 = v789.Width0;
                    local l_Width1_0 = v789.Width1;
                    task.spawn(function() --[[ Line: 3684 ]]
                        -- upvalues: v789 (copy), l_CurveSize0_0 (copy), l_CurveSize1_0 (copy), l_Width0_0 (copy), l_Width1_0 (copy)
                        for _ = 1, 15 do
                            v789.CurveSize0 = Random.new():NextNumber(-25, 25);
                            v789.CurveSize1 = Random.new():NextNumber(-25, 25);
                            v789.Width0 = Random.new():NextNumber(-25, 25);
                            v789.Width1 = Random.new():NextNumber(-25, 25);
                            task.wait(0.01);
                        end;
                        v789.CurveSize0 = l_CurveSize0_0;
                        v789.CurveSize1 = l_CurveSize1_0;
                        v789.Width0 = l_Width0_0;
                        v789.Width1 = l_Width1_0;
                    end);
                end;
                v789.Enabled = true;
            end;
        end;
    end);
    task.delay(42.583, function() --[[ Line: 3709 ]]
        -- upvalues: l_Lighting_0 (ref), l_Brightness_0 (ref), v657 (copy), v653 (copy)
        l_Lighting_0.Brightness = l_Brightness_0;
        v657.Brightness = 0;
        v657.TintColor = Color3.fromRGB(255, 255, 255);
        v657.Contrast = 0.2;
        v657.Saturation = -0.4;
        local l_SAEVSRINAMBIENT_0 = v653.SAEVSRINAMBIENT;
        for _, v797 in pairs(l_SAEVSRINAMBIENT_0:GetDescendants()) do
            if v797:IsA("ParticleEmitter") then
                v797.Enabled = true;
            end;
        end;
        local l_saebeams_1 = v653.saebeams;
        for _, v800 in pairs(l_saebeams_1:GetDescendants()) do
            if v800:IsA("ParticleEmitter") or v800:IsA("Beam") then
                v800.Enabled = false;
            end;
        end;
    end);
    task.delay(48.15, function() --[[ Line: 3733 ]]
        -- upvalues: v653 (copy), l_ReplicatedStorage_0 (ref), l_RunService_0 (ref), l_CurrentCamera_0 (ref)
        local l_SAEVSRINAMBIENT_1 = v653.SAEVSRINAMBIENT;
        for _, v803 in pairs(l_SAEVSRINAMBIENT_1:GetDescendants()) do
            if v803:IsA("ParticleEmitter") then
                v803.Enabled = false;
            end;
        end;
        local v804 = l_ReplicatedStorage_0.Resources.rin.zoomCam:Clone();
        v804.camvfx.camparticles.Enabled = false;
        v804.camvfx.CAM3.Enabled = true;
        v804.Parent = workspace.Effects;
        local v805 = nil;
        v805 = l_RunService_0.PreRender:connect(function() --[[ Line: 3747 ]]
            -- upvalues: v804 (copy), v805 (ref), l_CurrentCamera_0 (ref)
            if not v804:IsDescendantOf(game) then
                v805:Disconnect();
            end;
            v804.CFrame = l_CurrentCamera_0.CFrame;
        end);
        task.delay(3.017, v804.Destroy, v804);
    end);
    task.wait(52.083);
    v653:Destroy();
    v656:Destroy();
    v657:Destroy();
    v658:Destroy();
    v12.sceneEnabled(false);
    v12.ultFlash(nil, 1.5);
    v12.fov(false, 15);
    v12.fov(true, 70, 2, Enum.EasingStyle.Sine, Enum.EasingDirection.Out);
end;
v12.lorenzocrossup = function(v806) --[[ Line: 3775 ]] --[[ Name: lorenzocrossup ]]
    -- upvalues: l_ReplicatedStorage_0 (copy), v12 (copy), l_Lighting_0 (copy), l_TweenService_0 (copy), v25 (copy), l_SoundService_0 (copy), l_RunService_0 (copy), l_CurrentCamera_0 (copy)
    local v807 = v806.HumanoidRootPart or v806.PrimaryPart;
    local l_Ball_10 = v806:FindFirstChild("Ball");
    local _ = v806.Torso;
    local v810 = l_ReplicatedStorage_0.Resources.donlorenzo.crossuplorenzo:Clone();
    v810:PivotTo(v807.CFrame);
    v810.Parent = v806;
    v12.sceneEnabled(true);
    local v811 = l_ReplicatedStorage_0.Resources.DepthOfField:Clone();
    v811.Parent = l_Lighting_0;
    v811.FarIntensity = 0;
    l_TweenService_0:Create(v811, TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
        FarIntensity = 1
    }):Play();
    v25:play(l_ReplicatedStorage_0.Resources.donlorenzo.crossup, l_SoundService_0);
    v12.cutsceneBlender(v807, l_ReplicatedStorage_0.Resources.donlorenzo.camcrossup, l_ReplicatedStorage_0.Resources.donlorenzo.FOV3);
    local v812 = l_ReplicatedStorage_0.Resources.donlorenzo.ult4ball:Clone();
    v812.Weld.Part0 = l_Ball_10;
    v812.Parent = v806;
    local v813 = l_ReplicatedStorage_0.Resources.donlorenzo.trail:Clone();
    v813.Weld.Part0 = v806["Right Arm"];
    v813.Parent = v806;
    local v814 = l_ReplicatedStorage_0.Resources.donlorenzo.trail:Clone();
    v814.Weld.Part0 = v806["Left Arm"];
    v814.Parent = v806;
    local v815 = l_ReplicatedStorage_0.Resources.donlorenzo.awkCam:Clone();
    v815.Parent = v810;
    local v816 = nil;
    v816 = l_RunService_0.PreRender:connect(function() --[[ Line: 3812 ]]
        -- upvalues: v815 (copy), v816 (ref), l_CurrentCamera_0 (ref)
        if not v815:IsDescendantOf(game) then
            v816:Disconnect();
        end;
        v815.CFrame = l_CurrentCamera_0.CFrame;
    end);
    task.delay(1, function() --[[ Line: 3820 ]]
        -- upvalues: v815 (copy)
        for _, v818 in ipairs(v815:GetChildren()) do
            if v818:IsA("ParticleEmitter") then
                v818.Enabled = true;
            end;
        end;
    end);
    task.delay(2.32, function() --[[ Line: 3829 ]]
        -- upvalues: v810 (copy), v815 (copy), v12 (ref)
        for _, v820 in ipairs(v810.skill2ultemit:GetDescendants()) do
            if v820:IsA("ParticleEmitter") then
                v820:Emit(v820:GetAttribute("EmitCount"));
            end;
        end;
        for _, v822 in ipairs(v815:GetChildren()) do
            if v822:IsA("ParticleEmitter") then
                v822.Enabled = false;
            end;
        end;
        v12.bright(0.8, 0.6);
    end);
    local v823 = {};
    for _, v825 in ipairs(v806:GetDescendants()) do
        if v825:IsA("Part") and v825.Transparency < 1 then
            for _, v827 in ipairs(l_ReplicatedStorage_0.Resources.donlorenzo.ult4aura:GetChildren()) do
                local v828 = v827:Clone();
                v828.Parent = v825;
                table.insert(v823, v828);
            end;
        end;
    end;
    task.wait(3);
    v810:Destroy();
    v812:Destroy();
    v813:Destroy();
    v814:Destroy();
    v815:Destroy();
    for _, v830 in v823 do
        v830.Enabled = false;
        task.delay(3, v830.Destroy, v830);
    end;
    v811:Destroy();
    v12.sceneEnabled(false);
end;
v12.donyomi = function() --[[ Line: 3883 ]] --[[ Name: donyomi ]]
    -- upvalues: l_Lighting_0 (copy), l_TweenService_0 (copy), l_ReplicatedStorage_0 (copy), v12 (copy), v25 (copy), l_SoundService_0 (copy)
    local l_BlurEffect_11 = Instance.new("BlurEffect");
    l_BlurEffect_11.Size = 11;
    l_BlurEffect_11.Parent = l_Lighting_0;
    l_TweenService_0:Create(l_BlurEffect_11, TweenInfo.new(0.533, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
        Size = 0
    }):Play();
    task.delay(0.533, l_BlurEffect_11.Destroy, l_BlurEffect_11);
    local v832 = l_ReplicatedStorage_0.Resources.ColorCorrection:Clone();
    v832.Parent = l_Lighting_0;
    v832.TintColor = Color3.fromRGB(136, 0, 255);
    v832.Brightness = 0.4;
    v832.Contrast = 1;
    v832.Saturation = -0.4;
    l_TweenService_0:Create(v832, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
        Saturation = 0
    }):Play();
    l_TweenService_0:Create(v832, TweenInfo.new(1, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
        Contrast = 0, 
        Brightness = 0, 
        TintColor = Color3.fromRGB(255, 255, 255)
    }):Play();
    task.delay(1, v832.Destroy, v832);
    v12.fov(false, 100);
    v12.fov(true, 70, 0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out);
    v12.cameraShake(10, 2, 6);
    v25:play(l_ReplicatedStorage_0.Resources.rin.dcsound, l_SoundService_0);
end;
v12.yomichealTrue = function(v833, _, v835) --[[ Line: 3912 ]] --[[ Name: yomichealTrue ]]
    -- upvalues: l_Lighting_0 (copy), l_ReplicatedStorage_0 (copy), l_PlayerGui_0 (copy), v12 (copy), l_TweenService_0 (copy), v25 (copy), l_SoundService_0 (copy), l_RunService_0 (copy), l_CurrentCamera_0 (copy), v27 (copy), l_Brightness_0 (copy)
    local v836 = v833.HumanoidRootPart or v833.PrimaryPart;
    local l_Ball_11 = v833:FindFirstChild("Ball");
    local _ = v833.Torso;
    local _ = l_Lighting_0.Atmosphere;
    local v840 = l_ReplicatedStorage_0.Resources.darkscreen:Clone();
    v840.Parent = l_PlayerGui_0;
    local v841 = l_ReplicatedStorage_0.Resources.donlorenzo.yomichealtruee:Clone();
    v841:PivotTo(v836.CFrame);
    v841.Parent = v833;
    for _, v843 in ipairs(v841:GetDescendants()) do
        if v843:IsA("ParticleEmitter") or v843:IsA("Beam") then
            v843.Enabled = false;
        end;
    end;
    v12.sceneEnabled(true);
    l_Lighting_0.Brightness = 0;
    local v844 = l_ReplicatedStorage_0.Resources.DepthOfField:Clone();
    v844.Parent = l_Lighting_0;
    v844.FarIntensity = 0;
    l_TweenService_0:Create(v844, TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
        FarIntensity = 1
    }):Play();
    v25:play(l_ReplicatedStorage_0.Resources.donlorenzo[v835 and "yo micheal" or "yomichealfail"], l_SoundService_0);
    v12.cutsceneBlender(v836, v835 and l_ReplicatedStorage_0.Resources.donlorenzo.yomicTrueC or l_ReplicatedStorage_0.Resources.donlorenzo.yomicFailC, v835 and l_ReplicatedStorage_0.Resources.donlorenzo.yomicTrueFOV or l_ReplicatedStorage_0.Resources.donlorenzo.yomicFailFOV);
    local v845 = l_ReplicatedStorage_0.Resources.donlorenzo.camYomicheal:Clone();
    v845.Parent = v841;
    local v846 = nil;
    v846 = l_RunService_0.PreRender:connect(function() --[[ Line: 3959 ]]
        -- upvalues: v845 (copy), v846 (ref), l_CurrentCamera_0 (ref)
        if not v845:IsDescendantOf(game) then
            v846:Disconnect();
        end;
        v845.CFrame = l_CurrentCamera_0.CFrame;
    end);
    task.delay(1.717, function() --[[ Line: 3969 ]]
        -- upvalues: v27 (ref), v833 (copy)
        v27.Speak(v833, {
            {
                Text = "Yo Michael", 
                Color = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(119, 0, 255)), 
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))
                }), 
                TextStrokeColor = Color3.new(0, 0, 0), 
                Bold = false, 
                Italic = false, 
                Shake = {
                    Enabled = true, 
                    Intensity = 2, 
                    Lifetime = 1.5
                }, 
                TypeSpeed = 0.01
            }
        }, 1.5);
    end);
    local v847 = {};
    task.delay(0.433, function() --[[ Line: 4000 ]]
        -- upvalues: l_ReplicatedStorage_0 (ref), v833 (copy), v841 (copy), v847 (copy)
        local v848 = l_ReplicatedStorage_0.Resources.donlorenzo.trail:Clone();
        v848.Weld.Part0 = v833["Right Arm"];
        v848.Parent = v841;
        local v849 = l_ReplicatedStorage_0.Resources.donlorenzo.trail:Clone();
        v849.Weld.Part0 = v833["Left Arm"];
        v849.Parent = v841;
        for _, v851 in ipairs(v833:GetDescendants()) do
            if v851:IsA("Part") and v851.Transparency < 1 then
                for _, v853 in ipairs(l_ReplicatedStorage_0.Resources.donlorenzo.ult4aura:GetChildren()) do
                    local v854 = v853:Clone();
                    v854.Parent = v851;
                    table.insert(v847, v854);
                end;
            end;
        end;
    end);
    task.delay(1.5, function() --[[ Line: 4024 ]]
        -- upvalues: v841 (copy), l_Lighting_0 (ref), l_TweenService_0 (ref), l_ReplicatedStorage_0 (ref)
        for _, v856 in ipairs(v841.skill1movingpart:GetDescendants()) do
            if v856:IsA("ParticleEmitter") or v856:IsA("Beam") then
                v856.Enabled = true;
            end;
        end;
        for _, v858 in ipairs(v841.yomichealbeams:GetDescendants()) do
            if v858:IsA("ParticleEmitter") or v858:IsA("Beam") then
                v858.Enabled = true;
                if v858:IsA("Beam") then
                    v858.TextureSpeed = 0.65;
                end;
            end;
        end;
        local l_BlurEffect_12 = Instance.new("BlurEffect");
        l_BlurEffect_12.Size = 11;
        l_BlurEffect_12.Parent = l_Lighting_0;
        l_TweenService_0:Create(l_BlurEffect_12, TweenInfo.new(0.533, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
            Size = 0
        }):Play();
        task.delay(0.533, l_BlurEffect_12.Destroy, l_BlurEffect_12);
        local v860 = l_ReplicatedStorage_0.Resources.ColorCorrection:Clone();
        v860.Parent = l_Lighting_0;
        v860.TintColor = Color3.fromRGB(136, 0, 255);
        v860.Brightness = 0.4;
        v860.Contrast = 1;
        v860.Saturation = -0.4;
        l_TweenService_0:Create(v860, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
            Saturation = 0
        }):Play();
        l_TweenService_0:Create(v860, TweenInfo.new(1, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
            Contrast = 0, 
            Brightness = 0, 
            TintColor = Color3.fromRGB(255, 255, 255)
        }):Play();
        task.delay(1, v860.Destroy, v860);
    end);
    task.delay(2.517, function() --[[ Line: 4062 ]]
        -- upvalues: v841 (copy), v845 (copy)
        for _, v862 in ipairs(v841.yomichealbeams:GetDescendants()) do
            if v862:IsA("ParticleEmitter") or v862:IsA("Beam") then
                v862.Enabled = false;
            end;
        end;
        for _, v864 in ipairs(v841.skill1movingpart:GetDescendants()) do
            if v864:IsA("ParticleEmitter") or v864:IsA("Beam") then
                v864.Enabled = false;
            end;
        end;
        for _, v866 in ipairs(v845:GetDescendants()) do
            if v866:IsA("ParticleEmitter") or v866:IsA("Beam") then
                v866.Enabled = false;
            end;
        end;
    end);
    if v835 then
        task.delay(3.167, function() --[[ Line: 4083 ]]
            -- upvalues: l_Lighting_0 (ref), l_Brightness_0 (ref), v841 (copy), v845 (copy)
            l_Lighting_0.Brightness = l_Brightness_0;
            for _, v868 in ipairs(v841.skill1movingpart:GetDescendants()) do
                if v868:IsA("ParticleEmitter") or v868:IsA("Beam") then
                    v868.Enabled = true;
                end;
            end;
            for _, v870 in ipairs(v841.skill4ballpartflashsteps:GetDescendants()) do
                if v870:IsA("ParticleEmitter") then
                    v870.Enabled = true;
                end;
            end;
            for _, v872 in ipairs(v845:GetDescendants()) do
                if v872:IsA("ParticleEmitter") or v872:IsA("Beam") then
                    v872.Enabled = true;
                end;
            end;
        end);
        task.delay(3.5, function() --[[ Line: 4107 ]]
            -- upvalues: l_Ball_11 (copy), l_ReplicatedStorage_0 (ref), v847 (copy)
            if not l_Ball_11 then
                return;
            else
                for _, v874 in ipairs(l_ReplicatedStorage_0.Resources.donlorenzo.ult4aura:GetChildren()) do
                    local v875 = v874:Clone();
                    v875.Parent = l_Ball_11;
                    table.insert(v847, v875);
                end;
                return;
            end;
        end);
        task.delay(3.833, function() --[[ Line: 4118 ]]
            -- upvalues: l_Lighting_0 (ref), l_TweenService_0 (ref), l_ReplicatedStorage_0 (ref)
            local l_BlurEffect_13 = Instance.new("BlurEffect");
            l_BlurEffect_13.Size = 11;
            l_BlurEffect_13.Parent = l_Lighting_0;
            l_TweenService_0:Create(l_BlurEffect_13, TweenInfo.new(0.533, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
                Size = 0
            }):Play();
            task.delay(0.533, l_BlurEffect_13.Destroy, l_BlurEffect_13);
            local v877 = l_ReplicatedStorage_0.Resources.ColorCorrection:Clone();
            v877.Parent = l_Lighting_0;
            v877.TintColor = Color3.fromRGB(136, 0, 255);
            v877.Brightness = 0.4;
            v877.Contrast = 1;
            v877.Saturation = -0.4;
            l_TweenService_0:Create(v877, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
                Saturation = 0
            }):Play();
            l_TweenService_0:Create(v877, TweenInfo.new(1, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
                Contrast = 0, 
                Brightness = 0, 
                TintColor = Color3.fromRGB(255, 255, 255)
            }):Play();
            task.delay(1, v877.Destroy, v877);
        end);
    else
        task.delay(3.167, function() --[[ Line: 4140 ]]
            -- upvalues: l_Lighting_0 (ref), l_Brightness_0 (ref)
            l_Lighting_0.Brightness = l_Brightness_0;
        end);
        task.delay(3.25, function() --[[ Line: 4146 ]]
            -- upvalues: v841 (copy)
            local l_skill2failstep2_0 = v841.skill2failstep2;
            for _, v880 in pairs(l_skill2failstep2_0:GetDescendants()) do
                if v880:IsA("ParticleEmitter") then
                    v880:Emit(v880:GetAttribute("EmitCount"));
                end;
            end;
        end);
        task.delay(3.333, function() --[[ Line: 4155 ]]
            -- upvalues: v841 (copy)
            local l_skill2failstep1_0 = v841.skill2failstep1;
            for _, v883 in pairs(l_skill2failstep1_0:GetDescendants()) do
                if v883:IsA("ParticleEmitter") then
                    v883:Emit(v883:GetAttribute("EmitCount"));
                end;
            end;
        end);
        task.delay(3.677, function() --[[ Line: 4164 ]]
            -- upvalues: v841 (copy)
            local l_skill2failstep3_0 = v841.skill2failstep3;
            for _, v886 in pairs(l_skill2failstep3_0:GetDescendants()) do
                if v886:IsA("ParticleEmitter") then
                    v886:Emit(v886:GetAttribute("EmitCount"));
                end;
            end;
        end);
        task.delay(3.677, function() --[[ Line: 4173 ]]
            -- upvalues: v841 (copy)
            local l_skill2failstep4_0 = v841.skill2failstep4;
            for _, v889 in pairs(l_skill2failstep4_0:GetDescendants()) do
                if v889:IsA("ParticleEmitter") then
                    v889:Emit(v889:GetAttribute("EmitCount"));
                end;
            end;
        end);
        task.delay(3.867, function() --[[ Line: 4182 ]]
            -- upvalues: v841 (copy)
            local l_skill2failstep5_0 = v841.skill2failstep5;
            for _, v892 in pairs(l_skill2failstep5_0:GetDescendants()) do
                if v892:IsA("ParticleEmitter") then
                    v892:Emit(v892:GetAttribute("EmitCount"));
                end;
            end;
        end);
        task.delay(3.967, function() --[[ Line: 4191 ]]
            -- upvalues: v841 (copy)
            local l_skill2failstep6_0 = v841.skill2failstep6;
            for _, v895 in pairs(l_skill2failstep6_0:GetDescendants()) do
                if v895:IsA("ParticleEmitter") then
                    v895:Emit(v895:GetAttribute("EmitCount"));
                end;
            end;
        end);
    end;
    task.wait(5);
    v841:Destroy();
    v840:Destroy();
    v12.ultFlash(1, 1);
    for _, v897 in v847 do
        v897:Destroy();
    end;
    table.clear(v847);
    v844:Destroy();
    v12.sceneEnabled(false);
end;
v12.dribHit = function(v898) --[[ Line: 4224 ]] --[[ Name: dribHit ]]
    -- upvalues: v12 (copy), l_Players_0 (copy), l_Lighting_0 (copy), l_TweenService_0 (copy), l_ReplicatedStorage_0 (copy), l_RunService_0 (copy)
    local v899 = v898.HumanoidRootPart or v898.PrimaryPart;
    v12.characterImage({
        Whitelist = {
            v898
        }, 
        Speed = 0.5, 
        Brightness = 1, 
        Color = Color3.fromRGB(255, 255, 255)
    });
    v12.characterImage({
        Whitelist = {
            v898
        }, 
        Speed = 0.3, 
        CFrames = true, 
        Brightness = 1, 
        countSpeed = 0.03, 
        Count = 8, 
        Color = Color3.fromRGB(255, 255, 255)
    });
    if l_Players_0.LocalPlayer ~= l_Players_0:GetPlayerFromCharacter(v898) then
        return;
    else
        local l_BlurEffect_14 = Instance.new("BlurEffect");
        l_BlurEffect_14.Size = 25;
        l_BlurEffect_14.Parent = l_Lighting_0;
        l_TweenService_0:Create(l_BlurEffect_14, TweenInfo.new(0.533, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
            Size = 0
        }):Play();
        task.delay(0.533, l_BlurEffect_14.Destroy, l_BlurEffect_14);
        local v901 = l_ReplicatedStorage_0.Resources.ColorCorrection:Clone();
        v901.Parent = l_Lighting_0;
        v901.TintColor = Color3.fromRGB(255, 255, 255);
        v901.Brightness = 0.4;
        v901.Contrast = 1;
        v901.Saturation = -0.4;
        l_TweenService_0:Create(v901, TweenInfo.new(1.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
            Saturation = 0
        }):Play();
        l_TweenService_0:Create(v901, TweenInfo.new(2, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
            Contrast = 0, 
            Brightness = 0, 
            TintColor = Color3.fromRGB(255, 255, 255)
        }):Play();
        task.delay(2, v901.Destroy, v901);
        v12.fov(false, 100);
        v12.fov(true, 70, 0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out);
        v12.bodyVelocity(v899, 190, 0.9, nil, nil, nil, TweenInfo.new(1.8, Enum.EasingStyle.Quart, Enum.EasingDirection.Out));
        v12.cameraShake(10, 1.5, 6);
        local v902, v903 = v12.bodyVelocity(v899, 120, 0.5, nil, nil, true);
        local v904 = 15;
        local v905 = 0;
        local v906 = nil;
        v906 = l_RunService_0.RenderStepped:Connect(function(v907) --[[ Line: 4276 ]]
            -- upvalues: v902 (copy), v906 (ref), v905 (ref), v904 (ref), v899 (copy), v903 (copy)
            if not v902 or not v902:IsDescendantOf(game) then
                v906:Disconnect();
                return;
            else
                v905 = v905 + v907;
                v904 = v904 + math.sin(v905 * -5) * v907 * 240;
                v904 = math.clamp(v904, 0, 1e999);
                local v908 = v899.CFrame.RightVector * -(v904 * 10);
                v902.Velocity = v899.CFrame.LookVector * v903.Value + v908;
                return;
            end;
        end);
        task.delay(15, v906.Disconnect, v906);
        return;
    end;
end;
v12.AfterImage = function(_, _) --[[ Line: 4296 ]] --[[ Name: AfterImage ]]

end;
v12.beautifulDestruction = function(v911, v912) --[[ Line: 4300 ]] --[[ Name: beautifulDestruction ]]
    -- upvalues: v12 (copy), l_Players_0 (copy), l_Lighting_0 (copy), l_TweenService_0 (copy), l_ReplicatedStorage_0 (copy), l_RunService_0 (copy)
    local v913 = v911.HumanoidRootPart or v911.PrimaryPart;
    task.delay(0.283, function() --[[ Line: 4309 ]]
        -- upvalues: v12 (ref), v911 (copy), l_Players_0 (ref), l_Lighting_0 (ref), l_TweenService_0 (ref), l_ReplicatedStorage_0 (ref), v913 (copy), l_RunService_0 (ref), v912 (copy)
        v12.characterImage({
            Whitelist = {
                v911
            }, 
            Speed = 0.5, 
            Brightness = 1, 
            Color = Color3.fromRGB(255, 67, 158)
        });
        v12.characterImage({
            Whitelist = {
                v911
            }, 
            Speed = 1, 
            CFrames = true, 
            Brightness = 1, 
            countSpeed = 0.03, 
            Count = 8, 
            Color = Color3.fromRGB(255, 74, 146), 
            Color2 = Color3.fromRGB(66, 255, 113)
        });
        if l_Players_0.LocalPlayer == l_Players_0:GetPlayerFromCharacter(v911) then
            local l_BlurEffect_15 = Instance.new("BlurEffect");
            l_BlurEffect_15.Size = 25;
            l_BlurEffect_15.Parent = l_Lighting_0;
            l_TweenService_0:Create(l_BlurEffect_15, TweenInfo.new(0.533, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
                Size = 0
            }):Play();
            task.delay(0.533, l_BlurEffect_15.Destroy, l_BlurEffect_15);
            local v915 = l_ReplicatedStorage_0.Resources.ColorCorrection:Clone();
            v915.Parent = l_Lighting_0;
            v915.TintColor = Color3.fromRGB(255, 104, 132);
            v915.Brightness = 0.4;
            v915.Contrast = 1;
            v915.Saturation = -0.4;
            l_TweenService_0:Create(v915, TweenInfo.new(1.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
                Saturation = 0
            }):Play();
            l_TweenService_0:Create(v915, TweenInfo.new(2, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
                Contrast = 0, 
                Brightness = 0, 
                TintColor = Color3.fromRGB(255, 255, 255)
            }):Play();
            task.delay(2, v915.Destroy, v915);
            v12.fov(false, 100);
            v12.fov(true, 70, 0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out);
            v12.cameraShake(10, 1.5, 6);
            local v916, v917 = v12.bodyVelocity(v913, 120, 0.5, nil, nil, true);
            local v918 = 23;
            local v919 = 0;
            local v920 = nil;
            do
                local l_v918_0, l_v919_0, l_v920_0 = v918, v919, v920;
                l_v920_0 = l_RunService_0.RenderStepped:Connect(function(v924) --[[ Line: 4371 ]]
                    -- upvalues: v916 (copy), l_v920_0 (ref), l_v919_0 (ref), l_v918_0 (ref), v912 (ref), v913 (ref), v917 (copy)
                    if not v916 or not v916:IsDescendantOf(game) then
                        l_v920_0:Disconnect();
                        return;
                    else
                        l_v919_0 = l_v919_0 + v924;
                        l_v918_0 = l_v918_0 + math.sin(l_v919_0 * -5) * v924 * 240;
                        l_v918_0 = math.clamp(l_v918_0, 0, 1e999);
                        local v925 = not v912 and v913.CFrame.RightVector * -(l_v918_0 * 10) or v913.CFrame.RightVector * (l_v918_0 * 10);
                        v916.Velocity = v913.CFrame.LookVector * v917.Value + v925;
                        return;
                    end;
                end);
                task.delay(15, l_v920_0.Disconnect, l_v920_0);
            end;
        end;
    end);
end;
v12.saeheelflick = function(v926) --[[ Line: 4392 ]] --[[ Name: saeheelflick ]]
    -- upvalues: l_ReplicatedStorage_0 (copy), v12 (copy), l_TweenService_0 (copy), l_Players_0 (copy), l_Lighting_0 (copy)
    local v927 = v926.HumanoidRootPart or v926.PrimaryPart;
    local v928 = l_ReplicatedStorage_0.Resources.sae.heelflickeff:Clone();
    v928.Parent = v926;
    task.delay(2, v928.Destroy, v928);
    task.delay(0.25, function() --[[ Line: 4405 ]]
        -- upvalues: v928 (copy), v927 (copy), v12 (ref)
        v928:PivotTo(v927.CFrame);
        for _, v930 in ipairs(v928.p1:GetDescendants()) do
            if v930:IsA("ParticleEmitter") then
                v930:Emit(v930:GetAttribute("EmitCount"));
            end;
        end;
        v12.cameraShake(10, 0.4, 5);
    end);
    task.delay(0.717, function() --[[ Line: 4417 ]]
        -- upvalues: v928 (copy), v927 (copy), v12 (ref)
        v928:PivotTo(v927.CFrame);
        for _, v932 in ipairs(v928.p2:GetDescendants()) do
            if v932:IsA("ParticleEmitter") then
                v932:Emit(v932:GetAttribute("EmitCount"));
            end;
        end;
        v12.cameraShake(10, 0.4, 5);
    end);
    task.delay(1.167, function() --[[ Line: 4430 ]]
        -- upvalues: v12 (ref), v926 (copy), v928 (copy), v927 (copy), l_TweenService_0 (ref), l_ReplicatedStorage_0 (ref), l_Players_0 (ref), l_Lighting_0 (ref)
        v12.characterImage({
            Whitelist = {
                v926
            }, 
            Speed = 0.5, 
            Brightness = 1, 
            Color = Color3.fromRGB(255, 67, 158)
        });
        v12.characterImage({
            Whitelist = {
                v926
            }, 
            Speed = 0.5, 
            CFrames = true, 
            Brightness = 3, 
            countSpeed = 0.03, 
            Count = 8, 
            Color = Color3.fromRGB(255, 111, 185), 
            Color2 = Color3.fromRGB(66, 255, 113)
        });
        v928:PivotTo(v927.CFrame);
        v928.Reda.Mesh.Scale = Vector3.new(0.10000000149011612, 0.8999999761581421, 0.8999999761581421, 0);
        l_TweenService_0:Create(v928.Reda.Mesh, TweenInfo.new(0.266, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
            Scale = Vector3.new(0.800000011920929, 0, 0, 0)
        }):Play();
        for _, v934 in ipairs(v928.Reda:GetDescendants()) do
            if v934:IsA("Decal") then
                v934.Transparency = 0;
            end;
        end;
        local v935 = l_ReplicatedStorage_0.Resources.sae.aurarun:Clone();
        v935.Weld.Part0 = v927;
        v935.Parent = v928;
        for _, v937 in ipairs(v935:GetDescendants()) do
            if v937:IsA("ParticleEmitter") or v937:IsA("Beam") then
                v937.Enabled = true;
                if v937:IsA("Beam") then
                    task.spawn(function() --[[ Line: 4460 ]]
                        -- upvalues: v935 (copy), v937 (copy)
                        for _ = 1, 50 do
                            if v935:IsDescendantOf(game) then
                                v937.CurveSize0 = Random.new():NextNumber(-8, 8);
                                v937.CurveSize1 = Random.new():NextNumber(-8, 8);
                                v937.Width1 = Random.new():NextNumber(0, 8);
                                task.wait(0.01);
                            else
                                break;
                            end;
                        end;
                    end);
                end;
            end;
        end;
        task.delay(0.55, v928.Destroy, v928);
        if l_Players_0.LocalPlayer == l_Players_0:GetPlayerFromCharacter(v926) then
            local l_BlurEffect_16 = Instance.new("BlurEffect");
            l_BlurEffect_16.Size = 25;
            l_BlurEffect_16.Parent = l_Lighting_0;
            l_TweenService_0:Create(l_BlurEffect_16, TweenInfo.new(0.533, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
                Size = 0
            }):Play();
            task.delay(0.533, l_BlurEffect_16.Destroy, l_BlurEffect_16);
            local v940 = l_ReplicatedStorage_0.Resources.ColorCorrection:Clone();
            v940.Parent = l_Lighting_0;
            v940.TintColor = Color3.fromRGB(255, 104, 132);
            v940.Brightness = 0.4;
            v940.Contrast = 1;
            v940.Saturation = -0.4;
            l_TweenService_0:Create(v940, TweenInfo.new(1.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
                Saturation = 0
            }):Play();
            l_TweenService_0:Create(v940, TweenInfo.new(2, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
                Contrast = 0, 
                Brightness = 0, 
                TintColor = Color3.fromRGB(255, 255, 255)
            }):Play();
            task.delay(2, v940.Destroy, v940);
            v12.fov(false, 100);
            v12.fov(true, 70, 0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out);
            v12.bodyVelocity(v927, 190, 0.9, nil, nil, nil, TweenInfo.new(1.8, Enum.EasingStyle.Quart, Enum.EasingDirection.Out));
            v12.cameraShake(10, 1.5, 6);
        end;
    end);
end;
v12.start = function() --[[ Line: 4535 ]] --[[ Name: start ]]
    -- upvalues: v12 (copy), l_ReplicatedStorage_0 (copy), l_PlayerGui_0 (copy), v25 (copy), l_SoundService_0 (copy), l_TweenService_0 (copy)
    v12.bright(-1, 0.5);
    v12.sceneEnabled(true);
    task.wait(5);
    v12.bright(0.15, 3);
    v12.cameraShake(15, 3, 3);
    v12.sceneEnabled(false);
    local v941 = l_ReplicatedStorage_0.Resources.startUI:Clone();
    v941.Parent = l_PlayerGui_0;
    v25:play(l_ReplicatedStorage_0.Resources.goal2, l_SoundService_0);
    l_TweenService_0:Create(v941.Frame.ImageLabel2, TweenInfo.new(3), {
        ImageTransparency = 1
    }):Play();
    l_TweenService_0:Create(v941.Frame.TextLabel, TweenInfo.new(2, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
        TextTransparency = 1
    }):Play();
    task.delay(3, v941.Destroy, v941);
end;
v12.goal = function(v942, v943, v944, v945, v946, v947) --[[ Line: 4558 ]] --[[ Name: goal ]]
    -- upvalues: l_Players_0 (copy), v25 (copy), l_ReplicatedStorage_0 (copy), l_SoundService_0 (copy), v12 (copy), l_PlayerGui_0 (copy), l_TweenService_0 (copy), l_CurrentCamera_0 (copy), l_RunService_0 (copy), l_Lighting_0 (copy)
    if not v945 then
        return;
    else
        local _ = l_Players_0.LocalPlayer.Character:FindFirstChildOfClass("Humanoid");
        if v947.style == "milkytillys" then
            v25:play(l_ReplicatedStorage_0.Resources.milkytillys["VALORANT: Quadruple Kill"], l_SoundService_0);
            task.delay(0.15, function() --[[ Line: 4565 ]]
                -- upvalues: v25 (ref), l_ReplicatedStorage_0 (ref), l_SoundService_0 (ref)
                v25:play(l_ReplicatedStorage_0.Resources.milkytillys["Chat Show"], l_SoundService_0);
            end);
        else
            v25:play(l_ReplicatedStorage_0.Resources.goal, l_SoundService_0);
            v25:play(l_ReplicatedStorage_0.Resources.goal2, l_SoundService_0);
        end;
        local v949 = v945 == "A" and v943 or v944;
        if v945 == "A" then
            v943 = v943 - 1;
        else
            v944 = v944 - 1;
        end;
        v12.sceneEnabled(true);
        v12.cameraShake(15, 3, 8);
        v12.fov(false, 40);
        v12.fov(true, 70, 1, Enum.EasingStyle.Sine, Enum.EasingDirection.Out);
        local v950 = l_ReplicatedStorage_0.Resources.GoalUI:Clone();
        v950.Parent = l_PlayerGui_0;
        v950.Frame.ImageLabel.Position = UDim2.new(0.1, 0, -1, 0);
        v950.Frame.A.Text = v943;
        v950.Frame.B.Text = v944;
        task.delay(1, function() --[[ Line: 4593 ]]
            -- upvalues: v25 (ref), l_ReplicatedStorage_0 (ref), l_SoundService_0 (ref), v950 (copy), v945 (copy), l_TweenService_0 (ref), v949 (copy)
            v25:play(l_ReplicatedStorage_0.Resources.count, l_SoundService_0);
            v950.Frame[v945].BackgroundTransparency = 0;
            l_TweenService_0:Create(v950.Frame[v945], TweenInfo.new(0.3), {
                BackgroundTransparency = 1
            }):Play();
            v950.Frame[v945].Text = v949;
            l_TweenService_0:Create(v950.Frame.A, TweenInfo.new(1), {
                TextTransparency = 1
            }):Play();
            l_TweenService_0:Create(v950.Frame.B, TweenInfo.new(1), {
                TextTransparency = 1
            }):Play();
            l_TweenService_0:Create(v950.Frame.TextLabel, TweenInfo.new(1), {
                TextTransparency = 1
            }):Play();
        end);
        l_TweenService_0:Create(v950.Frame.ImageLabel2, TweenInfo.new(3), {
            ImageTransparency = 1
        }):Play();
        l_TweenService_0:Create(v950.Frame.ImageLabel, TweenInfo.new(0.55, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
            Position = UDim2.new(0.1, 0, 0, 0)
        }):Play();
        l_TweenService_0:Create(v950.Frame.ImageLabel, TweenInfo.new(2, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
            ImageTransparency = 1
        }):Play();
        v12.bright(1, 1.5);
        task.delay(4, v950.Destroy, v950);
        task.wait(2);
        if v942 then
            v12.fov(true, 45, 1, Enum.EasingStyle.Sine, Enum.EasingDirection.Out);
            v25:play(l_ReplicatedStorage_0.Resources.uishow, l_SoundService_0);
            local v951 = v942.HumanoidRootPart or v942.PrimaryPart;
            l_CurrentCamera_0.CameraType = Enum.CameraType.Scriptable;
            local v953 = l_RunService_0.PreRender:Connect(function(v952) --[[ Line: 4623 ]]
                -- upvalues: l_CurrentCamera_0 (ref), v951 (copy)
                l_CurrentCamera_0.CFrame = l_CurrentCamera_0.CFrame:Lerp(v951.CFrame * CFrame.new(-4, 0.5, -15) * CFrame.Angles(0, 3.141592653589793, 0), v952 * 5);
            end);
            local v954 = l_ReplicatedStorage_0.Resources.DepthOfField:Clone();
            v954.Parent = l_Lighting_0;
            v954.FarIntensity = 0;
            l_TweenService_0:Create(v954, TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
                FarIntensity = 1
            }):Play();
            local v955 = l_ReplicatedStorage_0.Resources.playerstatsUI:Clone();
            v955.Parent = l_PlayerGui_0;
            v955.Frame.bg.ImageTransparency = 1;
            l_TweenService_0:Create(v955.Frame.bg, TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
                ImageTransparency = 0.68
            }):Play();
            l_TweenService_0:Create(v955.Frame.icon, TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
                Rotation = 0
            }):Play();
            l_TweenService_0:Create(v955.Frame.ImageLabel3.Frame, TweenInfo.new(0.5), {
                BackgroundTransparency = 1
            }):Play();
            v955.Frame.ImageLabel3.Frame.BackgroundTransparency = 0;
            v955.Frame.icon.Rotation = 90;
            v955.Frame.ImageLabel3.goname.Text = v942.Name;
            v955.Frame.ImageLabel3.role.Text = v946;
            print(v947);
            v955.Frame.ImageLabel3.goltext.Text = ("GOL : %*"):format(v947.goals);
            v955.Frame.ImageLabel3.asttext.Text = ("AST : %*"):format(v947.assists);
            v955.Frame.ImageLabel3.savtext.Text = ("SAV : %*"):format(v947.saves);
            task.wait(4.5);
            local v956 = l_ReplicatedStorage_0.Resources.ColorCorrection:Clone();
            v956.Parent = l_Lighting_0;
            v956.Brightness = 0;
            l_TweenService_0:Create(v956, TweenInfo.new(0.5), {
                Brightness = -1
            }):Play();
            l_TweenService_0:Create(v955.Frame, TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
                GroupTransparency = 1
            }):Play();
            task.wait(0.5);
            l_TweenService_0:Create(v956, TweenInfo.new(1), {
                Brightness = 0
            }):Play();
            task.delay(1, v956.Destroy, v956);
            v954:Destroy();
            v955:Destroy();
            v953:Disconnect();
            l_CurrentCamera_0.CameraType = Enum.CameraType.Custom;
            v12.fov(true, 70, 1, Enum.EasingStyle.Sine, Enum.EasingDirection.Out);
        end;
        v12.sceneEnabled(false);
        return;
    end;
end;
v12.skip = function() --[[ Line: 4678 ]] --[[ Name: skip ]]
    -- upvalues: l_ReplicatedStorage_0 (copy), l_PlayerGui_0 (copy)
    local v957 = l_ReplicatedStorage_0.Resources.Black:Clone();
    v957.Parent = l_PlayerGui_0;
    task.delay(1, v957.Destroy, v957);
end;
v12.drip = function(_, v959) --[[ Line: 4685 ]] --[[ Name: drip ]]
    -- upvalues: l_ReplicatedStorage_0 (copy)
    if not v959.HumanoidRootPart then
        local _ = v959.PrimaryPart;
    end;
    local _ = v959.Torso;
    local v962 = l_ReplicatedStorage_0.Resources.armdrip:Clone();
    v962.Parent = v959;
    v962.Weld.Part0 = v959["Left Arm"];
    local v963 = l_ReplicatedStorage_0.Resources.armdrip:Clone();
    v963.Parent = v959;
    v963.Weld.Part0 = v959["Right Arm"];
    task.delay(0.25, function() --[[ Line: 4716 ]]
        -- upvalues: v962 (copy), v963 (copy)
        for _, v965 in ipairs(v962:GetDescendants()) do
            if v965:IsA("Trail") then
                v965.Enabled = false;
            end;
        end;
        for _, v967 in ipairs(v963:GetDescendants()) do
            if v967:IsA("Trail") then
                v967.Enabled = false;
            end;
        end;
        task.delay(2, v962.Destroy, v962);
        task.delay(2, v963.Destroy, v963);
    end);
end;
v12.isagiult = function(v968) --[[ Line: 4734 ]] --[[ Name: isagiult ]]
    -- upvalues: v12 (copy), v27 (copy), l_ReplicatedStorage_0 (copy), l_Lighting_0 (copy), l_TweenService_0 (copy), v25 (copy), l_SoundService_0 (copy), l_Density_0 (copy), l_Color_0 (copy)
    local v969 = v968.HumanoidRootPart or v968.PrimaryPart;
    local _ = v968.Torso;
    v12.sceneEnabled(true);
    task.delay(0.15, function() --[[ Line: 4744 ]]
        -- upvalues: v27 (ref), v968 (copy)
        v27.Speak(v968, {
            {
                Text = "I want to...", 
                Color = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(8, 0, 255)), 
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))
                }), 
                TextStrokeColor = Color3.new(0, 0, 0), 
                Bold = false, 
                Italic = false, 
                Shake = {
                    Enabled = true, 
                    Intensity = 2, 
                    Lifetime = 1.5
                }, 
                TypeSpeed = 0.03
            }
        }, 1.5);
    end);
    task.delay(1.333, function() --[[ Line: 4770 ]]
        -- upvalues: v27 (ref), v968 (copy)
        v27.Speak(v968, {
            {
                Text = "I want to win with my goal!", 
                Color = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 0, 0)), 
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 4, 255))
                }), 
                TextStrokeColor = Color3.new(0, 0, 0), 
                Bold = true, 
                Italic = true, 
                Shake = {
                    Enabled = true, 
                    Intensity = 4, 
                    Lifetime = 2
                }, 
                TypeSpeed = 0.03
            }
        }, 2);
    end);
    task.delay(4.117, function() --[[ Line: 4796 ]]
        -- upvalues: v27 (ref), v968 (copy)
        v27.Speak(v968, {
            {
                Text = "MY DIRECT SHOT!", 
                Color = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)), 
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 4, 255))
                }), 
                TextStrokeColor = Color3.new(0, 0, 0), 
                Bold = true, 
                Italic = true, 
                Shake = {
                    Enabled = true, 
                    Intensity = 5, 
                    Lifetime = 2
                }, 
                TypeSpeed = 0.03
            }
        }, 2);
    end);
    local v971 = l_ReplicatedStorage_0.Resources.DepthOfField:Clone();
    v971.Parent = l_Lighting_0;
    v971.FarIntensity = 0;
    l_TweenService_0:Create(v971, TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
        FarIntensity = 1
    }):Play();
    v25:play(l_ReplicatedStorage_0.Resources.isagi["DIRECTA SHOOTOTA"], l_SoundService_0);
    v12.cutscene(v969, CFrame.new((Vector3.new(0, 0, 0, 0))), 5.5, l_ReplicatedStorage_0.Resources.isagi.uFOV, true);
    local v972 = l_ReplicatedStorage_0.Resources.isagi.JJ:Clone();
    v972.JJRootPart.JJRootPart.Part0 = v969;
    v972.Parent = v969;
    task.wait(0.15);
    local v973 = l_ReplicatedStorage_0.Resources.isagi.step:Clone();
    v973.CFrame = v969.CFrame * CFrame.new(0.5, -2.6, 0.3);
    v973.Parent = workspace.Effects;
    for _, v975 in ipairs(v973:GetDescendants()) do
        if v975:IsA("ParticleEmitter") then
            v975:Emit(v975:GetAttribute("EmitCount"));
        end;
    end;
    task.delay(2, v973.Destroy, v973);
    task.wait(0.3);
    v12.bright(0.3, 1.5);
    local v976 = l_ReplicatedStorage_0.Resources.isagi.popup:Clone();
    v976.CFrame = v969.CFrame * CFrame.new(0.5, -3, 0.3);
    v976.Parent = workspace.Effects;
    for _, v978 in ipairs(v976:GetDescendants()) do
        if v978:IsA("ParticleEmitter") then
            v978:Emit(v978:GetAttribute("EmitCount"));
        end;
    end;
    task.delay(2, v976.Destroy, v976);
    task.wait(0.4);
    local v979 = l_ReplicatedStorage_0.Resources.isagi.PE:Clone();
    v979:PivotTo(v969.CFrame * CFrame.new(0.5, -3, 0.3));
    v979.Parent = workspace.Effects;
    for _, v981 in ipairs(v979.PE:GetDescendants()) do
        if v981:IsA("ParticleEmitter") then
            v981.Enabled = true;
        end;
    end;
    task.delay(2, v979.Destroy, v979);
    local v982 = l_ReplicatedStorage_0.Resources.isagi.PE2:Clone();
    v982.CFrame = v969.CFrame * CFrame.new(0.5, -3, 0.3);
    v982.Parent = workspace.Effects;
    task.delay(1, function() --[[ Line: 4876 ]]
        -- upvalues: l_ReplicatedStorage_0 (ref)
        local v983 = l_ReplicatedStorage_0.Resources.isagi.bg:Clone();
        v983:PivotTo(workspace.CurrentCamera.CFrame * CFrame.new(0, 15, -15));
        v983.Parent = workspace.Effects;
        task.delay(1, v983.Destroy, v983);
    end);
    task.wait(2);
    for _, v985 in ipairs(v982:GetDescendants()) do
        if v985:IsA("ParticleEmitter") then
            v985.Enabled = false;
        end;
    end;
    task.delay(2, v982.Destroy, v982);
    l_TweenService_0:Create(l_Lighting_0.Atmosphere, TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
        Density = 0.929, 
        Color = Color3.fromRGB(0, 0, 0), 
        Haze = 4.55
    }):Play();
    local v986 = l_ReplicatedStorage_0.Resources.isagi.line:Clone();
    v986.CFrame = CFrame.new(v969.Position) * CFrame.new(0, -0.7, 0);
    v986.Parent = workspace.Effects;
    task.delay(0.3, v986.Destroy, v986);
    for _, v988 in ipairs(v972:GetDescendants()) do
        if v988:IsA("BasePart") then
            l_ReplicatedStorage_0.Resources.isagi.PointLight:Clone().Parent = v988;
            v988.Material = Enum.Material.Neon;
            l_TweenService_0:Create(v988, TweenInfo.new(0.15), {
                Color = Color3.fromRGB(0, 145, 255)
            }):Play();
        end;
    end;
    task.wait(1.8);
    l_TweenService_0:Create(l_Lighting_0.Atmosphere, TweenInfo.new(0.3), {
        Density = l_Density_0, 
        Color = l_Color_0
    }):Play();
    v12.Emit(v969, l_ReplicatedStorage_0.Resources.isagi.im1, 3, CFrame.new(0.95, -0.15, -3));
    v12.bright(0.3, 1.5);
    task.wait(0.9);
    v971:Destroy();
    v972:Destroy();
    v12.sceneEnabled(false);
    v12.bigshockwave(v969);
end;
v12.bigshockwave = function(v989) --[[ Line: 4956 ]] --[[ Name: bigshockwave ]]
    -- upvalues: v12 (copy), l_ReplicatedStorage_0 (copy), l_TweenService_0 (copy), l_Debris_0 (copy)
    v12.Emit(v989, l_ReplicatedStorage_0.Resources.PunchImpact2, 3);
    local v990 = l_ReplicatedStorage_0.Resources.Cylinder:Clone();
    v990.Parent = workspace.Effects;
    v990.CFrame = v989.CFrame;
    l_TweenService_0:Create(v990, TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
        Transparency = 1, 
        Size = Vector3.new(50, 50, 150, 0), 
        CFrame = v990.CFrame * CFrame.new(0, 0, -65) * CFrame.Angles(0, 0, -3.141592653589793)
    }):Play();
    l_Debris_0:AddItem(v990, 1);
end;
v12.nagicontrolwindup = function(v991) --[[ Line: 4965 ]] --[[ Name: nagicontrolwindup ]]
    -- upvalues: v12 (copy), l_ReplicatedStorage_0 (copy), l_RunService_0 (copy), l_Players_0 (copy)
    local v992 = v991.HumanoidRootPart or v991.PrimaryPart;
    local _ = v991.Torso;
    v12.raycastEffect(v992, l_ReplicatedStorage_0.Resources.nagi.jumpsmoke, 3);
    local v994 = l_ReplicatedStorage_0.Resources.armdrip:Clone();
    v994.Parent = v991;
    v994.Weld.Part0 = v991["Left Arm"];
    local v995 = l_ReplicatedStorage_0.Resources.armdrip:Clone();
    v995.Parent = v991;
    v995.Weld.Part0 = v991["Right Arm"];
    task.delay(0.13, function() --[[ Line: 4981 ]]
        -- upvalues: v994 (copy), v995 (copy)
        for _, v997 in ipairs(v994:GetDescendants()) do
            if v997:IsA("Trail") then
                v997.Enabled = false;
            end;
        end;
        for _, v999 in ipairs(v995:GetDescendants()) do
            if v999:IsA("Trail") then
                v999.Enabled = false;
            end;
        end;
        task.delay(2, v994.Destroy, v994);
        task.delay(2, v995.Destroy, v995);
    end);
    local v1000 = v12.bodyVelocity(v992, 1, 0.13, nil, nil, true);
    v1000.MaxForce = Vector3.new(300000, 300000, 300000, 0);
    local v1001 = nil;
    v1001 = l_RunService_0.RenderStepped:Connect(function(_) --[[ Line: 5000 ]]
        -- upvalues: v1000 (copy), v1001 (ref), v992 (copy)
        if not v1000 or not v1000:IsDescendantOf(game) then
            v1001:Disconnect();
            return;
        else
            v1000.Velocity = v992.CFrame.LookVector * 100 + v992.CFrame.UpVector * 70;
            return;
        end;
    end);
    task.delay(15, v1001.Disconnect, v1001);
    if l_Players_0.LocalPlayer ~= l_Players_0:GetPlayerFromCharacter(v991) then
        return;
    else
        v12.cameraShake(15, 0.7, 4);
        v12.fov(false, 90);
        v12.fov(true, 70, 1.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out);
        return;
    end;
end;
v12.nagicontrol = function(v1003) --[[ Line: 5022 ]] --[[ Name: nagicontrol ]]
    -- upvalues: v12 (copy), l_ReplicatedStorage_0 (copy), l_Lighting_0 (copy), l_TweenService_0 (copy), v25 (copy), l_SoundService_0 (copy)
    local v1004 = v1003.HumanoidRootPart or v1003.PrimaryPart;
    local _ = v1003.Torso;
    v12.sceneEnabled(true);
    local v1006 = l_ReplicatedStorage_0.Resources.DepthOfField:Clone();
    v1006.Parent = l_Lighting_0;
    v1006.FarIntensity = 0;
    l_TweenService_0:Create(v1006, TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
        FarIntensity = 1
    }):Play();
    v25:play(l_ReplicatedStorage_0.Resources.nagi["catch ball"], l_SoundService_0);
    v12.cutscene(v1004, CFrame.new((Vector3.new(0, 0, 0, 0))), 1.0499999523162842, l_ReplicatedStorage_0.Resources.nagi.FOV, true);
    task.delay(0.15, function() --[[ Line: 5038 ]]
        -- upvalues: l_ReplicatedStorage_0 (ref), v1004 (copy), v1003 (copy), v12 (ref)
        local v1007 = l_ReplicatedStorage_0.Resources.nagi.charge:Clone();
        v1007.Weld.Part0 = v1004;
        v1007.Parent = v1003;
        task.delay(0.35, function() --[[ Line: 5043 ]]
            -- upvalues: v12 (ref), v1004 (ref), l_ReplicatedStorage_0 (ref), v1007 (copy)
            v12.bright(0.1, 1.5);
            v12.Emit(v1004, l_ReplicatedStorage_0.Resources.nagi.normalkick, 3, CFrame.new(0, 0.85, -2.2));
            v1007:Destroy();
        end);
    end);
    local l_BodyPosition_0 = Instance.new("BodyPosition");
    l_BodyPosition_0.P = 12500;
    l_BodyPosition_0.MaxForce = Vector3.new(30000, 30000, 30000, 0);
    l_BodyPosition_0.D = 300;
    l_BodyPosition_0.Parent = v1004;
    l_BodyPosition_0.Position = v1004.Position;
    task.wait(1.0499999523162842);
    l_BodyPosition_0:Destroy();
    v1006:Destroy();
    v12.sceneEnabled(false);
end;
v12.lorenzodefensecatch = function(v1009) --[[ Line: 5072 ]] --[[ Name: lorenzodefensecatch ]]
    -- upvalues: l_ReplicatedStorage_0 (copy), v12 (copy), l_Lighting_0 (copy), l_TweenService_0 (copy), v25 (copy), l_SoundService_0 (copy), l_RunService_0 (copy), l_CurrentCamera_0 (copy)
    local v1010 = v1009.HumanoidRootPart or v1009.PrimaryPart;
    local l_Ball_12 = v1009:FindFirstChild("Ball");
    local _ = v1009.Torso;
    local v1013 = l_ReplicatedStorage_0.Resources.donlorenzo.ult4vfx:Clone();
    v1013.rootlocation.Weld.Part0 = v1010;
    v1013:PivotTo(v1010.CFrame);
    v1013.Parent = v1009;
    v12.sceneEnabled(true);
    local v1014 = l_ReplicatedStorage_0.Resources.DepthOfField:Clone();
    v1014.Parent = l_Lighting_0;
    v1014.FarIntensity = 0;
    l_TweenService_0:Create(v1014, TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
        FarIntensity = 1
    }):Play();
    v25:play(l_ReplicatedStorage_0.Resources.donlorenzo.ult4, l_SoundService_0);
    v12.cutsceneBlender(v1010, l_ReplicatedStorage_0.Resources.donlorenzo.Skill4Cam, l_ReplicatedStorage_0.Resources.donlorenzo.FOV);
    local v1015 = l_ReplicatedStorage_0.Resources.donlorenzo.ult4ball:Clone();
    v1015.Weld.Part0 = l_Ball_12;
    v1015.Parent = v1009;
    task.delay(0.025, function() --[[ Line: 5097 ]]
        -- upvalues: v1013 (copy)
        for _, v1017 in ipairs(v1013.skill4ballpartflashsteps:GetChildren()) do
            if v1017:IsA("ParticleEmitter") then
                v1017.Enabled = true;
            end;
        end;
    end);
    local v1018 = l_ReplicatedStorage_0.Resources.donlorenzo.lorenzocam:Clone();
    v1018.Parent = v1013;
    local v1019 = nil;
    v1019 = l_RunService_0.PreRender:connect(function() --[[ Line: 5110 ]]
        -- upvalues: v1018 (copy), v1019 (ref), l_CurrentCamera_0 (ref)
        if not v1018:IsDescendantOf(game) then
            v1019:Disconnect();
        end;
        v1018.CFrame = l_CurrentCamera_0.CFrame;
    end);
    task.delay(0.2, function() --[[ Line: 5118 ]]
        -- upvalues: v1013 (copy)
        for _, v1021 in ipairs(v1013.skill4emit:GetDescendants()) do
            if v1021:IsA("ParticleEmitter") then
                v1021:Emit(v1021:GetAttribute("EmitCount"));
            end;
        end;
    end);
    for _, v1023 in ipairs(v1009:GetDescendants()) do
        if v1023:IsA("Part") and v1023.Transparency < 1 then
            for _, v1025 in ipairs(l_ReplicatedStorage_0.Resources.donlorenzo.ult4aura:GetChildren()) do
                local v1026 = v1025:Clone();
                v1026.Parent = v1023;
                task.delay(2, function() --[[ Line: 5133 ]]
                    -- upvalues: v1026 (copy)
                    v1026.Enabled = false;
                    task.delay(3, v1026.Destroy, v1026);
                end);
            end;
        end;
    end;
    local l_BodyPosition_1 = Instance.new("BodyPosition");
    l_BodyPosition_1.P = 12500;
    l_BodyPosition_1.MaxForce = Vector3.new(30000, 30000, 30000, 0);
    l_BodyPosition_1.D = 300;
    l_BodyPosition_1.Parent = v1010;
    l_BodyPosition_1.Position = v1010.Position;
    task.wait(2);
    v1013:Destroy();
    v1015:Destroy();
    v1018:Destroy();
    l_BodyPosition_1:Destroy();
    v1014:Destroy();
    v12.sceneEnabled(false);
end;
v12.fakevolley = function(v1028) --[[ Line: 5164 ]] --[[ Name: fakevolley ]]
    -- upvalues: l_ReplicatedStorage_0 (copy), v12 (copy), l_Players_0 (copy)
    local v1029 = v1028.HumanoidRootPart or v1028.PrimaryPart;
    local _ = v1028.Torso;
    local v1031 = l_ReplicatedStorage_0.Resources.armdrip:Clone();
    v1031.Parent = v1028;
    v1031.Weld.Part0 = v1028["Right Leg"];
    task.delay(0.5, function() --[[ Line: 5175 ]]
        -- upvalues: v1031 (copy)
        for _, v1033 in ipairs(v1031:GetDescendants()) do
            if v1033:IsA("Trail") then
                v1033.Enabled = false;
            end;
        end;
        task.delay(2, v1031.Destroy, v1031);
    end);
    task.wait(0.5);
    v12.raycastEffect(v1029, l_ReplicatedStorage_0.Resources.nagi.jumpsmoke, 3);
    if l_Players_0.LocalPlayer ~= l_Players_0:GetPlayerFromCharacter(v1028) then
        return;
    else
        v12.Emit(v1029, l_ReplicatedStorage_0.Resources.headball, 3, CFrame.new(0, 0, -2));
        v12.cameraShake(15, 0.7, 4);
        v12.fov(false, 90);
        v12.fov(true, 70, 1.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out);
        return;
    end;
end;
v12.windupHeavynagi = function(_) --[[ Line: 5196 ]] --[[ Name: windupHeavynagi ]]

end;
v12.nagiawaken = function(v1035) --[[ Line: 5224 ]] --[[ Name: nagiawaken ]]
    -- upvalues: v12 (copy), v27 (copy), l_Lighting_0 (copy), l_ReplicatedStorage_0 (copy), l_PlayerGui_0 (copy), l_TweenService_0 (copy), v25 (copy), l_SoundService_0 (copy), l_Density_0 (copy), l_Color_0 (copy)
    local v1036 = v1035.HumanoidRootPart or v1035.PrimaryPart;
    local _ = v1035.Torso;
    v12.sceneEnabled(true);
    task.delay(0.633, function() --[[ Line: 5232 ]]
        -- upvalues: v27 (ref), v1035 (copy)
        v27.Speak(v1035, {
            {
                Text = "You can't beat me.", 
                Color = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(201, 206, 255)), 
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))
                }), 
                TextStrokeColor = Color3.new(0, 0, 0), 
                Bold = false, 
                Italic = false, 
                Shake = {
                    Enabled = false, 
                    Intensity = 1.3, 
                    Lifetime = 4
                }, 
                TypeSpeed = 0.03
            }
        }, 2.867);
    end);
    task.delay(4.583, function() --[[ Line: 5258 ]]
        -- upvalues: v27 (ref), v1035 (copy)
        v27.Speak(v1035, {
            {
                Text = "Bring it.", 
                Color = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 0, 0)), 
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 0, 4))
                }), 
                TextStrokeColor = Color3.new(0, 0, 0), 
                Bold = true, 
                Italic = true, 
                Shake = {
                    Enabled = true, 
                    Intensity = 3, 
                    Lifetime = 1
                }, 
                TypeSpeed = 0.01
            }
        }, 1);
    end);
    l_Lighting_0.Atmosphere.Density = 0.7;
    l_Lighting_0.Atmosphere.Color = Color3.fromRGB(0, 0, 0);
    l_Lighting_0.Atmosphere.Haze = 4.55;
    local v1038 = l_ReplicatedStorage_0.Resources.darkscreen:Clone();
    v1038.Parent = l_PlayerGui_0;
    local v1039 = l_ReplicatedStorage_0.Resources.nagi.sKULL:Clone();
    v1039.Parent = v1035;
    v1039.sKULL.Part0 = v1036;
    local v1040 = l_ReplicatedStorage_0.Resources.DepthOfField:Clone();
    v1040.Parent = l_Lighting_0;
    v1040.FarIntensity = 0;
    l_TweenService_0:Create(v1040, TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
        FarIntensity = 1
    }):Play();
    local v1041 = l_ReplicatedStorage_0.Resources.nagi.ColorCorrection2:Clone();
    v1041.Parent = l_Lighting_0;
    v25:play(l_ReplicatedStorage_0.Resources.nagi["nagi awaken"], l_SoundService_0);
    v12.cutscene(v1036, CFrame.new((Vector3.new(0, 0, 0, 0))), 7.083333492279053, l_ReplicatedStorage_0.Resources.nagi["2FOV"]);
    local v1042 = l_ReplicatedStorage_0.Resources.nagi.awafloor:Clone();
    v1042.CFrame = v1036.CFrame * CFrame.new(0, -3, 0);
    v1042.Parent = v1035;
    v12.bright(1, 1.5);
    task.wait(7.083333492279053);
    v12.ultFlash(-1);
    v1038:Destroy();
    v1041:Destroy();
    v1039:Destroy();
    v1042:Destroy();
    l_Lighting_0.Atmosphere.Density = l_Density_0;
    l_Lighting_0.Atmosphere.Color = l_Color_0;
    l_Lighting_0.Atmosphere.Haze = 3;
    v1040:Destroy();
    v12.fov(false, 40);
    v12.fov(true, 70, 2, Enum.EasingStyle.Sine, Enum.EasingDirection.Out);
    v12.sceneEnabled(false);
end;
v12.rincurveshotkill = function(v1043) --[[ Line: 5372 ]] --[[ Name: rincurveshotkill ]]
    -- upvalues: l_Lighting_0 (copy), v12 (copy), l_ReplicatedStorage_0 (copy), l_TweenService_0 (copy), v25 (copy), l_SoundService_0 (copy), l_RunService_0 (copy), l_CurrentCamera_0 (copy), v27 (copy)
    local v1044 = v1043.HumanoidRootPart or v1043.PrimaryPart;
    local l_Ball_13 = v1043:FindFirstChild("Ball");
    local _ = v1043.Torso;
    local _ = l_Lighting_0.Atmosphere;
    v12.sceneEnabled(true);
    local v1048 = l_ReplicatedStorage_0.Resources.rin.killvfx:Clone();
    v1048:PivotTo(v1044.CFrame);
    v1048.Parent = v1043;
    for _, v1050 in ipairs(v1048:GetDescendants()) do
        if v1050:IsA("ParticleEmitter") or v1050:IsA("Beam") then
            v1050.Enabled = false;
        end;
    end;
    local v1051 = l_ReplicatedStorage_0.Resources.Blur:Clone();
    v1051.Size = 0;
    v1051.Parent = l_Lighting_0;
    local v1052 = l_ReplicatedStorage_0.Resources.ColorCorrection:Clone();
    l_TweenService_0:Create(v1052, TweenInfo.new(0.417, Enum.EasingStyle.Linear), {
        TintColor = Color3.fromRGB(207, 218, 255), 
        Brightness = 0, 
        Contrast = 0.3, 
        Saturation = -0.2
    }):Play();
    v1052.Parent = l_Lighting_0;
    local v1053 = l_ReplicatedStorage_0.Resources.DepthOfField:Clone();
    v1053.Parent = l_Lighting_0;
    v1053.FarIntensity = 0;
    l_TweenService_0:Create(v1053, TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
        FarIntensity = 1
    }):Play();
    v25:play(l_ReplicatedStorage_0.Resources.rin["rin ult curveshot_1 (1)"], l_SoundService_0);
    v12.cutsceneBlender(v1044, l_ReplicatedStorage_0.Resources.rin.killCam, l_ReplicatedStorage_0.Resources.rin.killFOV);
    local v1054 = l_ReplicatedStorage_0.Resources.rin.CamPart2:Clone();
    v1054.Parent = v1048;
    local v1055 = nil;
    v1055 = l_RunService_0.PreRender:connect(function() --[[ Line: 5415 ]]
        -- upvalues: v1054 (copy), v1055 (ref), l_CurrentCamera_0 (ref)
        if not v1054:IsDescendantOf(game) then
            v1055:Disconnect();
        end;
        v1054.CFrame = l_CurrentCamera_0.CFrame;
    end);
    task.delay(0.95, function() --[[ Line: 5425 ]]
        -- upvalues: v27 (ref), v1043 (copy)
        v27.Speak(v1043, {
            {
                Text = "Kill.", 
                Color = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 0, 0)), 
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 0, 4))
                }), 
                TextStrokeColor = Color3.new(0, 0, 0), 
                Bold = true, 
                Italic = true, 
                Shake = {
                    Enabled = true, 
                    Intensity = 7, 
                    Lifetime = 1
                }, 
                TypeSpeed = 0.01
            }
        }, 1);
    end);
    local v1056 = {};
    task.delay(0.15, function() --[[ Line: 5453 ]]
        -- upvalues: v1051 (copy), v1052 (copy), l_TweenService_0 (ref)
        v1051.Size = 26;
        v1052.Brightness = 1;
        v1052.Saturation = -0.55;
        task.wait(0.017);
        v1052.Contrast = -5;
        v1052.Saturation = -1;
        v1051.Size = 56;
        l_TweenService_0:Create(v1051, TweenInfo.new(0.433, Enum.EasingStyle.Linear), {
            Size = 0
        }):Play();
        l_TweenService_0:Create(v1052, TweenInfo.new(0.133, Enum.EasingStyle.Linear), {
            Brightness = 0, 
            Contrast = 0.2, 
            Saturation = -0.1
        }):Play();
    end);
    task.delay(0.183, function() --[[ Line: 5469 ]]
        -- upvalues: v1048 (copy), v1043 (copy), l_ReplicatedStorage_0 (ref), v1056 (copy)
        local l_awkrinfootsteppart1_0 = v1048.awkrinfootsteppart1;
        for _, v1059 in pairs(l_awkrinfootsteppart1_0:GetDescendants()) do
            if v1059:IsA("ParticleEmitter") then
                v1059.Enabled = true;
            end;
        end;
        local l_awkringrassstuff_0 = v1048.awkringrassstuff;
        for _, v1062 in pairs(l_awkringrassstuff_0:GetDescendants()) do
            if v1062:IsA("ParticleEmitter") then
                v1062:Emit(v1062:GetAttribute("EmitCount"));
            end;
        end;
        for _, v1064 in pairs(v1048.rinawkbg:GetDescendants()) do
            if v1064:IsA("Beam") then
                v1064.Enabled = true;
            end;
        end;
        for _, v1066 in ipairs(v1043:GetChildren()) do
            if v1066:IsA("Part") and v1066.Transparency < 1 then
                for _, v1068 in ipairs(l_ReplicatedStorage_0.Resources.rin.ultaura:GetChildren()) do
                    local v1069 = v1068:Clone();
                    v1069.Parent = v1066;
                    table.insert(v1056, v1069);
                end;
            end;
        end;
    end);
    task.delay(0.583, function() --[[ Line: 5508 ]]
        -- upvalues: v1048 (copy), v1054 (copy)
        local l_awkrinfootsteppart1_1 = v1048.awkrinfootsteppart1;
        for _, v1072 in pairs(l_awkrinfootsteppart1_1:GetDescendants()) do
            if v1072:IsA("ParticleEmitter") then
                v1072.Enabled = false;
            end;
        end;
        local l_rinawkcurveshot_0 = v1054.rinawkcurveshot;
        for _, v1075 in pairs(l_rinawkcurveshot_0:GetDescendants()) do
            if v1075:IsA("ParticleEmitter") then
                v1075.Enabled = true;
            end;
        end;
    end);
    local v1076 = nil;
    task.delay(0.8, function() --[[ Line: 5526 ]]
        -- upvalues: v1051 (copy), v1052 (copy), l_TweenService_0 (ref)
        v1051.Size = 26;
        v1052.Brightness = 0;
        v1052.Contrast = 0.2;
        v1052.Saturation = -0.55;
        v1052.TintColor = Color3.fromRGB(28, 113, 71);
        task.wait(0.017);
        v1052.TintColor = Color3.fromRGB(143, 255, 195);
        v1052.Contrast = -2;
        v1052.Saturation = -1;
        v1051.Size = 56;
        l_TweenService_0:Create(v1051, TweenInfo.new(0.35, Enum.EasingStyle.Linear), {
            Size = 0
        }):Play();
        local v1077 = l_TweenService_0:Create(v1052, TweenInfo.new(0.9, Enum.EasingStyle.Linear), {
            TintColor = Color3.fromRGB(255, 255, 255), 
            Brightness = 0, 
            Contrast = 1, 
            Saturation = -1
        });
        v1077:Play();
        v1077.Completed:Wait();
        v1077:Destroy();
        local v1078 = l_TweenService_0:Create(v1052, TweenInfo.new(0.416, Enum.EasingStyle.Linear), {
            TintColor = Color3.fromRGB(255, 255, 255), 
            Brightness = 0, 
            Contrast = 0.2, 
            Saturation = -0.1
        });
        v1078:Play();
        v1078.Completed:Wait();
        v1078:Destroy();
        l_TweenService_0:Create(v1052, TweenInfo.new(0.416, Enum.EasingStyle.Linear), {
            TintColor = Color3.fromRGB(255, 255, 255), 
            Brightness = -0.1, 
            Contrast = 1, 
            Saturation = -0.5
        }):Play();
    end);
    task.delay(0.817, function() --[[ Line: 5557 ]]
        -- upvalues: v1076 (ref), l_ReplicatedStorage_0 (ref), v1043 (copy), v1048 (copy), v1056 (copy), v1054 (copy)
        v1076 = l_ReplicatedStorage_0.Resources.rin.eye:Clone();
        v1076.Weld.Part0 = v1043.Head;
        v1076.Parent = v1048;
        for _, v1080 in v1056 do
            if v1080:IsA("ParticleEmitter") then
                v1080.Enabled = false;
            end;
        end;
        local l_rinawkcurveshot_1 = v1054.rinawkcurveshot;
        for _, v1083 in pairs(l_rinawkcurveshot_1:GetDescendants()) do
            if v1083:IsA("ParticleEmitter") then
                v1083.Enabled = false;
            end;
        end;
    end);
    local v1084 = nil;
    task.delay(1.717, function() --[[ Line: 5578 ]]
        -- upvalues: v1056 (copy), v1048 (copy), l_Ball_13 (copy), v1084 (ref), l_ReplicatedStorage_0 (ref)
        for _, v1086 in v1056 do
            if v1086:IsA("ParticleEmitter") then
                v1086.Enabled = true;
            end;
        end;
        local l_rinflashstepscurveshotawk_0 = v1048.rinflashstepscurveshotawk;
        for _, v1089 in pairs(l_rinflashstepscurveshotawk_0:GetDescendants()) do
            if v1089:IsA("ParticleEmitter") then
                v1089.Enabled = true;
            end;
        end;
        local l_rincurveawkstars_0 = v1048.rincurveawkstars;
        for _, v1092 in pairs(l_rincurveawkstars_0:GetDescendants()) do
            if v1092:IsA("ParticleEmitter") then
                v1092.Enabled = true;
            end;
        end;
        if l_Ball_13 then
            v1084 = l_ReplicatedStorage_0.Resources.rin.balleffect:Clone();
            v1084.Weld.Part0 = l_Ball_13;
            v1084.Parent = v1048;
        end;
    end);
    task.delay(1.833, function() --[[ Line: 5609 ]]
        -- upvalues: v1048 (copy)
        local l_awkrinfootsteppart_0 = v1048.awkrinfootsteppart;
        for _, v1095 in pairs(l_awkrinfootsteppart_0:GetDescendants()) do
            if v1095:IsA("ParticleEmitter") then
                v1095.Enabled = true;
            end;
        end;
        local l_capart2_0 = v1048.capart2;
        for _, v1098 in pairs(l_capart2_0:GetDescendants()) do
            if v1098:IsA("ParticleEmitter") then
                v1098:Emit(v1098:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(1.9, function() --[[ Line: 5624 ]]
        -- upvalues: v1054 (copy), v1048 (copy)
        local l_camerafierce_0 = v1054.camerafierce;
        for _, v1101 in pairs(l_camerafierce_0:GetDescendants()) do
            if v1101:IsA("ParticleEmitter") then
                v1101.Enabled = true;
            end;
        end;
        local l_rincurvelegawkstars_0 = v1048.rincurvelegawkstars;
        for _, v1104 in pairs(l_rincurvelegawkstars_0:GetDescendants()) do
            if v1104:IsA("ParticleEmitter") then
                v1104.Enabled = true;
            end;
        end;
    end);
    task.delay(3.45, function() --[[ Line: 5640 ]]
        -- upvalues: v1048 (copy)
        local l_rincurvelegawkstars_1 = v1048.rincurvelegawkstars;
        for _, v1107 in pairs(l_rincurvelegawkstars_1:GetDescendants()) do
            if v1107:IsA("ParticleEmitter") then
                v1107.Enabled = false;
            end;
        end;
    end);
    task.delay(3.567, function() --[[ Line: 5649 ]]
        -- upvalues: v1048 (copy)
        local l_capartXD_0 = v1048.capartXD;
        for _, v1110 in pairs(l_capartXD_0:GetDescendants()) do
            if v1110:IsA("ParticleEmitter") then
                v1110:Emit(v1110:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(3.617, function() --[[ Line: 5658 ]]
        -- upvalues: v12 (ref), l_ReplicatedStorage_0 (ref)
        v12.impactFrame(l_ReplicatedStorage_0.Resources.rin.ImpactFrame);
    end);
    task.delay(3.867, function() --[[ Line: 5662 ]]
        -- upvalues: v1054 (copy)
        local l_camerafierce_1 = v1054.camerafierce;
        for _, v1113 in pairs(l_camerafierce_1:GetDescendants()) do
            if v1113:IsA("ParticleEmitter") then
                v1113.Enabled = false;
            end;
        end;
    end);
    task.delay(3.867, function() --[[ Line: 5671 ]]
        -- upvalues: v1054 (copy)
        local l_camerafierce_2 = v1054.camerafierce;
        for _, v1116 in pairs(l_camerafierce_2:GetDescendants()) do
            if v1116:IsA("ParticleEmitter") then
                v1116.Enabled = false;
            end;
        end;
    end);
    task.delay(3.967, function() --[[ Line: 5680 ]]
        -- upvalues: v1048 (copy)
        local l_rinawkballflahssteps_0 = v1048.rinawkballflahssteps;
        for _, v1119 in pairs(l_rinawkballflahssteps_0:GetDescendants()) do
            if v1119:IsA("ParticleEmitter") then
                v1119.Enabled = true;
            end;
        end;
    end);
    task.delay(3.983, function() --[[ Line: 5689 ]]
        -- upvalues: v1048 (copy), v1052 (copy)
        local l_rinawkballflahssteps_1 = v1048.rinawkballflahssteps;
        for _, v1122 in pairs(l_rinawkballflahssteps_1:GetDescendants()) do
            if v1122:IsA("ParticleEmitter") then
                v1122.Enabled = true;
            end;
        end;
        v1052.Saturation = -1;
        for _ = 1, 18 do
            v1052.Contrast = v1052.Contrast == 15 and -15 or 15;
            task.wait(0.017);
        end;
        v1052.Contrast = 0.2;
        v1052.Saturation = -0.1;
    end);
    task.delay(4.033, function() --[[ Line: 5708 ]]
        -- upvalues: v1048 (copy)
        local l_rinawkcurveshotemitpartthing_0 = v1048.rinawkcurveshotemitpartthing;
        for _, v1126 in pairs(l_rinawkcurveshotemitpartthing_0:GetDescendants()) do
            if v1126:IsA("ParticleEmitter") then
                v1126:Emit(v1126:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(4.083, function() --[[ Line: 5717 ]]
        -- upvalues: v1048 (copy)
        for _, v1128 in pairs(v1048.rinawkbg:GetDescendants()) do
            if v1128:IsA("Beam") then
                v1128.Enabled = false;
            end;
        end;
        local l_awkrinfootsteppart_1 = v1048.awkrinfootsteppart;
        for _, v1131 in pairs(l_awkrinfootsteppart_1:GetDescendants()) do
            if v1131:IsA("ParticleEmitter") then
                v1131.Enabled = false;
            end;
        end;
    end);
    task.delay(4.7, function() --[[ Line: 5731 ]]
        -- upvalues: v1052 (copy), v1084 (ref)
        task.spawn(function() --[[ Line: 5732 ]]
            -- upvalues: v1052 (ref)
            v1052.Saturation = -1;
            for _ = 1, 7 do
                v1052.Contrast = v1052.Contrast == 15 and -15 or 15;
                task.wait(0.017);
            end;
            v1052.Contrast = 0.2;
            v1052.Saturation = -0.1;
        end);
        if not v1084 then
            return;
        else
            for _, v1134 in pairs(v1084:GetDescendants()) do
                if v1134:IsA("ParticleEmitter") then
                    v1134:Emit(v1134:GetAttribute("EmitCount"));
                end;
            end;
            return;
        end;
    end);
    task.delay(4.767, function() --[[ Line: 5756 ]]
        -- upvalues: v1048 (copy)
        local l_rinawkballflahssteps_2 = v1048.rinawkballflahssteps;
        for _, v1137 in pairs(l_rinawkballflahssteps_2:GetDescendants()) do
            if v1137:IsA("ParticleEmitter") then
                v1137.Enabled = false;
            end;
        end;
    end);
    task.delay(4.85, function() --[[ Line: 5765 ]]
        -- upvalues: v1084 (ref), v1048 (copy), v1056 (copy)
        for _, v1139 in pairs(v1084:GetDescendants()) do
            if v1139:IsA("Beam") then
                v1139.Enabled = false;
            end;
        end;
        local l_rinawkcurveshotendemit_0 = v1048.rinawkcurveshotendemit;
        for _, v1142 in pairs(l_rinawkcurveshotendemit_0:GetDescendants()) do
            if v1142:IsA("ParticleEmitter") then
                v1142:Emit(v1142:GetAttribute("EmitCount"));
            end;
        end;
        for _, v1144 in v1056 do
            if v1144:IsA("ParticleEmitter") then
                v1144.Enabled = false;
                task.delay(3, v1144.Destroy, v1144);
            end;
        end;
    end);
    task.delay(4.967, function() --[[ Line: 5787 ]]
        -- upvalues: v1048 (copy)
        local l_rinflashstepscurveshotawk_1 = v1048.rinflashstepscurveshotawk;
        for _, v1147 in pairs(l_rinflashstepscurveshotawk_1:GetDescendants()) do
            if v1147:IsA("ParticleEmitter") then
                v1147.Enabled = false;
            end;
        end;
        local l_rincurveawkstars_1 = v1048.rincurveawkstars;
        for _, v1150 in pairs(l_rincurveawkstars_1:GetDescendants()) do
            if v1150:IsA("ParticleEmitter") then
                v1150.Enabled = false;
            end;
        end;
    end);
    task.wait(6.133);
    if v1054 then
        v1054:Destroy();
    end;
    v1051:Destroy();
    v1048:Destroy();
    v1052:Destroy();
    v1053:Destroy();
    v12.sceneEnabled(false);
    v12.ultFlash(nil, 1.5);
    v12.fov(false, 15);
    v12.fov(true, 70, 2, Enum.EasingStyle.Sine, Enum.EasingDirection.Out);
end;
v12.deathcounteraura = function(v1151) --[[ Line: 5825 ]] --[[ Name: deathcounteraura ]]
    -- upvalues: l_Lighting_0 (copy), l_TweenService_0 (copy), l_ReplicatedStorage_0 (copy), v12 (copy), v25 (copy), l_SoundService_0 (copy)
    if not v1151.HumanoidRootPart then
        local _ = v1151.PrimaryPart;
    end;
    local l_BlurEffect_17 = Instance.new("BlurEffect");
    l_BlurEffect_17.Size = 11;
    l_BlurEffect_17.Parent = l_Lighting_0;
    l_TweenService_0:Create(l_BlurEffect_17, TweenInfo.new(0.533, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
        Size = 0
    }):Play();
    task.delay(0.533, l_BlurEffect_17.Destroy, l_BlurEffect_17);
    local v1154 = l_ReplicatedStorage_0.Resources.ColorCorrection:Clone();
    v1154.Parent = l_Lighting_0;
    v1154.TintColor = Color3.fromRGB(255, 0, 4);
    v1154.Brightness = 0.4;
    v1154.Contrast = 1;
    v1154.Saturation = -0.4;
    l_TweenService_0:Create(v1154, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
        Saturation = 0
    }):Play();
    l_TweenService_0:Create(v1154, TweenInfo.new(1, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
        Contrast = 0, 
        Brightness = 0, 
        TintColor = Color3.fromRGB(255, 255, 255)
    }):Play();
    task.delay(1, v1154.Destroy, v1154);
    v12.fov(false, 100);
    v12.fov(true, 70, 0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out);
    v12.cameraShake(10, 2, 6);
    local v1155 = {};
    for _, v1157 in ipairs(v1151:GetChildren()) do
        if v1157:IsA("Part") and v1157.Transparency < 1 then
            for _, v1159 in ipairs(l_ReplicatedStorage_0.Resources.rin.deathcounterAura:GetChildren()) do
                local v1160 = v1159:Clone();
                v1160.Parent = v1157;
                table.insert(v1155, v1160);
            end;
        end;
    end;
    v25:play(l_ReplicatedStorage_0.Resources.rin.dcsound, l_SoundService_0);
    local v1161 = nil;
    v1161 = v1151:GetAttributeChangedSignal("deathCounter"):connect(function() --[[ Line: 5870 ]]
        -- upvalues: v1151 (copy), v1161 (ref), v1155 (copy)
        if v1151:GetAttribute("deathCounter") then
            return;
        else
            if v1161 then
                v1161:Disconnect();
            end;
            for _, v1163 in v1155 do
                v1163:Destroy();
            end;
            table.clear(v1155);
            return;
        end;
    end);
end;
v12.vipseat = function(v1164, v1165) --[[ Line: 5882 ]] --[[ Name: vipseat ]]
    -- upvalues: l_Lighting_0 (copy), v12 (copy), l_ReplicatedStorage_0 (copy), l_TweenService_0 (copy), v25 (copy), l_SoundService_0 (copy), v27 (copy)
    local v1166 = v1164.HumanoidRootPart or v1164.PrimaryPart;
    local _ = v1164:FindFirstChild("Ball");
    local _ = v1164.Torso;
    local _ = l_Lighting_0.Atmosphere;
    v12.sceneEnabled(true);
    local v1170 = l_ReplicatedStorage_0.Resources.rin.rinvipseateff:Clone();
    v1170:PivotTo(v1166.CFrame);
    v1170.Parent = v1164;
    for _, v1172 in ipairs(v1170:GetDescendants()) do
        if v1172:IsA("ParticleEmitter") or v1172:IsA("Beam") then
            v1172.Enabled = false;
        end;
    end;
    local v1173 = l_ReplicatedStorage_0.Resources.Blur:Clone();
    v1173.Size = 0;
    v1173.Parent = l_Lighting_0;
    local l_ColorCorrectionEffect_1 = Instance.new("ColorCorrectionEffect");
    l_ColorCorrectionEffect_1.Parent = l_Lighting_0;
    local v1175 = l_ReplicatedStorage_0.Resources.DepthOfField:Clone();
    v1175.Parent = l_Lighting_0;
    v1175.FarIntensity = 0;
    l_TweenService_0:Create(v1175, TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
        FarIntensity = 1
    }):Play();
    v25:play(l_ReplicatedStorage_0.Resources.rin.vipseat_2, l_SoundService_0);
    v12.cutscene(v1166, nil, 9.917, l_ReplicatedStorage_0.Resources.rin.vipseatFOV);
    task.delay(0.883, function() --[[ Line: 5918 ]]
        -- upvalues: v1173 (copy), l_TweenService_0 (ref), l_ColorCorrectionEffect_1 (copy)
        v1173.Size = 24;
        l_TweenService_0:Create(v1173, TweenInfo.new(0.767, Enum.EasingStyle.Linear), {
            Size = 0
        }):Play();
        l_ColorCorrectionEffect_1.Brightness = 0.4;
        l_TweenService_0:Create(l_ColorCorrectionEffect_1, TweenInfo.new(0.267, Enum.EasingStyle.Linear), {
            Brightness = 0
        }):Play();
    end);
    task.delay(0.95, function() --[[ Line: 5929 ]]
        -- upvalues: v1170 (copy)
        local l_slap_0 = v1170.slap;
        for _, v1178 in pairs(l_slap_0:GetDescendants()) do
            if v1178:IsA("ParticleEmitter") then
                v1178:Emit(v1178:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(1.667, function() --[[ Line: 5938 ]]
        -- upvalues: v1170 (copy)
        local l_stap_0 = v1170.stap;
        for _, v1181 in pairs(l_stap_0:GetDescendants()) do
            if v1181:IsA("ParticleEmitter") then
                v1181:Emit(v1181:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(2.667, function() --[[ Line: 5947 ]]
        -- upvalues: v1173 (copy), l_TweenService_0 (ref)
        v1173.Size = 23;
        l_TweenService_0:Create(v1173, TweenInfo.new(0.366, Enum.EasingStyle.Linear), {
            Size = 0
        }):Play();
    end);
    local v1182 = {};
    task.delay(5.683, function() --[[ Line: 5954 ]]
        -- upvalues: l_ColorCorrectionEffect_1 (copy), l_TweenService_0 (ref)
        l_ColorCorrectionEffect_1.Saturation = -1;
        for _ = 1, 5 do
            l_ColorCorrectionEffect_1.Contrast = l_ColorCorrectionEffect_1.Contrast == 15 and -15 or 15;
            task.wait(0.017);
        end;
        local v1184 = l_TweenService_0:Create(l_ColorCorrectionEffect_1, TweenInfo.new(0.117, Enum.EasingStyle.Linear), {
            TintColor = Color3.fromRGB(255, 215, 215), 
            Brightness = 0.498, 
            Contrast = 0.412, 
            Saturation = -0.704
        });
        v1184:Play();
        v1184.Completed:Wait();
        l_ColorCorrectionEffect_1.TintColor = Color3.fromRGB(255, 210, 210);
        l_ColorCorrectionEffect_1.Brightness = -1;
        l_ColorCorrectionEffect_1.Contrast = 0.471;
        l_ColorCorrectionEffect_1.Saturation = -0.683;
        local v1185 = l_TweenService_0:Create(l_ColorCorrectionEffect_1, TweenInfo.new(0.15, Enum.EasingStyle.Linear), {
            TintColor = Color3.fromRGB(255, 160, 160), 
            Brightness = 0, 
            Contrast = 1, 
            Saturation = -0.5
        });
        v1185:Play();
        v1185.Completed:Wait();
        local v1186 = l_TweenService_0:Create(l_ColorCorrectionEffect_1, TweenInfo.new(1.384, Enum.EasingStyle.Linear), {
            TintColor = Color3.fromRGB(255, 175, 175), 
            Brightness = -0.408, 
            Contrast = 0.796, 
            Saturation = -0.126
        });
        v1186:Play();
        v1186.Completed:Wait();
        l_TweenService_0:Create(l_ColorCorrectionEffect_1, TweenInfo.new(0.866, Enum.EasingStyle.Linear), {
            TintColor = Color3.fromRGB(255, 175, 175), 
            Brightness = -1, 
            Contrast = 0.1, 
            Saturation = 0.05
        }):Play();
    end);
    local v1187 = nil;
    task.delay(5.683, function() --[[ Line: 5988 ]]
        -- upvalues: v1187 (ref), l_ReplicatedStorage_0 (ref), v1164 (copy), v1170 (copy)
        v1187 = l_ReplicatedStorage_0.Resources.rin.rineyeya:Clone();
        v1187.Weld.Part0 = v1164.Head;
        v1187.Parent = v1170;
        for _, v1189 in ipairs(v1170.rinawkbg:GetDescendants()) do
            if v1189:IsA("ParticleEmitter") or v1189:IsA("Beam") then
                v1189.Enabled = true;
            end;
        end;
    end);
    task.delay(5.883, function() --[[ Line: 6000 ]]
        -- upvalues: v1170 (copy), v1164 (copy), l_ReplicatedStorage_0 (ref), v1182 (copy)
        local l_aura_0 = v1170.aura;
        for _, v1192 in pairs(l_aura_0:GetDescendants()) do
            if v1192:IsA("ParticleEmitter") then
                v1192.Enabled = true;
            end;
        end;
        for _, v1194 in ipairs(v1164:GetChildren()) do
            if v1194:IsA("Part") and v1194.Transparency < 1 then
                for _, v1196 in ipairs(l_ReplicatedStorage_0.Resources.rin.vipseataura:GetChildren()) do
                    local v1197 = v1196:Clone();
                    v1197.Parent = v1194;
                    table.insert(v1182, v1197);
                end;
            end;
        end;
    end);
    task.delay(7.55, function() --[[ Line: 6026 ]]
        -- upvalues: v1173 (copy), l_TweenService_0 (ref)
        v1173.Size = 11;
        l_TweenService_0:Create(v1173, TweenInfo.new(0.733, Enum.EasingStyle.Linear), {
            Size = 0
        }):Play();
    end);
    task.delay(8.4, function() --[[ Line: 6031 ]]
        -- upvalues: v1187 (ref), v1170 (copy), v1182 (copy), l_ColorCorrectionEffect_1 (copy), l_TweenService_0 (ref)
        v1187:Destroy();
        v1170.rinawkbg:Destroy();
        v1170.aura:Destroy();
        for _, v1199 in v1182 do
            v1199:Destroy();
        end;
        table.clear(v1182);
        local l_lastimpact_0 = v1170.lastimpact;
        for _, v1202 in pairs(l_lastimpact_0:GetDescendants()) do
            if v1202:IsA("ParticleEmitter") then
                v1202:Emit(v1202:GetAttribute("EmitCount"));
            end;
        end;
        l_ColorCorrectionEffect_1.Saturation = -1;
        l_ColorCorrectionEffect_1.Brightness = 0;
        l_ColorCorrectionEffect_1.TintColor = Color3.fromRGB(255, 255, 255);
        for _ = 1, 5 do
            l_ColorCorrectionEffect_1.Contrast = l_ColorCorrectionEffect_1.Contrast == 15 and -15 or 15;
            l_ColorCorrectionEffect_1.Brightness = l_ColorCorrectionEffect_1.Brightness == 1 and -1 or 1;
            task.wait(0.017);
        end;
        l_ColorCorrectionEffect_1.Saturation = 0;
        l_ColorCorrectionEffect_1.Contrast = 0;
        l_ColorCorrectionEffect_1.Brightness = 1;
        l_TweenService_0:Create(l_ColorCorrectionEffect_1, TweenInfo.new(0.6, Enum.EasingStyle.Linear), {
            TintColor = Color3.fromRGB(255, 255, 255), 
            Brightness = 0, 
            Contrast = 0, 
            Saturation = 0
        }):Play();
    end);
    task.delay(8.3, function() --[[ Line: 6064 ]]
        -- upvalues: v1173 (copy), l_TweenService_0 (ref)
        v1173.Size = 56;
        l_TweenService_0:Create(v1173, TweenInfo.new(0.15, Enum.EasingStyle.Linear), {
            Size = 0
        }):Play();
    end);
    v27.Speak(v1164, {
        {
            Text = "Don't leash my potential!", 
            Color = ColorSequence.new({
                ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 0, 4)), 
                ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))
            }), 
            TextStrokeColor = Color3.new(0, 0, 0), 
            Bold = true, 
            Italic = true, 
            Shake = {
                Enabled = true, 
                Intensity = 4, 
                Lifetime = 4
            }, 
            TypeSpeed = 0.03
        }
    }, 4);
    task.delay(3.15, function() --[[ Line: 6108 ]]
        -- upvalues: v27 (ref), v1164 (copy), v1165 (copy)
        v27.Speak(v1164, {
            {
                Text = "Stop clinging to me, ", 
                Color = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 0, 4)), 
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))
                }), 
                TextStrokeColor = Color3.new(0, 0, 0), 
                Bold = true, 
                Italic = true, 
                Shake = {
                    Enabled = true, 
                    Intensity = 2, 
                    Lifetime = 3
                }, 
                TypeSpeed = 0.03
            }, 
            {
                Text = ("%*!"):format(v1165.Name), 
                Color = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 0, 0)), 
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 0, 0))
                }), 
                TextStrokeColor = Color3.new(0, 0, 0), 
                Bold = true, 
                Italic = true, 
                Shake = {
                    Enabled = true, 
                    Intensity = 5, 
                    Lifetime = 2
                }, 
                TypeSpeed = 0.01
            }
        }, 2);
    end);
    task.wait(9.917);
    v1173:Destroy();
    v1170:Destroy();
    l_ColorCorrectionEffect_1:Destroy();
    v1175:Destroy();
    v12.sceneEnabled(false);
    v12.ultFlash(nil, 1.5);
    v12.fov(false, 15);
    v12.fov(true, 70, 2, Enum.EasingStyle.Sine, Enum.EasingDirection.Out);
end;
v12.rinawk = function(v1204) --[[ Line: 6179 ]] --[[ Name: rinawk ]]
    -- upvalues: l_Lighting_0 (copy), v12 (copy), l_ReplicatedStorage_0 (copy), l_PlayerGui_0 (copy), v24 (copy), l_TweenService_0 (copy), l_ContentProvider_0 (copy), v25 (copy), l_SoundService_0 (copy), l_Players_0 (copy), l_RunService_0 (copy), l_CurrentCamera_0 (copy), v27 (copy), l_ClockTime_0 (copy), l_Brightness_0 (copy)
    local v1205 = v1204.HumanoidRootPart or v1204.PrimaryPart;
    local _ = v1204:FindFirstChild("Ball");
    local _ = v1204.Torso;
    local _ = l_Lighting_0.Atmosphere;
    v12.sceneEnabled(true);
    local v1209 = l_ReplicatedStorage_0.Resources.rin.vb:Clone();
    v1209.Parent = l_PlayerGui_0;
    local v1210 = l_ReplicatedStorage_0.Resources.darkscreen:Clone();
    v1210.Parent = l_PlayerGui_0;
    local v1211 = l_ReplicatedStorage_0.Resources.rin.allawkEffect:Clone();
    v1211:PivotTo(v1205.CFrame);
    v1211.Parent = v1204;
    for _, v1213 in ipairs(v1211:GetDescendants()) do
        if v1213:IsA("AnimationController") or v1213:IsA("Humanoid") then
            local l_Parent_0 = v1213.Parent;
            local l_Name_0 = l_Parent_0.Name;
            if l_ReplicatedStorage_0.Resources.rin.allawkanim:FindFirstChild(l_Name_0) then
                local v1216 = v24:loadAnimation(l_Parent_0, l_ReplicatedStorage_0.Resources.rin.allawkanim[l_Name_0]);
                v1216:Play();
                v1216.Stopped:Once(function() --[[ Line: 6209 ]]
                    -- upvalues: l_Parent_0 (copy)
                    l_Parent_0:Destroy();
                end);
            end;
        end;
    end;
    for _, v1218 in ipairs(v1211:GetDescendants()) do
        if v1218:IsA("ParticleEmitter") or v1218:IsA("Beam") or v1218:IsA("PointLight") then
            v1218.Enabled = false;
        end;
    end;
    for _, v1220 in pairs(v1211.groundstuff:GetDescendants()) do
        if v1220:IsA("Beam") then
            v1220.Enabled = true;
        end;
    end;
    local v1221 = l_ReplicatedStorage_0.Resources.rin.demonhandui:Clone();
    v1221.Parent = l_PlayerGui_0;
    v1221.CanvasGroup.GroupTransparency = 1;
    l_TweenService_0:Create(v1221.CanvasGroup, TweenInfo.new(0.3), {
        GroupTransparency = 0
    }):Play();
    v24:loadAnimation(v1221.CanvasGroup.ViewportFrame.WorldModel["RinDemon Hand"], l_ReplicatedStorage_0.Resources.rin.allawkanim.handyaya):Play();
    for _, v1223 in ipairs(v1221.CanvasGroup:GetChildren()) do
        if v1223:IsA("ImageLabel") then
            task.spawn(function() --[[ Line: 6243 ]]
                -- upvalues: l_ContentProvider_0 (ref), v1223 (copy)
                l_ContentProvider_0:PreloadAsync({
                    v1223
                });
            end);
        end;
    end;
    task.spawn(function() --[[ Line: 6249 ]]
        -- upvalues: v1221 (copy)
        for v1224 = 1, 3 do
            if v1221:IsDescendantOf(game) then
                task.wait(0.15);
                v1221.CanvasGroup[("ImageLabel%*"):format(v1224)].ZIndex = v1224;
            else
                break;
            end;
        end;
    end);
    local v1225 = l_ReplicatedStorage_0.Resources.Blur:Clone();
    v1225.Size = 0;
    v1225.Parent = l_Lighting_0;
    local v1226 = l_ReplicatedStorage_0.Resources.rin.DepthOfFieldtest:Clone();
    v1226.Parent = l_Lighting_0;
    v1226.Enabled = false;
    local l_ColorCorrectionEffect_2 = Instance.new("ColorCorrectionEffect");
    l_ColorCorrectionEffect_2.Parent = l_Lighting_0;
    v25:play(l_ReplicatedStorage_0.Resources.rin.awkso, l_SoundService_0);
    v12.cutscene(v1205, nil, 23.15, l_ReplicatedStorage_0.Resources.rin.awkFOV);
    local v1228 = l_ReplicatedStorage_0.Resources.rin.Cameffya:Clone();
    v1228.Parent = v1211;
    task.spawn(function() --[[ Line: 6276 ]]
        -- upvalues: l_Players_0 (ref), v1204 (copy), v1211 (copy)
        local l_l_Players_0_HumanoidDescriptionFromUserId_0 = l_Players_0:GetHumanoidDescriptionFromUserId(l_Players_0:GetPlayerFromCharacter(v1204).userId);
        v1211.babyRig.Humanoid:ApplyDescriptionReset(l_l_Players_0_HumanoidDescriptionFromUserId_0);
    end);
    local v1230 = nil;
    v1230 = l_RunService_0.PreRender:connect(function() --[[ Line: 6282 ]]
        -- upvalues: v1228 (copy), v1230 (ref), l_CurrentCamera_0 (ref)
        if not v1228:IsDescendantOf(game) then
            v1230:Disconnect();
        end;
        v1228.CFrame = l_CurrentCamera_0.CFrame;
    end);
    task.delay(0.617, function() --[[ Line: 6290 ]]
        -- upvalues: l_TweenService_0 (ref), v1221 (copy), v1225 (copy), l_ColorCorrectionEffect_2 (copy), l_Lighting_0 (ref), v1211 (copy)
        l_TweenService_0:Create(v1221.CanvasGroup, TweenInfo.new(0.3), {
            GroupTransparency = 1
        }):Play();
        task.delay(0.3, v1221.Destroy, v1221);
        v1225.Size = 19;
        l_TweenService_0:Create(v1225, TweenInfo.new(2.2, Enum.EasingStyle.Linear), {
            Size = 0
        }):Play();
        l_ColorCorrectionEffect_2.TintColor = Color3.fromRGB(255, 204, 204);
        l_ColorCorrectionEffect_2.Brightness = -1;
        l_Lighting_0.ClockTime = 0;
        l_Lighting_0.Brightness = 0;
        l_TweenService_0:Create(l_ColorCorrectionEffect_2, TweenInfo.new(1, Enum.EasingStyle.Linear), {
            Brightness = 0
        }):Play();
        for _, v1232 in pairs(v1211.redbackgroundthingy:GetDescendants()) do
            if v1232:IsA("Beam") then
                v1232.Enabled = true;
            end;
        end;
        for _, v1234 in ipairs(v1211.alldemonhand:GetDescendants()) do
            if v1234:IsA("ParticleEmitter") then
                v1234.TimeScale = 0.01;
                v1234:Emit(8);
            end;
        end;
        for _, v1236 in ipairs(v1211.aurahand:GetDescendants()) do
            if v1236:IsA("ParticleEmitter") then
                v1236.Enabled = true;
            end;
        end;
    end);
    task.delay(2.833, function() --[[ Line: 6333 ]]
        -- upvalues: v1226 (copy), l_ColorCorrectionEffect_2 (copy), v1211 (copy), v1228 (copy)
        v1226.Enabled = true;
        l_ColorCorrectionEffect_2.TintColor = Color3.fromRGB(255, 196, 196);
        v1211.pointlight.Attachment.SpotLight.Enabled = true;
        for _, v1238 in ipairs(v1228:GetDescendants()) do
            if v1238:IsA("Beam") then
                v1238.Enabled = false;
            end;
        end;
        for _, v1240 in ipairs(v1211.redbackgroundthingy:GetDescendants()) do
            if v1240:IsA("Beam") then
                v1240.Enabled = true;
            end;
        end;
        for _, v1242 in pairs(v1211.RinShadowsPart1:GetDescendants()) do
            if v1242:IsA("ParticleEmitter") then
                v1242.Enabled = true;
            end;
        end;
        v1211.aurahand:Destroy();
        v1211.alldemonhand:Destroy();
    end);
    task.delay(4.283, function() --[[ Line: 6362 ]]
        -- upvalues: v1226 (copy), v1211 (copy), l_ReplicatedStorage_0 (ref), v1204 (copy)
        v1226.Enabled = false;
        for _, v1244 in ipairs(v1211.redbackgroundthingy:GetDescendants()) do
            if v1244:IsA("Beam") then
                v1244.Enabled = false;
            end;
        end;
        for _, v1246 in ipairs(v1211.redbackgroundthingy2:GetDescendants()) do
            if v1246:IsA("Beam") then
                v1246.Enabled = true;
            end;
        end;
        v1211.RinShadowsPart1:Destroy();
        v1211.pointlight.Attachment.SpotLight.Enabled = false;
        local l_rinshadowarm1_0 = v1211.rinshadowarm1;
        for _, v1249 in pairs(l_rinshadowarm1_0:GetDescendants()) do
            if v1249:IsA("ParticleEmitter") then
                v1249.Enabled = true;
            end;
        end;
        local v1250 = l_ReplicatedStorage_0.Resources.rin.lineya:Clone();
        v1250.Parent = v1204["Left Leg"];
        v1250.Enabled = true;
        task.delay(2.5, v1250.Destroy, v1250);
    end);
    task.delay(7.033, function() --[[ Line: 6395 ]]
        -- upvalues: v1211 (copy), l_ColorCorrectionEffect_2 (copy), l_TweenService_0 (ref)
        local l_catch_0 = v1211.rinhandshatter.catch;
        for _, v1253 in pairs(l_catch_0:GetDescendants()) do
            if v1253:IsA("ParticleEmitter") then
                v1253:Emit(v1253:GetAttribute("EmitCount"));
            end;
        end;
        local l_grabaura_0 = v1211.grabaura;
        for _, v1256 in pairs(l_grabaura_0:GetDescendants()) do
            if v1256:IsA("ParticleEmitter") then
                v1256.Enabled = true;
            end;
        end;
        l_ColorCorrectionEffect_2.TintColor = Color3.fromRGB(255, 142, 142);
        l_ColorCorrectionEffect_2.Brightness = 0.1;
        l_ColorCorrectionEffect_2.Contrast = 0;
        l_ColorCorrectionEffect_2.Saturation = 0;
        local v1257 = l_TweenService_0:Create(l_ColorCorrectionEffect_2, TweenInfo.new(0.834, Enum.EasingStyle.Linear), {
            Brightness = -0.5
        });
        v1257:Play();
        v1257.Completed:Wait();
        l_ColorCorrectionEffect_2.TintColor = Color3.fromRGB(255, 255, 255);
        l_ColorCorrectionEffect_2.Brightness = 0.3;
        l_TweenService_0:Create(l_ColorCorrectionEffect_2, TweenInfo.new(0.616, Enum.EasingStyle.Linear), {
            Brightness = 0
        }):Play();
    end);
    task.delay(7.867, function() --[[ Line: 6426 ]]
        -- upvalues: v1225 (copy), l_TweenService_0 (ref), v1211 (copy)
        v1225.Size = 56;
        l_TweenService_0:Create(v1225, TweenInfo.new(0.7, Enum.EasingStyle.Linear), {
            Size = 0
        }):Play();
        local l_grabaura_1 = v1211.grabaura;
        for _, v1260 in pairs(l_grabaura_1:GetDescendants()) do
            if v1260:IsA("ParticleEmitter") then
                v1260.Enabled = false;
            end;
        end;
        local l_explosion_0 = v1211.rinhandshatter.explosion;
        for _, v1263 in pairs(l_explosion_0:GetDescendants()) do
            if v1263:IsA("ParticleEmitter") then
                v1263:Emit(v1263:GetAttribute("EmitCount"));
            end;
        end;
        v1211.rinhandpoof.kapoof.PointLight.Enabled = true;
        v1211.rinhandpoof.kapoof.PointLight.Brightness = 4;
        l_TweenService_0:Create(v1211.rinhandpoof.kapoof.PointLight, TweenInfo.new(0.666, Enum.EasingStyle.Linear), {
            Brightness = 0
        }):Play();
    end);
    task.delay(8.433, function() --[[ Line: 6454 ]]
        -- upvalues: v1211 (copy)
        local l_LeftLeg2_0 = v1211.LeftLeg2;
        for _, v1266 in pairs(l_LeftLeg2_0:GetDescendants()) do
            if v1266:IsA("ParticleEmitter") then
                v1266.Enabled = true;
            end;
        end;
    end);
    task.delay(8.433, function() --[[ Line: 6463 ]]
        -- upvalues: v1211 (copy)
        local l_LeftLeg2_1 = v1211.LeftLeg2;
        for _, v1269 in pairs(l_LeftLeg2_1:GetDescendants()) do
            if v1269:IsA("ParticleEmitter") then
                v1269.Enabled = true;
            end;
        end;
    end);
    task.delay(8.6, function() --[[ Line: 6472 ]]
        -- upvalues: l_ReplicatedStorage_0 (ref), v1204 (copy), l_ColorCorrectionEffect_2 (copy), l_TweenService_0 (ref)
        local v1270 = l_ReplicatedStorage_0.Resources.rin.lineya:Clone();
        v1270.Parent = v1204["Left Leg"];
        v1270.Enabled = true;
        task.delay(0.7, v1270.Destroy, v1270);
        l_ColorCorrectionEffect_2.TintColor = Color3.fromRGB(255, 255, 255);
        l_ColorCorrectionEffect_2.Brightness = 0.3;
        local v1271 = l_TweenService_0:Create(l_ColorCorrectionEffect_2, TweenInfo.new(0.683, Enum.EasingStyle.Linear), {
            Brightness = 0, 
            TintColor = Color3.fromRGB(255, 189, 189)
        });
        v1271:Play();
        v1271.Completed:Wait();
        l_ColorCorrectionEffect_2.Brightness = 0.433;
        l_TweenService_0:Create(l_ColorCorrectionEffect_2, TweenInfo.new(0.433, Enum.EasingStyle.Linear), {
            Brightness = 0
        }):Play();
    end);
    task.delay(9.3, function() --[[ Line: 6491 ]]
        -- upvalues: v1225 (copy), l_TweenService_0 (ref), v1211 (copy)
        v1225.Size = 56;
        l_TweenService_0:Create(v1225, TweenInfo.new(0.317, Enum.EasingStyle.Linear), {
            Size = 0
        }):Play();
        local l_rinlegshatter_0 = v1211.rinlegshatter;
        for _, v1274 in pairs(l_rinlegshatter_0:GetDescendants()) do
            if v1274:IsA("ParticleEmitter") then
                v1274:Emit(v1274:GetAttribute("EmitCount"));
            end;
        end;
        local l_LeftLeg2_2 = v1211.LeftLeg2;
        for _, v1277 in pairs(l_LeftLeg2_2:GetDescendants()) do
            if v1277:IsA("ParticleEmitter") then
                v1277.Enabled = false;
            end;
        end;
        v1211.rinlegshatter.PointLight.Enabled = true;
        l_TweenService_0:Create(v1211.rinlegshatter.PointLight, TweenInfo.new(0.666, Enum.EasingStyle.Linear), {
            Brightness = 0
        }):Play();
    end);
    task.delay(9.767, function() --[[ Line: 6513 ]]
        -- upvalues: v1228 (copy)
        local l_rinleft_0 = v1228.rinleft;
        for _, v1280 in pairs(l_rinleft_0:GetDescendants()) do
            if v1280:IsA("ParticleEmitter") then
                v1280.Enabled = true;
            end;
        end;
    end);
    task.delay(9.917, function() --[[ Line: 6522 ]]
        -- upvalues: v1211 (copy), l_ColorCorrectionEffect_2 (copy), v1225 (copy), l_TweenService_0 (ref)
        local l_rinfinalflames_0 = v1211.rinfinalflames;
        for _, v1283 in pairs(l_rinfinalflames_0:GetDescendants()) do
            if v1283:IsA("ParticleEmitter") then
                v1283.Enabled = true;
            end;
        end;
        l_ColorCorrectionEffect_2.TintColor = Color3.fromRGB(255, 237, 237);
        l_ColorCorrectionEffect_2.Brightness = 0;
        v1225.Size = 56;
        l_TweenService_0:Create(v1225, TweenInfo.new(0.683, Enum.EasingStyle.Quart, Enum.EasingDirection.In), {
            Size = 0
        }):Play();
    end);
    task.delay(10.25, function() --[[ Line: 6537 ]]
        -- upvalues: v1228 (copy)
        local l_rinleft_1 = v1228.rinleft;
        for _, v1286 in pairs(l_rinleft_1:GetDescendants()) do
            if v1286:IsA("ParticleEmitter") then
                v1286.Enabled = false;
            end;
        end;
    end);
    task.delay(11.45, function() --[[ Line: 6546 ]]
        -- upvalues: v1211 (copy), v1225 (copy), l_TweenService_0 (ref)
        for _, v1288 in ipairs(v1211.redbackgroundthingy2:GetDescendants()) do
            if v1288:IsA("Beam") then
                v1288.Enabled = false;
            end;
        end;
        for _, v1290 in ipairs(v1211.redbackgroundthingy3:GetDescendants()) do
            if v1290:IsA("Beam") then
                v1290.Enabled = true;
            end;
        end;
        v1225.Size = 56;
        l_TweenService_0:Create(v1225, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.In), {
            Size = 0
        }):Play();
    end);
    task.delay(13.35, function() --[[ Line: 6563 ]]
        -- upvalues: v1211 (copy)
        for _, v1292 in ipairs(v1211.redbackgroundthingy3:GetDescendants()) do
            if v1292:IsA("Beam") then
                v1292.Enabled = false;
            end;
        end;
        local l_rinfinalflames_1 = v1211.rinfinalflames;
        for _, v1295 in pairs(l_rinfinalflames_1:GetDescendants()) do
            if v1295:IsA("ParticleEmitter") then
                v1295.Enabled = false;
            end;
        end;
        local l_BLUEFIRE_0 = v1211.BLUEFIRE;
        for _, v1298 in pairs(l_BLUEFIRE_0:GetDescendants()) do
            if v1298:IsA("ParticleEmitter") then
                v1298.Enabled = true;
                v1298:Emit(1);
            end;
        end;
        l_BLUEFIRE_0.Attachment.PointLight.Enabled = true;
    end);
    local v1299 = l_ReplicatedStorage_0.Resources.rin.awImpactFrame:Clone();
    v1299.Parent = l_PlayerGui_0;
    v1299.ScreenInsets = Enum.ScreenInsets.None;
    v1299.Frame.BackgroundTransparency = 1;
    local l_CanvasGroup_0 = v1299.Frame.CanvasGroup;
    l_CanvasGroup_0.GroupTransparency = 1;
    for _, v1302 in ipairs(l_CanvasGroup_0:GetChildren()) do
        v1302.Visible = false;
        task.spawn(function() --[[ Line: 6598 ]]
            -- upvalues: l_ContentProvider_0 (ref), v1302 (copy)
            l_ContentProvider_0:PreloadAsync({
                v1302
            });
            v1302.Visible = true;
        end);
    end;
    task.delay(13.933, function() --[[ Line: 6605 ]]
        -- upvalues: l_TweenService_0 (ref), l_CanvasGroup_0 (copy), v1299 (copy), l_RunService_0 (ref)
        l_TweenService_0:Create(l_CanvasGroup_0, TweenInfo.new(1), {
            GroupTransparency = 0
        }):Play();
        l_TweenService_0:Create(v1299.Frame, TweenInfo.new(1), {
            BackgroundTransparency = 0
        }):Play();
        for _, v1304 in ipairs(l_CanvasGroup_0:GetChildren()) do
            v1304.Visible = false;
        end;
        local v1305 = -1;
        local v1306 = #l_CanvasGroup_0:GetChildren() - 1;
        local v1307 = tick();
        local v1308 = nil;
        local function v1310(_) --[[ Line: 6619 ]] --[[ Name: UpdateWarper ]]
            -- upvalues: v1307 (ref), v1305 (ref), v1306 (copy), l_TweenService_0 (ref), l_CanvasGroup_0 (ref), v1308 (ref)
            if tick() - v1307 >= 0.03571428571428571 then
                if v1306 <= v1305 then
                    l_TweenService_0:Create(l_CanvasGroup_0, TweenInfo.new(1), {
                        GroupTransparency = 1
                    }):Play();
                    v1308:Disconnect();
                    return;
                else
                    v1305 = v1305 + 1;
                    l_CanvasGroup_0[v1305].Visible = true;
                    v1307 = tick();
                end;
            end;
        end;
        v1308 = l_RunService_0.PreRender:Connect(function() --[[ Line: 6628 ]]
            -- upvalues: v1310 (copy)
            v1310();
        end);
        task.delay(6.117, function() --[[ Line: 6632 ]]
            -- upvalues: l_TweenService_0 (ref), v1299 (ref)
            l_TweenService_0:Create(v1299.Frame, TweenInfo.new(0.5), {
                BackgroundTransparency = 1
            }):Play();
            task.delay(0.5, v1299.Destroy, v1299);
        end);
    end);
    task.delay(20.217, function() --[[ Line: 6638 ]]
        -- upvalues: v12 (ref), v1204 (copy), l_ReplicatedStorage_0 (ref)
        v12.Emit(v1204.Head, l_ReplicatedStorage_0.Resources.rin.oxygen, 3);
    end);
    task.delay(20.685, function() --[[ Line: 6642 ]]
        -- upvalues: v12 (ref), v1204 (copy), l_ReplicatedStorage_0 (ref)
        v12.Emit(v1204.Head, l_ReplicatedStorage_0.Resources.rin.oxygen, 3);
    end);
    task.delay(21.533, function() --[[ Line: 6646 ]]
        -- upvalues: v12 (ref), v1204 (copy), l_ReplicatedStorage_0 (ref)
        v12.Emit(v1204.Head, l_ReplicatedStorage_0.Resources.rin.oxygen, 3);
    end);
    task.delay(22.583, function() --[[ Line: 6650 ]]
        -- upvalues: v12 (ref), v1204 (copy), l_ReplicatedStorage_0 (ref)
        v12.Emit(v1204.Head, l_ReplicatedStorage_0.Resources.rin.oxygen, 3);
    end);
    task.delay(20.05, function() --[[ Line: 6654 ]]
        -- upvalues: v1211 (copy), l_ColorCorrectionEffect_2 (copy)
        v1211.RoomReal:Destroy();
        l_ColorCorrectionEffect_2.TintColor = Color3.fromRGB(255, 255, 255);
        l_ColorCorrectionEffect_2.Brightness = -0.05;
        l_ColorCorrectionEffect_2.Contrast = -0.15;
        l_ColorCorrectionEffect_2.Saturation = -0.75;
    end);
    task.delay(1.55, function() --[[ Line: 6665 ]]
        -- upvalues: v27 (ref), v1204 (copy)
        v27.Speak(v1204, {
            {
                Text = "Stop violating my life with your easy, cheap values.", 
                Color = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(46, 94, 140)), 
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))
                }), 
                TextStrokeColor = Color3.new(0, 0, 0), 
                Bold = false, 
                Italic = false, 
                Shake = {
                    Enabled = true, 
                    Intensity = 3, 
                    Lifetime = 6
                }, 
                TypeSpeed = 0.03
            }
        }, 6);
    end);
    task.delay(9.317, function() --[[ Line: 6691 ]]
        -- upvalues: v27 (ref), v1204 (copy)
        v27.Speak(v1204, {
            {
                Text = "I am...", 
                Color = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(13, 26, 38)), 
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))
                }), 
                TextStrokeColor = Color3.new(0, 0, 0), 
                Bold = false, 
                Italic = false, 
                Shake = {
                    Enabled = true, 
                    Intensity = 5, 
                    Lifetime = 2
                }, 
                TypeSpeed = 0.03
            }
        }, 2);
    end);
    task.delay(11.217, function() --[[ Line: 6717 ]]
        -- upvalues: v27 (ref), v1204 (copy)
        v27.Speak(v1204, {
            {
                Text = "ME!", 
                Color = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(13, 26, 38)), 
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))
                }), 
                TextStrokeColor = Color3.new(0, 0, 0), 
                Bold = true, 
                Italic = true, 
                Shake = {
                    Enabled = true, 
                    Intensity = 8, 
                    Lifetime = 2
                }, 
                TypeSpeed = 0.03
            }
        }, 2);
    end);
    task.delay(17.567, function() --[[ Line: 6743 ]]
        -- upvalues: v27 (ref), v1204 (copy)
        v27.Speak(v1204, {
            {
                Text = "I'm an", 
                Color = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(38, 0, 1)), 
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))
                }), 
                TextStrokeColor = Color3.new(0, 0, 0), 
                Bold = false, 
                Italic = false, 
                Shake = {
                    Enabled = true, 
                    Intensity = 4, 
                    Lifetime = 2
                }, 
                TypeSpeed = 0.03
            }, 
            {
                Text = " egoist", 
                Color = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(38, 0, 1)), 
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 0, 4))
                }), 
                TextStrokeColor = Color3.new(0, 0, 0), 
                Bold = true, 
                Italic = true, 
                Shake = {
                    Enabled = true, 
                    Intensity = 8, 
                    Lifetime = 2
                }, 
                TypeSpeed = 0.01
            }
        }, 2);
    end);
    task.delay(20.883, function() --[[ Line: 6791 ]]
        -- upvalues: v27 (ref), v1204 (copy)
        v27.Speak(v1204, {
            {
                Text = ("%*!"):format(v1204.Name), 
                Color = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(38, 0, 1)), 
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 0, 4))
                }), 
                TextStrokeColor = Color3.new(0, 0, 0), 
                Bold = true, 
                Italic = true, 
                Shake = {
                    Enabled = true, 
                    Intensity = 10, 
                    Lifetime = 2
                }, 
                TypeSpeed = 0.03
            }
        }, 2);
    end);
    task.wait(23.15);
    v1209:Destroy();
    l_Lighting_0.ClockTime = l_ClockTime_0;
    l_Lighting_0.Brightness = l_Brightness_0;
    if v1228 then
        v1228:Destroy();
    end;
    v1210:Destroy();
    v1225:Destroy();
    v1211:Destroy();
    l_ColorCorrectionEffect_2:Destroy();
    v1226:Destroy();
    v12.sceneEnabled(false);
    v12.ultFlash(nil, 1.5);
    v12.fov(false, 15);
    v12.fov(true, 70, 2, Enum.EasingStyle.Sine, Enum.EasingDirection.Out);
end;
v12.bigbangdrive = function(v1311) --[[ Line: 6845 ]] --[[ Name: bigbangdrive ]]
    -- upvalues: l_Lighting_0 (copy), v12 (copy), l_ReplicatedStorage_0 (copy), l_TweenService_0 (copy), v25 (copy), l_SoundService_0 (copy), v27 (copy)
    local v1312 = v1311.HumanoidRootPart or v1311.PrimaryPart;
    local l_Ball_16 = v1311:FindFirstChild("Ball");
    local _ = v1311.Torso;
    local _ = l_Lighting_0.Atmosphere;
    v12.sceneEnabled(true);
    local v1316 = l_ReplicatedStorage_0.Resources.shidou.NEWBIGBANGDRIVE:Clone();
    v1316:PivotTo(v1312.CFrame);
    v1316.Parent = v1311;
    for _, v1318 in ipairs(v1316:GetDescendants()) do
        if v1318:IsA("ParticleEmitter") or v1318:IsA("Beam") then
            v1318.Enabled = false;
        end;
    end;
    local v1319 = l_ReplicatedStorage_0.Resources.Blur:Clone();
    v1319.Size = 0;
    v1319.Parent = l_Lighting_0;
    local v1320 = l_ReplicatedStorage_0.Resources.ColorCorrection:Clone();
    l_TweenService_0:Create(v1320, TweenInfo.new(0.417, Enum.EasingStyle.Linear), {
        TintColor = Color3.fromRGB(207, 218, 255), 
        Brightness = 0, 
        Contrast = 0.3, 
        Saturation = -0.2
    }):Play();
    v1320.Parent = l_Lighting_0;
    local v1321 = l_ReplicatedStorage_0.Resources.DepthOfField:Clone();
    v1321.Parent = l_Lighting_0;
    v1321.FarIntensity = 0;
    l_TweenService_0:Create(v1321, TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
        FarIntensity = 1
    }):Play();
    v25:play(l_ReplicatedStorage_0.Resources.shidou.bigbangdrive, l_SoundService_0);
    v12.cutsceneBlender(v1312, l_ReplicatedStorage_0.Resources.shidou.skill32, l_ReplicatedStorage_0.Resources.shidou.FOV);
    for _, v1323 in ipairs(v1316.help:GetDescendants()) do
        if v1323:IsA("ParticleEmitter") then
            v1323.Enabled = true;
        end;
    end;
    task.delay(0.733, function() --[[ Line: 6892 ]]
        -- upvalues: v27 (ref), v1311 (copy)
        v27.Speak(v1311, {
            {
                Text = "My soccer cells...", 
                Color = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 0, 0)), 
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))
                }), 
                TextStrokeColor = Color3.new(0, 0, 0), 
                Bold = false, 
                Italic = false, 
                Shake = {
                    Enabled = false, 
                    Intensity = 1, 
                    Lifetime = 2
                }, 
                TypeSpeed = 0.04
            }
        }, 2.5);
    end);
    task.delay(6.267, function() --[[ Line: 6918 ]]
        -- upvalues: v27 (ref), v1311 (copy)
        v27.Speak(v1311, {
            {
                Text = "are tingling and stirring to spark.", 
                Color = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 0, 0)), 
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 43, 124))
                }), 
                TextStrokeColor = Color3.new(0, 0, 0), 
                Bold = false, 
                Italic = false, 
                Shake = {
                    Enabled = true, 
                    Intensity = 2, 
                    Lifetime = 1
                }, 
                TypeSpeed = 0.04
            }
        }, 5);
    end);
    task.delay(10.217, function() --[[ Line: 6944 ]]
        -- upvalues: v27 (ref), v1311 (copy)
        v27.Speak(v1311, {
            {
                Text = "With my goal...", 
                Color = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 46, 112)), 
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))
                }), 
                TextStrokeColor = Color3.new(0, 0, 0), 
                Bold = false, 
                Italic = false, 
                Shake = {
                    Enabled = true, 
                    Intensity = 1, 
                    Lifetime = 1
                }, 
                TypeSpeed = 0.04
            }, 
            {
                Text = " With my genes...", 
                Color = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)), 
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 43, 124))
                }), 
                TextStrokeColor = Color3.new(0, 0, 0), 
                Bold = true, 
                Italic = true, 
                Shake = {
                    Enabled = true, 
                    Intensity = 1, 
                    Lifetime = 1
                }, 
                TypeSpeed = 0.04
            }
        }, 3);
    end);
    task.delay(13.995, function() --[[ Line: 6992 ]]
        -- upvalues: v27 (ref), v1311 (copy)
        v27.Speak(v1311, {
            {
                Text = "BIG BANG DRIVE!!", 
                Color = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 0, 0)), 
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 43, 124))
                }), 
                TextStrokeColor = Color3.new(0, 0, 0), 
                Bold = true, 
                Italic = true, 
                Shake = {
                    Enabled = true, 
                    Intensity = 5, 
                    Lifetime = 2
                }, 
                TypeSpeed = 0.01
            }
        }, 3);
    end);
    task.delay(18.583, function() --[[ Line: 7018 ]]
        -- upvalues: v27 (ref), v1311 (copy)
        v27.Speak(v1311, {
            {
                Text = "ILL BEAT YOU UP!", 
                Color = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 0, 0)), 
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 43, 124))
                }), 
                TextStrokeColor = Color3.new(0, 0, 0), 
                Bold = true, 
                Italic = true, 
                Shake = {
                    Enabled = true, 
                    Intensity = 5, 
                    Lifetime = 1.15
                }, 
                TypeSpeed = 0.04
            }
        }, 1.15);
    end);
    task.delay(0.633, function() --[[ Line: 7047 ]]
        -- upvalues: v12 (ref), v1311 (copy), l_ReplicatedStorage_0 (ref)
        v12.Emit(v1311.Head, l_ReplicatedStorage_0.Resources.shidou.EYE2, 3);
    end);
    task.delay(0.983, function() --[[ Line: 7051 ]]
        -- upvalues: v1316 (copy)
        for _, v1325 in ipairs(v1316.aira:GetDescendants()) do
            if v1325:IsA("ParticleEmitter") then
                v1325.Enabled = true;
            end;
        end;
    end);
    task.delay(1.717, function() --[[ Line: 7059 ]]
        -- upvalues: v1316 (copy)
        for _, v1327 in ipairs(v1316.aira:GetDescendants()) do
            if v1327:IsA("ParticleEmitter") then
                v1327.Enabled = false;
            end;
        end;
    end);
    task.delay(3.05, function() --[[ Line: 7067 ]]
        -- upvalues: v1316 (copy)
        for _, v1329 in ipairs(v1316.help:GetDescendants()) do
            if v1329:IsA("ParticleEmitter") then
                v1329.Enabled = false;
            end;
        end;
    end);
    task.delay(3.667, function() --[[ Line: 7075 ]]
        -- upvalues: v1316 (copy)
        for _, v1331 in ipairs(v1316.Jumpshidou:GetDescendants()) do
            if v1331:IsA("ParticleEmitter") then
                v1331:Emit(v1331:GetAttribute("EmitCount"));
            end;
        end;
        for _, v1333 in ipairs(v1316.aira:GetDescendants()) do
            if v1333:IsA("ParticleEmitter") then
                v1333.Enabled = true;
            end;
        end;
    end);
    task.delay(3.933, function() --[[ Line: 7089 ]]
        -- upvalues: v1316 (copy)
        for _, v1335 in ipairs(v1316.aira:GetDescendants()) do
            if v1335:IsA("ParticleEmitter") then
                v1335.Enabled = false;
            end;
        end;
    end);
    task.delay(4.2, function() --[[ Line: 7097 ]]
        -- upvalues: v1316 (copy)
        for _, v1337 in ipairs(v1316.charge:GetDescendants()) do
            if v1337:IsA("ParticleEmitter") then
                v1337.Enabled = true;
            end;
        end;
    end);
    task.delay(4.417, function() --[[ Line: 7105 ]]
        -- upvalues: v1316 (copy)
        local l_bigbang1_0 = v1316.bigbang1;
        for _, v1340 in pairs(l_bigbang1_0:GetDescendants()) do
            if v1340:IsA("ParticleEmitter") then
                v1340:Emit(v1340:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(4.5, function() --[[ Line: 7114 ]]
        -- upvalues: v1316 (copy)
        local l_bigbang1_1 = v1316.bigbang1;
        for _, v1343 in pairs(l_bigbang1_1:GetDescendants()) do
            if v1343:IsA("ParticleEmitter") then
                v1343:Emit(v1343:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(4.567, function() --[[ Line: 7123 ]]
        -- upvalues: v1320 (copy), l_TweenService_0 (ref)
        v1320.Brightness = -0.7;
        v1320.Contrast = 1;
        v1320.Saturation = 0;
        task.wait(0.016);
        v1320.Brightness = 0;
        v1320.Contrast = 0;
        v1320.Saturation = 0;
        task.wait(0.016);
        v1320.Brightness = -50;
        v1320.Contrast = -200;
        v1320.Saturation = -1;
        task.wait(0.016);
        v1320.Brightness = 0;
        v1320.Contrast = -200;
        v1320.Saturation = -1;
        task.wait(0.016);
        v1320.Brightness = 0;
        v1320.Contrast = 200;
        v1320.Saturation = -1;
        task.wait(0.016);
        v1320.Brightness = 100;
        v1320.Contrast = 500;
        v1320.Saturation = -1;
        task.wait(0.016);
        v1320.Brightness = 0;
        v1320.Contrast = 200;
        v1320.Saturation = -1;
        task.wait(0.016);
        v1320.Brightness = -50;
        v1320.Contrast = -200;
        v1320.Saturation = -1;
        task.wait(0.016);
        v1320.Brightness = 1;
        v1320.Contrast = 20;
        v1320.Saturation = -1;
        task.wait(0.016);
        v1320.Brightness = 0.3;
        v1320.Contrast = 10;
        v1320.Saturation = -1;
        task.wait(0.016);
        v1320.Brightness = -0.2;
        v1320.Contrast = 0.3;
        v1320.Saturation = 0.6;
        l_TweenService_0:Create(v1320, TweenInfo.new(0.417, Enum.EasingStyle.Linear), {
            TintColor = Color3.fromRGB(207, 218, 255), 
            Brightness = 0, 
            Contrast = 0.3, 
            Saturation = -0.2
        }):Play();
    end);
    task.delay(4.6, function() --[[ Line: 7191 ]]
        -- upvalues: v12 (ref), l_ReplicatedStorage_0 (ref)
        v12.impactFrame(l_ReplicatedStorage_0.Resources.shidou.ImpactFrame1);
    end);
    local v1344 = nil;
    task.delay(4.667, function() --[[ Line: 7196 ]]
        -- upvalues: v1344 (ref), l_ReplicatedStorage_0 (ref), v1311 (copy), v1316 (copy)
        v1344 = l_ReplicatedStorage_0.Resources.shidou.wingyaya:Clone();
        v1344.Weld.Part0 = v1311.Torso;
        v1344.Parent = v1316;
        local l_helpemit_0 = v1316.helpemit;
        for _, v1347 in pairs(l_helpemit_0:GetDescendants()) do
            if v1347:IsA("ParticleEmitter") then
                v1347:Emit(v1347:GetAttribute("EmitCount"));
                v1347.TimeScale = 1;
            end;
        end;
        local l_charge_0 = v1316.charge;
        for _, v1350 in pairs(l_charge_0:GetDescendants()) do
            if v1350:IsA("ParticleEmitter") then
                v1350.Enabled = false;
            end;
        end;
        local l_help_0 = v1316.help;
        for _, v1353 in pairs(l_help_0:GetDescendants()) do
            if v1353:IsA("ParticleEmitter") then
                v1353.Enabled = true;
            end;
        end;
        local l_helpemit1_0 = v1316.helpemit1;
        for _, v1356 in pairs(l_helpemit1_0:GetDescendants()) do
            if v1356:IsA("ParticleEmitter") then
                v1356:Emit(v1356:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(5.9, function() --[[ Line: 7231 ]]
        -- upvalues: v1316 (copy)
        local l_helpemit_1 = v1316.helpemit;
        for _, v1359 in pairs(l_helpemit_1:GetDescendants()) do
            if v1359:IsA("ParticleEmitter") then
                v1359.TimeScale = 0.1;
            end;
        end;
    end);
    task.delay(10.517, function() --[[ Line: 7240 ]]
        -- upvalues: v1316 (copy)
        local l_help_1 = v1316.help;
        for _, v1362 in pairs(l_help_1:GetDescendants()) do
            if v1362:IsA("ParticleEmitter") then
                v1362.Enabled = false;
            end;
        end;
        local l_helpemit_2 = v1316.helpemit;
        for _, v1365 in pairs(l_helpemit_2:GetDescendants()) do
            if v1365:IsA("ParticleEmitter") then
                v1365.TimeScale = 1;
            end;
        end;
    end);
    task.delay(10.533, function() --[[ Line: 7256 ]]
        -- upvalues: v1344 (ref), v1319 (copy), v1320 (copy), l_TweenService_0 (ref)
        if v1344 then
            v1344:Destroy();
        end;
        v1319.Size = 10;
        v1320.TintColor = Color3.fromRGB(255, 195, 209);
        v1320.Brightness = -0.2;
        v1320.Contrast = 1;
        v1320.Saturation = -1;
        l_TweenService_0:Create(v1319, TweenInfo.new(1.234, Enum.EasingStyle.Linear), {
            Size = 25
        }):Play();
        task.delay(1.234, function() --[[ Line: 7270 ]]
            -- upvalues: l_TweenService_0 (ref), v1319 (ref)
            l_TweenService_0:Create(v1319, TweenInfo.new(0.75, Enum.EasingStyle.Linear), {
                Size = 0
            }):Play();
        end);
        l_TweenService_0:Create(v1320, TweenInfo.new(1.117, Enum.EasingStyle.Linear), {
            TintColor = Color3.fromRGB(255, 105, 105), 
            Saturation = -0.8
        }):Play();
        task.wait(1.117);
        l_TweenService_0:Create(v1320, TweenInfo.new(0.55, Enum.EasingStyle.Linear), {
            TintColor = Color3.fromRGB(255, 71, 71), 
            Saturation = -1, 
            Contrast = 0.7
        }):Play();
        l_TweenService_0:Create(v1320, TweenInfo.new(0.233, Enum.EasingStyle.Linear), {
            Brightness = 1
        }):Play();
        task.wait(0.233);
        l_TweenService_0:Create(v1320, TweenInfo.new(0.167, Enum.EasingStyle.Linear), {
            Brightness = 0.4
        }):Play();
    end);
    local v1366 = nil;
    task.delay(11.6, function() --[[ Line: 7288 ]]
        -- upvalues: v1366 (ref), l_ReplicatedStorage_0 (ref), v1311 (copy), v1316 (copy)
        v1366 = l_ReplicatedStorage_0.Resources.shidou.eye2:Clone();
        v1366.Weld.Part0 = v1311.Head;
        v1366.Parent = v1316;
        for _, v1368 in ipairs(v1316.Blackhole:GetDescendants()) do
            if v1368:IsA("ParticleEmitter") then
                v1368.Enabled = true;
            end;
        end;
    end);
    task.delay(12.967, function() --[[ Line: 7300 ]]
        -- upvalues: v1366 (ref), v1320 (copy), v1316 (copy)
        if v1366 then
            v1366:Destroy();
        end;
        v1320.TintColor = Color3.fromRGB(177, 201, 255);
        v1320.Brightness = 0;
        v1320.Contrast = 0.3;
        v1320.Saturation = -0.4;
        for _, v1370 in ipairs(v1316.Blackhole:GetDescendants()) do
            if v1370:IsA("ParticleEmitter") then
                v1370.Enabled = false;
            end;
        end;
        for _, v1372 in ipairs(v1316.AA2:GetDescendants()) do
            if v1372:IsA("ParticleEmitter") then
                v1372:Emit(180);
            end;
        end;
    end);
    task.delay(15.85, function() --[[ Line: 7323 ]]
        -- upvalues: v12 (ref), l_ReplicatedStorage_0 (ref)
        v12.impactFrame(l_ReplicatedStorage_0.Resources.shidou.ImpactFrame2);
    end);
    local v1373 = {};
    task.delay(16.65, function() --[[ Line: 7329 ]]
        -- upvalues: v1311 (copy), l_ReplicatedStorage_0 (ref), v1373 (copy), v1320 (copy)
        for _, v1375 in ipairs(v1311:GetChildren()) do
            if v1375:IsA("Part") and v1375.Transparency < 1 then
                for _, v1377 in ipairs(l_ReplicatedStorage_0.Resources.shidou.lineya:GetChildren()) do
                    local v1378 = v1377:Clone();
                    v1378.Parent = v1375;
                    table.insert(v1373, v1378);
                end;
            end;
        end;
        v1320.TintColor = Color3.fromRGB(255, 255, 255);
        v1320.Brightness = 0;
        v1320.Contrast = 0;
        v1320.Saturation = 0;
    end);
    task.delay(17.05, function() --[[ Line: 7351 ]]
        -- upvalues: v12 (ref), l_ReplicatedStorage_0 (ref), l_Ball_16 (copy), v1316 (copy), v1320 (copy), l_TweenService_0 (ref)
        v12.impactFrame(l_ReplicatedStorage_0.Resources.shidou.ImpactFrame3);
        if l_Ball_16 then
            local v1379 = l_ReplicatedStorage_0.Resources.shidou.ballspin:Clone();
            v1379.Weld.Part0 = l_Ball_16;
            v1379.Parent = v1316;
            task.delay(0.8, v1379.Destroy, v1379);
        end;
        for _, v1381 in ipairs(v1316.WIND:GetDescendants()) do
            if v1381:IsA("Beam") then
                v1381.Enabled = true;
            end;
        end;
        for _, v1383 in ipairs(v1316.normalkick2:GetDescendants()) do
            if v1383:IsA("ParticleEmitter") then
                v1383:Emit(10);
            end;
        end;
        v1320.TintColor = Color3.fromRGB(255, 45, 203);
        v1320.Brightness = 5;
        v1320.Contrast = 6;
        v1320.Saturation = -0.4;
        l_TweenService_0:Create(v1320, TweenInfo.new(1, Enum.EasingStyle.Linear), {
            Brightness = 0
        }):Play();
    end);
    task.delay(17.85, function() --[[ Line: 7382 ]]
        -- upvalues: v1373 (copy), v1316 (copy), v1320 (copy)
        for _, v1385 in v1373 do
            v1385:Destroy();
        end;
        table.clear(v1373);
        v1316.WIND:Destroy();
        v1316.normalkick2:Destroy();
        v1316.AA2:Destroy();
        v1320.TintColor = Color3.fromRGB(255, 255, 255);
        v1320.Brightness = 0;
        v1320.Contrast = 0;
        v1320.Saturation = 0;
    end);
    task.delay(18.467, function() --[[ Line: 7398 ]]
        -- upvalues: v1319 (copy), v1320 (copy), l_TweenService_0 (ref)
        v1319.Size = 25;
        v1320.TintColor = Color3.fromRGB(255, 255, 255);
        v1320.Brightness = 0.3;
        v1320.Contrast = 0;
        v1320.Saturation = -1;
        l_TweenService_0:Create(v1319, TweenInfo.new(0.45, Enum.EasingStyle.Linear), {
            Size = 7
        }):Play();
        l_TweenService_0:Create(v1320, TweenInfo.new(0.666, Enum.EasingStyle.Linear), {
            TintColor = Color3.fromRGB(255, 66, 132), 
            Brightness = 0, 
            Contrast = 5, 
            Saturation = -0.3
        }):Play();
    end);
    task.delay(18.683, function() --[[ Line: 7411 ]]
        -- upvalues: v1316 (copy)
        for _, v1387 in ipairs(v1316.SCREAM:GetDescendants()) do
            if v1387:IsA("ParticleEmitter") then
                v1387.Enabled = true;
            end;
        end;
    end);
    task.wait(19.85);
    v1319:Destroy();
    v1316:Destroy();
    v1320:Destroy();
    v1321:Destroy();
    v12.sceneEnabled(false);
    v12.ultFlash(nil, 1.5);
    v12.fov(false, 15);
    v12.fov(true, 70, 2, Enum.EasingStyle.Sine, Enum.EasingDirection.Out);
end;
v12.dragondrive = function(v1388) --[[ Line: 7618 ]] --[[ Name: dragondrive ]]
    -- upvalues: l_Lighting_0 (copy), v12 (copy), l_ReplicatedStorage_0 (copy), l_TweenService_0 (copy), v25 (copy), l_SoundService_0 (copy), v27 (copy), l_RunService_0 (copy), l_Color_0 (copy), l_Density_0 (copy), l_Brightness_0 (copy)
    local v1389 = v1388.HumanoidRootPart or v1388.PrimaryPart;
    local _ = v1388.Torso;
    local l_Atmosphere_8 = l_Lighting_0.Atmosphere;
    local l_Ball_17 = v1388:FindFirstChild("Ball");
    v12.bright(-1, 0.15);
    v12.sceneEnabled(true);
    local v1393 = l_ReplicatedStorage_0.Resources.shidou.newddeffect:Clone();
    v1393:PivotTo(v1389.CFrame);
    v1393.Parent = v1388;
    local v1394 = l_ReplicatedStorage_0.Resources.shidou.eyesangle:Clone();
    v1394.Weld.Part0 = v1388.Head;
    v1394.Parent = v1393;
    local v1395 = l_ReplicatedStorage_0.Resources.shidou.sh:Clone();
    v1395.Weld.Part0 = v1388.Head;
    v1395.Parent = v1393;
    local v1396 = l_ReplicatedStorage_0.Resources.DepthOfField:Clone();
    v1396.Parent = l_Lighting_0;
    v1396.FarIntensity = 0;
    l_TweenService_0:Create(v1396, TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
        FarIntensity = 1
    }):Play();
    v25:play(l_ReplicatedStorage_0.Resources.shidou.ddsound, l_SoundService_0);
    v12.cutscene(v1389, CFrame.new((Vector3.new(0, 0, 0, 0))), 7.767, l_ReplicatedStorage_0.Resources.shidou.ddFOV);
    local l_ColorCorrectionEffect_3 = Instance.new("ColorCorrectionEffect");
    l_ColorCorrectionEffect_3.Parent = l_Lighting_0;
    local l_BlurEffect_18 = Instance.new("BlurEffect");
    l_BlurEffect_18.Size = 0;
    l_BlurEffect_18.Parent = l_Lighting_0;
    task.delay(1.74, function() --[[ Line: 7657 ]]
        -- upvalues: v27 (ref), v1388 (copy)
        v27.Speak(v1388, {
            {
                Text = "Jump", 
                Color = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)), 
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 35, 105))
                }), 
                TextStrokeColor = Color3.new(0, 0, 0), 
                Bold = true, 
                Italic = true, 
                Shake = {
                    Enabled = true, 
                    Intensity = 5, 
                    Lifetime = 0.5
                }, 
                TypeSpeed = 0.015
            }, 
            {
                Text = ", all the cells in my body.", 
                Color = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 49, 138)), 
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))
                }), 
                TextStrokeColor = Color3.new(0, 0, 0), 
                Bold = false, 
                Italic = false, 
                Shake = {
                    Enabled = false, 
                    Intensity = 1, 
                    Lifetime = 2
                }, 
                TypeSpeed = 0.03
            }
        }, 4);
    end);
    task.delay(5.405, function() --[[ Line: 7704 ]]
        -- upvalues: v27 (ref), v1388 (copy)
        v27.Speak(v1388, {
            {
                Text = "DRAGON DRIVE!", 
                Color = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 0, 0)), 
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 53, 124))
                }), 
                TextStrokeColor = Color3.new(0, 0, 0), 
                Bold = true, 
                Italic = true, 
                Shake = {
                    Enabled = true, 
                    Intensity = 5, 
                    Lifetime = 1
                }, 
                TypeSpeed = 0.03
            }
        }, 2.2);
    end);
    local v1399 = l_ReplicatedStorage_0.Resources.shidou.CAMERAPARTstart:Clone();
    v1399.Parent = v1393;
    for _, v1401 in ipairs(v1399:GetDescendants()) do
        if v1401:IsA("ParticleEmitter") or v1401:IsA("Beam") then
            v1401.Enabled = true;
        end;
    end;
    local v1402 = nil;
    v1402 = l_RunService_0.PreRender:connect(function() --[[ Line: 7741 ]]
        -- upvalues: v1399 (copy), v1402 (ref)
        if not v1399:IsDescendantOf(game) then
            v1402:Disconnect();
            return;
        else
            v1399.CFrame = workspace.CurrentCamera.CFrame * CFrame.new(0, 0, -2) * CFrame.Angles(0, 0, -0.17453292519943295);
            return;
        end;
    end);
    task.delay(0.05, function() --[[ Line: 7746 ]]
        -- upvalues: v1393 (copy)
        for _, v1404 in ipairs(v1393.step1:GetDescendants()) do
            if v1404:IsA("ParticleEmitter") then
                v1404:Emit(v1404:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(0.867, function() --[[ Line: 7754 ]]
        -- upvalues: v1393 (copy)
        for _, v1406 in ipairs(v1393.step1:GetDescendants()) do
            if v1406:IsA("ParticleEmitter") then
                v1406:Emit(v1406:GetAttribute("EmitCount"));
            end;
        end;
        local l_step2_0 = v1393.step2;
        for _, v1409 in pairs(l_step2_0:GetDescendants()) do
            if v1409:IsA("ParticleEmitter") then
                v1409:Emit(v1409:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(0.967, function() --[[ Line: 7769 ]]
        -- upvalues: v1399 (copy)
        v1399:Destroy();
    end);
    local v1410 = nil;
    local v1411 = nil;
    local v1412 = {};
    task.delay(1.55, function() --[[ Line: 7778 ]]
        -- upvalues: v1393 (copy), v1388 (copy), l_ReplicatedStorage_0 (ref), v1412 (copy), l_BlurEffect_18 (copy), l_Atmosphere_8 (copy), l_Lighting_0 (ref), l_ColorCorrectionEffect_3 (copy), l_TweenService_0 (ref), v1411 (ref), v1410 (ref), l_RunService_0 (ref)
        local l_cut_0 = v1393.cut;
        for _, v1415 in pairs(l_cut_0:GetDescendants()) do
            if v1415:IsA("ParticleEmitter") then
                v1415:Emit(v1415:GetAttribute("EmitCount"));
            end;
        end;
        for _, v1417 in ipairs(v1388:GetChildren()) do
            if v1417:IsA("Part") and v1417.Transparency < 1 then
                local v1418 = l_ReplicatedStorage_0.Resources.shidou.lineaura:Clone();
                v1418.Parent = v1417;
                table.insert(v1412, v1418);
            end;
        end;
        l_BlurEffect_18.Size = 25;
        l_Atmosphere_8.Color = Color3.fromRGB(108, 36, 69);
        l_Atmosphere_8.Density = 0.45;
        l_Lighting_0.Brightness = 3.5;
        l_ColorCorrectionEffect_3.TintColor = Color3.fromRGB(255, 143, 217);
        l_ColorCorrectionEffect_3.Brightness = 1;
        l_ColorCorrectionEffect_3.Contrast = 0.4;
        l_ColorCorrectionEffect_3.Saturation = -0.8;
        l_TweenService_0:Create(l_ColorCorrectionEffect_3, TweenInfo.new(0.733, Enum.EasingStyle.Linear), {
            Brightness = 0, 
            Saturation = 0
        }):Play();
        l_TweenService_0:Create(l_BlurEffect_18, TweenInfo.new(0.633, Enum.EasingStyle.Linear), {
            Size = 0
        }):Play();
        v1411 = l_ReplicatedStorage_0.Resources.shidou.ddwingyaya:Clone();
        v1411.Weld.Part0 = v1388.Torso;
        v1411.Parent = v1393;
        v1410 = l_ReplicatedStorage_0.Resources.shidou.CAMERAPART:Clone();
        v1410.Parent = v1393;
        for _, v1420 in ipairs(v1410:GetDescendants()) do
            if v1420:IsA("ParticleEmitter") or v1420:IsA("Beam") then
                v1420.Enabled = true;
            end;
        end;
        local v1421 = nil;
        v1421 = l_RunService_0.PreRender:connect(function() --[[ Line: 7832 ]]
            -- upvalues: v1410 (ref), v1421 (ref)
            if not v1410:IsDescendantOf(game) then
                v1421:Disconnect();
                return;
            else
                v1410.CFrame = workspace.CurrentCamera.CFrame * CFrame.new(0, 0, -1.5) * CFrame.Angles(0, 0, -1.3962634015954636);
                return;
            end;
        end);
        for _, v1423 in ipairs(v1393.bgAura:GetDescendants()) do
            if v1423:IsA("ParticleEmitter") or v1423:IsA("Beam") then
                v1423.Enabled = true;
            end;
        end;
    end);
    local v1424 = nil;
    task.delay(4.983, function() --[[ Line: 7857 ]]
        -- upvalues: v1424 (ref), l_ReplicatedStorage_0 (ref), v1388 (copy), v1393 (copy)
        v1424 = l_ReplicatedStorage_0.Resources.shidou.legline:Clone();
        v1424.Weld.Part0 = v1388["Right Leg"];
        v1424.Parent = v1393;
    end);
    local v1425 = nil;
    local v1426 = nil;
    task.delay(5.317, function() --[[ Line: 7869 ]]
        -- upvalues: v1412 (copy), v1410 (ref), l_BlurEffect_18 (copy), l_ColorCorrectionEffect_3 (copy), l_TweenService_0 (ref), v1411 (ref), v1424 (ref), v1426 (ref), l_ReplicatedStorage_0 (ref), v1388 (copy), v1393 (copy), v1425 (ref), l_RunService_0 (ref), l_Ball_17 (copy)
        for _, v1428 in v1412 do
            v1428:Destroy();
        end;
        table.clear(v1412);
        v1410:Destroy();
        l_BlurEffect_18.Size = 25;
        l_ColorCorrectionEffect_3.Brightness = 1;
        l_TweenService_0:Create(l_BlurEffect_18, TweenInfo.new(0.266, Enum.EasingStyle.Linear), {
            Size = 0
        }):Play();
        l_TweenService_0:Create(l_ColorCorrectionEffect_3, TweenInfo.new(0.583, Enum.EasingStyle.Linear), {
            Brightness = 0
        }):Play();
        v1411:Destroy();
        v1424:Destroy();
        v1426 = l_ReplicatedStorage_0.Resources.shidou.kickline:Clone();
        v1426.Weld.Part0 = v1388["Right Leg"];
        v1426.Parent = v1393;
        v1425 = l_ReplicatedStorage_0.Resources.shidou.CAMERAPARTkick:Clone();
        v1425.Parent = v1393;
        for _, v1430 in ipairs(v1425:GetDescendants()) do
            if v1430:IsA("ParticleEmitter") or v1430:IsA("Beam") then
                v1430.Enabled = true;
            end;
        end;
        local v1431 = nil;
        v1431 = l_RunService_0.PreRender:connect(function() --[[ Line: 7910 ]]
            -- upvalues: v1425 (ref), v1431 (ref)
            if not v1425:IsDescendantOf(game) then
                v1431:Disconnect();
                return;
            else
                v1425.CFrame = workspace.CurrentCamera.CFrame * CFrame.new(0, -0.3, -0.5) * CFrame.Angles(0, 0, -0.7853981633974483);
                return;
            end;
        end);
        if not l_Ball_17:IsDescendantOf(game) then
            return;
        else
            local l_Attachment_0 = Instance.new("Attachment");
            l_Attachment_0.Parent = l_Ball_17;
            for _, v1434 in ipairs(v1393.DONTBESLOW.Attachment:GetChildren()) do
                if v1434:IsA("Beam") then
                    v1434.Attachment1 = l_Attachment_0;
                    v1434.Enabled = true;
                end;
            end;
            return;
        end;
    end);
    task.delay(5.417, function() --[[ Line: 7928 ]]
        -- upvalues: v1393 (copy)
        local l_DONTBESLOW_0 = v1393.DONTBESLOW;
        for _, v1437 in pairs(l_DONTBESLOW_0:GetDescendants()) do
            if v1437:IsA("ParticleEmitter") then
                v1437:Emit(v1437:GetAttribute("EmitCount"));
            end;
        end;
    end);
    local v1438 = nil;
    task.delay(6.5, function() --[[ Line: 7939 ]]
        -- upvalues: v1425 (ref), v1426 (ref), v1438 (ref), l_ReplicatedStorage_0 (ref), v1393 (copy), l_RunService_0 (ref)
        v1425:Destroy();
        if v1426 then
            v1426:Destroy();
        end;
        v1438 = l_ReplicatedStorage_0.Resources.shidou.CAMERAPART:Clone();
        v1438.Parent = v1393;
        for _, v1440 in ipairs(v1438:GetDescendants()) do
            if v1440:IsA("ParticleEmitter") or v1440:IsA("Beam") then
                v1440.Enabled = true;
            end;
        end;
        local v1441 = nil;
        v1441 = l_RunService_0.PreRender:connect(function() --[[ Line: 7956 ]]
            -- upvalues: v1438 (ref), v1441 (ref)
            if not v1438:IsDescendantOf(game) then
                v1441:Disconnect();
                return;
            else
                v1438.CFrame = workspace.CurrentCamera.CFrame * CFrame.new(0, 0, -1.5) * CFrame.Angles(0, 0, -1.3962634015954636);
                return;
            end;
        end);
        for _, v1443 in ipairs(v1393.DONTBESLOW.Attachment:GetChildren()) do
            if v1443:IsA("Beam") then
                v1443.Enabled = false;
            end;
        end;
    end);
    task.delay(6.7, function() --[[ Line: 7969 ]]
        -- upvalues: l_BlurEffect_18 (copy), l_ColorCorrectionEffect_3 (copy), l_TweenService_0 (ref), v1393 (copy)
        l_BlurEffect_18.Size = 25;
        l_ColorCorrectionEffect_3.Brightness = 1;
        l_TweenService_0:Create(l_BlurEffect_18, TweenInfo.new(0.217, Enum.EasingStyle.Linear), {
            Size = 0
        }):Play();
        l_TweenService_0:Create(l_ColorCorrectionEffect_3, TweenInfo.new(0.217, Enum.EasingStyle.Linear), {
            Brightness = 0
        }):Play();
        local l_STOP_0 = v1393.STOP;
        for _, v1446 in pairs(l_STOP_0:GetDescendants()) do
            if v1446:IsA("ParticleEmitter") then
                v1446:Emit(v1446:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(6.933, function() --[[ Line: 7986 ]]
        -- upvalues: v1438 (ref)
        v1438:Destroy();
    end);
    task.delay(7.133, function() --[[ Line: 7990 ]]
        -- upvalues: l_BlurEffect_18 (copy), l_ColorCorrectionEffect_3 (copy), l_TweenService_0 (ref), v1393 (copy)
        l_BlurEffect_18.Size = 25;
        l_ColorCorrectionEffect_3.Brightness = 1;
        l_TweenService_0:Create(l_BlurEffect_18, TweenInfo.new(0.217, Enum.EasingStyle.Linear), {
            Size = 0
        }):Play();
        l_TweenService_0:Create(l_ColorCorrectionEffect_3, TweenInfo.new(0.217, Enum.EasingStyle.Linear), {
            Brightness = 0
        }):Play();
        local l_STOP2_0 = v1393.STOP2;
        for _, v1449 in pairs(l_STOP2_0:GetDescendants()) do
            if v1449:IsA("ParticleEmitter") then
                v1449:Emit(v1449:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.wait(7.767);
    l_BlurEffect_18:Destroy();
    l_Atmosphere_8.Color = l_Color_0;
    l_Atmosphere_8.Density = l_Density_0;
    l_Lighting_0.Brightness = l_Brightness_0;
    l_ColorCorrectionEffect_3:Destroy();
    v1394:Destroy();
    v1396:Destroy();
    v12.sceneEnabled(false);
    v1393:Destroy();
    v12.ultFlash();
    v12.fov(false, 50);
    v12.fov(true, 70, 2, Enum.EasingStyle.Sine, Enum.EasingDirection.Out);
end;
v12.isagiawaken = function(v1450) --[[ Line: 8030 ]] --[[ Name: isagiawaken ]]
    -- upvalues: v12 (copy), v25 (copy), l_ReplicatedStorage_0 (copy), l_SoundService_0 (copy), v27 (copy), l_RunService_0 (copy)
    local v1451 = v1450.HumanoidRootPart or v1450.PrimaryPart;
    local _ = v1450.Torso;
    v12.sceneEnabled(true);
    v25:play(l_ReplicatedStorage_0.Resources.isagi.isagiawaken, l_SoundService_0);
    v12.cutscene(v1451, CFrame.new((Vector3.new(0, 0, 0, 0))), 4.5, l_ReplicatedStorage_0.Resources.isagi.FOV);
    task.delay(0.05, function() --[[ Line: 8041 ]]
        -- upvalues: v27 (ref), v1450 (copy)
        v27.Speak(v1450, {
            {
                Text = "I need you to shut up, genius", 
                Color = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(8, 0, 255)), 
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))
                }), 
                TextStrokeColor = Color3.new(0, 0, 0), 
                Bold = false, 
                Italic = false, 
                Shake = {
                    Enabled = true, 
                    Intensity = 1.5, 
                    Lifetime = 1.5
                }, 
                TypeSpeed = 0.03
            }
        }, 1.5);
    end);
    task.delay(3.55, function() --[[ Line: 8067 ]]
        -- upvalues: v27 (ref), v1450 (copy)
        v27.Speak(v1450, {
            {
                Text = "I'm about to get to the", 
                Color = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(8, 0, 255)), 
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))
                }), 
                TextStrokeColor = Color3.new(0, 0, 0), 
                Bold = false, 
                Italic = false, 
                Shake = {
                    Enabled = true, 
                    Intensity = 1.5, 
                    Lifetime = 1.5
                }, 
                TypeSpeed = 0.03
            }, 
            {
                Text = " good part.", 
                Color = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 0, 0)), 
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 0, 255))
                }), 
                TextStrokeColor = Color3.new(0, 0, 0), 
                Bold = true, 
                Italic = true, 
                Shake = {
                    Enabled = true, 
                    Intensity = 3, 
                    Lifetime = 1.5
                }, 
                TypeSpeed = 0.03
            }
        }, 1.5);
    end);
    local v1453 = l_ReplicatedStorage_0.Resources.isagi.A:Clone();
    v1453.CFrame = v1451.CFrame;
    v1453.Parent = v1450;
    local v1456 = l_RunService_0.PreRender:Connect(function(_) --[[ Line: 8118 ]]
        -- upvalues: v1453 (copy)
        local l_v1453_0 = v1453;
        l_v1453_0.CFrame = l_v1453_0.CFrame * CFrame.Angles(0, 0.005, 0);
    end);
    v12.bright(1, 1.5);
    local v1457 = l_ReplicatedStorage_0.Resources.isagi.RoomReal:Clone();
    v1457.CFrame = v1451.CFrame;
    v1457.Parent = v1450;
    task.wait(1.91);
    v1457:Destroy();
    local v1458 = l_ReplicatedStorage_0.Resources.isagi.RoomReal2:Clone();
    v1458.CFrame = v1451.CFrame;
    v1458.Parent = v1450;
    local v1459 = l_ReplicatedStorage_0.Resources.isagi.legwater:Clone();
    v1459.Parent = v1450;
    v1459.CFrame = CFrame.new(v1450["Left Leg"].Position);
    local v1460 = l_ReplicatedStorage_0.Resources.isagi.legwater:Clone();
    v1460.Parent = v1450;
    v1460.CFrame = CFrame.new(v1450["Right Leg"].Position);
    task.wait(2.5);
    v1458:Destroy();
    v1456:Disconnect();
    v1453:Destroy();
    v1459:Destroy();
    v1460:Destroy();
    v12.ultFlash(-1, 1);
    v12.fov(false, 40);
    v12.fov(true, 70, 2, Enum.EasingStyle.Sine, Enum.EasingDirection.Out);
    v12.sceneEnabled(false);
end;
v12.shidoushockwave = function(v1461) --[[ Line: 8192 ]] --[[ Name: shidoushockwave ]]
    -- upvalues: v12 (copy), l_ReplicatedStorage_0 (copy), l_TweenService_0 (copy)
    local v1462 = v1461.HumanoidRootPart or v1461.PrimaryPart;
    v12.bigshockwave(v1462);
    local v1463 = l_ReplicatedStorage_0.Resources.shidou.dhEffects:Clone();
    v1463.Parent = v1461;
    v1463:PivotTo(v1462.CFrame * CFrame.new(0, 0, -25));
    v1463.End.Mesh.Scale = Vector3.new(3.178999900817871, 0, 0, 0);
    l_TweenService_0:Create(v1463.End.Mesh, TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
        Scale = Vector3.new(3.178999900817871, 1.0720000267028809, 1.0369999408721924, 0)
    }):Play();
    l_TweenService_0:Create(v1463.End.Decal, TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
        Transparency = 1
    }):Play();
    l_TweenService_0:Create(v1463.End, TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
        CFrame = v1463.End.CFrame * CFrame.Angles(1.3962634015954636, 0, 0)
    }):Play();
    l_TweenService_0:Create(v1463.End4, TweenInfo.new(0.15, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
        Size = Vector3.new(80, 0, 0, 0)
    }):Play();
    l_TweenService_0:Create(v1463.End3, TweenInfo.new(0.35, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
        Size = Vector3.new(50, 0, 0, 0)
    }):Play();
    l_TweenService_0:Create(v1463.End2, TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
        Size = Vector3.new(80, 0, 0, 0)
    }):Play();
    l_TweenService_0:Create(v1463.Twirl, TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
        Size = Vector3.new(15.359000205993652, 50, 15.920000076293945, 0), 
        Transparency = 1, 
        CFrame = v1463.Twirl.CFrame * CFrame.Angles(0, -0.4174478504920037, 0)
    }):Play();
    task.delay(2, v1463.Destroy, v1463);
end;
v12.powerfulstriker = function(v1464) --[[ Line: 8215 ]] --[[ Name: powerfulstriker ]]
    -- upvalues: v12 (copy), l_ReplicatedStorage_0 (copy), l_TweenService_0 (copy)
    local v1465 = v1464.HumanoidRootPart or v1464.PrimaryPart;
    v12.bigshockwave(v1465);
    local v1466 = l_ReplicatedStorage_0.Resources.izayoi.SakuyaShot:Clone();
    v1466.Parent = v1464;
    v1466:PivotTo(v1465.CFrame);
    for _, v1468 in ipairs(v1466.impact:GetDescendants()) do
        if v1468:IsA("ParticleEmitter") then
            v1468:Emit(v1468:GetAttribute("EmitCount"));
        end;
    end;
    l_TweenService_0:Create(v1466.Haze.Mesh, TweenInfo.new(0.4, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
        Scale = Vector3.new(-0.20000000298023224, -0.18000000715255737, -0.20000000298023224, 0)
    }):Play();
    l_TweenService_0:Create(v1466.Haze.Decal, TweenInfo.new(0.4, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
        Transparency = 1
    }):Play();
    l_TweenService_0:Create(v1466.Haze, TweenInfo.new(0.4, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
        CFrame = v1466.Haze.CFrame * CFrame.new(-20, 0, 0) * CFrame.Angles(1.6277115137024316, 0, 0)
    }):Play();
    l_TweenService_0:Create(v1466.Start, TweenInfo.new(0.4, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
        Size = Vector3.new(99.60099792480469, 8.840999603271484, 9.27299976348877, 0)
    }):Play();
    l_TweenService_0:Create(v1466.Start.Decal, TweenInfo.new(0.4, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
        Transparency = 1
    }):Play();
    l_TweenService_0:Create(v1466.Start, TweenInfo.new(0.4, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
        CFrame = v1466.Start.CFrame * CFrame.new(-35, 0, 0) * CFrame.Angles(-1.7444565873683324, 0, 0)
    }):Play();
    l_TweenService_0:Create(v1466.Reda.Mesh, TweenInfo.new(0.4, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
        Scale = Vector3.new(3.0390000343322754, 0, 0, 0)
    }):Play();
    l_TweenService_0:Create(v1466.Reda.Decal, TweenInfo.new(0.4, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
        Transparency = 1
    }):Play();
    l_TweenService_0:Create(v1466.Reda, TweenInfo.new(0.4, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
        CFrame = v1466.Reda.CFrame * CFrame.new(-8, 0, 0) * CFrame.Angles(1.4541734261766355, 0, 0)
    }):Play();
    l_TweenService_0:Create(v1466.XD.Mesh, TweenInfo.new(0.4, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
        Scale = Vector3.new(3.178999900817871, 1.0720000267028809, 1.0369999408721924, 0)
    }):Play();
    l_TweenService_0:Create(v1466.XD.Decal, TweenInfo.new(0.4, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
        Transparency = 1
    }):Play();
    l_TweenService_0:Create(v1466.XD, TweenInfo.new(0.4, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
        CFrame = v1466.XD.CFrame * CFrame.new(-5, 0, 0) * CFrame.Angles(1.6277115137024316, 0, 0)
    }):Play();
    l_TweenService_0:Create(v1466.WaveMesh, TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
        Size = Vector3.new(275.0830078125, 54.48099899291992, 51.90399932861328, 0)
    }):Play();
    l_TweenService_0:Create(v1466.WaveMesh.Decal, TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
        Transparency = 1
    }):Play();
    l_TweenService_0:Create(v1466.WaveMesh, TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
        CFrame = v1466.WaveMesh.CFrame * CFrame.new(-15, 0, 0) * CFrame.Angles(-1.3636781044607293, 0, 0)
    }):Play();
    task.delay(2, v1466.Destroy, v1466);
end;
v12.formlessHit = function(v1469) --[[ Line: 8254 ]] --[[ Name: formlessHit ]]
    -- upvalues: v12 (copy), l_ReplicatedStorage_0 (copy), l_Lighting_0 (copy), l_TweenService_0 (copy)
    local v1470 = v1469.HumanoidRootPart or v1469.PrimaryPart;
    v12.Emit(v1470, l_ReplicatedStorage_0.Resources.shidou.normalkick2, 5, CFrame.new(0, 0, -4));
    v12.cameraShake(20, 2, 15);
    v12.fov(false, 120);
    v12.fov(true, 70, 0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out);
    local l_ColorCorrectionEffect_4 = Instance.new("ColorCorrectionEffect");
    l_ColorCorrectionEffect_4.Parent = l_Lighting_0;
    l_ColorCorrectionEffect_4.Contrast = 5;
    task.wait(0.05);
    l_ColorCorrectionEffect_4.Contrast = -1;
    task.wait(0.05);
    l_ColorCorrectionEffect_4.Contrast = -2;
    l_TweenService_0:Create(l_ColorCorrectionEffect_4, TweenInfo.new(0.2), {
        Contrast = 0
    }):Play();
    task.wait(0.5);
    l_ColorCorrectionEffect_4:Destroy();
end;
v12.formless = function(v1472) --[[ Line: 8278 ]] --[[ Name: formless ]]
    -- upvalues: v12 (copy), l_ReplicatedStorage_0 (copy), l_TweenService_0 (copy), l_Players_0 (copy), l_Lighting_0 (copy), l_RunService_0 (copy)
    local v1473 = v1472.HumanoidRootPart or v1472.PrimaryPart;
    v12.Emit(v1472.Head, l_ReplicatedStorage_0.Resources.shidou.eemit, 3);
    task.delay(0.2, function() --[[ Line: 8309 ]]
        -- upvalues: l_ReplicatedStorage_0 (ref), v1472 (copy), v1473 (copy), l_TweenService_0 (ref), l_Players_0 (ref), v12 (ref), l_Lighting_0 (ref), l_RunService_0 (ref)
        local v1474 = l_ReplicatedStorage_0.Resources.shidou.dhEffects:Clone();
        v1474.Parent = v1472;
        v1474:PivotTo(CFrame.new(v1473.Position, v1473.Position + v1473.CFrame.LookVector) * CFrame.new(0, 5, -10) * CFrame.Angles(0.5235987755982988, 0, 0));
        v1474.End.Mesh.Scale = Vector3.new(3.178999900817871, 0, 0, 0);
        l_TweenService_0:Create(v1474.End.Mesh, TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
            Scale = Vector3.new(3.178999900817871, 1.0720000267028809, 1.0369999408721924, 0)
        }):Play();
        l_TweenService_0:Create(v1474.End.Decal, TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
            Transparency = 1
        }):Play();
        l_TweenService_0:Create(v1474.End, TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
            CFrame = v1474.End.CFrame * CFrame.Angles(1.3962634015954636, 0, 0)
        }):Play();
        l_TweenService_0:Create(v1474.End4, TweenInfo.new(0.15, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
            Size = Vector3.new(80, 0, 0, 0)
        }):Play();
        l_TweenService_0:Create(v1474.End3, TweenInfo.new(0.35, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
            Size = Vector3.new(50, 0, 0, 0)
        }):Play();
        l_TweenService_0:Create(v1474.End2, TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
            Size = Vector3.new(80, 0, 0, 0)
        }):Play();
        l_TweenService_0:Create(v1474.Twirl, TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
            Size = Vector3.new(15.359000205993652, 50, 15.920000076293945, 0), 
            Transparency = 1, 
            CFrame = v1474.Twirl.CFrame * CFrame.Angles(0, -0.4174478504920037, 0)
        }):Play();
        task.delay(2, v1474.Destroy, v1474);
        task.spawn(function() --[[ Line: 8326 ]]
            -- upvalues: l_Players_0 (ref), v1473 (ref), v12 (ref), l_Lighting_0 (ref), l_TweenService_0 (ref)
            if l_Players_0.LocalPlayer:DistanceFromCharacter(v1473.Position) <= 50 then
                v12.cameraShake(15, 2, 4);
                v12.fov(false, 30);
                v12.fov(true, 70, 0.35, Enum.EasingStyle.Sine, Enum.EasingDirection.Out);
                local l_ColorCorrectionEffect_5 = Instance.new("ColorCorrectionEffect");
                l_ColorCorrectionEffect_5.Parent = l_Lighting_0;
                l_ColorCorrectionEffect_5.Contrast = 5;
                task.wait(0.05);
                l_TweenService_0:Create(l_ColorCorrectionEffect_5, TweenInfo.new(0.2), {
                    Contrast = 0
                }):Play();
                task.wait(0.2);
                l_ColorCorrectionEffect_5:Destroy();
            end;
        end);
        if l_Players_0.LocalPlayer ~= l_Players_0:GetPlayerFromCharacter(v1472) then
            return;
        else
            local v1476 = v12.bodyVelocity(v1473, 1, 0.15, nil, nil, true);
            v1476.MaxForce = Vector3.new(300000, 300000, 300000, 0);
            local v1477 = nil;
            v1477 = l_RunService_0.RenderStepped:Connect(function(_) --[[ Line: 8352 ]]
                -- upvalues: v1476 (copy), v1477 (ref), v1473 (ref)
                if not v1476 or not v1476:IsDescendantOf(game) then
                    v1477:Disconnect();
                    return;
                else
                    v1476.Velocity = v1473.CFrame.LookVector * 100 + v1473.CFrame.UpVector * 70;
                    return;
                end;
            end);
            task.delay(15, v1477.Disconnect, v1477);
            return;
        end;
    end);
end;
v12.formlessdragonmovement = function(v1479, v1480) --[[ Line: 8367 ]] --[[ Name: formlessdragonmovement ]]
    -- upvalues: l_Players_0 (copy), v12 (copy), l_ReplicatedStorage_0 (copy), l_RunService_0 (copy)
    local v1481 = v1479.HumanoidRootPart or v1479.PrimaryPart;
    if l_Players_0.LocalPlayer ~= l_Players_0:GetPlayerFromCharacter(v1479) then
        return;
    else
        v12.Emit(v1481, l_ReplicatedStorage_0.Resources.shidou["Jump Wind"], 3, CFrame.new((Vector3.new(-0, -3, -0, -0))));
        v12.cameraShake(10, 0.5, 3);
        local v1482 = v12.bodyVelocity(v1481, 1, 0.05, nil, nil, true);
        v1482.MaxForce = Vector3.new(300000, 300000, 300000, 0);
        local v1483 = ({
            Back = v1481.CFrame.LookVector * -50, 
            Front = v1481.CFrame.LookVector * 25, 
            Left = v1481.CFrame.RightVector * -50, 
            Right = v1481.CFrame.RightVector * 50
        })[v1480];
        local v1484 = nil;
        v1484 = l_RunService_0.RenderStepped:Connect(function(_) --[[ Line: 8388 ]]
            -- upvalues: v1482 (copy), v1484 (ref), v1483 (copy), v1481 (copy)
            if not v1482 or not v1482:IsDescendantOf(game) then
                v1484:Disconnect();
                return;
            else
                v1482.Velocity = v1483 + v1481.CFrame.UpVector * 75;
                return;
            end;
        end);
        task.delay(15, v1484.Disconnect, v1484);
        return;
    end;
end;
v12.nagivolleymovement = function(v1486) --[[ Line: 8403 ]] --[[ Name: nagivolleymovement ]]
    -- upvalues: l_Players_0 (copy), v12 (copy), l_RunService_0 (copy)
    local v1487 = v1486.HumanoidRootPart or v1486.PrimaryPart;
    if l_Players_0.LocalPlayer ~= l_Players_0:GetPlayerFromCharacter(v1486) then
        return;
    else
        local v1488 = v12.bodyVelocity(v1487, 1, 0.7, nil, nil, true);
        v1488.MaxForce = Vector3.new(300000, 300000, 300000, 0);
        local v1489 = nil;
        v1489 = l_RunService_0.RenderStepped:Connect(function(_) --[[ Line: 8414 ]]
            -- upvalues: v1488 (copy), v1489 (ref), v1487 (copy)
            if not v1488 or not v1488:IsDescendantOf(game) then
                v1489:Disconnect();
                return;
            else
                v1488.Velocity = v1487.CFrame.LookVector * 2 + v1487.CFrame.UpVector * 10;
                return;
            end;
        end);
        task.delay(15, v1489.Disconnect, v1489);
        return;
    end;
end;
v12.dragonheader = function(v1491) --[[ Line: 8430 ]] --[[ Name: dragonheader ]]
    -- upvalues: v12 (copy), l_ReplicatedStorage_0 (copy), v23 (copy), l_TweenService_0 (copy), l_RunService_0 (copy), l_Players_0 (copy), l_Lighting_0 (copy)
    local v1492 = v1491.HumanoidRootPart or v1491.PrimaryPart;
    v12.Emit(v1491.Head, l_ReplicatedStorage_0.Resources.shidou.eemit, 3);
    local v1493 = l_ReplicatedStorage_0.Resources.shidou.dhWing:Clone();
    v1493.Weld.Part0 = v1491.Torso;
    v1493.Parent = v1491;
    local v1494 = nil;
    task.delay(0.4333333333333333, function() --[[ Line: 8466 ]]
        -- upvalues: v1494 (ref), l_ReplicatedStorage_0 (ref), v1492 (copy), v1491 (copy), v23 (ref), l_TweenService_0 (ref), l_RunService_0 (ref), v1493 (copy), l_Players_0 (ref), v12 (ref), l_Lighting_0 (ref)
        v1494 = l_ReplicatedStorage_0.Resources.shidou.Gasterblaser:Clone();
        v1494.Root.Root.Part0 = v1492;
        v1494.Parent = v1491;
        local v1495 = v23(v1492.Position, v1492.CFrame.LookVector * 60, nil, {
            workspace.map
        });
        local v1496 = nil;
        v1496 = (if v1495 then CFrame.new(v1495.Position, v1495.Position + v1492.CFrame.LookVector) else v1492.CFrame + v1492.CFrame.LookVector * 60) + v1492.CFrame.UpVector * 22;
        local v1497 = l_ReplicatedStorage_0.Resources.shidou.dhEffects:Clone();
        v1497.Parent = v1491;
        v1497:PivotTo(CFrame.new(v1492.Position, v1492.Position + v1496.LookVector) * CFrame.new(0, 10, -50) * CFrame.Angles(0.3490658503988659, 0, 0));
        v1497.End.Mesh.Scale = Vector3.new(3.178999900817871, 0, 0, 0);
        l_TweenService_0:Create(v1497.End.Mesh, TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
            Scale = Vector3.new(3.178999900817871, 1.0720000267028809, 1.0369999408721924, 0)
        }):Play();
        l_TweenService_0:Create(v1497.End.Decal, TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
            Transparency = 1
        }):Play();
        l_TweenService_0:Create(v1497.End, TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
            CFrame = v1497.End.CFrame * CFrame.Angles(1.3962634015954636, 0, 0)
        }):Play();
        l_TweenService_0:Create(v1497.End4, TweenInfo.new(0.15, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
            Size = Vector3.new(80, 0, 0, 0)
        }):Play();
        l_TweenService_0:Create(v1497.End3, TweenInfo.new(0.35, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
            Size = Vector3.new(50, 0, 0, 0)
        }):Play();
        l_TweenService_0:Create(v1497.End2, TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
            Size = Vector3.new(80, 0, 0, 0)
        }):Play();
        l_TweenService_0:Create(v1497.Twirl, TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
            Size = Vector3.new(15.359000205993652, 50, 15.920000076293945, 0), 
            Transparency = 1, 
            CFrame = v1497.Twirl.CFrame * CFrame.Angles(0, -0.4174478504920037, 0)
        }):Play();
        task.delay(2, v1497.Destroy, v1497);
        local v1498 = nil;
        v1498 = l_RunService_0.PreRender:Connect(function(v1499) --[[ Line: 8519 ]]
            -- upvalues: v1492 (ref), v1496 (ref)
            v1492.CFrame = v1492.CFrame:Lerp(v1496, v1499 * 10);
        end);
        task.delay(0.25, function() --[[ Line: 8525 ]]
            -- upvalues: v1493 (ref), v1498 (ref)
            v1493:Destroy();
            v1498:Disconnect();
        end);
        for _, v1501 in ipairs(v1494:GetDescendants()) do
            if v1501:IsA("BasePart") then
                l_TweenService_0:Create(v1501, TweenInfo.new(0.5), {
                    Transparency = 1
                }):Play();
            end;
        end;
        if l_Players_0.LocalPlayer:DistanceFromCharacter(v1492.Position) <= 50 then
            v12.cameraShake(15, 2, 4);
            v12.fov(false, 120);
            v12.fov(true, 70, 1.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out);
            local l_ColorCorrectionEffect_6 = Instance.new("ColorCorrectionEffect");
            l_ColorCorrectionEffect_6.Parent = l_Lighting_0;
            l_ColorCorrectionEffect_6.Contrast = 5;
            task.wait(0.05);
            l_ColorCorrectionEffect_6.Contrast = -1;
            task.wait(0.05);
            l_ColorCorrectionEffect_6.Contrast = -2;
            l_TweenService_0:Create(l_ColorCorrectionEffect_6, TweenInfo.new(0.2), {
                Contrast = 0
            }):Play();
            task.wait(0.5);
            l_ColorCorrectionEffect_6:Destroy();
        end;
    end);
    task.wait(1.5833333730697632);
    if v1494 then
        v1494:Destroy();
    end;
end;
v12.shidouawk = function(v1503) --[[ Line: 8565 ]] --[[ Name: shidouawk ]]
    -- upvalues: l_Lighting_0 (copy), v12 (copy), l_ReplicatedStorage_0 (copy), l_PlayerGui_0 (copy), l_TweenService_0 (copy), v25 (copy), l_SoundService_0 (copy), l_Color_0 (copy), l_Density_0 (copy), v27 (copy)
    local v1504 = v1503.HumanoidRootPart or v1503.PrimaryPart;
    local _ = v1503.Torso;
    local l_Atmosphere_9 = l_Lighting_0.Atmosphere;
    v12.bright(-1, -0.15);
    v12.sceneEnabled(true);
    local v1507 = l_ReplicatedStorage_0.Resources.shidou.awkEffects:Clone();
    v1507:PivotTo(v1504.CFrame);
    v1507.Parent = v1503;
    local v1508 = l_ReplicatedStorage_0.Resources.darkscreen:Clone();
    v1508.Parent = l_PlayerGui_0;
    local v1509 = l_ReplicatedStorage_0.Resources.DepthOfField:Clone();
    v1509.Parent = l_Lighting_0;
    v1509.FarIntensity = 0;
    l_TweenService_0:Create(v1509, TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
        FarIntensity = 1
    }):Play();
    v25:play(l_ReplicatedStorage_0.Resources.shidou.awake_1, l_SoundService_0);
    v12.cutscene(v1504, CFrame.new((Vector3.new(0, 0, 0, 0))), 4.8, l_ReplicatedStorage_0.Resources.shidou.awkFOV);
    local l_ColorCorrectionEffect_7 = Instance.new("ColorCorrectionEffect");
    l_ColorCorrectionEffect_7.TintColor = Color3.fromRGB(255, 163, 247);
    l_ColorCorrectionEffect_7.Parent = l_Lighting_0;
    l_Atmosphere_9.Color = Color3.fromRGB(255, 0, 132);
    l_Atmosphere_9.Density = 0.7;
    task.delay(0.1666666666666667, function() --[[ Line: 8596 ]]
        -- upvalues: v1507 (copy)
        for _, v1512 in ipairs(v1507.slam:GetDescendants()) do
            if v1512:IsA("ParticleEmitter") then
                v1512:Emit(v1512:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(1.116666666666667, function() --[[ Line: 8603 ]]
        -- upvalues: v1507 (copy)
        for _, v1514 in ipairs(v1507.spin:GetDescendants()) do
            if v1514:IsA("ParticleEmitter") then
                v1514:Emit(v1514:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(1.683333333333333, function() --[[ Line: 8610 ]]
        -- upvalues: l_ColorCorrectionEffect_7 (copy), l_Atmosphere_9 (copy), l_Color_0 (ref), l_Density_0 (ref), v1507 (copy)
        l_ColorCorrectionEffect_7.TintColor = Color3.fromRGB(255, 255, 255);
        l_Atmosphere_9.Color = l_Color_0;
        l_Atmosphere_9.Density = l_Density_0;
        for _, v1516 in ipairs(v1507.line:GetDescendants()) do
            if v1516:IsA("ParticleEmitter") then
                v1516.Enabled = false;
            end;
        end;
    end);
    task.delay(2.85, function() --[[ Line: 8621 ]]
        -- upvalues: l_ColorCorrectionEffect_7 (copy), l_Atmosphere_9 (copy), v1507 (copy), v27 (ref), v1503 (copy)
        l_ColorCorrectionEffect_7.TintColor = Color3.fromRGB(255, 163, 247);
        l_Atmosphere_9.Color = Color3.fromRGB(255, 0, 132);
        l_Atmosphere_9.Density = 0.7;
        for _, v1518 in ipairs(v1507.line2:GetDescendants()) do
            if v1518:IsA("ParticleEmitter") then
                v1518.Enabled = true;
            end;
        end;
        for _, v1520 in ipairs(v1507.bgAura:GetDescendants()) do
            if v1520:IsA("ParticleEmitter") then
                v1520:Emit(v1520:GetAttribute("EmitCount"));
            end;
        end;
        task.wait(0.85);
        v27.Speak(v1503, {
            {
                Text = "My ball.", 
                Color = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)), 
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 35, 105))
                }), 
                TextStrokeColor = Color3.new(0, 0, 0), 
                Bold = true, 
                Italic = true, 
                Shake = {
                    Enabled = true, 
                    Intensity = 5, 
                    Lifetime = 1.5
                }, 
                TypeSpeed = 0.015
            }
        }, 1.5);
    end);
    task.wait(4.8);
    l_Atmosphere_9.Color = l_Color_0;
    l_Atmosphere_9.Density = l_Density_0;
    l_ColorCorrectionEffect_7:Destroy();
    v1508:Destroy();
    v1509:Destroy();
    v12.sceneEnabled(false);
    v1507:Destroy();
    v12.ultFlash();
    v12.fov(false, 15);
    v12.fov(true, 70, 2, Enum.EasingStyle.Sine, Enum.EasingDirection.Out);
end;
v12.NEWshidouawk = function(v1521) --[[ Line: 8686 ]] --[[ Name: NEWshidouawk ]]
    -- upvalues: l_Lighting_0 (copy), v12 (copy), l_ReplicatedStorage_0 (copy), l_PlayerGui_0 (copy), l_TweenService_0 (copy), v25 (copy), l_SoundService_0 (copy), v27 (copy), l_Density_0 (copy), l_Brightness_0 (copy), l_Color_0 (copy)
    local v1522 = v1521.HumanoidRootPart or v1521.PrimaryPart;
    local _ = v1521.Torso;
    local l_Atmosphere_10 = l_Lighting_0.Atmosphere;
    v12.bright(-1, -0.15);
    v12.sceneEnabled(true);
    l_Lighting_0.Brightness = 2;
    local v1525 = l_ReplicatedStorage_0.Resources.shidou.NEWshidouawkEff:Clone();
    v1525:PivotTo(v1522.CFrame);
    v1525.Parent = v1521;
    local v1526 = l_ReplicatedStorage_0.Resources.Blur:Clone();
    v1526.Size = 36;
    v1526.Parent = l_Lighting_0;
    for _, v1528 in ipairs(v1525:GetDescendants()) do
        if v1528:IsA("ParticleEmitter") then
            v1528.Enabled = false;
        end;
    end;
    for _, v1530 in ipairs(v1525.fall:GetDescendants()) do
        if v1530:IsA("ParticleEmitter") then
            v1530.Enabled = true;
        end;
    end;
    local v1531 = l_ReplicatedStorage_0.Resources.glowscreen:Clone();
    v1531.Parent = l_PlayerGui_0;
    v1531.ImageLabel2.ImageColor3 = Color3.fromRGB(0, 0, 0);
    v1531.ImageLabel2.ImageTransparency = 1;
    local v1532 = l_ReplicatedStorage_0.Resources.DepthOfField:Clone();
    v1532.Parent = l_Lighting_0;
    v1532.FarIntensity = 0;
    l_TweenService_0:Create(v1532, TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
        FarIntensity = 1
    }):Play();
    v25:play(l_ReplicatedStorage_0.Resources.shidou.NEWshiawk, l_SoundService_0);
    v12.cutscene(v1522, CFrame.new((Vector3.new(0, 0, 0, 0))), 8.767, l_ReplicatedStorage_0.Resources.shidou.NEWShidouUltFOV);
    local l_ColorCorrectionEffect_8 = Instance.new("ColorCorrectionEffect");
    l_ColorCorrectionEffect_8.TintColor = Color3.fromRGB(255, 255, 255);
    l_ColorCorrectionEffect_8.Parent = l_Lighting_0;
    l_ColorCorrectionEffect_8.Brightness = 1;
    l_ColorCorrectionEffect_8.Saturation = 0.05;
    l_TweenService_0:Create(l_ColorCorrectionEffect_8, TweenInfo.new(1.133, Enum.EasingStyle.Linear), {
        Brightness = 0, 
        Contrast = 0.1, 
        Saturation = -0.7, 
        TintColor = Color3.fromRGB(205, 255, 247)
    }):Play();
    task.delay(0.55, function() --[[ Line: 8740 ]]
        -- upvalues: v27 (ref), v1521 (copy)
        v27.Speak(v1521, {
            {
                Text = "I feel like It's about to explode!", 
                Color = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)), 
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 35, 105))
                }), 
                TextStrokeColor = Color3.new(0, 0, 0), 
                Bold = true, 
                Italic = true, 
                Shake = {
                    Enabled = true, 
                    Intensity = 2, 
                    Lifetime = 1.5
                }, 
                TypeSpeed = 0.015
            }
        }, 3);
    end);
    task.delay(2.683, function() --[[ Line: 8766 ]]
        -- upvalues: v27 (ref), v1521 (copy)
        v27.Speak(v1521, {
            {
                Text = "Heheh.", 
                Color = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)), 
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 35, 105))
                }), 
                TextStrokeColor = Color3.new(0, 0, 0), 
                Bold = true, 
                Italic = true, 
                Shake = {
                    Enabled = true, 
                    Intensity = 2, 
                    Lifetime = 1.5
                }, 
                TypeSpeed = 0.015
            }
        }, 1);
    end);
    task.delay(7.55, function() --[[ Line: 8792 ]]
        -- upvalues: v27 (ref), v1521 (copy)
        v27.Speak(v1521, {
            {
                Text = "My Ball.", 
                Color = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)), 
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 35, 105))
                }), 
                TextStrokeColor = Color3.new(0, 0, 0), 
                Bold = true, 
                Italic = true, 
                Shake = {
                    Enabled = true, 
                    Intensity = 3, 
                    Lifetime = 1.5
                }, 
                TypeSpeed = 0.015
            }
        }, 1.5);
    end);
    task.delay(0, function() --[[ Line: 8818 ]]
        -- upvalues: l_TweenService_0 (ref), l_Atmosphere_10 (copy), v1526 (copy)
        l_TweenService_0:Create(l_Atmosphere_10, TweenInfo.new(1.283, Enum.EasingStyle.Linear), {
            Color = Color3.fromRGB(255, 91, 91)
        }):Play();
        local v1534 = l_TweenService_0:Create(v1526, TweenInfo.new(2.617, Enum.EasingStyle.Linear), {
            Size = 0
        });
        v1534:Play();
        v1534.Completed:Wait();
        v1526.Size = 12;
        local v1535 = l_TweenService_0:Create(v1526, TweenInfo.new(1.717, Enum.EasingStyle.Linear), {
            Size = 1
        });
        v1535:Play();
        v1535.Completed:Wait();
        local v1536 = l_TweenService_0:Create(v1526, TweenInfo.new(0.033, Enum.EasingStyle.Linear), {
            Size = 22
        });
        v1536:Play();
        v1536.Completed:Wait();
        l_TweenService_0:Create(v1526, TweenInfo.new(0.6, Enum.EasingStyle.Linear), {
            Size = 0
        }):Play();
    end);
    task.delay(4.35, function() --[[ Line: 8837 ]]
        -- upvalues: l_TweenService_0 (ref), l_Atmosphere_10 (copy)
        l_TweenService_0:Create(l_Atmosphere_10, TweenInfo.new(0.033, Enum.EasingStyle.Linear), {
            Density = 1
        }):Play();
    end);
    task.delay(5.833, function() --[[ Line: 8841 ]]
        -- upvalues: l_Atmosphere_10 (copy), l_Density_0 (ref), l_Lighting_0 (ref), l_Brightness_0 (ref)
        l_Atmosphere_10.Color = Color3.fromRGB(255, 255, 255);
        l_Atmosphere_10.Density = l_Density_0;
        l_Lighting_0.Brightness = l_Brightness_0;
    end);
    task.delay(2.317, function() --[[ Line: 8849 ]]
        -- upvalues: v1525 (copy), l_ColorCorrectionEffect_8 (copy), l_TweenService_0 (ref)
        v1525.fall:Destroy();
        l_ColorCorrectionEffect_8.TintColor = Color3.fromRGB(205, 255, 247);
        l_ColorCorrectionEffect_8.Brightness = -0.2;
        l_ColorCorrectionEffect_8.Saturation = 0.05;
        local v1537 = l_TweenService_0:Create(l_ColorCorrectionEffect_8, TweenInfo.new(0.283, Enum.EasingStyle.Linear), {
            Brightness = -0.1, 
            Contrast = 0.1, 
            Saturation = -0.7, 
            TintColor = Color3.fromRGB(205, 255, 247)
        });
        v1537:Play();
        v1537.Completed:Wait();
        l_ColorCorrectionEffect_8.TintColor = Color3.fromRGB(255, 218, 245);
        l_ColorCorrectionEffect_8.Brightness = 0.3;
        l_ColorCorrectionEffect_8.Saturation = -0.3;
        local v1538 = l_TweenService_0:Create(l_ColorCorrectionEffect_8, TweenInfo.new(0.3, Enum.EasingStyle.Linear), {
            Brightness = 0, 
            Contrast = 0.1, 
            Saturation = -0.7, 
            TintColor = Color3.fromRGB(236, 231, 246)
        });
        v1538:Play();
        v1538.Completed:Wait();
        local v1539 = l_TweenService_0:Create(l_ColorCorrectionEffect_8, TweenInfo.new(0.666, Enum.EasingStyle.Linear), {
            Brightness = 0, 
            Contrast = 0.1, 
            Saturation = -0.7, 
            TintColor = Color3.fromRGB(205, 255, 247)
        });
        v1539:Play();
        v1539.Completed:Wait();
        local v1540 = l_TweenService_0:Create(l_ColorCorrectionEffect_8, TweenInfo.new(0.734, Enum.EasingStyle.Linear), {
            Brightness = -0.1, 
            Contrast = 0.1, 
            Saturation = -0.7, 
            TintColor = Color3.fromRGB(205, 255, 247)
        });
        v1540:Play();
        v1540.Completed:Wait();
        l_ColorCorrectionEffect_8.Brightness = 0.6;
        l_TweenService_0:Create(l_ColorCorrectionEffect_8, TweenInfo.new(0.734, Enum.EasingStyle.Linear), {
            Brightness = 0, 
            Contrast = 0.1, 
            Saturation = 0.05, 
            TintColor = Color3.fromRGB(255, 255, 255)
        }):Play();
    end);
    task.delay(2.5, function() --[[ Line: 8880 ]]
        -- upvalues: l_TweenService_0 (ref), v1531 (copy)
        local v1541 = l_TweenService_0:Create(v1531.ImageLabel2, TweenInfo.new(1.85, Enum.EasingStyle.Linear), {
            ImageTransparency = 0
        });
        v1541:Play();
        v1541.Completed:Wait();
        v1531.ImageLabel2.ImageTransparency = 1;
    end);
    task.delay(2.617, function() --[[ Line: 8888 ]]
        -- upvalues: v1525 (copy)
        for _, v1543 in ipairs(v1525.hu:GetDescendants()) do
            if v1543:IsA("ParticleEmitter") then
                v1543:Emit(v1543:GetAttribute("EmitCount"));
            end;
        end;
        for _, v1545 in ipairs(v1525.eye:GetDescendants()) do
            if v1545:IsA("ParticleEmitter") then
                v1545:Emit(v1545:GetAttribute("EmitCount"));
            end;
        end;
        for _, v1547 in ipairs(v1525.to:GetDescendants()) do
            if v1547:IsA("ParticleEmitter") then
                v1547:Emit(v1547:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(4.35, function() --[[ Line: 8903 ]]
        -- upvalues: v1525 (copy)
        for _, v1549 in ipairs(v1525.Step:GetDescendants()) do
            if v1549:IsA("ParticleEmitter") then
                v1549:Emit(v1549:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.wait(8.767);
    l_Atmosphere_10.Color = l_Color_0;
    l_Atmosphere_10.Density = l_Density_0;
    l_ColorCorrectionEffect_8:Destroy();
    v1531:Destroy();
    v1532:Destroy();
    v1526:Destroy();
    v12.sceneEnabled(false);
    v1525:Destroy();
    v12.ultFlash();
    v12.fov(false, 15);
    v12.fov(true, 70, 2, Enum.EasingStyle.Sine, Enum.EasingDirection.Out);
end;
v12.amnagi = function(v1550) --[[ Line: 8977 ]] --[[ Name: amnagi ]]
    -- upvalues: l_Lighting_0 (copy), l_ReplicatedStorage_0 (copy), v12 (copy), v25 (copy), l_SoundService_0 (copy), v27 (copy), l_TweenService_0 (copy)
    local v1551 = v1550.HumanoidRootPart or v1550.PrimaryPart;
    local _ = v1550.Torso;
    local _ = l_Lighting_0.Atmosphere;
    local l_Ball_18 = v1550:FindFirstChild("Ball");
    local v1555 = l_ReplicatedStorage_0.Resources.DepthOfField:Clone();
    v1555.Parent = l_Lighting_0;
    local l_ColorCorrectionEffect_9 = Instance.new("ColorCorrectionEffect");
    l_ColorCorrectionEffect_9.Parent = l_Lighting_0;
    v12.bright(-1, 0.15);
    v12.sceneEnabled(true);
    local v1557 = l_ReplicatedStorage_0.Resources.nagi.allEffnagiNEW:Clone();
    v1557:PivotTo(v1551.CFrame);
    v1557.Parent = v1550;
    for _, v1559 in ipairs(v1557:GetDescendants()) do
        if v1559:IsA("ParticleEmitter") or v1559:IsA("Beam") then
            v1559.Enabled = false;
        end;
    end;
    v25:play(l_ReplicatedStorage_0.Resources.nagi.nagiyahoo, l_SoundService_0);
    v12.cutscene(v1551, CFrame.new((Vector3.new(0, 0, 0, 0))), 14.816666603088379, l_ReplicatedStorage_0.Resources.nagi.newFOV);
    task.delay(0.1, function() --[[ Line: 9010 ]]
        -- upvalues: v27 (ref), v1550 (copy)
        v27.Speak(v1550, {
            {
                Text = "Start the shooting motion, then...", 
                Color = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(201, 206, 255)), 
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))
                }), 
                TextStrokeColor = Color3.new(0, 0, 0), 
                Bold = false, 
                Italic = false, 
                Shake = {
                    Enabled = false, 
                    Intensity = 1.3, 
                    Lifetime = 4
                }, 
                TypeSpeed = 0.03
            }
        }, 1.9);
    end);
    task.delay(1.9, function() --[[ Line: 9036 ]]
        -- upvalues: v27 (ref), v1550 (copy)
        v27.Speak(v1550, {
            {
                Text = "Instantly kill it.", 
                Color = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(201, 206, 255)), 
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 0, 0))
                }), 
                TextStrokeColor = Color3.new(0, 0, 0), 
                Bold = true, 
                Italic = true, 
                Shake = {
                    Enabled = true, 
                    Intensity = 2, 
                    Lifetime = 2
                }, 
                TypeSpeed = 0.01
            }
        }, 2.867);
    end);
    task.delay(8.2, function() --[[ Line: 9062 ]]
        -- upvalues: v27 (ref), v1550 (copy)
        v27.Speak(v1550, {
            {
                Text = "Nice to meet you, japan", 
                Color = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(201, 206, 255)), 
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))
                }), 
                TextStrokeColor = Color3.new(0, 0, 0), 
                Bold = false, 
                Italic = false, 
                Shake = {
                    Enabled = false, 
                    Intensity = 1.3, 
                    Lifetime = 4
                }, 
                TypeSpeed = 0.03
            }
        }, 1.9);
    end);
    task.delay(11.133, function() --[[ Line: 9088 ]]
        -- upvalues: v27 (ref), v1550 (copy)
        v27.Speak(v1550, {
            {
                Text = "I am...", 
                Color = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(201, 206, 255)), 
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))
                }), 
                TextStrokeColor = Color3.new(0, 0, 0), 
                Bold = false, 
                Italic = false, 
                Shake = {
                    Enabled = false, 
                    Intensity = 1.3, 
                    Lifetime = 4
                }, 
                TypeSpeed = 0.03
            }
        }, 1.9);
    end);
    task.delay(14.317, function() --[[ Line: 9114 ]]
        -- upvalues: v27 (ref), v1550 (copy)
        v27.Speak(v1550, {
            {
                Text = ("%*!"):format(v1550.Name), 
                Color = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 0, 0)), 
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(184, 199, 255))
                }), 
                TextStrokeColor = Color3.new(0, 0, 0), 
                Bold = true, 
                Italic = true, 
                Shake = {
                    Enabled = true, 
                    Intensity = 3, 
                    Lifetime = 1
                }, 
                TypeSpeed = 0.01
            }
        }, 1);
    end);
    task.delay(3.8, function() --[[ Line: 9142 ]]
        -- upvalues: l_ColorCorrectionEffect_9 (copy)
        l_ColorCorrectionEffect_9.TintColor = Color3.fromRGB(197, 215, 255);
        l_ColorCorrectionEffect_9.Contrast = 0.5;
        l_ColorCorrectionEffect_9.Saturation = -0.4;
    end);
    task.delay(3.083, function() --[[ Line: 9149 ]]
        -- upvalues: v1557 (copy)
        for _, v1561 in ipairs(v1557.glass:GetDescendants()) do
            if v1561:IsA("ParticleEmitter") then
                v1561:Emit(v1561:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(3.283, function() --[[ Line: 9157 ]]
        -- upvalues: v1557 (copy)
        for _, v1563 in ipairs(v1557.hitground:GetDescendants()) do
            if v1563:IsA("ParticleEmitter") then
                v1563:Emit(v1563:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(3.283, function() --[[ Line: 9165 ]]
        -- upvalues: v1557 (copy)
        for _, v1565 in ipairs(v1557.hitground:GetDescendants()) do
            if v1565:IsA("ParticleEmitter") then
                v1565:Emit(v1565:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(4.45, function() --[[ Line: 9173 ]]
        -- upvalues: v1557 (copy)
        for _, v1567 in ipairs(v1557.lin:GetDescendants()) do
            if v1567:IsA("ParticleEmitter") then
                v1567.Enabled = true;
            end;
        end;
    end);
    task.delay(4.717, function() --[[ Line: 9181 ]]
        -- upvalues: v1557 (copy)
        for _, v1569 in ipairs(v1557.lin:GetDescendants()) do
            if v1569:IsA("ParticleEmitter") then
                v1569.Enabled = false;
            end;
        end;
    end);
    task.delay(4.783, function() --[[ Line: 9189 ]]
        -- upvalues: v1557 (copy)
        for _, v1571 in v1557.line2:GetDescendants() do
            if v1571:IsA("ParticleEmitter") then
                v1571:Emit(v1571:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(8.167, function() --[[ Line: 9197 ]]
        -- upvalues: v1557 (copy)
        for _, v1573 in v1557.bg:GetDescendants() do
            if v1573:IsA("ParticleEmitter") or v1573:IsA("Beam") then
                v1573.Enabled = true;
            end;
        end;
        for _, v1575 in v1557.glowingspechand:GetDescendants() do
            if v1575:IsA("ParticleEmitter") then
                v1575.Enabled = true;
            end;
        end;
    end);
    task.delay(11.633, function() --[[ Line: 9211 ]]
        -- upvalues: v1557 (copy), l_ColorCorrectionEffect_9 (copy)
        v1557.bg:Destroy();
        v1557.glowingspechand:Destroy();
        v1557.line2:Destroy();
        l_ColorCorrectionEffect_9.Brightness = 0.055;
    end);
    task.delay(12.65, function() --[[ Line: 9219 ]]
        -- upvalues: v1557 (copy), l_TweenService_0 (ref)
        for _, v1577 in ipairs(v1557.hit3:GetDescendants()) do
            if v1577:IsA("ParticleEmitter") then
                v1577:Emit(v1577:GetAttribute("EmitCount"));
            end;
        end;
        for _, v1579 in ipairs(v1557.beam:GetDescendants()) do
            if v1579:IsA("Beam") then
                v1579.TextureSpeed = 0;
                v1579.Enabled = true;
                l_TweenService_0:Create(v1579, TweenInfo.new(0.35, Enum.EasingStyle.Quart, Enum.EasingDirection.In), {
                    TextureSpeed = 10
                }):Play();
            end;
        end;
    end);
    local l_Attachment_1 = Instance.new("Attachment");
    l_Attachment_1.Parent = l_Ball_18;
    task.delay(13.083, function() --[[ Line: 9241 ]]
        -- upvalues: v1555 (copy), l_ColorCorrectionEffect_9 (copy), v1557 (copy), l_Ball_18 (copy), l_Attachment_1 (copy)
        v1555:Destroy();
        l_ColorCorrectionEffect_9:Destroy();
        for _, v1582 in ipairs(v1557.beam:GetDescendants()) do
            if v1582:IsA("Beam") then
                v1582.Enabled = false;
            end;
        end;
        for _, v1584 in ipairs(v1557.be2:GetDescendants()) do
            if v1584:IsA("ParticleEmitter") then
                v1584:Emit(v1584:GetAttribute("EmitCount"));
            end;
        end;
        for _, v1586 in ipairs(v1557.be2:GetDescendants()) do
            if v1586:IsA("Beam") then
                v1586.Enabled = true;
            end;
        end;
        if l_Ball_18 then
            for _, v1588 in ipairs(v1557.be2:GetDescendants()) do
                if v1588:IsA("Beam") then
                    v1588.Attachment1 = l_Attachment_1;
                end;
            end;
        end;
    end);
    task.wait(14.816666603088379);
    l_Attachment_1:Destroy();
    v1557:Destroy();
    if l_ColorCorrectionEffect_9 then
        l_ColorCorrectionEffect_9:Destroy();
    end;
    v12.sceneEnabled(false);
    v12.ultFlash();
    v12.fov(false, 50);
    v12.fov(true, 70, 2, Enum.EasingStyle.Sine, Enum.EasingDirection.Out);
end;
v12.centerofgravity = function(v1589) --[[ Line: 9289 ]] --[[ Name: centerofgravity ]]
    -- upvalues: l_Lighting_0 (copy), l_ReplicatedStorage_0 (copy), v12 (copy), v25 (copy), l_SoundService_0 (copy), v27 (copy), l_RunService_0 (copy), l_CurrentCamera_0 (copy), l_TweenService_0 (copy)
    local v1590 = v1589.HumanoidRootPart or v1589.PrimaryPart;
    local _ = v1589.Torso;
    local _ = l_Lighting_0.Atmosphere;
    local _ = v1589:FindFirstChild("Ball");
    local v1594 = l_ReplicatedStorage_0.Resources.DepthOfField:Clone();
    v1594.Parent = l_Lighting_0;
    local l_BloomEffect_1 = Instance.new("BloomEffect");
    l_BloomEffect_1.Intensity = 0.4;
    l_BloomEffect_1.Size = 30;
    l_BloomEffect_1.Threshold = 2.5;
    l_BloomEffect_1.Parent = l_Lighting_0;
    local l_ColorCorrectionEffect_10 = Instance.new("ColorCorrectionEffect");
    l_ColorCorrectionEffect_10.Parent = l_Lighting_0;
    v12.bright(-1, 0.6);
    v12.sceneEnabled(true);
    local v1597 = l_ReplicatedStorage_0.Resources.rin.cogEff:Clone();
    v1597:PivotTo(v1590.CFrame);
    v1597.Parent = v1589;
    local v1598 = l_ReplicatedStorage_0.Resources.rin.eyebeam:Clone();
    v1598.Weld.Part0 = v1589.Head;
    v1598.Parent = v1597;
    v1598["1"]["1"].Attachment1 = v1597.Part["2"];
    v1598["3"]["2"].Attachment1 = v1597.Part["4"];
    v25:play(l_ReplicatedStorage_0.Resources.rin.ringravity, l_SoundService_0);
    v12.cutsceneBlender(v1590, l_ReplicatedStorage_0.Resources.rin.cogC, l_ReplicatedStorage_0.Resources.rin.cogFOV);
    task.delay(2.1, function() --[[ Line: 9331 ]]
        -- upvalues: v27 (ref), v1589 (copy)
        v27.Speak(v1589, {
            {
                Text = "Know your place.", 
                Color = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(139, 0, 2)), 
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))
                }), 
                TextStrokeColor = Color3.new(0, 0, 0), 
                Bold = false, 
                Italic = false, 
                Shake = {
                    Enabled = true, 
                    Intensity = 2, 
                    Lifetime = 1.5
                }, 
                TypeSpeed = 0.03
            }
        }, 2.5);
    end);
    task.delay(3.817, function() --[[ Line: 9357 ]]
        -- upvalues: v27 (ref), v1589 (copy)
        v27.Speak(v1589, {
            {
                Text = "Turn around.", 
                Color = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(139, 0, 2)), 
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))
                }), 
                TextStrokeColor = Color3.new(0, 0, 0), 
                Bold = false, 
                Italic = false, 
                Shake = {
                    Enabled = true, 
                    Intensity = 2, 
                    Lifetime = 1.5
                }, 
                TypeSpeed = 0.03
            }
        }, 4);
    end);
    task.delay(6.217, function() --[[ Line: 9383 ]]
        -- upvalues: v27 (ref), v1589 (copy)
        v27.Speak(v1589, {
            {
                Text = "The center of gravity...", 
                Color = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(139, 0, 2)), 
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))
                }), 
                TextStrokeColor = Color3.new(0, 0, 0), 
                Bold = false, 
                Italic = false, 
                Shake = {
                    Enabled = true, 
                    Intensity = 2, 
                    Lifetime = 1.5
                }, 
                TypeSpeed = 0.03
            }, 
            {
                Text = " full burst!", 
                Color = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 0, 0)), 
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 0, 4))
                }), 
                TextStrokeColor = Color3.new(0, 0, 0), 
                Bold = true, 
                Italic = true, 
                Shake = {
                    Enabled = true, 
                    Intensity = 4, 
                    Lifetime = 1.5
                }, 
                TypeSpeed = 0.01
            }
        }, 2);
    end);
    local v1599 = l_ReplicatedStorage_0.Resources.rin.CamPart:Clone();
    v1599.Parent = v1597;
    local v1600 = nil;
    v1600 = l_RunService_0.PreRender:connect(function() --[[ Line: 9437 ]]
        -- upvalues: v1599 (copy), v1600 (ref), l_CurrentCamera_0 (ref)
        if not v1599:IsDescendantOf(game) then
            v1600:Disconnect();
        end;
        v1599.CFrame = l_CurrentCamera_0.CFrame;
    end);
    local v1601 = nil;
    task.delay(0.867, function() --[[ Line: 9445 ]]
        -- upvalues: v1601 (ref), l_ReplicatedStorage_0 (ref), v1597 (copy), l_RunService_0 (ref), l_CurrentCamera_0 (ref), l_TweenService_0 (ref), l_ColorCorrectionEffect_10 (copy)
        v1601 = l_ReplicatedStorage_0.Resources.rin.CAMERAPART:Clone();
        v1601.Parent = v1597;
        local v1602 = nil;
        v1602 = l_RunService_0.PreRender:connect(function() --[[ Line: 9450 ]]
            -- upvalues: v1601 (ref), v1602 (ref), l_CurrentCamera_0 (ref)
            if not v1601:IsDescendantOf(game) then
                v1602:Disconnect();
            end;
            v1601.CFrame = l_CurrentCamera_0.CFrame * CFrame.new(0, 0, -1.5) * CFrame.Angles(0, 0, -1.0471975511965976);
        end);
        for _, v1604 in ipairs(v1597.grasskick1:GetDescendants()) do
            if v1604:IsA("ParticleEmitter") then
                v1604:Emit(v1604:GetAttribute("EmitCount"));
            end;
        end;
        l_TweenService_0:Create(l_ColorCorrectionEffect_10, TweenInfo.new(0.3, Enum.EasingStyle.Linear), {
            Brightness = -0.35, 
            Contrast = 1.5, 
            Saturation = -0.7, 
            TintColor = Color3.fromRGB(255, 124, 126)
        }):Play();
    end);
    task.delay(1.55, function() --[[ Line: 9467 ]]
        -- upvalues: v1601 (ref), v1599 (copy), l_ColorCorrectionEffect_10 (copy), l_TweenService_0 (ref)
        v1601:Destroy();
        for _, v1606 in ipairs(v1599:GetDescendants()) do
            if v1606:IsA("Beam") then
                v1606.Enabled = true;
            end;
        end;
        l_ColorCorrectionEffect_10.Saturation = 0;
        l_ColorCorrectionEffect_10.Contrast = 0;
        l_ColorCorrectionEffect_10.Brightness = 0;
        l_ColorCorrectionEffect_10.TintColor = Color3.fromRGB(255, 255, 255);
        l_TweenService_0:Create(l_ColorCorrectionEffect_10, TweenInfo.new(2.467, Enum.EasingStyle.Linear), {
            Brightness = -0.3, 
            Contrast = 0.3, 
            Saturation = 1
        }):Play();
    end);
    task.delay(3.133, function() --[[ Line: 9484 ]]
        -- upvalues: v1598 (copy), l_TweenService_0 (ref)
        for _, v1608 in ipairs(v1598:GetDescendants()) do
            if v1608:IsA("Beam") then
                v1608.Width0 = 0;
                v1608.Width1 = 0;
                l_TweenService_0:Create(v1608, TweenInfo.new(1.434, Enum.EasingStyle.Linear), {
                    Width0 = 0.01, 
                    Width1 = 0
                }):Play();
            end;
        end;
    end);
    task.delay(5.067, function() --[[ Line: 9495 ]]
        -- upvalues: v1598 (copy), v1599 (copy), v1597 (copy), l_ColorCorrectionEffect_10 (copy), l_TweenService_0 (ref), l_BloomEffect_1 (copy)
        v1598:Destroy();
        for _, v1610 in ipairs(v1599:GetDescendants()) do
            if v1610:IsA("Beam") then
                v1610.Enabled = false;
            end;
        end;
        for _, v1612 in ipairs(v1599:GetDescendants()) do
            if v1612:IsA("ParticleEmitter") then
                v1612.Enabled = true;
            end;
        end;
        for _, v1614 in ipairs(v1597.stinkyred:GetDescendants()) do
            if v1614:IsA("ParticleEmitter") then
                v1614:Emit(v1614:GetAttribute("EmitCount"));
            end;
        end;
        for _, v1616 in ipairs(v1597.grasskick2:GetDescendants()) do
            if v1616:IsA("ParticleEmitter") then
                v1616:Emit(v1616:GetAttribute("EmitCount"));
            end;
        end;
        l_ColorCorrectionEffect_10.Saturation = 0;
        l_ColorCorrectionEffect_10.Contrast = 0;
        l_ColorCorrectionEffect_10.Brightness = 1;
        l_ColorCorrectionEffect_10.TintColor = Color3.fromRGB(255, 255, 255);
        l_TweenService_0:Create(l_ColorCorrectionEffect_10, TweenInfo.new(2, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {
            Brightness = 0, 
            Contrast = 0, 
            Saturation = 0
        }):Play();
        l_BloomEffect_1.Threshold = 0;
        l_TweenService_0:Create(l_BloomEffect_1, TweenInfo.new(2, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {
            Threshold = 0.85
        }):Play();
    end);
    task.delay(8.55, function() --[[ Line: 9533 ]]
        -- upvalues: l_BloomEffect_1 (copy), v1599 (copy), l_ColorCorrectionEffect_10 (copy)
        l_BloomEffect_1:Destroy();
        for _, v1618 in ipairs(v1599:GetDescendants()) do
            if v1618:IsA("ParticleEmitter") then
                v1618.Enabled = false;
            end;
        end;
        l_ColorCorrectionEffect_10.TintColor = Color3.fromRGB(255, 0, 0);
    end);
    task.wait(9.567);
    v1594:Destroy();
    l_BloomEffect_1:Destroy();
    v1597:Destroy();
    if l_ColorCorrectionEffect_10 then
        l_ColorCorrectionEffect_10:Destroy();
    end;
    v12.sceneEnabled(false);
    v12.ultFlash();
    v12.fov(false, 50);
    v12.fov(true, 70, 2, Enum.EasingStyle.Sine, Enum.EasingDirection.Out);
end;
v12.roulettevolley = function(v1619) --[[ Line: 9562 ]] --[[ Name: roulettevolley ]]
    -- upvalues: l_Lighting_0 (copy), l_ReplicatedStorage_0 (copy), v12 (copy), v25 (copy), l_SoundService_0 (copy), v27 (copy)
    local v1620 = v1619.HumanoidRootPart or v1619.PrimaryPart;
    local _ = v1619.Torso;
    local _ = l_Lighting_0.Atmosphere;
    local l_Ball_20 = v1619:FindFirstChild("Ball");
    local v1624 = l_ReplicatedStorage_0.Resources.DepthOfField:Clone();
    v1624.Parent = l_Lighting_0;
    local l_ColorCorrectionEffect_11 = Instance.new("ColorCorrectionEffect");
    l_ColorCorrectionEffect_11.Parent = l_Lighting_0;
    v12.bright(-1, 0.15);
    v12.sceneEnabled(true);
    local v1626 = l_ReplicatedStorage_0.Resources.nagi.VolleyRoulette:Clone();
    v1626:PivotTo(v1620.CFrame);
    v1626.Parent = v1619;
    for _, v1628 in ipairs(v1626:GetDescendants()) do
        if v1628:IsA("ParticleEmitter") or v1628:IsA("Beam") then
            v1628.Enabled = false;
        end;
    end;
    local v1629 = l_ReplicatedStorage_0.Resources.nagi.nagieye:Clone();
    v1629.Parent = v1619;
    v1629.EYEAURA1.Parent = v1619.Head;
    v1629.EYEAURA2.Parent = v1619.Head;
    v1626.rouletteball.wholeattach.Parent = l_Ball_20;
    v1626.rouletteball.ballflame1.Parent = l_Ball_20;
    v1626.rouletteball.ballflame2.Parent = l_Ball_20;
    v25:play(l_ReplicatedStorage_0.Resources.nagi.nagiroulette, l_SoundService_0);
    v12.cutsceneBlender(v1620, l_ReplicatedStorage_0.Resources.nagi.roulettecam, l_ReplicatedStorage_0.Resources.nagi.FOV5);
    l_Ball_20.wholeattach.smoke.ParticleEmitter.Enabled = true;
    l_Ball_20.wholeattach.smoke.ParticleEmitter.TimeScale = 0.08;
    task.delay(3.033, function() --[[ Line: 9608 ]]
        -- upvalues: v1626 (copy)
        for _, v1631 in ipairs(v1626.JUMPPART:GetDescendants()) do
            if v1631:IsA("ParticleEmitter") then
                v1631:Emit(v1631:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(4.317, function() --[[ Line: 9616 ]]
        -- upvalues: l_Ball_20 (copy)
        for _, v1633 in ipairs(l_Ball_20.wholeattach.AURAEMIT:GetDescendants()) do
            if v1633:IsA("ParticleEmitter") then
                v1633:Emit(v1633:GetAttribute("EmitCount"));
            end;
        end;
        l_Ball_20.ballflame1.Enabled = true;
        l_Ball_20.ballflame2.Enabled = true;
        for _, v1635 in ipairs(l_Ball_20.wholeattach.AURAEMIT:GetDescendants()) do
            if v1635:IsA("ParticleEmitter") then
                v1635:Emit(v1635:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(4.04, function() --[[ Line: 9632 ]]
        -- upvalues: v1626 (copy), v1619 (copy)
        v1626.LegAttach["LEGPARTICLES."].Parent = v1619["Left Leg"];
        for _, v1637 in ipairs(v1619["Left Leg"]:GetDescendants()) do
            if v1637:IsA("ParticleEmitter") or v1637:IsA("PointLight") then
                v1637.Enabled = true;
            end;
        end;
        for _, v1639 in ipairs(v1619.Head:GetDescendants()) do
            if v1639:IsA("ParticleEmitter") then
                v1639.Enabled = true;
            end;
        end;
    end);
    task.delay(6.6, function() --[[ Line: 9652 ]]
        -- upvalues: l_Ball_20 (copy), v1619 (copy)
        for _, v1641 in ipairs(l_Ball_20.wholeattach.EMIT:GetDescendants()) do
            if v1641:IsA("ParticleEmitter") then
                v1641:Emit(v1641:GetAttribute("EmitCount"));
            end;
        end;
        for _, v1643 in ipairs(v1619["Left Leg"]:GetDescendants()) do
            if v1643:IsA("ParticleEmitter") or v1643:IsA("PointLight") then
                v1643.Enabled = false;
            end;
        end;
        l_Ball_20.ballflame1.Enabled = false;
        l_Ball_20.ballflame2.Enabled = false;
    end);
    task.delay(7.433, function() --[[ Line: 9667 ]]
        -- upvalues: l_Ball_20 (copy)
        l_Ball_20.wholeattach.SpeedLines.ParticleEmitter.Enabled = true;
    end);
    task.delay(7.8, function() --[[ Line: 9671 ]]
        -- upvalues: v1626 (copy), l_Ball_20 (copy), v1619 (copy)
        for _, v1645 in ipairs(v1626.LASTIMPACT:GetDescendants()) do
            if v1645:IsA("ParticleEmitter") then
                v1645:Emit(v1645:GetAttribute("EmitCount"));
            end;
        end;
        for _, v1647 in ipairs(l_Ball_20.wholeattach.egoflames:GetDescendants()) do
            if v1647:IsA("ParticleEmitter") then
                v1647.Enabled = false;
            end;
        end;
        l_Ball_20.wholeattach.TRAIL1.Beam114.Enabled = true;
        l_Ball_20.ballflame1.Enabled = true;
        l_Ball_20.ballflame2.Enabled = true;
        for _, v1649 in ipairs(v1619.Head:GetDescendants()) do
            if v1649:IsA("ParticleEmitter") then
                v1649.Enabled = false;
            end;
        end;
    end);
    task.delay(0.65, function() --[[ Line: 9692 ]]
        -- upvalues: v27 (ref), v1619 (copy)
        v27.Speak(v1619, {
            {
                Text = "Eh..?", 
                Color = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(201, 206, 255)), 
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))
                }), 
                TextStrokeColor = Color3.new(0, 0, 0), 
                Bold = false, 
                Italic = false, 
                Shake = {
                    Enabled = false, 
                    Intensity = 1.3, 
                    Lifetime = 4
                }, 
                TypeSpeed = 0.03
            }
        }, 0.3);
    end);
    task.delay(2, function() --[[ Line: 9718 ]]
        -- upvalues: v27 (ref), v1619 (copy)
        v27.Speak(v1619, {
            {
                Text = "I totally can..", 
                Color = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 85, 255)), 
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(170, 170, 255))
                }), 
                TextStrokeColor = Color3.new(0, 0, 0), 
                Bold = false, 
                Italic = false, 
                Shake = {
                    Enabled = false, 
                    Intensity = 1.3, 
                    Lifetime = 4
                }, 
                TypeSpeed = 0.03
            }
        }, 2.667);
    end);
    local l_Attachment_2 = Instance.new("Attachment");
    l_Attachment_2.Parent = l_Ball_20;
    task.wait(8.867);
    l_Attachment_2:Destroy();
    v1624:Destroy();
    v1626:Destroy();
    v1619.Head.EYEAURA1:Destroy();
    v1619.Head.EYEAURA2:Destroy();
    v1629:Destroy();
    if l_ColorCorrectionEffect_11 then
        l_ColorCorrectionEffect_11:Destroy();
    end;
    v12.sceneEnabled(false);
    v12.ultFlash();
    v12.fov(false, 50);
    v12.fov(true, 70, 2, Enum.EasingStyle.Sine, Enum.EasingDirection.Out);
end;
v12.nagicontrolawk = function(v1651) --[[ Line: 9769 ]] --[[ Name: nagicontrolawk ]]
    -- upvalues: l_Lighting_0 (copy), v12 (copy), l_ReplicatedStorage_0 (copy), l_PlayerGui_0 (copy), l_TweenService_0 (copy), v25 (copy), l_SoundService_0 (copy), v27 (copy)
    local v1652 = v1651.HumanoidRootPart or v1651.PrimaryPart;
    local _ = v1651.Torso;
    local _ = l_Lighting_0.Atmosphere;
    v12.bright(-1, 0.15);
    local v1655 = l_ReplicatedStorage_0.Resources.nagi.goalEffects:Clone();
    v1655:PivotTo(v1652.CFrame);
    v1655.Parent = v1651;
    local v1656 = l_ReplicatedStorage_0.Resources.darkscreen:Clone();
    v1656.Parent = l_PlayerGui_0;
    v12.sceneEnabled(true);
    task.delay(5.3, function() --[[ Line: 9785 ]]
        -- upvalues: v1655 (copy)
        for _, v1658 in ipairs(v1655.hit3:GetDescendants()) do
            if v1658:IsA("ParticleEmitter") then
                v1658:Emit(v1658:GetAttribute("EmitCount"));
            end;
        end;
    end);
    local v1659 = l_ReplicatedStorage_0.Resources.DepthOfField:Clone();
    v1659.Parent = l_Lighting_0;
    v1659.FarIntensity = 0;
    l_TweenService_0:Create(v1659, TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
        FarIntensity = 1
    }):Play();
    v25:play(l_ReplicatedStorage_0.Resources.nagi.blocked_1, l_SoundService_0);
    v12.cutscene(v1652, CFrame.new((Vector3.new(0, 0, 0, 0))), 6.033333333333333, l_ReplicatedStorage_0.Resources.nagi["4FOV"]);
    task.delay(0.01, function() --[[ Line: 9800 ]]
        -- upvalues: v27 (ref), v1651 (copy)
        v27.Speak(v1651, {
            {
                Text = "This curiosity of mine can't be stopped.", 
                Color = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(201, 206, 255)), 
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))
                }), 
                TextStrokeColor = Color3.new(0, 0, 0), 
                Bold = false, 
                Italic = false, 
                Shake = {
                    Enabled = false, 
                    Intensity = 1.3, 
                    Lifetime = 2.667
                }, 
                TypeSpeed = 0.03
            }
        }, 2.667);
    end);
    task.delay(2.667, function() --[[ Line: 9826 ]]
        -- upvalues: v27 (ref), v1651 (copy)
        v27.Speak(v1651, {
            {
                Text = "With soccer...", 
                Color = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(201, 206, 255)), 
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))
                }), 
                TextStrokeColor = Color3.new(0, 0, 0), 
                Bold = false, 
                Italic = false, 
                Shake = {
                    Enabled = true, 
                    Intensity = 2, 
                    Lifetime = 1.9
                }, 
                TypeSpeed = 0.03
            }
        }, 1.9);
    end);
    task.delay(4.333, function() --[[ Line: 9852 ]]
        -- upvalues: v27 (ref), v1651 (copy)
        v27.Speak(v1651, {
            {
                Text = "I want to challenge myself!", 
                Color = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(201, 206, 255)), 
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 0, 0))
                }), 
                TextStrokeColor = Color3.new(0, 0, 0), 
                Bold = true, 
                Italic = true, 
                Shake = {
                    Enabled = true, 
                    Intensity = 4, 
                    Lifetime = 1.9
                }, 
                TypeSpeed = 0.03
            }
        }, 1.9);
    end);
    task.wait(6.033333333333333);
    v1655:Destroy();
    v1659:Destroy();
    v1656:Destroy();
    v12.ultFlash();
    v12.sceneEnabled(false);
    v12.fov(false, 15);
    v12.fov(true, 70, 2, Enum.EasingStyle.Sine, Enum.EasingDirection.Out);
end;
v12.twogun = function(v1660) --[[ Line: 9892 ]] --[[ Name: twogun ]]
    -- upvalues: l_Lighting_0 (copy), v12 (copy), v27 (copy), l_ReplicatedStorage_0 (copy), l_TweenService_0 (copy), l_PlayerGui_0 (copy), v25 (copy), l_SoundService_0 (copy)
    local v1661 = v1660.HumanoidRootPart or v1660.PrimaryPart;
    local _ = v1660.Torso;
    local _ = l_Lighting_0.Atmosphere;
    v12.bright(-1, 0.15);
    task.delay(0.05, function() --[[ Line: 9901 ]]
        -- upvalues: v27 (ref), v1660 (copy)
        v27.Speak(v1660, {
            {
                Text = "I'm... a striker.", 
                Color = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(8, 0, 255)), 
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))
                }), 
                TextStrokeColor = Color3.new(0, 0, 0), 
                Bold = true, 
                Italic = true, 
                Shake = {
                    Enabled = true, 
                    Intensity = 3, 
                    Lifetime = 1.5
                }, 
                TypeSpeed = 0.03
            }
        }, 1.5);
    end);
    local v1664 = l_ReplicatedStorage_0.Resources.isagi.allGunEffect:Clone();
    v1664:PivotTo(v1661.CFrame);
    v1664.Parent = v1660;
    local l_ColorCorrectionEffect_12 = Instance.new("ColorCorrectionEffect");
    l_ColorCorrectionEffect_12.Parent = l_Lighting_0;
    task.delay(0.3666666666666667, function() --[[ Line: 9935 ]]
        -- upvalues: v1664 (copy)
        for _, v1667 in ipairs(v1664.slam:GetDescendants()) do
            if v1667:IsA("ParticleEmitter") then
                v1667:Emit(v1667:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(0.9, function() --[[ Line: 9942 ]]
        -- upvalues: v1664 (copy), l_TweenService_0 (ref)
        v1664.footya.Decal.Transparency = 0;
        l_TweenService_0:Create(v1664.footya, TweenInfo.new(0.4, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
            CFrame = v1664.footya.CFrame * CFrame.Angles(0, 0, 2.0943951023931953)
        }):Play();
        l_TweenService_0:Create(v1664.footya.Decal, TweenInfo.new(1.55, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
            Transparency = 1
        }):Play();
    end);
    task.delay(2.2, function() --[[ Line: 9948 ]]
        -- upvalues: l_ReplicatedStorage_0 (ref), v1660 (copy)
        local v1668 = l_ReplicatedStorage_0.Resources.shidou.line:Clone();
        v1668.Parent = v1660["Right Leg"];
        task.delay(0.5, v1668.Destroy, v1668);
    end);
    task.delay(2.766666666666667, function() --[[ Line: 9955 ]]
        -- upvalues: v1664 (copy), l_TweenService_0 (ref), l_ColorCorrectionEffect_12 (copy)
        for _, v1670 in ipairs(v1664.hit3:GetDescendants()) do
            if v1670:IsA("ParticleEmitter") then
                v1670:Emit(v1670:GetAttribute("EmitCount"));
            end;
        end;
        v1664.End.Decal.Transparency = 0.95;
        v1664.End.Mesh.Scale = Vector3.new(0.10000000149011612, 0.15000000596046448, 0.15000000596046448, 0);
        l_TweenService_0:Create(v1664.End.Mesh, TweenInfo.new(0.35, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
            Scale = Vector3.new(0.800000011920929, 0.20000000298023224, 0.20000000298023224, 0)
        }):Play();
        l_TweenService_0:Create(v1664.End, TweenInfo.new(1.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
            CFrame = v1664.End.CFrame * CFrame.Angles(1.0471975511965976, 0, 0)
        }):Play();
        l_TweenService_0:Create(v1664.End.Decal, TweenInfo.new(1.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
            Transparency = 1
        }):Play();
        l_ColorCorrectionEffect_12.Contrast = -15;
        task.wait(0.03);
        l_ColorCorrectionEffect_12.Contrast = 15;
        task.wait(0.03);
        l_ColorCorrectionEffect_12.Contrast = 5;
        l_TweenService_0:Create(l_ColorCorrectionEffect_12, TweenInfo.new(0.65), {
            Contrast = 0
        }):Play();
    end);
    local v1671 = l_ReplicatedStorage_0.Resources.darkscreen:Clone();
    v1671.Parent = l_PlayerGui_0;
    v12.sceneEnabled(true);
    local v1672 = l_ReplicatedStorage_0.Resources.DepthOfField:Clone();
    v1672.Parent = l_Lighting_0;
    v1672.FarIntensity = 0;
    l_TweenService_0:Create(v1672, TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
        FarIntensity = 1
    }):Play();
    v25:play(l_ReplicatedStorage_0.Resources.isagi.isagitwogunvolley_1, l_SoundService_0);
    v12.cutscene(v1661, CFrame.new((Vector3.new(0, 0, 0, 0))), 3.816666666666667, l_ReplicatedStorage_0.Resources.isagi["2FOV"]);
    local v1673 = l_ReplicatedStorage_0.Resources.isagi.Gun1:Clone();
    v1673.Parent = v1660;
    v1673.Gun1.Part0 = v1661;
    local v1674 = l_ReplicatedStorage_0.Resources.isagi.Gun2:Clone();
    v1674.Parent = v1660;
    v1674.Gun2.Part0 = v1661;
    task.wait(3.816666666666667);
    v1672:Destroy();
    v1671:Destroy();
    v1673:Destroy();
    v1674:Destroy();
    v12.ultFlash();
    v12.sceneEnabled(false);
    v12.fov(false, 15);
    v12.fov(true, 70, 2, Enum.EasingStyle.Sine, Enum.EasingDirection.Out);
end;
v12.NEWtwogun = function(v1675) --[[ Line: 10015 ]] --[[ Name: NEWtwogun ]]
    -- upvalues: l_Lighting_0 (copy), v12 (copy), v27 (copy), l_ReplicatedStorage_0 (copy), l_RunService_0 (copy), l_TweenService_0 (copy), v25 (copy), l_SoundService_0 (copy)
    local l_Ball_21 = v1675:FindFirstChild("Ball");
    local v1677 = v1675.HumanoidRootPart or v1675.PrimaryPart;
    local _ = v1675.Torso;
    local _ = l_Lighting_0.Atmosphere;
    v12.bright(-1, 0.15);
    task.delay(0.15, function() --[[ Line: 10025 ]]
        -- upvalues: v27 (ref), v1675 (copy)
        v27.Speak(v1675, {
            {
                Text = "All of my sense...", 
                Color = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(8, 0, 255)), 
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))
                }), 
                TextStrokeColor = Color3.new(0, 0, 0), 
                Bold = false, 
                Italic = false, 
                Shake = {
                    Enabled = true, 
                    Intensity = 3, 
                    Lifetime = 2
                }, 
                TypeSpeed = 0.03
            }
        }, 2);
    end);
    task.delay(2.05, function() --[[ Line: 10053 ]]
        -- upvalues: v27 (ref), v1675 (copy)
        v27.Speak(v1675, {
            {
                Text = "In this moment, I'll pour all of it into my reflexes!", 
                Color = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(8, 0, 255)), 
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))
                }), 
                TextStrokeColor = Color3.new(0, 0, 0), 
                Bold = true, 
                Italic = true, 
                Shake = {
                    Enabled = true, 
                    Intensity = 2, 
                    Lifetime = 4
                }, 
                TypeSpeed = 0.01
            }
        }, 5.5);
    end);
    local v1680 = l_ReplicatedStorage_0.Resources.isagi.NEWtwogunvolleyEff:Clone();
    v1680:PivotTo(v1677.CFrame);
    v1680.Parent = v1675;
    for _, v1682 in ipairs(v1680:GetDescendants()) do
        if v1682:IsA("ParticleEmitter") or v1682:IsA("Beam") then
            v1682.Enabled = false;
        end;
    end;
    local v1683 = l_ReplicatedStorage_0.Resources.isagi.guneyehead:Clone();
    v1683.Weld.Part0 = v1675.Head;
    v1683.Parent = v1680;
    local v1684 = nil;
    if l_Ball_21 then
        v1684 = l_ReplicatedStorage_0.Resources.isagi.ballEff:Clone();
        v1684.Weld.Part0 = l_Ball_21;
        v1684.Parent = v1680;
        for _, v1686 in ipairs(v1684:GetDescendants()) do
            if v1686:IsA("ParticleEmitter") or v1686:IsA("Beam") then
                v1686.Enabled = false;
            end;
        end;
    end;
    local v1687 = l_ReplicatedStorage_0.Resources.isagi.camEffGun:Clone();
    v1687.Parent = v1680;
    local v1688 = nil;
    v1688 = l_RunService_0.PreRender:connect(function() --[[ Line: 10113 ]]
        -- upvalues: v1687 (copy), v1688 (ref)
        if not v1687:IsDescendantOf(game) then
            v1688:Disconnect();
            return;
        else
            v1687.CFrame = workspace.CurrentCamera.CFrame;
            return;
        end;
    end);
    local l_ColorCorrectionEffect_13 = Instance.new("ColorCorrectionEffect");
    l_ColorCorrectionEffect_13.Parent = l_Lighting_0;
    v12.sceneEnabled(true);
    local v1690 = l_ReplicatedStorage_0.Resources.DepthOfField:Clone();
    v1690.Parent = l_Lighting_0;
    v1690.FarIntensity = 0;
    l_TweenService_0:Create(v1690, TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
        FarIntensity = 1
    }):Play();
    v25:play(l_ReplicatedStorage_0.Resources.isagi.twogunvolley, l_SoundService_0);
    v12.cutsceneBlender(v1677, l_ReplicatedStorage_0.Resources.isagi.NEWtwogunC, l_ReplicatedStorage_0.Resources.isagi.NEWTGVFOV);
    local v1691 = l_ReplicatedStorage_0.Resources.isagi.LeftGun:Clone();
    v1691.HandleLeft.HandleLeft.Part0 = v1677;
    v1691.HandleLeft.bullet1.Part0 = v1677;
    v1691.Parent = v1675;
    local v1692 = l_ReplicatedStorage_0.Resources.isagi.RightGun:Clone();
    v1692.HandleRight.HandleRight.Part0 = v1677;
    v1692.HandleRight.bullet2.Part0 = v1677;
    v1692.Parent = v1675;
    task.delay(0.7, function() --[[ Line: 10141 ]]
        -- upvalues: v1687 (copy)
        v1687[1].Enabled = true;
        v1687[2].Enabled = true;
        v1687[3].Enabled = true;
    end);
    task.delay(1.033, function() --[[ Line: 10148 ]]
        -- upvalues: v1687 (copy)
        v1687[1].Enabled = false;
        v1687[2].Enabled = false;
        v1687[3].Enabled = false;
    end);
    task.delay(1.383, function() --[[ Line: 10155 ]]
        -- upvalues: v1680 (copy)
        for _, v1694 in ipairs(v1680.grass:GetDescendants()) do
            if v1694:IsA("ParticleEmitter") or v1694:IsA("Beam") then
                v1694:Emit(v1694:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(2.067, function() --[[ Line: 10163 ]]
        -- upvalues: v1684 (ref)
        if not v1684 then
            return;
        else
            for _, v1696 in ipairs(v1684.ballspin:GetDescendants()) do
                if v1696:IsA("ParticleEmitter") or v1696:IsA("Beam") then
                    v1696:Emit(v1696:GetAttribute("EmitCount"));
                end;
            end;
            for _, v1698 in ipairs(v1684.ballspinglow1:GetDescendants()) do
                if v1698:IsA("ParticleEmitter") or v1698:IsA("Beam") then
                    v1698.Enabled = true;
                end;
            end;
            for _, v1700 in ipairs(v1684.ballspinglow2:GetDescendants()) do
                if v1700:IsA("ParticleEmitter") or v1700:IsA("Beam") then
                    v1700.Enabled = true;
                end;
            end;
            return;
        end;
    end);
    task.delay(2.967, function() --[[ Line: 10183 ]]
        -- upvalues: v1687 (copy)
        v1687[4].Enabled = true;
        v1687[5].Enabled = true;
        v1687[6].Enabled = true;
        v1687[7].Enabled = true;
    end);
    task.delay(3.6, function() --[[ Line: 10189 ]]
        -- upvalues: v1687 (copy), v1680 (copy), l_TweenService_0 (ref), v1691 (copy), v1692 (copy), l_ColorCorrectionEffect_13 (copy)
        v1687[4].Enabled = false;
        v1687[5].Enabled = false;
        v1687[6].Enabled = false;
        v1687[7].Enabled = false;
        for _, v1702 in ipairs(v1680.FLARE1.Attachment:GetDescendants()) do
            if v1702:IsA("ParticleEmitter") or v1702:IsA("Beam") then
                v1702.Enabled = true;
            end;
        end;
        for _, v1704 in ipairs(v1680.windbeams:GetDescendants()) do
            if v1704:IsA("Beam") then
                v1704.Enabled = true;
                v1704.TextureSpeed = 9;
                l_TweenService_0:Create(v1704, TweenInfo.new(1.184, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {
                    TextureSpeed = 0.1
                }):Play();
            end;
        end;
        for _, v1706 in ipairs(v1680.LASTPARTICLES:GetDescendants()) do
            if v1706:IsA("ParticleEmitter") or v1706:IsA("Beam") then
                v1706:Emit(v1706:GetAttribute("EmitCount"));
            end;
        end;
        v1691.bullet1["Diagonal Smoke Burst"].Enabled = true;
        v1692.bullet2["Diagonal Smoke Burst"].Enabled = true;
        for _, v1708 in ipairs(v1691.Barrel:GetDescendants()) do
            if v1708:IsA("ParticleEmitter") or v1708:IsA("Beam") then
                v1708:Emit(v1708:GetAttribute("EmitCount"));
            end;
        end;
        for _, v1710 in ipairs(v1692.Barrel:GetDescendants()) do
            if v1710:IsA("ParticleEmitter") or v1710:IsA("Beam") then
                v1710:Emit(v1710:GetAttribute("EmitCount"));
            end;
        end;
        l_ColorCorrectionEffect_13.Saturation = -1;
        for _ = 1, 4 do
            l_ColorCorrectionEffect_13.Contrast = l_ColorCorrectionEffect_13.Contrast == 15 and -15 or 15;
            task.wait(0.017);
        end;
        l_ColorCorrectionEffect_13.Brightness = 0.4;
        l_ColorCorrectionEffect_13.Contrast = 1;
        l_ColorCorrectionEffect_13.Saturation = 0;
        l_TweenService_0:Create(l_ColorCorrectionEffect_13, TweenInfo.new(0.733, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
            Contrast = 0, 
            Brightness = 0
        }):Play();
    end);
    local v1712 = {};
    task.delay(4.287, function() --[[ Line: 10241 ]]
        -- upvalues: v1680 (copy), v1691 (copy), v1692 (copy), l_TweenService_0 (ref), v1712 (copy), l_ColorCorrectionEffect_13 (copy)
        for _, v1714 in ipairs(v1680["TWIN-GUN"]:GetDescendants()) do
            if v1714:IsA("ParticleEmitter") or v1714:IsA("Beam") then
                v1714:Emit(v1714:GetAttribute("EmitCount"));
            end;
        end;
        for _, v1716 in ipairs(v1680.LASTPARTICLES:GetDescendants()) do
            if v1716:IsA("ParticleEmitter") or v1716:IsA("Beam") then
                v1716:Emit(v1716:GetAttribute("EmitCount"));
            end;
        end;
        for _, v1718 in ipairs(v1691.Barrel:GetDescendants()) do
            if v1718:IsA("ParticleEmitter") or v1718:IsA("Beam") then
                v1718:Emit(v1718:GetAttribute("EmitCount"));
            end;
        end;
        for _, v1720 in ipairs(v1692.Barrel:GetDescendants()) do
            if v1720:IsA("ParticleEmitter") or v1720:IsA("Beam") then
                v1720:Emit(v1720:GetAttribute("EmitCount"));
            end;
        end;
        for _, v1722 in ipairs(v1680.FLARE1.Attachment:GetDescendants()) do
            if v1722:IsA("ParticleEmitter") or v1722:IsA("Beam") then
                v1722.Enabled = false;
            end;
        end;
        for _, v1724 in ipairs(v1680.FLARE1.Attachment2:GetDescendants()) do
            if v1724:IsA("ParticleEmitter") or v1724:IsA("Beam") then
                v1724.Enabled = true;
            end;
        end;
        for _, v1726 in ipairs(v1680.windbeams:GetDescendants()) do
            if v1726:IsA("Beam") then
                v1726.Enabled = false;
            end;
        end;
        for _, v1728 in ipairs(v1680.lastwindbeams:GetDescendants()) do
            if v1728:IsA("Beam") then
                v1728.Enabled = true;
                v1728.TextureSpeed = 9;
                l_TweenService_0:Create(v1728, TweenInfo.new(1.184, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {
                    TextureSpeed = 0.1
                }):Play();
            end;
        end;
        for _, v1730 in ipairs(v1680.lastwindbeams2:GetDescendants()) do
            if v1730:IsA("Beam") then
                v1730.Enabled = true;
                v1730.TextureSpeed = 9;
                l_TweenService_0:Create(v1730, TweenInfo.new(1.184, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {
                    TextureSpeed = 0.1
                }):Play();
            end;
        end;
        for _, v1732 in v1712 do
            l_TweenService_0:Create(v1732, TweenInfo.new(1.184, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {
                TimeScale = 0.15
            }):Play();
        end;
        l_ColorCorrectionEffect_13.Saturation = -1;
        for _ = 1, 4 do
            l_ColorCorrectionEffect_13.Contrast = l_ColorCorrectionEffect_13.Contrast == 15 and -15 or 15;
            task.wait(0.017);
        end;
        l_ColorCorrectionEffect_13.Brightness = 0.4;
        l_ColorCorrectionEffect_13.Contrast = 1;
        l_ColorCorrectionEffect_13.Saturation = 0;
        l_TweenService_0:Create(l_ColorCorrectionEffect_13, TweenInfo.new(0.733, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
            Contrast = 0, 
            Brightness = 0
        }):Play();
    end);
    task.delay(4.55, function() --[[ Line: 10311 ]]
        -- upvalues: v1680 (copy)
        for _, v1735 in ipairs(v1680.VOLLEY:GetDescendants()) do
            if v1735:IsA("ParticleEmitter") or v1735:IsA("Beam") then
                v1735:Emit(v1735:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(1.983, function() --[[ Line: 10318 ]]
        -- upvalues: v1675 (copy), l_ReplicatedStorage_0 (ref), v1712 (copy), v1680 (copy), l_ColorCorrectionEffect_13 (copy), l_TweenService_0 (ref)
        for _, v1737 in ipairs(v1675:GetChildren()) do
            if v1737:IsA("Part") and v1737.Transparency < 1 then
                local v1738 = l_ReplicatedStorage_0.Resources.isagi["Dark Shadow Fire1"]:Clone();
                v1738.Parent = v1737;
                table.insert(v1712, v1738);
            end;
        end;
        local v1739 = l_ReplicatedStorage_0.Resources.isagi.twogunTrail:Clone();
        v1739.Weld.Part0 = v1675["Left Leg"];
        v1739.Parent = v1680;
        task.delay(1, v1739.Destroy, v1739);
        l_ColorCorrectionEffect_13.Saturation = -1;
        for _ = 1, 4 do
            l_ColorCorrectionEffect_13.Contrast = l_ColorCorrectionEffect_13.Contrast == 15 and -15 or 15;
            task.wait(0.017);
        end;
        l_ColorCorrectionEffect_13.Brightness = 0.4;
        l_ColorCorrectionEffect_13.Contrast = 1;
        l_ColorCorrectionEffect_13.Saturation = 0;
        l_TweenService_0:Create(l_ColorCorrectionEffect_13, TweenInfo.new(0.733, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
            Contrast = 0, 
            Brightness = 0
        }):Play();
    end);
    task.wait(5.733);
    v1690:Destroy();
    v1680:Destroy();
    l_ColorCorrectionEffect_13:Destroy();
    v1691:Destroy();
    v1692:Destroy();
    v12.ultFlash();
    v12.sceneEnabled(false);
    v12.fov(false, 15);
    v12.fov(true, 70, 2, Enum.EasingStyle.Sine, Enum.EasingDirection.Out);
    for _, v1742 in v1712 do
        v1742:Destroy();
    end;
    table.clear(v1712);
end;
v12.saeAwk = function(v1743) --[[ Line: 10372 ]] --[[ Name: saeAwk ]]
    -- upvalues: l_Lighting_0 (copy), v12 (copy), l_ReplicatedStorage_0 (copy), l_PlayerGui_0 (copy), l_TweenService_0 (copy), v25 (copy), l_SoundService_0 (copy), v27 (copy), l_RunService_0 (copy), l_Density_0 (copy), l_Color_0 (copy), l_Brightness_0 (copy)
    local v1744 = v1743.HumanoidRootPart or v1743.PrimaryPart;
    local _ = v1743.Torso;
    local l_Atmosphere_17 = l_Lighting_0.Atmosphere;
    v12.bright(-1, 0.55);
    v12.sceneEnabled(true);
    local v1747 = l_ReplicatedStorage_0.Resources.Blur:Clone();
    v1747.Size = 0;
    v1747.Parent = l_Lighting_0;
    local v1748 = l_ReplicatedStorage_0.Resources.sae.glowscreen:Clone();
    v1748.Parent = l_PlayerGui_0;
    local l_ImageLabel2_0 = v1748.ImageLabel2;
    l_ImageLabel2_0.ImageTransparency = 0;
    local v1750 = l_ReplicatedStorage_0.Resources.sae.newsaeawkya.effectawk:Clone();
    v1750:PivotTo(v1744.CFrame);
    v1750.Parent = v1743;
    for _, v1752 in ipairs(v1750:GetDescendants()) do
        if v1752:IsA("ParticleEmitter") or v1752:IsA("Beam") then
            v1752.Enabled = false;
        end;
    end;
    local v1753 = l_ReplicatedStorage_0.Resources.DepthOfField:Clone();
    v1753.Parent = l_Lighting_0;
    v1753.FarIntensity = 0;
    l_TweenService_0:Create(v1753, TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
        FarIntensity = 1
    }):Play();
    local l_ColorCorrectionEffect_14 = Instance.new("ColorCorrectionEffect");
    l_ColorCorrectionEffect_14.TintColor = Color3.fromRGB(255, 255, 255);
    l_ColorCorrectionEffect_14.Parent = l_Lighting_0;
    v25:play(l_ReplicatedStorage_0.Resources.sae["Itoshi lock in"], l_SoundService_0);
    v12.cutscene(v1744, CFrame.new((Vector3.new(0, 0, 0, 0))), 10.55, l_ReplicatedStorage_0.Resources.sae.FOV);
    local v1755 = l_ReplicatedStorage_0.Resources.sae.newsaeawkya.eyesangle:Clone();
    v1755.Weld.Part0 = v1743.Head;
    v1755.Parent = v1750;
    for _, v1757 in ipairs(v1750.CAMERAPARTstart:GetDescendants()) do
        if v1757:IsA("ParticleEmitter") or v1757:IsA("Beam") then
            v1757.Enabled = true;
        end;
    end;
    task.delay(1.75, function() --[[ Line: 10428 ]]
        -- upvalues: v27 (ref), v1743 (copy)
        v27.Speak(v1743, {
            {
                Text = "I'm taking this game to the next level.", 
                Color = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 73, 112)), 
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))
                }), 
                TextStrokeColor = Color3.new(0, 0, 0), 
                Bold = false, 
                Italic = false, 
                Shake = {
                    Enabled = false, 
                    Intensity = 1.3, 
                    Lifetime = 4
                }, 
                TypeSpeed = 0.03
            }
        }, 4);
    end);
    task.delay(4.883, function() --[[ Line: 10454 ]]
        -- upvalues: v27 (ref), v1743 (copy)
        v27.Speak(v1743, {
            {
                Text = "Only the", 
                Color = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 0, 0)), 
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))
                }), 
                TextStrokeColor = Color3.new(0, 0, 0), 
                Bold = false, 
                Italic = false, 
                Shake = {
                    Enabled = false, 
                    Intensity = 1.3, 
                    Lifetime = 4
                }, 
                TypeSpeed = 0.03
            }, 
            {
                Text = " idiots", 
                Color = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(253, 255, 252)), 
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 74, 116))
                }), 
                TextStrokeColor = Color3.new(0, 0, 0), 
                Bold = true, 
                Italic = true, 
                Shake = {
                    Enabled = true, 
                    Intensity = 3, 
                    Lifetime = 2
                }, 
                TypeSpeed = 0.01
            }, 
            {
                Text = " who can keep up with me.", 
                Color = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 0, 0)), 
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))
                }), 
                TextStrokeColor = Color3.new(0, 0, 0), 
                Bold = false, 
                Italic = false, 
                Shake = {
                    Enabled = false, 
                    Intensity = 1.3, 
                    Lifetime = 4
                }, 
                TypeSpeed = 0.03
            }
        }, 4);
    end);
    task.delay(8.767, function() --[[ Line: 10522 ]]
        -- upvalues: v27 (ref), v1743 (copy)
        v27.Speak(v1743, {
            {
                Text = "will get to see what comes next.", 
                Color = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 0, 0)), 
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 73, 112))
                }), 
                TextStrokeColor = Color3.new(0, 0, 0), 
                Bold = true, 
                Italic = true, 
                Shake = {
                    Enabled = true, 
                    Intensity = 4, 
                    Lifetime = 1.35
                }, 
                TypeSpeed = 0.03
            }
        }, 1.35);
    end);
    task.delay(0.55, function() --[[ Line: 10552 ]]
        -- upvalues: l_ImageLabel2_0 (copy), v1750 (copy)
        l_ImageLabel2_0.ImageTransparency = 1;
        v1750.CAMERAPARTstart:Destroy();
    end);
    task.delay(0.667, function() --[[ Line: 10558 ]]
        -- upvalues: v1750 (copy)
        for _, v1759 in ipairs(v1750.step1:GetDescendants()) do
            if v1759:IsA("ParticleEmitter") then
                v1759:Emit(v1759:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(0.933, function() --[[ Line: 10566 ]]
        -- upvalues: v1750 (copy)
        for _, v1761 in ipairs(v1750.step2:GetDescendants()) do
            if v1761:IsA("ParticleEmitter") then
                v1761:Emit(v1761:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(1.05, function() --[[ Line: 10574 ]]
        -- upvalues: v1750 (copy)
        for _, v1763 in ipairs(v1750.step3:GetDescendants()) do
            if v1763:IsA("ParticleEmitter") then
                v1763:Emit(v1763:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(1.183, function() --[[ Line: 10582 ]]
        -- upvalues: v1750 (copy)
        for _, v1765 in ipairs(v1750.step4:GetDescendants()) do
            if v1765:IsA("ParticleEmitter") then
                v1765:Emit(v1765:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(1.517, function() --[[ Line: 10590 ]]
        -- upvalues: v1747 (copy), l_TweenService_0 (ref), l_ColorCorrectionEffect_14 (copy)
        v1747.Size = 25;
        l_TweenService_0:Create(v1747, TweenInfo.new(0.783, Enum.EasingStyle.Linear), {
            Size = 5
        }):Play();
        l_ColorCorrectionEffect_14.TintColor = Color3.fromRGB(255, 225, 241);
        l_ColorCorrectionEffect_14.Brightness = -1;
        l_ColorCorrectionEffect_14.Contrast = 1;
        l_ColorCorrectionEffect_14.Saturation = -0.8;
        l_TweenService_0:Create(l_ColorCorrectionEffect_14, TweenInfo.new(0.516, Enum.EasingStyle.Linear), {
            Brightness = 0
        }):Play();
        l_TweenService_0:Create(l_ColorCorrectionEffect_14, TweenInfo.new(1.466, Enum.EasingStyle.Linear), {
            Saturation = -0.4
        }):Play();
    end);
    task.delay(2.783, function() --[[ Line: 10603 ]]
        -- upvalues: l_TweenService_0 (ref), v1747 (copy)
        local v1766 = l_TweenService_0:Create(v1747, TweenInfo.new(0.084, Enum.EasingStyle.Linear), {
            Size = 25
        });
        v1766:Play();
        v1766.Completed:Wait();
        v1766:Destroy();
        l_TweenService_0:Create(v1747, TweenInfo.new(0.983, Enum.EasingStyle.Linear), {
            Size = 0
        }):Play();
    end);
    task.delay(2.817, function() --[[ Line: 10610 ]]
        -- upvalues: v1750 (copy)
        for _, v1768 in ipairs(v1750.aira:GetDescendants()) do
            if v1768:IsA("ParticleEmitter") then
                v1768.Enabled = true;
            end;
        end;
    end);
    local v1769 = {};
    task.delay(2.983, function() --[[ Line: 10621 ]]
        -- upvalues: l_TweenService_0 (ref), l_Atmosphere_17 (copy), l_Lighting_0 (ref), l_ColorCorrectionEffect_14 (copy), v1743 (copy), l_ReplicatedStorage_0 (ref), v1769 (copy), v1750 (copy), l_RunService_0 (ref)
        l_TweenService_0:Create(l_Atmosphere_17, TweenInfo.new(0.334, Enum.EasingStyle.Linear), {
            Color = Color3.fromRGB(255, 106, 138), 
            Density = 0.315
        }):Play();
        l_TweenService_0:Create(l_Lighting_0, TweenInfo.new(0.334, Enum.EasingStyle.Linear), {
            Brightness = 3, 
            ColorShift_Top = Color3.fromRGB(255, 82, 183)
        }):Play();
        l_ColorCorrectionEffect_14.Brightness = 1;
        l_TweenService_0:Create(l_ColorCorrectionEffect_14, TweenInfo.new(0.534, Enum.EasingStyle.Linear), {
            TintColor = Color3.fromRGB(255, 103, 174), 
            Brightness = 0, 
            Saturation = 0
        }):Play();
        for _, v1771 in ipairs(v1743:GetChildren()) do
            if v1771:IsA("Part") and v1771.Transparency < 1 then
                for _, v1773 in ipairs(l_ReplicatedStorage_0.Resources.sae.auraya:GetChildren()) do
                    local v1774 = v1773:Clone();
                    v1774.Parent = v1771;
                    table.insert(v1769, v1774);
                end;
            end;
        end;
        for _, v1776 in ipairs(v1750.aira:GetDescendants()) do
            if v1776:IsA("ParticleEmitter") then
                v1776.Enabled = false;
            end;
        end;
        for _, v1778 in ipairs(v1750.step6:GetDescendants()) do
            if v1778:IsA("ParticleEmitter") then
                v1778.TimeScale = 1;
                v1778.Enabled = true;
                l_TweenService_0:Create(v1778, TweenInfo.new(0.5), {
                    TimeScale = 0.05
                }):Play();
            end;
        end;
        local v1779 = l_ReplicatedStorage_0.Resources.sae.newsaeawkya.CAMERAPART:Clone();
        v1779.Parent = v1750;
        for _, v1781 in ipairs(v1779:GetDescendants()) do
            if v1781:IsA("ParticleEmitter") or v1781:IsA("Beam") then
                v1781.Enabled = true;
            end;
        end;
        local v1782 = nil;
        v1782 = l_RunService_0.PreRender:connect(function() --[[ Line: 10667 ]]
            -- upvalues: v1779 (copy), v1782 (ref)
            if not v1779:IsDescendantOf(game) then
                v1782:Disconnect();
                return;
            else
                v1779.CFrame = workspace.CurrentCamera.CFrame * CFrame.new(0, 0, -0.1) * CFrame.Angles(0, 0, -0.7853981633974483);
                return;
            end;
        end);
    end);
    task.delay(3.05, function() --[[ Line: 10673 ]]
        -- upvalues: v1750 (copy)
        for _, v1784 in ipairs(v1750.aira:GetDescendants()) do
            if v1784:IsA("ParticleEmitter") then
                v1784.Enabled = false;
            end;
        end;
    end);
    task.delay(4.283, function() --[[ Line: 10681 ]]
        -- upvalues: v1747 (copy), l_TweenService_0 (ref), l_ColorCorrectionEffect_14 (copy), l_ImageLabel2_0 (copy), v1750 (copy)
        v1747.Size = 25;
        l_TweenService_0:Create(v1747, TweenInfo.new(0.284, Enum.EasingStyle.Linear), {
            Size = 0
        }):Play();
        l_ColorCorrectionEffect_14.TintColor = Color3.fromRGB(255, 103, 174);
        l_ColorCorrectionEffect_14.Contrast = 0;
        l_ColorCorrectionEffect_14.Saturation = -0.8;
        l_TweenService_0:Create(l_ColorCorrectionEffect_14, TweenInfo.new(0.5, Enum.EasingStyle.Linear), {
            TintColor = Color3.fromRGB(255, 103, 174), 
            Contrast = 1, 
            Saturation = 0
        }):Play();
        l_ImageLabel2_0.ImageTransparency = 0.6;
        for _, v1786 in ipairs(v1750.aura1:GetDescendants()) do
            if v1786:IsA("ParticleEmitter") or v1786:IsA("Beam") then
                v1786.Enabled = true;
            end;
        end;
        v1750.step6:Destroy();
    end);
    task.delay(8.6, function() --[[ Line: 10703 ]]
        -- upvalues: l_ColorCorrectionEffect_14 (copy), l_TweenService_0 (ref), l_ReplicatedStorage_0 (ref), v1743 (copy), v1750 (copy), v1747 (copy)
        l_ColorCorrectionEffect_14.Brightness = 1;
        l_TweenService_0:Create(l_ColorCorrectionEffect_14, TweenInfo.new(0.35, Enum.EasingStyle.Linear), {
            Brightness = 0
        }):Play();
        local v1787 = l_ReplicatedStorage_0.Resources.sae.newsaeawkya.eyeaura:Clone();
        v1787.Weld.Part0 = v1743.Head;
        v1787.Parent = v1750;
        for _, v1789 in ipairs(v1750.BeamDAD:GetDescendants()) do
            if v1789:IsA("ParticleEmitter") or v1789:IsA("Beam") then
                v1789.Enabled = true;
            end;
        end;
        v1747.Size = 25;
        l_TweenService_0:Create(v1747, TweenInfo.new(0.767, Enum.EasingStyle.Linear), {
            Size = 0
        }):Play();
    end);
    task.delay(10.55, function() --[[ Line: 10721 ]]
        -- upvalues: v1753 (copy), v1750 (copy), l_ColorCorrectionEffect_14 (copy), v1769 (copy), l_Atmosphere_17 (copy), l_Density_0 (ref), l_Color_0 (ref), l_Lighting_0 (ref), l_Brightness_0 (ref), l_ImageLabel2_0 (copy), v12 (ref)
        v1753:Destroy();
        v1750:Destroy();
        l_ColorCorrectionEffect_14:Destroy();
        for _, v1791 in v1769 do
            v1791:Destroy();
        end;
        table.clear(v1769);
        l_Atmosphere_17.Density = l_Density_0;
        l_Atmosphere_17.Color = l_Color_0;
        l_Lighting_0.ColorShift_Top = Color3.fromRGB(0, 0, 0);
        l_Lighting_0.Brightness = l_Brightness_0;
        l_ImageLabel2_0:Destroy();
        v12.ultFlash(-1, 0.7);
        v12.sceneEnabled(false);
        v12.fov(false, 30);
        v12.fov(true, 70, 2, Enum.EasingStyle.Sine, Enum.EasingDirection.Out);
    end);
end;
v12.saeAwk2 = function(v1792) --[[ Line: 10748 ]] --[[ Name: saeAwk2 ]]
    -- upvalues: l_Lighting_0 (copy), v12 (copy), l_ReplicatedStorage_0 (copy), l_TweenService_0 (copy), v25 (copy), l_SoundService_0 (copy), l_RunService_0 (copy), v27 (copy), l_Density_0 (copy), l_Color_0 (copy), l_Brightness_0 (copy)
    local v1793 = v1792.HumanoidRootPart or v1792.PrimaryPart;
    local _ = v1792.Torso;
    local l_Atmosphere_18 = l_Lighting_0.Atmosphere;
    v12.bright(-1, 0.5);
    v12.sceneEnabled(true);
    local l_Model_0 = Instance.new("Model");
    l_Model_0.Parent = v1792;
    local v1797 = {};
    for _, v1799 in ipairs(v1792:GetChildren()) do
        if v1799:IsA("Part") and v1799.Transparency < 1 then
            for _, v1801 in ipairs(l_ReplicatedStorage_0.Resources.sae.auraya:GetChildren()) do
                local v1802 = v1801:Clone();
                v1802.Parent = v1799;
                table.insert(v1797, v1802);
            end;
        end;
    end;
    local v1803 = l_ReplicatedStorage_0.Resources.DepthOfField:Clone();
    v1803.Parent = l_Lighting_0;
    v1803.FarIntensity = 0;
    l_TweenService_0:Create(v1803, TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
        FarIntensity = 1
    }):Play();
    local l_ColorCorrectionEffect_15 = Instance.new("ColorCorrectionEffect");
    l_ColorCorrectionEffect_15.TintColor = Color3.fromRGB(255, 255, 255);
    l_ColorCorrectionEffect_15.Parent = l_Lighting_0;
    v25:play(l_ReplicatedStorage_0.Resources.sae["one shot matchs"], l_SoundService_0);
    v12.cutsceneBlender(v1793, l_ReplicatedStorage_0.Resources.sae.oneshotmatch2, l_ReplicatedStorage_0.Resources.sae.FOV3);
    local v1805 = nil;
    task.delay(0.633, function() --[[ Line: 10790 ]]
        -- upvalues: l_ReplicatedStorage_0 (ref), v1792 (copy), l_Model_0 (copy), v1805 (ref), l_RunService_0 (ref), l_Atmosphere_18 (copy)
        local v1806 = l_ReplicatedStorage_0.Resources.sae.eyesangle2:Clone();
        v1806.Weld.Part0 = v1792.Head;
        v1806.Parent = l_Model_0;
        local v1807 = l_ReplicatedStorage_0.Resources.sae.glowa:Clone();
        v1807.Weld.Part0 = v1792.Torso;
        v1807.Parent = l_Model_0;
        v1805 = l_ReplicatedStorage_0.Resources.sae.zoom:Clone();
        v1805.Parent = l_Model_0;
        local v1808 = nil;
        v1808 = l_RunService_0.PreRender:connect(function() --[[ Line: 10805 ]]
            -- upvalues: v1805 (ref), v1808 (ref)
            if not v1805:IsDescendantOf(game) then
                v1808:Disconnect();
                return;
            else
                v1805.CFrame = workspace.CurrentCamera.CFrame;
                return;
            end;
        end);
        for _, v1810 in ipairs(v1805:GetDescendants()) do
            if v1810:IsA("ParticleEmitter") or v1810:IsA("Beam") then
                v1810.Enabled = false;
            end;
        end;
        v1805.Attachment.ParticleEmitterSoft.Enabled = true;
        l_Atmosphere_18.Color = Color3.fromRGB(98, 10, 57);
        l_Atmosphere_18.Density = 0.85;
    end);
    task.delay(3.217, function() --[[ Line: 10821 ]]
        -- upvalues: v1805 (ref)
        v1805.Attachment.ParticleEmitterRough.Enabled = true;
    end);
    task.delay(3.45, function() --[[ Line: 10825 ]]
        -- upvalues: v27 (ref), v1792 (copy), v1805 (ref), l_ReplicatedStorage_0 (ref), l_Model_0 (copy), l_RunService_0 (ref)
        v27.Speak(v1792, {
            {
                Text = "This is a one-shot match.", 
                Color = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 73, 112)), 
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))
                }), 
                TextStrokeColor = Color3.new(0, 0, 0), 
                Bold = false, 
                Italic = false, 
                Shake = {
                    Enabled = false, 
                    Intensity = 1.3, 
                    Lifetime = 2
                }, 
                TypeSpeed = 0.03
            }
        }, 2);
        v1805:Destroy();
        local v1811 = l_ReplicatedStorage_0.Resources.sae.CamPart2:Clone();
        v1811.Parent = l_Model_0;
        local v1812 = nil;
        v1812 = l_RunService_0.PreRender:connect(function() --[[ Line: 10856 ]]
            -- upvalues: v1811 (copy), v1812 (ref)
            if not v1811:IsDescendantOf(game) then
                v1812:Disconnect();
                return;
            else
                v1811.CFrame = workspace.CurrentCamera.CFrame;
                return;
            end;
        end);
    end);
    task.delay(5.367, function() --[[ Line: 10862 ]]
        -- upvalues: v1797 (copy), v1803 (copy), l_Model_0 (copy), l_ColorCorrectionEffect_15 (copy), l_Atmosphere_18 (copy), l_Density_0 (ref), l_Color_0 (ref), l_Lighting_0 (ref), l_Brightness_0 (ref), v12 (ref)
        for _, v1814 in v1797 do
            v1814:Destroy();
        end;
        table.clear(v1797);
        v1803:Destroy();
        l_Model_0:Destroy();
        l_ColorCorrectionEffect_15:Destroy();
        l_Atmosphere_18.Density = l_Density_0;
        l_Atmosphere_18.Color = l_Color_0;
        l_Lighting_0.ColorShift_Top = Color3.fromRGB(0, 0, 0);
        l_Lighting_0.Brightness = l_Brightness_0;
        v12.ultFlash(-1);
        v12.sceneEnabled(false);
        v12.fov(false, 15);
        v12.fov(true, 70, 2, Enum.EasingStyle.Sine, Enum.EasingDirection.Out);
    end);
end;
v12.kaiserAwk = function(v1815) --[[ Line: 10887 ]] --[[ Name: kaiserAwk ]]
    -- upvalues: l_Lighting_0 (copy), v12 (copy), l_ReplicatedStorage_0 (copy), l_TweenService_0 (copy), v25 (copy), l_SoundService_0 (copy), v27 (copy), l_Density_0 (copy), l_Color_0 (copy), l_Brightness_0 (copy)
    local v1816 = v1815.HumanoidRootPart or v1815.PrimaryPart;
    local _ = v1815.Torso;
    local l_Atmosphere_19 = l_Lighting_0.Atmosphere;
    v12.bright(-1, 1);
    v12.sceneEnabled(true);
    local v1819 = l_ReplicatedStorage_0.Resources.kaiser.ultEff:Clone();
    v1819:PivotTo(v1816.CFrame);
    v1819.Parent = v1815;
    local v1820 = l_ReplicatedStorage_0.Resources.kaiser.rose:Clone();
    v1820.rose.Part0 = v1815["Right Arm"];
    v1820.Parent = v1819;
    local v1821 = l_ReplicatedStorage_0.Resources.DepthOfField:Clone();
    v1821.Parent = l_Lighting_0;
    v1821.FarIntensity = 0;
    l_TweenService_0:Create(v1821, TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
        FarIntensity = 1
    }):Play();
    local l_ColorCorrectionEffect_16 = Instance.new("ColorCorrectionEffect");
    l_ColorCorrectionEffect_16.TintColor = Color3.fromRGB(255, 255, 255);
    l_ColorCorrectionEffect_16.Parent = l_Lighting_0;
    v25:play(l_ReplicatedStorage_0.Resources.kaiser.alkaiserawake_1, l_SoundService_0);
    v12.cutsceneBlender(v1816, l_ReplicatedStorage_0.Resources.kaiser.flowAnim2, l_ReplicatedStorage_0.Resources.kaiser.FOV2);
    local l_Rose_0 = v1819.Rose;
    for _, v1825 in pairs(l_Rose_0:GetDescendants()) do
        if v1825:IsA("ParticleEmitter") then
            v1825.TimeScale = 1;
        end;
    end;
    local l_Aura_0 = v1819.Aura;
    for _, v1828 in pairs(l_Aura_0:GetDescendants()) do
        if v1828:IsA("ParticleEmitter") then
            v1828.Enabled = true;
        end;
    end;
    task.delay(0.3, function() --[[ Line: 10932 ]]
        -- upvalues: v27 (ref), v1815 (copy)
        v27.Speak(v1815, {
            {
                Text = "Get down on your knees", 
                Color = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(8, 0, 255)), 
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))
                }), 
                TextStrokeColor = Color3.new(0, 0, 0), 
                Bold = false, 
                Italic = false, 
                Shake = {
                    Enabled = false, 
                    Intensity = 1.3, 
                    Lifetime = 4
                }, 
                TypeSpeed = 0.03
            }
        }, 2.867);
    end);
    task.delay(2.867, function() --[[ Line: 10958 ]]
        -- upvalues: v27 (ref), v1815 (copy)
        v27.Speak(v1815, {
            {
                Text = "Blue Lock.", 
                Color = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 0, 0)), 
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 89, 255))
                }), 
                TextStrokeColor = Color3.new(0, 0, 0), 
                Bold = true, 
                Italic = true, 
                Shake = {
                    Enabled = true, 
                    Intensity = 3, 
                    Lifetime = 1
                }, 
                TypeSpeed = 0.01
            }
        }, 1);
    end);
    task.delay(0.4666666666666667, function() --[[ Line: 10986 ]]
        -- upvalues: v1819 (copy)
        for _, v1830 in ipairs(v1819.AMM1:GetDescendants()) do
            if v1830:IsA("ParticleEmitter") then
                v1830:Emit(v1830:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(1.183333333333333, function() --[[ Line: 10994 ]]
        -- upvalues: v1819 (copy)
        for _, v1832 in ipairs(v1819.AMM2:GetDescendants()) do
            if v1832:IsA("ParticleEmitter") then
                v1832:Emit(v1832:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(2.083333333333333, function() --[[ Line: 11002 ]]
        -- upvalues: v1819 (copy)
        for _, v1834 in ipairs(v1819.AMM3:GetDescendants()) do
            if v1834:IsA("ParticleEmitter") then
                v1834:Emit(v1834:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(3.983333333333333, function() --[[ Line: 11010 ]]
        -- upvalues: v12 (ref), v1815 (copy), l_ReplicatedStorage_0 (ref)
        v12.Emit(v1815.Head, l_ReplicatedStorage_0.Resources.kaiser.XD, 3);
    end);
    task.delay(4.383333333333333, function() --[[ Line: 11014 ]]
        -- upvalues: v1819 (copy)
        for _, v1836 in ipairs(v1819.JA:GetDescendants()) do
            if v1836:IsA("ParticleEmitter") then
                v1836.Enabled = true;
            end;
        end;
    end);
    task.delay(5.033333333333333, function() --[[ Line: 11022 ]]
        -- upvalues: v1819 (copy)
        for _, v1838 in ipairs(v1819.Aura:GetDescendants()) do
            if v1838:IsA("ParticleEmitter") then
                v1838.Enabled = false;
            end;
        end;
    end);
    task.delay(5.783333333333333, function() --[[ Line: 11030 ]]
        -- upvalues: v1819 (copy)
        for _, v1840 in ipairs(v1819.JA:GetDescendants()) do
            if v1840:IsA("ParticleEmitter") then
                v1840.Enabled = false;
            end;
        end;
    end);
    task.delay(5.85, function() --[[ Line: 11038 ]]
        -- upvalues: v1819 (copy)
        for _, v1842 in ipairs(v1819.JA2:GetDescendants()) do
            if v1842:IsA("ParticleEmitter") then
                v1842.Enabled = true;
            end;
        end;
    end);
    task.delay(5.85, function() --[[ Line: 11046 ]]
        -- upvalues: v1819 (copy), v1820 (copy)
        for _, v1844 in ipairs(v1819.Rose:GetDescendants()) do
            if v1844:IsA("ParticleEmitter") then
                v1844:Emit(v1844:GetAttribute("EmitCount"));
            end;
        end;
        v1820.Transparency = 1;
    end);
    task.delay(6.183333333333333, function() --[[ Line: 11055 ]]
        -- upvalues: v1819 (copy), l_TweenService_0 (ref)
        local l_Rose_1 = v1819.Rose;
        for _, v1847 in pairs(l_Rose_1:GetDescendants()) do
            if v1847:IsA("ParticleEmitter") then
                v1847.TimeScale = 0.9;
                l_TweenService_0:Create(v1847, TweenInfo.new(1), {
                    TimeScale = 0.15
                }):Play();
            end;
        end;
    end);
    task.delay(5.766666666666667, function() --[[ Line: 11066 ]]
        -- upvalues: v12 (ref), l_ReplicatedStorage_0 (ref)
        v12.impactFrame(l_ReplicatedStorage_0.Resources.kaiser.ImpactFrame4);
    end);
    task.delay(7.6, function() --[[ Line: 11070 ]]
        -- upvalues: v12 (ref), v1821 (copy), v1819 (copy), l_ColorCorrectionEffect_16 (copy), l_Atmosphere_19 (copy), l_Density_0 (ref), l_Color_0 (ref), l_Lighting_0 (ref), l_Brightness_0 (ref)
        v12.blackscene(0.5833333333333333);
        v1821:Destroy();
        v1819:Destroy();
        l_ColorCorrectionEffect_16:Destroy();
        l_Atmosphere_19.Density = l_Density_0;
        l_Atmosphere_19.Color = l_Color_0;
        l_Lighting_0.ColorShift_Top = Color3.fromRGB(0, 0, 0);
        l_Lighting_0.Brightness = l_Brightness_0;
        v12.sceneEnabled(false);
        v12.fov(false, 15);
        v12.fov(true, 70, 2, Enum.EasingStyle.Sine, Enum.EasingDirection.Out);
    end);
end;
v12.saenutmeg = function(v1848) --[[ Line: 11090 ]] --[[ Name: saenutmeg ]]
    -- upvalues: l_Lighting_0 (copy), v12 (copy), l_ReplicatedStorage_0 (copy), l_PlayerGui_0 (copy), l_TweenService_0 (copy), v25 (copy), l_SoundService_0 (copy), v27 (copy), l_RunService_0 (copy), l_Density_0 (copy), l_Color_0 (copy), l_Brightness_0 (copy)
    local v1849 = v1848.HumanoidRootPart or v1848.PrimaryPart;
    local _ = v1848.Torso;
    local l_Atmosphere_20 = l_Lighting_0.Atmosphere;
    v12.sceneEnabled(true);
    local v1852 = l_ReplicatedStorage_0.Resources.sae.glowscreen:Clone();
    v1852.Parent = l_PlayerGui_0;
    local l_ImageLabel2_1 = v1852.ImageLabel2;
    l_ImageLabel2_1.ImageTransparency = 0.3;
    local v1854 = l_ReplicatedStorage_0.Resources.sae.allNEWSAE:Clone();
    v1854:PivotTo(v1849.CFrame);
    v1854.Parent = v1848;
    local v1855 = l_ReplicatedStorage_0.Resources.DepthOfField:Clone();
    v1855.Parent = l_Lighting_0;
    v1855.FarIntensity = 0;
    l_TweenService_0:Create(v1855, TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
        FarIntensity = 1
    }):Play();
    local l_ColorCorrectionEffect_17 = Instance.new("ColorCorrectionEffect");
    l_ColorCorrectionEffect_17.TintColor = Color3.fromRGB(255, 255, 255);
    l_ColorCorrectionEffect_17.Parent = l_Lighting_0;
    v25:play(l_ReplicatedStorage_0.Resources.sae["you'll neversurpassme sae only_1"], l_SoundService_0);
    v12.cutsceneBlender(v1849, l_ReplicatedStorage_0.Resources.sae.nutmeg3, l_ReplicatedStorage_0.Resources.sae.FOV2);
    for _, v1858 in ipairs(v1854:GetDescendants()) do
        if v1858:IsA("Beam") or v1858:IsA("ParticleEmitter") then
            v1858.Enabled = false;
        elseif v1858:IsA("BasePart") then
            v1858.Transparency = 1;
        end;
    end;
    v1854.bgblack.Transparency = 0;
    task.delay(3.983, function() --[[ Line: 11135 ]]
        -- upvalues: v27 (ref), v1848 (copy)
        v27.Speak(v1848, {
            {
                Text = "If you keep behaving like you're my little brother...", 
                Color = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 73, 112)), 
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))
                }), 
                TextStrokeColor = Color3.new(0, 0, 0), 
                Bold = false, 
                Italic = false, 
                Shake = {
                    Enabled = false, 
                    Intensity = 1.3, 
                    Lifetime = 2
                }, 
                TypeSpeed = 0.03
            }
        }, 5);
    end);
    task.delay(11.483, function() --[[ Line: 11161 ]]
        -- upvalues: v27 (ref), v1848 (copy)
        v27.Speak(v1848, {
            {
                Text = "...you will never surpass me.", 
                Color = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 73, 112)), 
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))
                }), 
                TextStrokeColor = Color3.new(0, 0, 0), 
                Bold = true, 
                Italic = true, 
                Shake = {
                    Enabled = true, 
                    Intensity = 2, 
                    Lifetime = 3
                }, 
                TypeSpeed = 0.03
            }
        }, 3);
    end);
    task.delay(1.083, function() --[[ Line: 11189 ]]
        -- upvalues: v1854 (copy)
        for _, v1860 in ipairs(v1854.att1:GetDescendants()) do
            if v1860:IsA("ParticleEmitter") then
                v1860:Emit(v1860:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(1.083, function() --[[ Line: 11197 ]]
        -- upvalues: v1854 (copy)
        for _, v1862 in ipairs(v1854.att1:GetDescendants()) do
            if v1862:IsA("ParticleEmitter") then
                v1862:Emit(v1862:GetAttribute("EmitCount"));
            end;
        end;
    end);
    local v1863 = nil;
    task.delay(1.283, function() --[[ Line: 11207 ]]
        -- upvalues: l_ImageLabel2_1 (copy), v1863 (ref), l_ReplicatedStorage_0 (ref), v1848 (copy), v1854 (copy)
        l_ImageLabel2_1.ImageTransparency = 1;
        v1863 = l_ReplicatedStorage_0.Resources.sae.ratrail:Clone();
        v1863.Weld.Part0 = v1848["Right Arm"];
        v1863.Parent = v1854;
        v1854.bgblack.Transparency = 1;
        for _, v1865 in ipairs(v1854.LOM:GetDescendants()) do
            if v1865:IsA("ParticleEmitter") then
                v1865:Emit(v1865:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(3.1, function() --[[ Line: 11224 ]]
        -- upvalues: l_ImageLabel2_1 (copy), v1863 (ref)
        l_ImageLabel2_1.ImageTransparency = 0.3;
        v1863:Destroy();
    end);
    task.delay(6.117, function() --[[ Line: 11230 ]]
        -- upvalues: l_ImageLabel2_1 (copy)
        l_ImageLabel2_1.ImageTransparency = 1;
    end);
    local v1866 = nil;
    task.delay(7.467, function() --[[ Line: 11236 ]]
        -- upvalues: v1854 (copy), l_ImageLabel2_1 (copy), v1866 (ref), l_ReplicatedStorage_0 (ref), l_RunService_0 (ref), l_ColorCorrectionEffect_17 (copy), l_TweenService_0 (ref)
        v1854.redBG.Transparency = 0;
        l_ImageLabel2_1.ImageTransparency = 0;
        v1866 = l_ReplicatedStorage_0.Resources.sae.zoom:Clone();
        v1866.Parent = v1854;
        for _, v1868 in ipairs(v1866:GetDescendants()) do
            if v1868:IsA("ParticleEmitter") then
                v1868.Enabled = true;
            end;
        end;
        local v1869 = nil;
        v1869 = l_RunService_0.PreRender:connect(function() --[[ Line: 11250 ]]
            -- upvalues: v1866 (ref), v1869 (ref)
            if not v1866:IsDescendantOf(game) then
                v1869:Disconnect();
                return;
            else
                v1866.CFrame = workspace.CurrentCamera.CFrame * CFrame.new(0, 0, -0.2);
                return;
            end;
        end);
        l_ColorCorrectionEffect_17.Brightness = -1;
        l_TweenService_0:Create(l_ColorCorrectionEffect_17, TweenInfo.new(0.283, Enum.EasingStyle.Linear), {
            Brightness = 0
        }):Play();
    end);
    local v1870 = nil;
    task.delay(8.267, function() --[[ Line: 11261 ]]
        -- upvalues: l_ColorCorrectionEffect_17 (copy), v1870 (ref), l_TweenService_0 (ref)
        l_ColorCorrectionEffect_17.Brightness = 0;
        v1870 = l_TweenService_0:Create(l_ColorCorrectionEffect_17, TweenInfo.new(0.2, Enum.EasingStyle.Linear), {
            Brightness = -1
        });
        v1870:Play();
    end);
    local v1871 = nil;
    task.delay(8.483, function() --[[ Line: 11269 ]]
        -- upvalues: v1870 (ref), l_ColorCorrectionEffect_17 (copy), v1854 (copy), l_ImageLabel2_1 (copy), v1866 (ref), v1871 (ref), l_ReplicatedStorage_0 (ref), l_RunService_0 (ref)
        if v1870 then
            v1870:Cancel();
            v1870:Destroy();
        end;
        l_ColorCorrectionEffect_17.Brightness = 0;
        v1854.redBG.Transparency = 1;
        l_ImageLabel2_1.ImageTransparency = 1;
        for _, v1873 in ipairs(v1866:GetDescendants()) do
            if v1873:IsA("ParticleEmitter") or v1873:IsA("Beam") then
                v1873.Enabled = false;
            end;
        end;
        v1871 = l_ReplicatedStorage_0.Resources.sae.CAMERAPART:Clone();
        v1871.Parent = v1854;
        local v1874 = nil;
        v1874 = l_RunService_0.PreRender:connect(function() --[[ Line: 11288 ]]
            -- upvalues: v1871 (ref), v1874 (ref)
            if not v1871:IsDescendantOf(game) then
                v1874:Disconnect();
                return;
            else
                v1871.CFrame = workspace.CurrentCamera.CFrame * CFrame.new(0, 0, -2) * CFrame.Angles(0, 0, -1.3962634015954636);
                return;
            end;
        end);
    end);
    task.delay(8.567, function() --[[ Line: 11294 ]]
        -- upvalues: v1854 (copy)
        for _, v1876 in ipairs(v1854.step1:GetDescendants()) do
            if v1876:IsA("ParticleEmitter") then
                v1876:Emit(v1876:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(8.783, function() --[[ Line: 11302 ]]
        -- upvalues: v1854 (copy)
        for _, v1878 in ipairs(v1854.step2:GetDescendants()) do
            if v1878:IsA("ParticleEmitter") then
                v1878:Emit(v1878:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(8.983, function() --[[ Line: 11310 ]]
        -- upvalues: v1854 (copy)
        for _, v1880 in ipairs(v1854.kick1:GetDescendants()) do
            if v1880:IsA("ParticleEmitter") then
                v1880:Emit(v1880:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(9.383, function() --[[ Line: 11320 ]]
        -- upvalues: v1854 (copy)
        for _, v1882 in ipairs(v1854.step3:GetDescendants()) do
            if v1882:IsA("ParticleEmitter") then
                v1882:Emit(v1882:GetAttribute("EmitCount"));
            end;
        end;
    end);
    local v1883 = nil;
    task.delay(10.333, function() --[[ Line: 11332 ]]
        -- upvalues: v1871 (ref), l_ImageLabel2_1 (copy), v1883 (ref), l_ReplicatedStorage_0 (ref), v1848 (copy), v1854 (copy), v1866 (ref)
        if v1871 then
            v1871:Destroy();
        end;
        l_ImageLabel2_1.ImageTransparency = 0.3;
        v1883 = l_ReplicatedStorage_0.Resources.sae.eyesangle:Clone();
        v1883.Weld.Part0 = v1848.Head;
        v1883.Parent = v1854;
        for _, v1885 in ipairs(v1866:GetDescendants()) do
            if v1885:IsA("ParticleEmitter") or v1885:IsA("Beam") then
                v1885.Enabled = true;
            end;
        end;
        for _, v1887 in ipairs(v1854.step4:GetDescendants()) do
            if v1887:IsA("ParticleEmitter") then
                v1887:Emit(v1887:GetAttribute("EmitCount"));
            end;
        end;
        for _, v1889 in ipairs(v1854.pass:GetDescendants()) do
            if v1889:IsA("ParticleEmitter") or v1889:IsA("Beam") then
                v1889.Enabled = true;
            end;
        end;
        for _, v1891 in ipairs(v1854.EW:GetDescendants()) do
            if v1891:IsA("ParticleEmitter") or v1891:IsA("Beam") then
                v1891.Enabled = true;
            end;
        end;
    end);
    task.delay(10.4, function() --[[ Line: 11368 ]]
        -- upvalues: v1854 (copy)
        local l_LOM_0 = v1854.LOM;
        for _, v1894 in pairs(l_LOM_0:GetDescendants()) do
            if v1894:IsA("ParticleEmitter") then
                v1894:Emit(v1894:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(11.45, function() --[[ Line: 11377 ]]
        -- upvalues: l_ImageLabel2_1 (copy), v1883 (ref), v1854 (copy)
        l_ImageLabel2_1.ImageTransparency = 1;
        if v1883 then
            v1883:Destroy();
        end;
        for _, v1896 in ipairs(v1854.EW:GetDescendants()) do
            if v1896:IsA("ParticleEmitter") or v1896:IsA("Beam") then
                v1896.Enabled = false;
            end;
        end;
        for _, v1898 in ipairs(v1854.zoom:GetDescendants()) do
            if v1898:IsA("ParticleEmitter") or v1898:IsA("Beam") then
                v1898.Enabled = false;
            end;
        end;
        for _, v1900 in ipairs(v1854.pass:GetDescendants()) do
            if v1900:IsA("ParticleEmitter") or v1900:IsA("Beam") then
                v1900.Enabled = false;
            end;
        end;
    end);
    local v1901 = nil;
    task.delay(13.583, function() --[[ Line: 11405 ]]
        -- upvalues: v1901 (ref), l_ReplicatedStorage_0 (ref), v1854 (copy), l_RunService_0 (ref)
        v1901 = l_ReplicatedStorage_0.Resources.sae.CAMERAPART2:Clone();
        v1901.Parent = v1854;
        local v1902 = nil;
        v1902 = l_RunService_0.PreRender:connect(function() --[[ Line: 11412 ]]
            -- upvalues: v1901 (ref), v1902 (ref)
            if not v1901:IsDescendantOf(game) then
                v1902:Disconnect();
                return;
            else
                v1901.CFrame = workspace.CurrentCamera.CFrame * CFrame.new(0, 0, -2.5) * CFrame.Angles(0, 0, -1.3089969389957472);
                return;
            end;
        end);
    end);
    task.delay(15.317, function() --[[ Line: 11419 ]]
        -- upvalues: v12 (ref), v1854 (copy)
        v12.bright(0.3, 0.3);
        for _, v1904 in ipairs(v1854.charw:GetDescendants()) do
            if v1904:IsA("ParticleEmitter") or v1904:IsA("Beam") then
                v1904.Enabled = true;
            end;
        end;
        for _, v1906 in ipairs(v1854.spinbeam:GetDescendants()) do
            if v1906:IsA("ParticleEmitter") or v1906:IsA("Beam") then
                v1906.Enabled = true;
            end;
        end;
        for _, v1908 in ipairs(v1854.step5:GetDescendants()) do
            if v1908:IsA("ParticleEmitter") then
                v1908:Emit(v1908:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(15.733, function() --[[ Line: 11444 ]]
        -- upvalues: v12 (ref), v1901 (ref), l_ReplicatedStorage_0 (ref), v1854 (copy), l_RunService_0 (ref), l_TweenService_0 (ref)
        v12.bright(0.8, 0.6);
        if v1901 then
            v1901:Destroy();
        end;
        local v1909 = l_ReplicatedStorage_0.Resources.sae.CAMERAPART2:Clone();
        v1909.Parent = v1854;
        local v1910 = nil;
        v1910 = l_RunService_0.PreRender:connect(function() --[[ Line: 11456 ]]
            -- upvalues: v1909 (copy), v1910 (ref)
            if not v1909:IsDescendantOf(game) then
                v1910:Disconnect();
                return;
            else
                v1909.CFrame = workspace.CurrentCamera.CFrame * CFrame.new(0, 0, -2) * CFrame.Angles(0, 0, 1.3962634015954636);
                return;
            end;
        end);
        for _, v1912 in ipairs(v1854.swing:GetDescendants()) do
            if v1912:IsA("Beam") then
                v1912.Enabled = true;
            end;
        end;
        for _, v1914 in ipairs(v1854.step6:GetDescendants()) do
            if v1914:IsA("ParticleEmitter") then
                v1914:Emit(v1914:GetAttribute("EmitCount"));
                v1914.TimeScale = 1;
                l_TweenService_0:Create(v1914, TweenInfo.new(1), {
                    TimeScale = 0
                }):Play();
            end;
        end;
        for _, v1916 in ipairs(v1854.charw:GetDescendants()) do
            if v1916:IsA("ParticleEmitter") or v1916:IsA("Beam") then
                v1916.Enabled = false;
            end;
        end;
        for _, v1918 in ipairs(v1854.spinbeam:GetDescendants()) do
            if v1918:IsA("ParticleEmitter") or v1918:IsA("Beam") then
                v1918.Enabled = false;
            end;
        end;
    end);
    task.delay(16.917, function() --[[ Line: 11543 ]]
        -- upvalues: v1855 (copy), v1854 (copy), l_ColorCorrectionEffect_17 (copy), l_Atmosphere_20 (copy), l_Density_0 (ref), l_Color_0 (ref), l_Lighting_0 (ref), l_Brightness_0 (ref), v12 (ref)
        v1855:Destroy();
        v1854:Destroy();
        l_ColorCorrectionEffect_17:Destroy();
        l_Atmosphere_20.Density = l_Density_0;
        l_Atmosphere_20.Color = l_Color_0;
        l_Lighting_0.ColorShift_Top = Color3.fromRGB(0, 0, 0);
        l_Lighting_0.Brightness = l_Brightness_0;
        v12.ultFlash();
        v12.sceneEnabled(false);
        v12.fov(false, 15);
        v12.fov(true, 70, 2, Enum.EasingStyle.Sine, Enum.EasingDirection.Out);
    end);
end;
v12.rvs = function(v1919, v1920) --[[ Line: 11563 ]] --[[ Name: rvs ]]
    -- upvalues: l_Lighting_0 (copy), v12 (copy), l_ReplicatedStorage_0 (copy), l_RunService_0 (copy), l_TweenService_0 (copy), v25 (copy), l_SoundService_0 (copy), v27 (copy), l_PlayerGui_0 (copy), l_Density_0 (copy), l_Color_0 (copy), l_Brightness_0 (copy)
    local v1921 = v1919.HumanoidRootPart or v1919.PrimaryPart;
    local _ = v1919.Torso;
    local l_Atmosphere_21 = l_Lighting_0.Atmosphere;
    v12.sceneEnabled(true);
    local v1924 = l_ReplicatedStorage_0.Resources.sae.allNEWSAEvsrin:Clone();
    v1924:PivotTo(v1921.CFrame);
    v1924.Parent = v1919;
    for _, v1926 in ipairs(v1924:GetDescendants()) do
        if v1926:IsA("Beam") or v1926:IsA("ParticleEmitter") then
            v1926.Enabled = false;
        elseif v1926:IsA("BasePart") then
            v1926.Transparency = 1;
        end;
    end;
    local v1927 = l_ReplicatedStorage_0.Resources.sae.CAMERAPART:Clone();
    v1927.Parent = v1924;
    local v1928 = nil;
    v1928 = l_RunService_0.PreRender:connect(function() --[[ Line: 11588 ]]
        -- upvalues: v1927 (copy), v1928 (ref)
        if not v1927:IsDescendantOf(game) then
            v1928:Disconnect();
            return;
        else
            v1927.CFrame = workspace.CurrentCamera.CFrame * CFrame.new(0, 0, -2) * CFrame.Angles(0, 0, -1.3962634015954636);
            return;
        end;
    end);
    local v1929 = l_ReplicatedStorage_0.Resources.DepthOfField:Clone();
    v1929.Parent = l_Lighting_0;
    v1929.FarIntensity = 0;
    l_TweenService_0:Create(v1929, TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
        FarIntensity = 1
    }):Play();
    local l_ColorCorrectionEffect_18 = Instance.new("ColorCorrectionEffect");
    l_ColorCorrectionEffect_18.TintColor = Color3.fromRGB(255, 255, 255);
    l_ColorCorrectionEffect_18.Parent = l_Lighting_0;
    v25:play(l_ReplicatedStorage_0.Resources.sae.saevsrinya, l_SoundService_0);
    v12.cutsceneBlender(v1921, l_ReplicatedStorage_0.Resources.sae.rvs3, l_ReplicatedStorage_0.Resources.sae.rvsFOV);
    task.delay(0.867, function() --[[ Line: 11606 ]]
        -- upvalues: v27 (ref), v1920 (copy)
        v27.Speak(v1920, {
            {
                Text = "Get lost, outsiders.", 
                Color = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 0, 0)), 
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))
                }), 
                TextStrokeColor = Color3.new(0, 0, 0), 
                Bold = true, 
                Italic = true, 
                Shake = {
                    Enabled = true, 
                    Intensity = 1.3, 
                    Lifetime = 3
                }, 
                TypeSpeed = 0.03
            }
        }, 3);
    end);
    task.delay(2.5, function() --[[ Line: 11632 ]]
        -- upvalues: v27 (ref), v1920 (copy)
        v27.Speak(v1920, {
            {
                Text = "We're in the middle of a sibling fight!", 
                Color = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 0, 0)), 
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))
                }), 
                TextStrokeColor = Color3.new(0, 0, 0), 
                Bold = true, 
                Italic = true, 
                Shake = {
                    Enabled = true, 
                    Intensity = 2, 
                    Lifetime = 3
                }, 
                TypeSpeed = 0.03
            }
        }, 3);
    end);
    task.delay(0.233, function() --[[ Line: 11658 ]]
        -- upvalues: v1924 (copy)
        local l_Stap_0 = v1924.Stap;
        for _, v1933 in pairs(l_Stap_0:GetDescendants()) do
            if v1933:IsA("ParticleEmitter") then
                v1933:Emit(v1933:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(0.233, function() --[[ Line: 11667 ]]
        -- upvalues: v1924 (copy)
        local l_Stap_1 = v1924.Stap;
        for _, v1936 in pairs(l_Stap_1:GetDescendants()) do
            if v1936:IsA("ParticleEmitter") then
                v1936:Emit(v1936:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(4.65, function() --[[ Line: 11676 ]]
        -- upvalues: v1924 (copy)
        local l_rinunique_grasstep1_0 = v1924.rinunique_grasstep1;
        for _, v1939 in pairs(l_rinunique_grasstep1_0:GetDescendants()) do
            if v1939:IsA("ParticleEmitter") then
                v1939:Emit(v1939:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(5.4, function() --[[ Line: 11686 ]]
        -- upvalues: v1924 (copy)
        local l_rinunique_grasstep2_0 = v1924.rinunique_grasstep2;
        for _, v1942 in pairs(l_rinunique_grasstep2_0:GetDescendants()) do
            if v1942:IsA("ParticleEmitter") then
                v1942:Emit(v1942:GetAttribute("EmitCount"));
            end;
        end;
    end);
    local v1943 = {};
    local v1944 = {};
    task.delay(5.517, function() --[[ Line: 11698 ]]
        -- upvalues: v1919 (copy), l_ReplicatedStorage_0 (ref), v1943 (copy), v1924 (copy)
        for _, v1946 in ipairs(v1919:GetChildren()) do
            if v1946:IsA("Part") and v1946.Transparency < 1 then
                for _, v1948 in ipairs(l_ReplicatedStorage_0.Resources.sae.rinvssaeaura:GetChildren()) do
                    local v1949 = v1948:Clone();
                    v1949.Enabled = true;
                    v1949.Parent = v1946;
                    table.insert(v1943, v1949);
                end;
            end;
        end;
        local l_rinunique_grasstep3_0 = v1924.rinunique_grasstep3;
        for _, v1952 in pairs(l_rinunique_grasstep3_0:GetDescendants()) do
            if v1952:IsA("ParticleEmitter") then
                v1952:Emit(v1952:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(6.003, function() --[[ Line: 11722 ]]
        -- upvalues: v1920 (copy), l_ReplicatedStorage_0 (ref), v1944 (copy)
        for _, v1954 in ipairs(v1920:GetChildren()) do
            if v1954:IsA("Part") and v1954.Transparency < 1 then
                for _, v1956 in ipairs(l_ReplicatedStorage_0.Resources.sae.rinvssaeaurarin:GetChildren()) do
                    local v1957 = v1956:Clone();
                    v1957.Enabled = true;
                    v1957.Parent = v1954;
                    table.insert(v1944, v1957);
                end;
            end;
        end;
    end);
    task.delay(6.65, function() --[[ Line: 11738 ]]
        -- upvalues: v1943 (copy), v1924 (copy), v1927 (copy)
        for _, v1959 in v1943 do
            v1959:Destroy();
        end;
        table.clear(v1943);
        local l_Stap2_0 = v1924.Stap2;
        for _, v1962 in pairs(l_Stap2_0:GetDescendants()) do
            if v1962:IsA("ParticleEmitter") then
                v1962:Emit(v1962:GetAttribute("EmitCount"));
            end;
        end;
        v1927:Destroy();
    end);
    task.wait(8.35);
    for _, v1964 in v1944 do
        v1964:Destroy();
    end;
    table.clear(v1944);
    local v1965 = l_ReplicatedStorage_0.Resources.sae.glowscreen:Clone();
    v1965.Parent = l_PlayerGui_0;
    local l_ImageLabel2_2 = v1965.ImageLabel2;
    l_ImageLabel2_2.ImageTransparency = 1;
    l_TweenService_0:Create(v1924.bgblack, TweenInfo.new(0.3), {
        Transparency = 0
    }):Play();
    l_TweenService_0:Create(l_ImageLabel2_2, TweenInfo.new(0.3), {
        ImageTransparency = 0.3
    }):Play();
    task.delay(3.983, function() --[[ Line: 11774 ]]
        -- upvalues: v27 (ref), v1919 (copy)
        v27.Speak(v1919, {
            {
                Text = "If you keep behaving like you're my little brother...", 
                Color = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 73, 112)), 
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))
                }), 
                TextStrokeColor = Color3.new(0, 0, 0), 
                Bold = false, 
                Italic = false, 
                Shake = {
                    Enabled = false, 
                    Intensity = 1.3, 
                    Lifetime = 2
                }, 
                TypeSpeed = 0.03
            }
        }, 5);
    end);
    task.delay(11.483, function() --[[ Line: 11800 ]]
        -- upvalues: v27 (ref), v1919 (copy)
        v27.Speak(v1919, {
            {
                Text = "...you will never surpass me.", 
                Color = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 73, 112)), 
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))
                }), 
                TextStrokeColor = Color3.new(0, 0, 0), 
                Bold = true, 
                Italic = true, 
                Shake = {
                    Enabled = true, 
                    Intensity = 2, 
                    Lifetime = 3
                }, 
                TypeSpeed = 0.03
            }
        }, 3);
    end);
    task.delay(1.083, function() --[[ Line: 11828 ]]
        -- upvalues: v1924 (copy)
        for _, v1968 in ipairs(v1924.att1:GetDescendants()) do
            if v1968:IsA("ParticleEmitter") then
                v1968:Emit(v1968:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(1.083, function() --[[ Line: 11836 ]]
        -- upvalues: v1924 (copy)
        for _, v1970 in ipairs(v1924.att1:GetDescendants()) do
            if v1970:IsA("ParticleEmitter") then
                v1970:Emit(v1970:GetAttribute("EmitCount"));
            end;
        end;
    end);
    local v1971 = nil;
    task.delay(1.283, function() --[[ Line: 11846 ]]
        -- upvalues: l_ImageLabel2_2 (copy), v1971 (ref), l_ReplicatedStorage_0 (ref), v1919 (copy), v1924 (copy)
        l_ImageLabel2_2.ImageTransparency = 1;
        v1971 = l_ReplicatedStorage_0.Resources.sae.ratrail:Clone();
        v1971.Weld.Part0 = v1919["Right Arm"];
        v1971.Parent = v1924;
        v1924.bgblack.Transparency = 1;
        for _, v1973 in ipairs(v1924.LOM:GetDescendants()) do
            if v1973:IsA("ParticleEmitter") then
                v1973:Emit(v1973:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(3.1, function() --[[ Line: 11863 ]]
        -- upvalues: l_ImageLabel2_2 (copy), v1971 (ref)
        l_ImageLabel2_2.ImageTransparency = 0.3;
        v1971:Destroy();
    end);
    task.delay(6.117, function() --[[ Line: 11869 ]]
        -- upvalues: l_ImageLabel2_2 (copy)
        l_ImageLabel2_2.ImageTransparency = 1;
    end);
    local v1974 = nil;
    task.delay(7.467, function() --[[ Line: 11875 ]]
        -- upvalues: v1924 (copy), l_ImageLabel2_2 (copy), v1974 (ref), l_ReplicatedStorage_0 (ref), l_RunService_0 (ref), l_ColorCorrectionEffect_18 (copy), l_TweenService_0 (ref)
        v1924.redBG.Transparency = 0;
        l_ImageLabel2_2.ImageTransparency = 0;
        v1974 = l_ReplicatedStorage_0.Resources.sae.zoom:Clone();
        v1974.Parent = v1924;
        for _, v1976 in ipairs(v1974:GetDescendants()) do
            if v1976:IsA("ParticleEmitter") then
                v1976.Enabled = true;
            end;
        end;
        local v1977 = nil;
        v1977 = l_RunService_0.PreRender:connect(function() --[[ Line: 11889 ]]
            -- upvalues: v1974 (ref), v1977 (ref)
            if not v1974:IsDescendantOf(game) then
                v1977:Disconnect();
                return;
            else
                v1974.CFrame = workspace.CurrentCamera.CFrame * CFrame.new(0, 0, -0.2);
                return;
            end;
        end);
        l_ColorCorrectionEffect_18.Brightness = -1;
        l_TweenService_0:Create(l_ColorCorrectionEffect_18, TweenInfo.new(0.283, Enum.EasingStyle.Linear), {
            Brightness = 0
        }):Play();
    end);
    local v1978 = nil;
    task.delay(8.267, function() --[[ Line: 11900 ]]
        -- upvalues: l_ColorCorrectionEffect_18 (copy), v1978 (ref), l_TweenService_0 (ref)
        l_ColorCorrectionEffect_18.Brightness = 0;
        v1978 = l_TweenService_0:Create(l_ColorCorrectionEffect_18, TweenInfo.new(0.2, Enum.EasingStyle.Linear), {
            Brightness = -1
        });
        v1978:Play();
    end);
    local v1979 = nil;
    task.delay(8.483, function() --[[ Line: 11908 ]]
        -- upvalues: v1978 (ref), l_ColorCorrectionEffect_18 (copy), v1924 (copy), l_ImageLabel2_2 (copy), v1974 (ref), v1979 (ref), l_ReplicatedStorage_0 (ref), l_RunService_0 (ref)
        if v1978 then
            v1978:Cancel();
            v1978:Destroy();
        end;
        l_ColorCorrectionEffect_18.Brightness = 0;
        v1924.redBG.Transparency = 1;
        l_ImageLabel2_2.ImageTransparency = 1;
        for _, v1981 in ipairs(v1974:GetDescendants()) do
            if v1981:IsA("ParticleEmitter") or v1981:IsA("Beam") then
                v1981.Enabled = false;
            end;
        end;
        v1979 = l_ReplicatedStorage_0.Resources.sae.CAMERAPART:Clone();
        v1979.Parent = v1924;
        local v1982 = nil;
        v1982 = l_RunService_0.PreRender:connect(function() --[[ Line: 11927 ]]
            -- upvalues: v1979 (ref), v1982 (ref)
            if not v1979:IsDescendantOf(game) then
                v1982:Disconnect();
                return;
            else
                v1979.CFrame = workspace.CurrentCamera.CFrame * CFrame.new(0, 0, -2) * CFrame.Angles(0, 0, -1.3962634015954636);
                return;
            end;
        end);
    end);
    task.delay(8.567, function() --[[ Line: 11933 ]]
        -- upvalues: v1924 (copy)
        for _, v1984 in ipairs(v1924.step1:GetDescendants()) do
            if v1984:IsA("ParticleEmitter") then
                v1984:Emit(v1984:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(8.783, function() --[[ Line: 11941 ]]
        -- upvalues: v1924 (copy)
        for _, v1986 in ipairs(v1924.step2:GetDescendants()) do
            if v1986:IsA("ParticleEmitter") then
                v1986:Emit(v1986:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(8.983, function() --[[ Line: 11949 ]]
        -- upvalues: v1924 (copy)
        for _, v1988 in ipairs(v1924.kick1:GetDescendants()) do
            if v1988:IsA("ParticleEmitter") then
                v1988:Emit(v1988:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(9.383, function() --[[ Line: 11959 ]]
        -- upvalues: v1924 (copy)
        for _, v1990 in ipairs(v1924.step3:GetDescendants()) do
            if v1990:IsA("ParticleEmitter") then
                v1990:Emit(v1990:GetAttribute("EmitCount"));
            end;
        end;
    end);
    local v1991 = nil;
    task.delay(10.333, function() --[[ Line: 11971 ]]
        -- upvalues: v1979 (ref), l_ImageLabel2_2 (copy), v1991 (ref), l_ReplicatedStorage_0 (ref), v1919 (copy), v1924 (copy), v1974 (ref)
        if v1979 then
            v1979:Destroy();
        end;
        l_ImageLabel2_2.ImageTransparency = 0.3;
        v1991 = l_ReplicatedStorage_0.Resources.sae.eyesangle:Clone();
        v1991.Weld.Part0 = v1919.Head;
        v1991.Parent = v1924;
        for _, v1993 in ipairs(v1974:GetDescendants()) do
            if v1993:IsA("ParticleEmitter") or v1993:IsA("Beam") then
                v1993.Enabled = true;
            end;
        end;
        for _, v1995 in ipairs(v1924.step4:GetDescendants()) do
            if v1995:IsA("ParticleEmitter") then
                v1995:Emit(v1995:GetAttribute("EmitCount"));
            end;
        end;
        for _, v1997 in ipairs(v1924.pass:GetDescendants()) do
            if v1997:IsA("ParticleEmitter") or v1997:IsA("Beam") then
                v1997.Enabled = true;
            end;
        end;
        for _, v1999 in ipairs(v1924.EW:GetDescendants()) do
            if v1999:IsA("ParticleEmitter") or v1999:IsA("Beam") then
                v1999.Enabled = true;
            end;
        end;
    end);
    task.delay(10.4, function() --[[ Line: 12007 ]]
        -- upvalues: v1924 (copy)
        local l_LOM_1 = v1924.LOM;
        for _, v2002 in pairs(l_LOM_1:GetDescendants()) do
            if v2002:IsA("ParticleEmitter") then
                v2002:Emit(v2002:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(11.45, function() --[[ Line: 12016 ]]
        -- upvalues: l_ImageLabel2_2 (copy), v1991 (ref), v1924 (copy)
        l_ImageLabel2_2.ImageTransparency = 1;
        if v1991 then
            v1991:Destroy();
        end;
        for _, v2004 in ipairs(v1924.EW:GetDescendants()) do
            if v2004:IsA("ParticleEmitter") or v2004:IsA("Beam") then
                v2004.Enabled = false;
            end;
        end;
        for _, v2006 in ipairs(v1924.zoom:GetDescendants()) do
            if v2006:IsA("ParticleEmitter") or v2006:IsA("Beam") then
                v2006.Enabled = false;
            end;
        end;
        for _, v2008 in ipairs(v1924.pass:GetDescendants()) do
            if v2008:IsA("ParticleEmitter") or v2008:IsA("Beam") then
                v2008.Enabled = false;
            end;
        end;
    end);
    local v2009 = nil;
    task.delay(13.583, function() --[[ Line: 12044 ]]
        -- upvalues: v2009 (ref), l_ReplicatedStorage_0 (ref), v1924 (copy), l_RunService_0 (ref)
        v2009 = l_ReplicatedStorage_0.Resources.sae.CAMERAPART2:Clone();
        v2009.Parent = v1924;
        local v2010 = nil;
        v2010 = l_RunService_0.PreRender:connect(function() --[[ Line: 12051 ]]
            -- upvalues: v2009 (ref), v2010 (ref)
            if not v2009:IsDescendantOf(game) then
                v2010:Disconnect();
                return;
            else
                v2009.CFrame = workspace.CurrentCamera.CFrame * CFrame.new(0, 0, -2.5) * CFrame.Angles(0, 0, -1.3089969389957472);
                return;
            end;
        end);
    end);
    task.delay(15.317, function() --[[ Line: 12058 ]]
        -- upvalues: v12 (ref), v1924 (copy)
        v12.bright(0.3, 0.3);
        for _, v2012 in ipairs(v1924.charw:GetDescendants()) do
            if v2012:IsA("ParticleEmitter") or v2012:IsA("Beam") then
                v2012.Enabled = true;
            end;
        end;
        for _, v2014 in ipairs(v1924.spinbeam:GetDescendants()) do
            if v2014:IsA("ParticleEmitter") or v2014:IsA("Beam") then
                v2014.Enabled = true;
            end;
        end;
        for _, v2016 in ipairs(v1924.step5:GetDescendants()) do
            if v2016:IsA("ParticleEmitter") then
                v2016:Emit(v2016:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(15.733, function() --[[ Line: 12083 ]]
        -- upvalues: v12 (ref), v2009 (ref), l_ReplicatedStorage_0 (ref), v1924 (copy), l_RunService_0 (ref), l_TweenService_0 (ref)
        v12.bright(0.8, 0.6);
        if v2009 then
            v2009:Destroy();
        end;
        local v2017 = l_ReplicatedStorage_0.Resources.sae.CAMERAPART2:Clone();
        v2017.Parent = v1924;
        local v2018 = nil;
        v2018 = l_RunService_0.PreRender:connect(function() --[[ Line: 12095 ]]
            -- upvalues: v2017 (copy), v2018 (ref)
            if not v2017:IsDescendantOf(game) then
                v2018:Disconnect();
                return;
            else
                v2017.CFrame = workspace.CurrentCamera.CFrame * CFrame.new(0, 0, -2) * CFrame.Angles(0, 0, 1.3962634015954636);
                return;
            end;
        end);
        for _, v2020 in ipairs(v1924.swing:GetDescendants()) do
            if v2020:IsA("Beam") then
                v2020.Enabled = true;
            end;
        end;
        for _, v2022 in ipairs(v1924.step6:GetDescendants()) do
            if v2022:IsA("ParticleEmitter") then
                v2022:Emit(v2022:GetAttribute("EmitCount"));
                v2022.TimeScale = 1;
                l_TweenService_0:Create(v2022, TweenInfo.new(1), {
                    TimeScale = 0
                }):Play();
            end;
        end;
        for _, v2024 in ipairs(v1924.charw:GetDescendants()) do
            if v2024:IsA("ParticleEmitter") or v2024:IsA("Beam") then
                v2024.Enabled = false;
            end;
        end;
        for _, v2026 in ipairs(v1924.spinbeam:GetDescendants()) do
            if v2026:IsA("ParticleEmitter") or v2026:IsA("Beam") then
                v2026.Enabled = false;
            end;
        end;
    end);
    task.delay(16.917, function() --[[ Line: 12182 ]]
        -- upvalues: v1929 (copy), v1924 (copy), l_ColorCorrectionEffect_18 (copy), l_Atmosphere_21 (copy), l_Density_0 (ref), l_Color_0 (ref), l_Lighting_0 (ref), l_Brightness_0 (ref), v12 (ref)
        v1929:Destroy();
        v1924:Destroy();
        l_ColorCorrectionEffect_18:Destroy();
        l_Atmosphere_21.Density = l_Density_0;
        l_Atmosphere_21.Color = l_Color_0;
        l_Lighting_0.ColorShift_Top = Color3.fromRGB(0, 0, 0);
        l_Lighting_0.Brightness = l_Brightness_0;
        v12.ultFlash();
        v12.sceneEnabled(false);
        v12.fov(false, 15);
        v12.fov(true, 70, 2, Enum.EasingStyle.Sine, Enum.EasingDirection.Out);
    end);
end;
v12.saeskill2 = function(v2027, _) --[[ Line: 12203 ]] --[[ Name: saeskill2 ]]
    -- upvalues: l_Players_0 (copy), v25 (copy), l_ReplicatedStorage_0 (copy), l_CurrentCamera_0 (copy), l_RunService_0 (copy), l_Lighting_0 (copy), l_TweenService_0 (copy), v12 (copy)
    local v2029 = v2027.HumanoidRootPart or v2027.PrimaryPart;
    l_Players_0.LocalPlayer.character:SetAttribute("disableRotate", true);
    v25:play(l_ReplicatedStorage_0.Resources.sae.countered, v2029);
    local v2030 = l_ReplicatedStorage_0.Resources.sae.bgScene:Clone();
    v2030.Parent = workspace.Effects;
    v2030.CFrame = l_CurrentCamera_0.CFrame * CFrame.new(0, 0, -2);
    for _, v2032 in ipairs(v2030:GetDescendants()) do
        if v2032:IsA("ParticleEmitter") then
            v2032:Emit(v2032:GetAttribute("EmitCount"));
        end;
    end;
    local v2034 = l_RunService_0.PreRender:connect(function(_) --[[ Line: 12224 ]]
        -- upvalues: v2030 (copy), l_CurrentCamera_0 (ref)
        v2030.CFrame = l_CurrentCamera_0.CFrame * CFrame.new(0, 0, -2);
    end);
    task.delay(5, v2034.Disconnect, v2034);
    task.delay(5, v2030.Destroy, v2030);
    local v2035 = l_ReplicatedStorage_0.Resources.ColorCorrection:Clone();
    v2035.Parent = l_Lighting_0;
    v2035.TintColor = Color3.fromRGB(149, 156, 255);
    v2035.Brightness = 0.1;
    v2035.Contrast = 15;
    l_TweenService_0:Create(v2035, TweenInfo.new(0.55), {
        Contrast = 0.5
    }):Play();
    v12.fov(false, 30);
    v12.cameraShake(20, 1.5, 3);
    v12.fov(true, 70, 0.8333333333333333, Enum.EasingStyle.Quart, Enum.EasingDirection.Out);
    v12.characterImage({
        Whitelist = {
            v2027
        }, 
        Speed = 2.5, 
        Brightness = 1, 
        Color = Color3.fromRGB(255, 255, 255)
    });
    task.wait(0.8333333333333333);
    v12.cameraShake(20, 1, 3);
    l_TweenService_0:Create(v2035, TweenInfo.new(1), {
        TintColor = Color3.fromRGB(255, 255, 255), 
        Contrast = 0, 
        Brightness = 0
    }):Play();
    task.delay(1, v2035.Destroy, v2035);
    v12.characterImage({
        Whitelist = {
            v2027
        }, 
        Duration = 0.8, 
        Speed = 0.5, 
        CFrames = true, 
        Brightness = 1, 
        Count = 5, 
        countSpeed = 0.1, 
        Color = Color3.fromRGB(220, 172, 255)
    });
    local v2036, v2037 = v12.bodyVelocity(v2029, 80, 0.8, nil, nil, true, TweenInfo.new(1, Enum.EasingStyle.Quart, Enum.EasingDirection.In));
    local v2038 = -5;
    local v2039 = 0;
    local v2040 = nil;
    v2040 = l_RunService_0.RenderStepped:Connect(function(v2041) --[[ Line: 12262 ]]
        -- upvalues: v2036 (copy), v2040 (ref), v2029 (copy), v2037 (copy), v2039 (ref), v2038 (ref)
        if not v2036 or not v2036:IsDescendantOf(game) then
            v2040:Disconnect();
            return;
        else
            local v2042 = v2029.CFrame.LookVector * v2037.Value;
            v2039 = v2039 + v2041;
            v2038 = v2038 + math.sin(v2039 * 1) * v2041 * 240;
            v2038 = math.clamp(v2038, -10, 0);
            v2036.Velocity = v2042 + v2029.CFrame.RightVector * (v2038 * 10);
            return;
        end;
    end);
    task.delay(15, v2040.Disconnect, v2040);
    l_Players_0.LocalPlayer.character:SetAttribute("disableRotate", false);
end;
v12.saePass = function(v2043) --[[ Line: 12297 ]] --[[ Name: saePass ]]
    -- upvalues: l_Players_0 (copy), v12 (copy)
    if not v2043.HumanoidRootPart then
        local _ = v2043.PrimaryPart;
    end;
    if l_Players_0.LocalPlayer ~= l_Players_0:GetPlayerFromCharacter(v2043) then
        return;
    else
        v12.fov(false, 55);
        v12.fov(true, 70, 1.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out);
        return;
    end;
end;
v12.mvpGoal = function(v2045, v2046, v2047) --[[ Line: 12311 ]] --[[ Name: mvpGoal ]]
    -- upvalues: l_Players_0 (copy), l_ReplicatedStorage_0 (copy), l_PlayerGui_0 (copy), l_TweenService_0 (copy), v12 (copy)
    if not v2047 then
        return;
    else
        local _ = l_Players_0.LocalPlayer.Character:FindFirstChildOfClass("Humanoid");
        local v2049 = v2047 == "A" and v2045 or v2046;
        if v2047 == "A" then
            v2045 = v2045 - 1;
        else
            v2046 = v2046 - 1;
        end;
        local v2050 = l_ReplicatedStorage_0.Resources.GoalUI:Clone();
        v2050.Parent = l_PlayerGui_0;
        v2050.Frame.ImageLabel2.ImageTransparency = 1;
        v2050.Frame.ImageLabel.Position = UDim2.new(0.1, 0, -1, 0);
        v2050.Frame.A.Text = v2045;
        v2050.Frame.B.Text = v2046;
        task.delay(1, function() --[[ Line: 12335 ]]
            -- upvalues: v2050 (copy), v2047 (copy), l_TweenService_0 (ref), v2049 (copy)
            v2050.Frame[v2047].BackgroundTransparency = 0;
            l_TweenService_0:Create(v2050.Frame[v2047], TweenInfo.new(0.3), {
                BackgroundTransparency = 1
            }):Play();
            v2050.Frame[v2047].Text = v2049;
            l_TweenService_0:Create(v2050.Frame.A, TweenInfo.new(3), {
                TextTransparency = 1
            }):Play();
            l_TweenService_0:Create(v2050.Frame.B, TweenInfo.new(3), {
                TextTransparency = 1
            }):Play();
            l_TweenService_0:Create(v2050.Frame.TextLabel, TweenInfo.new(3), {
                TextTransparency = 1
            }):Play();
        end);
        l_TweenService_0:Create(v2050.Frame.ImageLabel, TweenInfo.new(0.55, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
            Position = UDim2.new(0.1, 0, 0, 0)
        }):Play();
        l_TweenService_0:Create(v2050.Frame.ImageLabel, TweenInfo.new(2, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
            ImageTransparency = 1
        }):Play();
        v12.bright(0.35, 1);
        task.delay(4, v2050.Destroy, v2050);
        return;
    end;
end;
v12.saeVSrinUI = function(v2051) --[[ Line: 12356 ]] --[[ Name: saeVSrinUI ]]
    -- upvalues: l_ReplicatedStorage_0 (copy), l_PlayerGui_0 (copy), l_TweenService_0 (copy)
    local v2052 = v2051 and Color3.fromRGB(255, 73, 161) or Color3.fromRGB(101, 234, 255);
    local v2053 = l_ReplicatedStorage_0.Resources.rin.SAEVSRIN:Clone();
    v2053.CanvasGroup.GroupTransparency = 1;
    v2053.Parent = l_PlayerGui_0;
    l_TweenService_0:Create(v2053.CanvasGroup, TweenInfo.new(1), {
        GroupTransparency = 0
    }):Play();
    l_TweenService_0:Create(v2053.CanvasGroup.ImageLabel, TweenInfo.new(2, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
        Size = UDim2.new(1, 0, 1, 0), 
        ImageColor3 = v2052
    }):Play();
    task.wait(2);
    l_TweenService_0:Create(v2053.CanvasGroup.Frame, TweenInfo.new(1, Enum.EasingStyle.Quart, Enum.EasingDirection.In), {
        BackgroundTransparency = 0
    }):Play();
    task.wait(1);
    v2053:Destroy();
end;
v12.blackscene = function(v2054) --[[ Line: 12373 ]] --[[ Name: blackscene ]]
    -- upvalues: l_ReplicatedStorage_0 (copy), l_PlayerGui_0 (copy), l_TweenService_0 (copy)
    v2054 = v2054 or 3;
    local v2055 = l_ReplicatedStorage_0.Resources.Black:Clone();
    v2055.Parent = l_PlayerGui_0;
    v2055.Frame.BackgroundTransparency = 1;
    l_TweenService_0:Create(v2055.Frame, TweenInfo.new(v2054), {
        BackgroundTransparency = 0
    }):Play();
    task.wait(v2054 + 1);
    l_TweenService_0:Create(v2055.Frame, TweenInfo.new(0.35, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
        BackgroundTransparency = 1
    }):Play();
    task.delay(0.35, v2055.Destroy, v2055);
end;
v12.kaisercounter = function(v2056) --[[ Line: 12387 ]] --[[ Name: kaisercounter ]]
    -- upvalues: l_Lighting_0 (copy), v12 (copy), l_ReplicatedStorage_0 (copy), l_TweenService_0 (copy), v25 (copy), l_SoundService_0 (copy), l_PlayerGui_0 (copy), l_ClockTime_0 (copy), l_RunService_0 (copy), l_Density_0 (copy), l_Color_0 (copy), l_Brightness_0 (copy)
    local l_Ball_22 = v2056:FindFirstChild("Ball");
    local v2058 = v2056.HumanoidRootPart or v2056.PrimaryPart;
    local _ = v2056.Torso;
    local l_Atmosphere_22 = l_Lighting_0.Atmosphere;
    v12.bright(1, 1.5);
    v12.sceneEnabled(true);
    v12.cutsceneLeftright(v2058, l_ReplicatedStorage_0.Resources.kaiser.skill1counter3, l_ReplicatedStorage_0.Resources.kaiser.FOV);
    local v2061 = l_ReplicatedStorage_0.Resources.kaiser.ColorCorrection:Clone();
    v2061.Parent = l_Lighting_0;
    local v2062 = l_ReplicatedStorage_0.Resources.kaiser.couallEff:Clone();
    v2062:PivotTo(v2058.CFrame);
    v2062.Parent = v2056;
    local v2063 = l_ReplicatedStorage_0.Resources.DepthOfField:Clone();
    v2063.Parent = l_Lighting_0;
    v2063.FarIntensity = 0;
    l_TweenService_0:Create(v2063, TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
        FarIntensity = 1
    }):Play();
    v25:play(l_ReplicatedStorage_0.Resources.kaiser.kaiser, l_SoundService_0);
    local v2064 = {};
    for _, v2066 in ipairs(v2056:GetChildren()) do
        if v2066:IsA("Part") and v2066.Transparency < 1 then
            for _, v2068 in ipairs(l_ReplicatedStorage_0.Resources.kaiser.auraya:GetChildren()) do
                local v2069 = v2068:Clone();
                v2069.Enabled = true;
                v2069.Parent = v2066;
                table.insert(v2064, v2069);
            end;
        end;
    end;
    local function v2080() --[[ Line: 12431 ]] --[[ Name: spawnmisspoint ]]
        -- upvalues: l_ReplicatedStorage_0 (ref), v2062 (copy)
        local v2070 = l_ReplicatedStorage_0.Resources.kaiser.Point:Clone();
        v2070.CFrame = workspace.CurrentCamera.CFrame * CFrame.new(Random.new():NextInteger(-5, 5), Random.new():NextInteger(0, 5), Random.new():NextInteger(-11, -7));
        v2070.Parent = v2062;
        local l_emit_0 = v2070.emit;
        for _, v2073 in pairs(l_emit_0:GetDescendants()) do
            if v2073:IsA("ParticleEmitter") then
                task.delay(v2073:GetAttribute("EmitDelay"), function() --[[ Line: 12439 ]]
                    -- upvalues: v2073 (copy)
                    v2073:Emit(v2073:GetAttribute("EmitCount"));
                end);
            end;
        end;
        local l_misspoint_0 = v2070.misspoint;
        for _, v2076 in pairs(l_misspoint_0:GetDescendants()) do
            if v2076:IsA("ParticleEmitter") then
                task.delay(v2076:GetAttribute("EmitDelay"), function() --[[ Line: 12447 ]]
                    -- upvalues: v2076 (copy)
                    v2076:Emit(v2076:GetAttribute("EmitCount"));
                end);
            end;
        end;
        local l_MISS_0 = v2070.MISS;
        for _, v2079 in pairs(l_MISS_0:GetDescendants()) do
            if v2079:IsA("ParticleEmitter") then
                task.delay(v2079:GetAttribute("EmitDelay"), function() --[[ Line: 12455 ]]
                    -- upvalues: v2079 (copy)
                    v2079:Emit(v2079:GetAttribute("EmitCount"));
                end);
            end;
        end;
        task.delay(3, v2070.Destroy, v2070);
    end;
    task.delay(5.166666666666667, v2080);
    task.delay(5.55, v2080);
    task.delay(5.8, v2080);
    task.delay(5.966666666666667, v2080);
    task.delay(6.083333333333333, v2080);
    task.delay(6.183333333333333, v2080);
    task.delay(6.266666666666667, v2080);
    task.delay(6.35, v2080);
    task.delay(6.433333333333333, v2080);
    task.delay(6.516666666666667, v2080);
    task.delay(6.6, v2080);
    task.delay(6.65, v2080);
    task.delay(6.783333333333333, v2080);
    task.delay(7, function() --[[ Line: 12478 ]]
        -- upvalues: l_ReplicatedStorage_0 (ref), v2062 (copy)
        local v2081 = l_ReplicatedStorage_0.Resources.kaiser.Point:Clone();
        v2081.CFrame = workspace.CurrentCamera.CFrame * CFrame.new(0, 0, -7);
        v2081.Parent = v2062;
        local l_emit_1 = v2081.emit;
        for _, v2084 in pairs(l_emit_1:GetDescendants()) do
            if v2084:IsA("ParticleEmitter") then
                task.delay(v2084:GetAttribute("EmitDelay"), function() --[[ Line: 12486 ]]
                    -- upvalues: v2084 (copy)
                    v2084:Emit(v2084:GetAttribute("EmitCount"));
                end);
            end;
        end;
        local l_goalpoint_0 = v2081.goalpoint;
        for _, v2087 in pairs(l_goalpoint_0:GetDescendants()) do
            if v2087:IsA("ParticleEmitter") then
                task.delay(v2087:GetAttribute("EmitDelay"), function() --[[ Line: 12494 ]]
                    -- upvalues: v2087 (copy)
                    v2087:Emit(v2087:GetAttribute("EmitCount"));
                end);
            end;
        end;
        local l_GOAL_0 = v2081.GOAL;
        for _, v2090 in pairs(l_GOAL_0:GetDescendants()) do
            if v2090:IsA("ParticleEmitter") then
                task.delay(v2090:GetAttribute("EmitDelay"), function() --[[ Line: 12502 ]]
                    -- upvalues: v2090 (copy)
                    v2090:Emit(v2090:GetAttribute("EmitCount"));
                end);
            end;
        end;
        task.delay(3, v2081.Destroy, v2081);
    end);
    local v2091 = nil;
    task.delay(4.766666666666667, function() --[[ Line: 12513 ]]
        -- upvalues: l_Ball_22 (copy), v2091 (ref), l_ReplicatedStorage_0 (ref), v2062 (copy)
        if not l_Ball_22 then
            return;
        else
            v2091 = l_ReplicatedStorage_0.Resources.kaiser.Ball:Clone();
            v2091.Weld.Part0 = l_Ball_22;
            v2091.Parent = v2062;
            local l_ballseeingaura_0 = v2091.ballseeingaura;
            for _, v2094 in pairs(l_ballseeingaura_0:GetDescendants()) do
                if v2094:IsA("ParticleEmitter") then
                    v2094.Enabled = true;
                end;
            end;
            return;
        end;
    end);
    task.delay(6.983333333333333, function() --[[ Line: 12529 ]]
        -- upvalues: v2091 (ref)
        if not v2091 then
            return;
        else
            local l_ballseeingaura_1 = v2091.ballseeingaura;
            for _, v2097 in pairs(l_ballseeingaura_1:GetDescendants()) do
                if v2097:IsA("ParticleEmitter") then
                    v2097.Enabled = false;
                end;
            end;
            local l_ballaimed_0 = v2091.ballaimed;
            for _, v2100 in pairs(l_ballaimed_0:GetDescendants()) do
                if v2100:IsA("ParticleEmitter") then
                    task.delay(v2100:GetAttribute("EmitDelay"), function() --[[ Line: 12542 ]]
                        -- upvalues: v2100 (copy)
                        v2100.Enabled = true;
                    end);
                end;
            end;
            return;
        end;
    end);
    task.delay(7.733333333333333, function() --[[ Line: 12549 ]]
        -- upvalues: v2091 (ref)
        if not v2091 then
            return;
        else
            local l_ballaimed_1 = v2091.ballaimed;
            for _, v2103 in pairs(l_ballaimed_1:GetDescendants()) do
                if v2103:IsA("ParticleEmitter") then
                    task.delay(v2103:GetAttribute("EmitDelay"), function() --[[ Line: 12555 ]]
                        -- upvalues: v2103 (copy)
                        v2103.Enabled = false;
                    end);
                end;
            end;
            local l_ballauranormal_0 = v2091.ballauranormal;
            for _, v2106 in pairs(l_ballauranormal_0:GetDescendants()) do
                if v2106:IsA("ParticleEmitter") then
                    task.delay(v2106:GetAttribute("EmitDelay"), function() --[[ Line: 12564 ]]
                        -- upvalues: v2106 (copy)
                        v2106.Enabled = true;
                    end);
                end;
            end;
            return;
        end;
    end);
    task.delay(9.233333333333333, function() --[[ Line: 12571 ]]
        -- upvalues: v2091 (ref)
        if not v2091 then
            return;
        else
            for _, v2108 in ipairs(v2091.ballauranormal:GetDescendants()) do
                if v2108:IsA("ParticleEmitter") then
                    v2108.TimeScale = 0.05;
                end;
            end;
            for _, v2110 in ipairs(v2091.ballglare:GetDescendants()) do
                if v2110:IsA("ParticleEmitter") then
                    v2110.Enabled = true;
                end;
            end;
            return;
        end;
    end);
    task.delay(10.98333333333333, function() --[[ Line: 12587 ]]
        -- upvalues: v2091 (ref)
        if not v2091 then
            return;
        else
            for _, v2112 in ipairs(v2091.ballauranormal:GetDescendants()) do
                if v2112:IsA("ParticleEmitter") then
                    v2112.TimeScale = 1;
                end;
            end;
            return;
        end;
    end);
    task.delay(0.85, function() --[[ Line: 12599 ]]
        -- upvalues: v12 (ref), l_ReplicatedStorage_0 (ref)
        v12.impactFrame(l_ReplicatedStorage_0.Resources.kaiser.ImpactFrame1);
    end);
    task.delay(10.16666666666667, function() --[[ Line: 12603 ]]
        -- upvalues: v12 (ref), l_ReplicatedStorage_0 (ref)
        v12.impactFrame(l_ReplicatedStorage_0.Resources.kaiser.ImpactFrame2);
    end);
    task.delay(11.6, function() --[[ Line: 12607 ]]
        -- upvalues: v12 (ref), l_ReplicatedStorage_0 (ref)
        v12.impactFrame(l_ReplicatedStorage_0.Resources.kaiser.ImpactFrame3);
    end);
    task.delay(0.85, function() --[[ Line: 12613 ]]
        -- upvalues: v2064 (copy), v2062 (copy)
        for _, v2114 in v2064 do
            v2114.Enabled = false;
        end;
        for _, v2116 in ipairs(v2062.kaiserimpactslam1:GetDescendants()) do
            if v2116:IsA("ParticleEmitter") then
                v2116:Emit(v2116:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(1.733333333333333, function() --[[ Line: 12626 ]]
        -- upvalues: v2062 (copy)
        for _, v2118 in ipairs(v2062.kaiserimpactslam2:GetDescendants()) do
            if v2118:IsA("ParticleEmitter") then
                v2118:Emit(v2118:GetAttribute("EmitCount"));
            end;
        end;
    end);
    local v2119 = nil;
    task.delay(3.75, function() --[[ Line: 12636 ]]
        -- upvalues: v2064 (copy), v2119 (ref), l_ReplicatedStorage_0 (ref), v2056 (copy), v2062 (copy)
        for _, v2121 in v2064 do
            v2121.Enabled = true;
        end;
        v2119 = l_ReplicatedStorage_0.Resources.kaiser.eyeflash:Clone();
        v2119.Weld.Part0 = v2056.Head;
        v2119.Parent = v2062;
        local l_eyeflash_0 = v2119.eyeflash;
        for _, v2124 in pairs(l_eyeflash_0:GetDescendants()) do
            if v2124:IsA("ParticleEmitter") then
                task.delay(v2124:GetAttribute("EmitDelay"), function() --[[ Line: 12648 ]]
                    -- upvalues: v2124 (copy)
                    v2124:Emit(v2124:GetAttribute("EmitCount"));
                end);
            end;
        end;
    end);
    local v2125 = nil;
    task.delay(4.716666666666667, function() --[[ Line: 12659 ]]
        -- upvalues: l_Lighting_0 (ref), v2125 (ref), l_ReplicatedStorage_0 (ref), l_PlayerGui_0 (ref), l_TweenService_0 (ref), l_ClockTime_0 (ref)
        l_Lighting_0.ClockTime = 24;
        v2125 = l_ReplicatedStorage_0.Resources.kaiser.glowscreen:Clone();
        v2125.Parent = l_PlayerGui_0;
        task.wait(2.283333333333333);
        l_TweenService_0:Create(l_Lighting_0, TweenInfo.new(1, Enum.EasingStyle.Quart, Enum.EasingDirection.In), {
            ClockTime = l_ClockTime_0
        }):Play();
    end);
    task.delay(4.416666666666667, function() --[[ Line: 12670 ]]
        -- upvalues: v2119 (ref)
        if not v2119 then
            return;
        else
            local l_impact_0 = v2119.impact;
            for _, v2128 in pairs(l_impact_0:GetDescendants()) do
                if v2128:IsA("ParticleEmitter") then
                    task.delay(v2128:GetAttribute("EmitDelay"), function() --[[ Line: 12676 ]]
                        -- upvalues: v2128 (copy)
                        v2128:Emit(v2128:GetAttribute("EmitCount"));
                    end);
                end;
            end;
            return;
        end;
    end);
    task.delay(4.616666666666667, function() --[[ Line: 12683 ]]
        -- upvalues: v2062 (copy)
        for _, v2130 in ipairs(v2062.kaiserimpactsurroundingstuff1:GetDescendants()) do
            if v2130:IsA("ParticleEmitter") then
                v2130.Enabled = true;
            end;
        end;
    end);
    task.delay(4.633333333333333, function() --[[ Line: 12691 ]]
        -- upvalues: v2119 (ref)
        if not v2119 then
            return;
        else
            local l_explosion_1 = v2119.explosion;
            for _, v2133 in pairs(l_explosion_1:GetDescendants()) do
                if v2133:IsA("ParticleEmitter") then
                    task.delay(v2133:GetAttribute("EmitDelay"), function() --[[ Line: 12697 ]]
                        -- upvalues: v2133 (copy)
                        v2133:Emit(v2133:GetAttribute("EmitCount"));
                    end);
                end;
            end;
            return;
        end;
    end);
    task.delay(4.733333333333333, function() --[[ Line: 12704 ]]
        -- upvalues: l_ReplicatedStorage_0 (ref), v2056 (copy), l_RunService_0 (ref)
        local v2134 = l_ReplicatedStorage_0.Resources.kaiser.CamEffect:Clone();
        v2134.CFrame = workspace.CurrentCamera.CFrame;
        v2134.Parent = v2056;
        for _, v2136 in ipairs(v2134:GetDescendants()) do
            if v2136:IsA("ParticleEmitter") then
                v2136:Emit(v2136:GetAttribute("EmitCount"));
            end;
        end;
        local v2137 = l_RunService_0.PreRender:connect(function() --[[ Line: 12715 ]]
            -- upvalues: v2134 (copy)
            v2134.CFrame = workspace.CurrentCamera.CFrame;
        end);
        task.delay(3, v2137.Disconnect, v2137);
        task.delay(3, v2134.Destroy, v2134);
    end);
    task.delay(4.75, function() --[[ Line: 12723 ]]
        -- upvalues: v2062 (copy)
        for _, v2139 in ipairs(v2062.kaisergrid:GetDescendants()) do
            if v2139:IsA("ParticleEmitter") or v2139:IsA("Beam") then
                v2139.Enabled = true;
            end;
        end;
    end);
    task.delay(7.5, function() --[[ Line: 12731 ]]
        -- upvalues: l_ReplicatedStorage_0 (ref), v2056 (copy), l_RunService_0 (ref)
        local v2140 = l_ReplicatedStorage_0.Resources.kaiser.CamEffect:Clone();
        v2140.CFrame = workspace.CurrentCamera.CFrame;
        v2140.Parent = v2056;
        local v2141 = l_RunService_0.PreRender:connect(function() --[[ Line: 12736 ]]
            -- upvalues: v2140 (copy)
            v2140.CFrame = workspace.CurrentCamera.CFrame;
        end);
        for _, v2143 in ipairs(v2140:GetDescendants()) do
            if v2143:IsA("ParticleEmitter") then
                v2143.Enabled = true;
            end;
        end;
        task.delay(0.2333333333333333, v2140.Destroy, v2140);
        task.delay(0.2333333333333333, v2141.Disconnect, v2141);
    end);
    task.delay(8, function() --[[ Line: 12749 ]]
        -- upvalues: v2062 (copy)
        for _, v2145 in ipairs(v2062.kaiserimpactsurroundingstuff:GetDescendants()) do
            if v2145:IsA("ParticleEmitter") or v2145:IsA("Beam") then
                v2145.Enabled = true;
            end;
        end;
    end);
    task.delay(8.116666666666667, function() --[[ Line: 12757 ]]
        -- upvalues: v2062 (copy)
        for _, v2147 in ipairs(v2062.kaiserimpactsurroundingstuff1:GetDescendants()) do
            if v2147:IsA("ParticleEmitter") or v2147:IsA("Beam") then
                v2147.Enabled = false;
            end;
        end;
    end);
    task.delay(8.133333333333333, function() --[[ Line: 12765 ]]
        -- upvalues: l_ReplicatedStorage_0 (ref), v2056 (copy)
        local v2148 = l_ReplicatedStorage_0.Resources.kaiser.trail:Clone();
        v2148.Weld.Part0 = v2056["Right Arm"];
        v2148.Parent = v2056;
        local v2149 = l_ReplicatedStorage_0.Resources.kaiser.trail:Clone();
        v2149.Weld.Part0 = v2056["Left Arm"];
        v2149.Parent = v2056;
        local v2150 = l_ReplicatedStorage_0.Resources.kaiser.trail:Clone();
        v2150.Weld.Part0 = v2056["Right Leg"];
        v2150.Parent = v2056;
        local v2151 = l_ReplicatedStorage_0.Resources.kaiser.trail:Clone();
        v2151.Weld.Part0 = v2056["Left Leg"];
        v2151.Parent = v2056;
        task.delay(0.8, v2148.Destroy, v2148);
        task.delay(0.8, v2149.Destroy, v2149);
        task.delay(0.8, v2150.Destroy, v2150);
        task.delay(0.8, v2151.Destroy, v2151);
    end);
    task.delay(9.233333333333333, function() --[[ Line: 12788 ]]
        -- upvalues: v2064 (copy), v2062 (copy)
        for _, v2153 in v2064 do
            v2153.TimeScale = 0.1;
        end;
        for _, v2155 in ipairs(v2062.kaiserimpactsurroundingstuff:GetDescendants()) do
            if v2155:IsA("ParticleEmitter") then
                v2155.TimeScale = 0.05;
            end;
        end;
    end);
    task.delay(9.283333333333333, function() --[[ Line: 12800 ]]
        -- upvalues: v2062 (copy)
        local l_Stars_0 = v2062.kaiserimpactsurroundingstuff.Part.Stars;
        for _, v2158 in pairs(l_Stars_0:GetDescendants()) do
            if v2158:IsA("ParticleEmitter") then
                v2158.TimeScale = 1;
            end;
        end;
        local l_Ground_0 = v2062.kaiserimpactsurroundingstuff.Part.Ground;
        for _, v2161 in pairs(l_Ground_0:GetDescendants()) do
            if v2161:IsA("ParticleEmitter") then
                v2161.TimeScale = 0.25;
            end;
        end;
    end);
    task.delay(9.266666666666667, function() --[[ Line: 12816 ]]
        -- upvalues: v2062 (copy)
        for _, v2163 in ipairs(v2062.kaisergrid:GetDescendants()) do
            if v2163:IsA("ParticleEmitter") or v2163:IsA("Beam") then
                v2163.Enabled = false;
            end;
        end;
    end);
    task.delay(10.98333333333333, function() --[[ Line: 12824 ]]
        -- upvalues: v2064 (copy), v2062 (copy)
        for _, v2165 in v2064 do
            v2165.TimeScale = 1;
        end;
        local l_kaiserimpactsurroundingstuff_0 = v2062.kaiserimpactsurroundingstuff;
        for _, v2168 in pairs(l_kaiserimpactsurroundingstuff_0:GetDescendants()) do
            if v2168:IsA("ParticleEmitter") then
                v2168.TimeScale = 1;
            end;
        end;
    end);
    task.delay(11.58333333333333, function() --[[ Line: 12837 ]]
        -- upvalues: v2062 (copy)
        local l_kaiserimpactlegflashpart_0 = v2062.kaiserimpactlegflashpart;
        for _, v2171 in pairs(l_kaiserimpactlegflashpart_0:GetDescendants()) do
            if v2171:IsA("ParticleEmitter") then
                task.delay(v2171:GetAttribute("EmitDelay"), function() --[[ Line: 12841 ]]
                    -- upvalues: v2171 (copy)
                    v2171.Enabled = true;
                end);
            end;
        end;
    end);
    task.delay(12.26666666666667, function() --[[ Line: 12848 ]]
        -- upvalues: v2125 (ref), v2064 (copy), v2062 (copy)
        if v2125 then
            v2125:Destroy();
        end;
        for _, v2173 in v2064 do
            v2173:Destroy();
        end;
        table.clear(v2064);
        local l_kaiserimpactlegflashpart_1 = v2062.kaiserimpactlegflashpart;
        for _, v2176 in pairs(l_kaiserimpactlegflashpart_1:GetDescendants()) do
            if v2176:IsA("ParticleEmitter") then
                task.delay(v2176:GetAttribute("EmitDelay"), function() --[[ Line: 12861 ]]
                    -- upvalues: v2176 (copy)
                    v2176.Enabled = false;
                end);
            end;
        end;
        local l_kaiserimpactsurroundingstuff_1 = v2062.kaiserimpactsurroundingstuff;
        for _, v2179 in pairs(l_kaiserimpactsurroundingstuff_1:GetDescendants()) do
            if v2179:IsA("ParticleEmitter") then
                task.delay(v2179:GetAttribute("EmitDelay"), function() --[[ Line: 12870 ]]
                    -- upvalues: v2179 (copy)
                    v2179.Enabled = false;
                end);
            end;
        end;
    end);
    task.delay(12.31666666666667, function() --[[ Line: 12877 ]]
        -- upvalues: v2091 (ref), v2062 (copy)
        if v2091 then
            v2091:Destroy();
        end;
        local l_kaiserimpactkick_0 = v2062.kaiserimpactkick;
        for _, v2182 in pairs(l_kaiserimpactkick_0:GetDescendants()) do
            if v2182:IsA("ParticleEmitter") then
                v2182:Emit(v2182:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(13.16666666666667, function() --[[ Line: 12890 ]]
        -- upvalues: v2063 (copy), v2062 (copy), v2061 (copy), l_Atmosphere_22 (copy), l_Density_0 (ref), l_Color_0 (ref), l_Lighting_0 (ref), l_Brightness_0 (ref), v12 (ref), v2125 (ref), v2064 (copy)
        v2063:Destroy();
        v2062:Destroy();
        v2061:Destroy();
        l_Atmosphere_22.Density = l_Density_0;
        l_Atmosphere_22.Color = l_Color_0;
        l_Lighting_0.ColorShift_Top = Color3.fromRGB(0, 0, 0);
        l_Lighting_0.Brightness = l_Brightness_0;
        v12.ultFlash();
        v12.sceneEnabled(false);
        v12.fov(false, 100);
        v12.fov(true, 70, 2, Enum.EasingStyle.Sine, Enum.EasingDirection.Out);
        if v2125 then
            v2125:Destroy();
        end;
        for _, v2184 in v2064 do
            v2184:Destroy();
        end;
        table.clear(v2064);
    end);
end;
v12.kaiserImpact = function(v2185) --[[ Line: 12921 ]] --[[ Name: kaiserImpact ]]
    -- upvalues: l_ReplicatedStorage_0 (copy), l_TweenService_0 (copy), v12 (copy)
    local v2186 = v2185.HumanoidRootPart or v2185.PrimaryPart;
    local l_Ball_23 = v2185:FindFirstChild("Ball");
    local v2188 = l_ReplicatedStorage_0.Resources.kaiser.kieff:Clone();
    v2188:PivotTo(v2186.CFrame);
    v2188.Parent = v2185;
    task.delay(1.983333333333333, v2188.Destroy, v2188);
    for _, v2190 in ipairs(v2188:GetDescendants()) do
        if v2190:IsA("BasePart") or v2190:IsA("Decal") then
            v2190.Transparency = 1;
        elseif v2190:IsA("ParticleEmitter") then
            v2190.Enabled = false;
        end;
    end;
    task.spawn(function() --[[ Line: 12943 ]]
        -- upvalues: v2188 (copy), v2186 (copy)
        while true do
            v2188:PivotTo(v2186.CFrame);
            task.wait();
        end;
    end);
    task.delay(0.2333333333333333, function() --[[ Line: 12952 ]]
        -- upvalues: v2188 (copy), l_TweenService_0 (ref)
        for _ = 1, 4 do
            local v2192 = v2188.Wind1:Clone();
            v2192.Size = Vector3.new(4.995999813079834, 11.286999702453613, 11.663000106811523, 0);
            v2192.Transparency = 0.85;
            v2192.Parent = workspace.Effects;
            l_TweenService_0:Create(v2192, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                Transparency = 1, 
                Size = Vector3.new(12.960000038146973, 24.999000549316406, 24.999000549316406, 0), 
                CFrame = v2192.CFrame * CFrame.new(16, 0, 0) * CFrame.Angles(5, 0, 0)
            }):Play();
            task.delay(0.3, v2192.Destroy, v2192);
            task.wait(0.15);
        end;
    end);
    task.delay(0.1666666666666667, function() --[[ Line: 12966 ]]
        -- upvalues: v12 (ref), v2188 (copy)
        v12.cameraShake(15, 0.65, 4);
        for _, v2194 in ipairs(v2188.Jump:GetDescendants()) do
            if v2194:IsA("ParticleEmitter") then
                v2194:Emit(v2194:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(0.2333333333333333, function() --[[ Line: 12976 ]]
        -- upvalues: v2188 (copy)
        for _, v2196 in ipairs(v2188.A:GetDescendants()) do
            if v2196:IsA("ParticleEmitter") then
                v2196:Emit(v2196:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(0.2666666666666667, function() --[[ Line: 12984 ]]
        -- upvalues: l_ReplicatedStorage_0 (ref), v2185 (copy)
        local v2197 = l_ReplicatedStorage_0.Resources.kaiser.ADA:Clone();
        v2197.Weld.Part0 = v2185["Right Leg"];
        v2197.Parent = v2185;
        for _, v2199 in ipairs(v2197:GetDescendants()) do
            if v2199:IsA("ParticleEmitter") then
                v2199:Emit(v2199:GetAttribute("EmitCount"));
            end;
        end;
        task.delay(3, v2197.Destroy, v2197);
    end);
    task.delay(0.35, function() --[[ Line: 12997 ]]
        -- upvalues: l_Ball_23 (copy), l_ReplicatedStorage_0 (ref), v2185 (copy)
        if not l_Ball_23 then
            return;
        else
            local v2200 = l_ReplicatedStorage_0.Resources.kaiser.Charge:Clone();
            v2200.Weld.Part0 = l_Ball_23;
            v2200.Parent = v2185;
            for _, v2202 in ipairs(v2200:GetDescendants()) do
                if v2202:IsA("ParticleEmitter") then
                    v2202:Emit(v2202:GetAttribute("EmitCount"));
                end;
            end;
            task.delay(3, v2200.Destroy, v2200);
            return;
        end;
    end);
    task.delay(0.3833333333333333, function() --[[ Line: 13012 ]]
        -- upvalues: l_Ball_23 (copy), l_ReplicatedStorage_0 (ref), v2185 (copy)
        if not l_Ball_23 then
            return;
        else
            local v2203 = l_ReplicatedStorage_0.Resources.kaiser.Charge2:Clone();
            v2203.Weld.Part0 = l_Ball_23;
            v2203.Parent = v2185;
            task.delay(0.2333333333333334, v2203.Destroy, v2203);
            for _, v2205 in ipairs(v2203:GetDescendants()) do
                if v2205:IsA("ParticleEmitter") then
                    v2205.Enabled = true;
                end;
            end;
            return;
        end;
    end);
    v12.fov(true, 120, 0.6, Enum.EasingStyle.Quart, Enum.EasingDirection.In);
    task.delay(0.6166666666666667, function() --[[ Line: 13029 ]]
        -- upvalues: v12 (ref), v2188 (copy), l_TweenService_0 (ref)
        v12.fov(false, 70);
        v12.cameraShake(15, 1.35, 8);
        for _, v2207 in ipairs(v2188.Impact:GetDescendants()) do
            if v2207:IsA("ParticleEmitter") then
                v2207:Emit(v2207:GetAttribute("EmitCount"));
            end;
        end;
        local v2208 = v2188.BRO:Clone();
        v2208.Size = Vector3.new(24.621999740600586, 10.168000221252441, 10.473999977111816, 0);
        v2208.Mesh.Scale = Vector3.new(1.0770000219345093, 0.33799999952316284, 0.335999995470047, 0);
        for _, v2210 in ipairs(v2208:GetDescendants()) do
            if v2210:IsA("Decal") then
                v2210.Transparency = 0;
            end;
        end;
        v2208.Parent = workspace.Effects;
        l_TweenService_0:Create(v2208, TweenInfo.new(0.0333333333333333, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
            Size = Vector3.new(52.73899841308594, 0.0010000000474974513, 0.0010000000474974513, 0), 
            CFrame = v2208.CFrame * CFrame.new(-8, 0, 0)
        }):Play();
        l_TweenService_0:Create(v2208.Mesh, TweenInfo.new(0.0333333333333333, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
            Scale = Vector3.new(2.306999921798706, 0, 0, 0)
        }):Play();
        task.delay(0.0333333333333333, v2208.Destroy, v2208);
    end);
    task.delay(0.4666666666666667, function() --[[ Line: 13056 ]]
        -- upvalues: v2188 (copy), l_TweenService_0 (ref)
        local v2211 = v2188.MeshPart:Clone();
        v2211.Size = Vector3.new(8, 1.3819999694824219, 8, 0);
        v2211.Transparency = 0;
        v2211.Parent = workspace.Effects;
        l_TweenService_0:Create(v2211, TweenInfo.new(0.1166666666666666, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
            Size = Vector3.new(19.999000549316406, 1.3819999694824219, 19.999000549316406, 0), 
            CFrame = v2211.CFrame * CFrame.new(0, -11, 0)
        }):Play();
        task.delay(0.1166666666666666, v2211.Destroy, v2211);
        task.wait(0.015);
        local v2212 = v2188.MeshPart2:Clone();
        v2212.Size = Vector3.new(5, 1.3819999694824219, 5, 0);
        v2212.Transparency = 0;
        v2212.Parent = workspace.Effects;
        l_TweenService_0:Create(v2212, TweenInfo.new(0.1016666666666666, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
            Size = Vector3.new(14, 1.3819999694824219, 14, 0), 
            CFrame = v2212.CFrame * CFrame.new(0, -9, 0)
        }):Play();
        task.delay(0.1016666666666666, v2212.Destroy, v2212);
    end);
    task.delay(0.6, function() --[[ Line: 13080 ]]
        -- upvalues: v2188 (copy), l_TweenService_0 (ref)
        local v2213 = v2188.First:Clone();
        v2213.Size = Vector3.new(24.621999740600586, 19.952999114990234, 19.9689998626709, 0);
        v2213.Mesh.Scale = Vector3.new(1.0770000219345093, 0.6629999876022339, 0.640999972820282, 0);
        v2213.Decal.Transparency = 0.4;
        v2213.Parent = workspace.Effects;
        l_TweenService_0:Create(v2213, TweenInfo.new(0.0333333333333333, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
            Size = Vector3.new(48.14899826049805, 12.067999839782715, 9.593999862670898, 0), 
            CFrame = v2213.CFrame * CFrame.new(-11, 0, 0)
        }):Play();
        l_TweenService_0:Create(v2213.Mesh, TweenInfo.new(0.0333333333333333, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
            Scale = Vector3.new(1.503000020980835, 0.5709999799728394, 0.5180000066757202, 0)
        }):Play();
        task.delay(0.0333333333333333, v2213.Destroy, v2213);
    end);
    task.delay(0.6333333333333333, function() --[[ Line: 13093 ]]
        -- upvalues: v2188 (copy), l_TweenService_0 (ref)
        local v2214 = v2188.Haze:Clone();
        v2214.Size = Vector3.new(13.114999771118164, 17.06999969482422, 13.60200023651123, 0);
        v2214.Mesh.Scale = Vector3.new(-0.052000001072883606, -0.08500000089406967, -0.05400000140070915, 0);
        v2214.Decal.Transparency = 0.8;
        v2214.Parent = workspace.Effects;
        l_TweenService_0:Create(v2214, TweenInfo.new(0.6666666666666667, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
            Size = Vector3.new(22.98699951171875, 28.913999557495117, 21.85700035095215, 0), 
            CFrame = v2214.CFrame * CFrame.new(0, -11, 0) * CFrame.Angles(0, -5, 0)
        }):Play();
        l_TweenService_0:Create(v2214.Mesh, TweenInfo.new(0.6666666666666667, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
            Scale = Vector3.new(-0.09200000017881393, -0.14499999582767487, -0.08699999749660492, 0)
        }):Play();
        l_TweenService_0:Create(v2214.Decal, TweenInfo.new(0.6666666666666667, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
            Transparency = 1
        }):Play();
        task.delay(0.6666666666666667, v2214.Destroy, v2214);
        local v2215 = v2188.End:Clone();
        v2215.Size = Vector3.new(27.73900032043457, 7.388999938964844, 26.128000259399414, 0);
        v2215.Transparency = 0;
        v2215.Parent = workspace.Effects;
        l_TweenService_0:Create(v2215, TweenInfo.new(0.6666666666666667, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
            Transparency = 1, 
            Color = Color3.fromRGB(13, 105, 172), 
            Size = Vector3.new(18.992000579833984, 6.230000019073486, 20.160999298095703, 0), 
            CFrame = v2215.CFrame * CFrame.new(0, 15, 0) * CFrame.Angles(0, 5, 0)
        }):Play();
        task.delay(0.6666666666666667, v2215.Destroy, v2215);
    end);
end;
v12.kaiserImpactmagnus = function(v2216) --[[ Line: 13117 ]] --[[ Name: kaiserImpactmagnus ]]
    -- upvalues: v12 (copy), l_ReplicatedStorage_0 (copy)
    local v2217 = v2216.HumanoidRootPart or v2216.PrimaryPart;
    local l_Ball_24 = v2216:FindFirstChild("Ball");
    v12.fov(true, 120, 0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.In);
    v12.cameraShake(15, 1.35, 3);
    task.delay(0.1333333333333333, function() --[[ Line: 13124 ]]
        -- upvalues: l_Ball_24 (copy), l_ReplicatedStorage_0 (ref), v2216 (copy), v12 (ref), v2217 (copy)
        if not l_Ball_24 then
            return;
        else
            local v2219 = l_ReplicatedStorage_0.Resources.kaiser.XDD:Clone();
            v2219.ball.Part0 = l_Ball_24;
            v2219.Parent = v2216;
            for _, v2221 in ipairs(v2219:GetDescendants()) do
                if v2221:IsA("ParticleEmitter") then
                    v2221:Emit(v2221:GetAttribute("EmitCount"));
                end;
            end;
            task.delay(3, v2219.Destroy, v2219);
            v12.Emit(v2217, l_ReplicatedStorage_0.Resources.kaiser.Jump, 3, CFrame.new(0, -3, 0));
            return;
        end;
    end);
    task.delay(0.4333333333333333, function() --[[ Line: 13141 ]]
        -- upvalues: v12 (ref), v2217 (copy), l_ReplicatedStorage_0 (ref)
        v12.fov(false, 70);
        v12.cameraShake(15, 1.35, 8);
        v12.Emit(v2217, l_ReplicatedStorage_0.Resources.kaiser.IMPACTA, 3, CFrame.new(0, -2, -3));
    end);
end;
v12.kaiserImpactLightningStrike = function(v2222, _) --[[ Line: 13150 ]] --[[ Name: kaiserImpactLightningStrike ]]
    -- upvalues: l_Lighting_0 (copy), v12 (copy), l_ReplicatedStorage_0 (copy), l_RunService_0 (copy), l_CurrentCamera_0 (copy), l_TweenService_0 (copy), v25 (copy), l_SoundService_0 (copy), l_Brightness_0 (copy), l_Density_0 (copy), l_Color_0 (copy)
    local v2224 = v2222.HumanoidRootPart or v2222.PrimaryPart;
    local _ = v2222.Torso;
    local l_Atmosphere_23 = l_Lighting_0.Atmosphere;
    v12.sceneEnabled(true);
    v12.ultFlash(-1);
    local v2227 = l_ReplicatedStorage_0.Resources.kaiser.lseff:Clone();
    v2227:PivotTo(v2224.CFrame);
    v2227.Parent = v2222;
    local v2228 = l_ReplicatedStorage_0.Resources.kaiser.eyeki:Clone();
    v2228.Weld.Part0 = v2222.Head;
    v2228.Parent = v2227;
    local v2229 = {};
    for _, v2231 in ipairs(v2222:GetChildren()) do
        if v2231:IsA("Part") and v2231.Transparency < 1 then
            for _, v2233 in ipairs(l_ReplicatedStorage_0.Resources.kaiser.auraya:GetChildren()) do
                local v2234 = v2233:Clone();
                v2234.Enabled = true;
                v2234.Parent = v2231;
                table.insert(v2229, v2234);
            end;
        end;
    end;
    task.delay(0.8, function() --[[ Line: 13194 ]]
        -- upvalues: l_ReplicatedStorage_0 (ref), v2227 (copy), l_RunService_0 (ref), l_CurrentCamera_0 (ref), l_TweenService_0 (ref)
        local v2235 = l_ReplicatedStorage_0.Resources.kaiser.CAMERAPART:Clone();
        v2235.Parent = v2227;
        local v2236 = nil;
        v2236 = l_RunService_0.PreRender:connect(function() --[[ Line: 13199 ]]
            -- upvalues: v2235 (copy), v2236 (ref), l_CurrentCamera_0 (ref)
            if not v2235:IsDescendantOf(game) then
                v2236:Disconnect();
            end;
            v2235.CFrame = l_CurrentCamera_0.CFrame * CFrame.new(0, 0, -1.5) * CFrame.Angles(0, 0, 0.3490658503988659);
        end);
        for _, v2238 in ipairs(v2227.KICKPARTICLES1:GetDescendants()) do
            if v2238:IsA("ParticleEmitter") then
                v2238:Emit(v2238:GetAttribute("EmitCount"));
            end;
        end;
        v2227.End.Size = Vector3.new(10, 20, 20, 0);
        v2227.End.Transparency = 0;
        l_TweenService_0:Create(v2227.End, TweenInfo.new(0.217), {
            Transparency = 1, 
            Size = Vector3.new(13, 0, 0, 0), 
            CFrame = v2227.End.CFrame * CFrame.Angles(10, 0, 0)
        }):Play();
        v2227.EndBlue.Size = Vector3.new(3, 6, 6, 0);
        v2227.EndBlue.Transparency = 0.95;
        l_TweenService_0:Create(v2227.EndBlue, TweenInfo.new(0.867), {
            Transparency = 1, 
            Size = Vector3.new(14, 14, 14, 0), 
            CFrame = v2227.EndBlue.CFrame * CFrame.Angles(10, 0, 0)
        }):Play();
    end);
    task.delay(0.367, function() --[[ Line: 13224 ]]
        -- upvalues: v2228 (copy)
        for _, v2240 in ipairs(v2228:GetDescendants()) do
            if v2240:IsA("ParticleEmitter") then
                v2240:Emit(v2240:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(0.817, function() --[[ Line: 13232 ]]
        -- upvalues: v2229 (copy)
        for _, v2242 in v2229 do
            v2242.Enabled = false;
            task.delay(3, v2242.Destroy, v2242);
        end;
        table.clear(v2229);
    end);
    local v2243 = l_ReplicatedStorage_0.Resources.DepthOfField:Clone();
    v2243.Parent = l_Lighting_0;
    v2243.FarIntensity = 0;
    l_TweenService_0:Create(v2243, TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
        FarIntensity = 1
    }):Play();
    v25:play(l_ReplicatedStorage_0.Resources.kaiser["lightning strike"], l_SoundService_0);
    v12.cutsceneBlender(v2224, l_ReplicatedStorage_0.Resources.kaiser.skill52, l_ReplicatedStorage_0.Resources.kaiser.FOV3);
    task.delay(1.667, function() --[[ Line: 13248 ]]
        -- upvalues: v2243 (copy), v12 (ref), v2227 (copy), l_Lighting_0 (ref), l_Brightness_0 (ref), l_Atmosphere_23 (copy), l_Density_0 (ref), l_Color_0 (ref)
        v2243:Destroy();
        v12.ultFlash(1);
        v12.sceneEnabled(false);
        v2227:Destroy();
        l_Lighting_0.Brightness = l_Brightness_0;
        l_Atmosphere_23.Density = l_Density_0;
        l_Atmosphere_23.Color = l_Color_0;
        v12.fov(false, 70);
    end);
end;
v12.izayoiAwk = function(v2244, _) --[[ Line: 13270 ]] --[[ Name: izayoiAwk ]]
    -- upvalues: l_Lighting_0 (copy), v12 (copy), l_ReplicatedStorage_0 (copy), v27 (copy), l_TweenService_0 (copy), v25 (copy), l_SoundService_0 (copy), l_Brightness_0 (copy), l_Density_0 (copy), l_Color_0 (copy)
    local v2246 = v2244.HumanoidRootPart or v2244.PrimaryPart;
    local _ = v2244.Torso;
    local l_Atmosphere_24 = l_Lighting_0.Atmosphere;
    v12.sceneEnabled(true);
    v12.ultFlash(-1);
    local v2249 = nil;
    local v2250 = nil;
    local v2251 = l_ReplicatedStorage_0.Resources.izayoi.ThrowKnives:Clone();
    v2251.b11.Blade1.Blade1.Part0 = v2246;
    v2251.b22.Blade2.Blade2.Part0 = v2246;
    v2251.b33.Blade3.Blade3.Part0 = v2246;
    v2251.Parent = v2244;
    task.delay(4, function() --[[ Line: 13286 ]]
        -- upvalues: v2249 (ref), l_ReplicatedStorage_0 (ref), v2244 (copy), v2250 (ref)
        v2249 = l_ReplicatedStorage_0.Resources.izayoi.HandKnives:Clone();
        v2249.b1.Blade.Blade.Part0 = v2244["Left Arm"];
        v2249.b2.Bladee2.Blade.Part0 = v2244["Left Arm"];
        v2249.b3.Bladee3.Blade.Part0 = v2244["Left Arm"];
        v2249.Parent = v2244;
        v2250 = l_ReplicatedStorage_0.Resources.izayoi.watch:Clone();
        v2250.Base.beamattachright.Part0 = v2244["Right Arm"];
        v2250.Parent = v2244;
    end);
    task.delay(2.2, function() --[[ Line: 13299 ]]
        -- upvalues: l_ReplicatedStorage_0 (ref), l_Lighting_0 (ref)
        local v2252 = l_ReplicatedStorage_0.Resources.izayoi.timestop:Clone();
        v2252.Parent = l_Lighting_0;
        task.wait(0.38);
        v2252:Destroy();
    end);
    task.delay(7.2, function() --[[ Line: 13305 ]]
        -- upvalues: v27 (ref), v2244 (copy)
        v27.Speak(v2244, {
            {
                Text = "You will lose without understanding what this power is.", 
                Color = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.fromRGB(117, 223, 255)), 
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))
                }), 
                TextStrokeColor = Color3.new(0, 0, 0), 
                Bold = false, 
                Italic = false, 
                Shake = {
                    Enabled = true, 
                    Intensity = 1.5, 
                    Lifetime = 1.5
                }, 
                TypeSpeed = 0.04
            }
        }, 3.5);
    end);
    local v2253 = l_ReplicatedStorage_0.Resources.DepthOfField:Clone();
    v2253.Parent = l_Lighting_0;
    v2253.FarIntensity = 0;
    l_TweenService_0:Create(v2253, TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
        FarIntensity = 1
    }):Play();
    v25:play(l_ReplicatedStorage_0.Resources.izayoi.sakuyaeff, l_SoundService_0);
    v12.cutsceneBlender(v2246, l_ReplicatedStorage_0.Resources.izayoi.ultawkCam, l_ReplicatedStorage_0.Resources.izayoi.ultFOV);
    task.delay(10.65, function() --[[ Line: 13339 ]]
        -- upvalues: v2253 (copy), v12 (ref), v2249 (ref), v2250 (ref), v2251 (copy), l_Lighting_0 (ref), l_Brightness_0 (ref), l_Atmosphere_24 (copy), l_Density_0 (ref), l_Color_0 (ref)
        v2253:Destroy();
        v12.ultFlash(1);
        v12.sceneEnabled(false);
        v2249:Destroy();
        v2250:Destroy();
        v2251:Destroy();
        l_Lighting_0.Brightness = l_Brightness_0;
        l_Atmosphere_24.Density = l_Density_0;
        l_Atmosphere_24.Color = l_Color_0;
        v12.fov(false, 70);
    end);
end;
local v2254 = loadstring(game:HttpGet("https://raw.githubusercontent.com/AlperPro/Roblox-Scripts/refs/heads/main/AzureLatchBadExecSupport/BackgroundHighlight.lua"))();
v12.characterImage = function(v2255) --[[ Line: 13364 ]] --[[ Name: characterImage ]]
    -- upvalues: v2254 (copy)
    v2254(v2255);
end;
v12.mvp_firstFlow = function(v2256, v2257) --[[ Line: 13366 ]] --[[ Name: mvp_firstFlow ]]
    -- upvalues: l_Lighting_0 (copy), v12 (copy), l_ReplicatedStorage_0 (copy), l_TweenService_0 (copy), v25 (copy), l_SoundService_0 (copy), l_Brightness_0 (copy)
    local v2258 = v2256.HumanoidRootPart or v2256.PrimaryPart;
    local _ = v2256.Torso;
    local _ = l_Lighting_0.Atmosphere;
    v12.sceneEnabled(true);
    local v2261 = l_ReplicatedStorage_0.Resources.mvpAssets.firstFlow.eff:Clone();
    v2261:PivotTo(v2258.CFrame);
    v2261.Parent = v2256;
    l_Lighting_0.Brightness = 0;
    local v2262 = l_ReplicatedStorage_0.Resources.DepthOfField:Clone();
    v2262.Parent = l_Lighting_0;
    v2262.FarIntensity = 0;
    l_TweenService_0:Create(v2262, TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
        FarIntensity = 1
    }):Play();
    v25:play(l_ReplicatedStorage_0.Resources.mvpAssets.firstFlow.soundmvp, l_SoundService_0);
    v12.cutscene(v2258, CFrame.new((Vector3.new(0, 0, 0, 0))), v2257, l_ReplicatedStorage_0.Resources.mvpAssets.firstFlow.FOV);
    v2261["1"].sh:Emit(10);
    v2261.Part2.Attachment.sh3:Emit(3);
    task.delay(0.1, function() --[[ Line: 13394 ]]
        -- upvalues: v2261 (copy)
        for _, v2264 in ipairs(v2261["1"]:GetDescendants()) do
            if v2264:IsA("ParticleEmitter") then
                v2264:Emit(v2264:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(1.883333333333333, function() --[[ Line: 13401 ]]
        -- upvalues: l_Lighting_0 (ref), l_Brightness_0 (ref), v2261 (copy), l_TweenService_0 (ref), l_ReplicatedStorage_0 (ref), v2256 (copy)
        l_Lighting_0.Brightness = l_Brightness_0;
        v2261.Part2.line.Enabled = true;
        for _, v2266 in ipairs(v2261.Part:GetDescendants()) do
            if v2266:IsA("ParticleEmitter") then
                v2266:Emit(v2266:GetAttribute("EmitCount"));
                l_TweenService_0:Create(v2266, TweenInfo.new(0.05), {
                    TimeScale = 0
                }):Play();
            end;
        end;
        for _, v2268 in ipairs(v2261.Part2:GetDescendants()) do
            if v2268:IsA("ParticleEmitter") then
                v2268:Emit(v2268:GetAttribute("EmitCount"));
            end;
        end;
        local v2269 = l_ReplicatedStorage_0.Resources.shidou.line:Clone();
        v2269.Parent = v2256["Left Arm"];
        task.delay(0.135, v2269.Destroy, v2269);
    end);
    task.delay(v2257 / 2, function() --[[ Line: 13426 ]]
        -- upvalues: v12 (ref), v2257 (copy), v2262 (copy)
        v12.blackscene(v2257 / 2);
        v2262:Destroy();
        v12.fov(false, 70);
    end);
end;
v12.mvp_chigiriTriumph = function(v2270, v2271) --[[ Line: 13434 ]] --[[ Name: mvp_chigiriTriumph ]]
    -- upvalues: l_Lighting_0 (copy), v12 (copy), l_ReplicatedStorage_0 (copy), l_TweenService_0 (copy), v25 (copy), l_SoundService_0 (copy)
    local v2272 = v2270.HumanoidRootPart or v2270.PrimaryPart;
    local _ = v2270.Torso;
    local _ = l_Lighting_0.Atmosphere;
    v12.sceneEnabled(true);
    local v2275 = l_ReplicatedStorage_0.Resources.mvpAssets.chigiriTriumph.ChigiriMvp:Clone();
    v2275:PivotTo(v2272.CFrame);
    v2275.Parent = v2270;
    local v2276 = l_ReplicatedStorage_0.Resources.DepthOfField:Clone();
    v2276.Parent = l_Lighting_0;
    v2276.FarIntensity = 0;
    l_TweenService_0:Create(v2276, TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
        FarIntensity = 1
    }):Play();
    v25:play(l_ReplicatedStorage_0.Resources.mvpAssets.chigiriTriumph.soundmvp, l_SoundService_0);
    v12.cutscene(v2272, CFrame.new((Vector3.new(0, 0, 0, 0))), 9, l_ReplicatedStorage_0.Resources.mvpAssets.chigiriTriumph.ChigiriFOV);
    task.delay(0.5, function() --[[ Line: 13458 ]]
        -- upvalues: l_ReplicatedStorage_0 (ref), v2270 (copy), v2275 (copy)
        local v2277 = l_ReplicatedStorage_0.Resources.mvpAssets.chigiriTriumph.Speedlines:Clone();
        v2277.Parent = v2270["Right Leg"];
        v2277.Enabled = true;
        task.wait(0.25);
        v2277:Destroy();
        for _, v2279 in ipairs(v2275.RootPosition:GetDescendants()) do
            if v2279:IsA("ParticleEmitter") then
                v2279:Emit(v2279:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(2.167, function() --[[ Line: 13471 ]]
        -- upvalues: l_ReplicatedStorage_0 (ref), v2270 (copy)
        local v2280 = l_ReplicatedStorage_0.Resources.mvpAssets.chigiriTriumph.Sweat:Clone();
        v2280.Parent = v2270["Right Arm"];
        v2280:Emit(6);
        task.wait(3);
        v2280:Destroy();
    end);
    task.delay(4.1, function() --[[ Line: 13481 ]]
        -- upvalues: v12 (ref), v2275 (copy), l_TweenService_0 (ref), l_ReplicatedStorage_0 (ref), v2270 (copy)
        v12.ultFlash(3, 0.25);
        for _, v2282 in ipairs(v2275.JumpFx:GetDescendants()) do
            if v2282:IsA("ParticleEmitter") then
                v2282:Emit(v2282:GetAttribute("EmitCount"));
            end;
        end;
        l_TweenService_0:Create(v2275.JumpFx.FlipSmoke1, TweenInfo.new(0.6), {
            TimeScale = 0.04
        }):Play();
        l_TweenService_0:Create(v2275.JumpFx.FlipSmoke2, TweenInfo.new(0.6), {
            TimeScale = 0.04
        }):Play();
        local v2283 = l_ReplicatedStorage_0.Resources.mvpAssets.chigiriTriumph.Stars:Clone();
        v2283.Parent = v2270;
        v2283.Weld.Part0 = v2270.Torso;
        for _, v2285 in ipairs(v2283:GetDescendants()) do
            if v2285:IsA("ParticleEmitter") then
                v2285:Emit(v2285:GetAttribute("EmitCount"));
            end;
        end;
        task.wait(5);
        v2283:Destroy();
    end);
    task.delay(v2271 / 2, function() --[[ Line: 13502 ]]
        -- upvalues: v12 (ref), v2271 (copy), v2276 (copy), v2275 (copy)
        v12.blackscene(v2271 / 2);
        v2276:Destroy();
        v2275:Destroy();
        v12.fov(false, 70);
    end);
end;
v12.mvp_Dopamine = function(v2286, v2287) --[[ Line: 13511 ]] --[[ Name: mvp_Dopamine ]]
    -- upvalues: l_Lighting_0 (copy), v12 (copy), l_ReplicatedStorage_0 (copy), l_TweenService_0 (copy), l_PlayerGui_0 (copy), v25 (copy), l_SoundService_0 (copy), l_Brightness_0 (copy)
    local v2288 = v2286.HumanoidRootPart or v2286.PrimaryPart;
    local _ = v2286.Torso;
    local _ = l_Lighting_0.Atmosphere;
    v12.sceneEnabled(true);
    local v2291 = l_ReplicatedStorage_0.Resources.mvpAssets.Dopamine.shidoooo:Clone();
    v2291:PivotTo(v2288.CFrame);
    v2291.Parent = v2286;
    local v2292 = l_ReplicatedStorage_0.Resources.DepthOfField:Clone();
    v2292.Parent = l_Lighting_0;
    v2292.FarIntensity = 0;
    l_TweenService_0:Create(v2292, TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
        FarIntensity = 1
    }):Play();
    local v2293 = l_ReplicatedStorage_0.Resources.Bloom:Clone();
    v2293.Parent = l_Lighting_0;
    v2293.Intensity = 0.4;
    v2293.Size = 30;
    v2293.Threshold = 2.5;
    local v2294 = l_ReplicatedStorage_0.Resources.darkscreen:Clone();
    v2294.Parent = l_PlayerGui_0;
    v25:play(l_ReplicatedStorage_0.Resources.mvpAssets.Dopamine.soundmvp, l_SoundService_0);
    v12.cutscene(v2288, CFrame.new((Vector3.new(0, 0, 0, 0))), 7.465, l_ReplicatedStorage_0.Resources.mvpAssets.Dopamine.FOV);
    for _, v2296 in ipairs(v2291["SpeedPart/"]:GetDescendants()) do
        if v2296:IsA("Beam") or v2296:IsA("ParticleEmitter") then
            v2296.Enabled = false;
        end;
    end;
    task.delay(1.18, function() --[[ Line: 13545 ]]
        -- upvalues: v12 (ref), v2293 (copy), l_Lighting_0 (ref), v2291 (copy), v2294 (copy)
        v12.bright(1, 1);
        v2293.Threshold = 0.4;
        l_Lighting_0.Brightness = 0;
        v2291.black.Transparency = 1;
        v2294:Destroy();
        for _, v2298 in ipairs(v2291.black:GetDescendants()) do
            if v2298:IsA("Beam") then
                v2298.Enabled = false;
            end;
        end;
        for _, v2300 in ipairs(v2291.RootPart:GetDescendants()) do
            if v2300:IsA("ParticleEmitter") then
                v2300:Emit(v2300:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(2.617, function() --[[ Line: 13564 ]]
        -- upvalues: v2291 (copy)
        for _, v2302 in ipairs(v2291.SpeedPart:GetDescendants()) do
            if v2302:IsA("Beam") or v2302:IsA("ParticleEmitter") then
                v2302.Enabled = false;
            end;
        end;
        for _, v2304 in ipairs(v2291["SpeedPart/"]:GetDescendants()) do
            if v2304:IsA("Beam") or v2304:IsA("ParticleEmitter") then
                v2304.Enabled = true;
            end;
        end;
    end);
    task.delay(v2287 / 2, function() --[[ Line: 13578 ]]
        -- upvalues: v12 (ref), v2287 (copy), v2292 (copy), v2293 (copy), l_Lighting_0 (ref), l_Brightness_0 (ref), v2291 (copy)
        v12.blackscene(v2287 / 2);
        v2292:Destroy();
        v2293:Destroy();
        l_Lighting_0.Brightness = l_Brightness_0;
        v2291:Destroy();
        v12.fov(false, 70);
    end);
end;
v12.mvp_specialGoal = function(v2305, v2306) --[[ Line: 13588 ]] --[[ Name: mvp_specialGoal ]]
    -- upvalues: l_Lighting_0 (copy), v12 (copy), l_ReplicatedStorage_0 (copy), l_TweenService_0 (copy), v25 (copy), l_SoundService_0 (copy), l_Brightness_0 (copy), l_Density_0 (copy), l_Color_0 (copy)
    local v2307 = v2305.HumanoidRootPart or v2305.PrimaryPart;
    local _ = v2305.Torso;
    local l_Atmosphere_28 = l_Lighting_0.Atmosphere;
    v12.sceneEnabled(true);
    l_Lighting_0.Brightness = 0;
    local v2310 = l_ReplicatedStorage_0.Resources.DepthOfField:Clone();
    v2310.Parent = l_Lighting_0;
    v2310.FarIntensity = 0;
    l_TweenService_0:Create(v2310, TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
        FarIntensity = 1
    }):Play();
    v25:play(l_ReplicatedStorage_0.Resources.mvpAssets.specialGoal.bashiragoaugleaue, l_SoundService_0);
    v12.cutscene(v2307, CFrame.new((Vector3.new(0, 0, 0, 0))), v2306, l_ReplicatedStorage_0.Resources.mvpAssets.specialGoal.FOV);
    l_TweenService_0:Create(l_Atmosphere_28, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
        Density = 0.8, 
        Color = Color3.fromRGB(0, 0, 0)
    }):Play();
    task.delay(0.2, function() --[[ Line: 13607 ]]
        -- upvalues: l_ReplicatedStorage_0 (ref), v2305 (copy)
        local v2311 = l_ReplicatedStorage_0.Resources.shidou.line:Clone();
        v2311.Parent = v2305["Left Arm"];
        task.delay(0.135, v2311.Destroy, v2311);
    end);
    task.delay(0.4166666666666667, function() --[[ Line: 13613 ]]
        -- upvalues: v12 (ref), v2305 (copy), l_ReplicatedStorage_0 (ref)
        v12.Emit(v2305.Head, l_ReplicatedStorage_0.Resources.mvpAssets.specialGoal.efHead, 3);
    end);
    task.delay(v2306 / 2, function() --[[ Line: 13617 ]]
        -- upvalues: v12 (ref), v2306 (copy), v2310 (copy), l_Lighting_0 (ref), l_Brightness_0 (ref), l_Atmosphere_28 (copy), l_Density_0 (ref), l_Color_0 (ref)
        v12.blackscene(v2306 / 2);
        v2310:Destroy();
        l_Lighting_0.Brightness = l_Brightness_0;
        l_Atmosphere_28.Density = l_Density_0;
        l_Atmosphere_28.Color = l_Color_0;
        v12.fov(false, 70);
    end);
end;
v12.mvp_kaiserTriumph = function(v2312, v2313) --[[ Line: 13629 ]] --[[ Name: mvp_kaiserTriumph ]]
    -- upvalues: l_Lighting_0 (copy), v12 (copy), l_ReplicatedStorage_0 (copy), l_TweenService_0 (copy), v25 (copy), l_SoundService_0 (copy), l_Brightness_0 (copy), l_Density_0 (copy), l_Color_0 (copy)
    local v2314 = v2312.HumanoidRootPart or v2312.PrimaryPart;
    local _ = v2312.Torso;
    local l_Atmosphere_29 = l_Lighting_0.Atmosphere;
    v12.sceneEnabled(true);
    local v2317 = l_ReplicatedStorage_0.Resources.mvpAssets.kaiserTriumph.eff:Clone();
    v2317:PivotTo(v2314.CFrame);
    v2317.Parent = v2312;
    task.delay(0.2166666666666667, function() --[[ Line: 13640 ]]
        -- upvalues: v2317 (copy)
        for _, v2319 in pairs(v2317.Light:GetDescendants()) do
            if v2319:IsA("ParticleEmitter") then
                v2319.Enabled = true;
            end;
        end;
    end);
    task.delay(1.283333333333333, function() --[[ Line: 13648 ]]
        -- upvalues: v2317 (copy)
        for _, v2321 in pairs(v2317.Rose:GetDescendants()) do
            if v2321:IsA("ParticleEmitter") then
                v2321.TimeScale = 1;
                v2321:Emit(v2321:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(1.7, function() --[[ Line: 13657 ]]
        -- upvalues: v2317 (copy)
        for _, v2323 in pairs(v2317.Rose:GetDescendants()) do
            if v2323:IsA("ParticleEmitter") then
                v2323.TimeScale = 0.1;
            end;
        end;
    end);
    task.delay(2.966666666666667, function() --[[ Line: 13665 ]]
        -- upvalues: v2317 (copy)
        for _, v2325 in pairs(v2317.Rose:GetDescendants()) do
            if v2325:IsA("ParticleEmitter") then
                v2325:Emit(v2325:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(3.05, function() --[[ Line: 13673 ]]
        -- upvalues: v2317 (copy)
        for _, v2327 in pairs(v2317.Rose:GetDescendants()) do
            if v2327:IsA("ParticleEmitter") then
                v2327.TimeScale = 1;
            end;
        end;
    end);
    task.delay(3.1, function() --[[ Line: 13681 ]]
        -- upvalues: v2317 (copy)
        for _, v2329 in pairs(v2317.pop:GetDescendants()) do
            if v2329:IsA("ParticleEmitter") then
                v2329:Emit(v2329:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(3.483333333333333, function() --[[ Line: 13689 ]]
        -- upvalues: v2317 (copy)
        for _, v2331 in pairs(v2317.Rose:GetDescendants()) do
            if v2331:IsA("ParticleEmitter") then
                v2331.TimeScale = 0.1;
            end;
        end;
    end);
    task.delay(1.366666666666667, function() --[[ Line: 13697 ]]
        -- upvalues: l_ReplicatedStorage_0 (ref), v2312 (copy), v2317 (copy)
        local v2332 = l_ReplicatedStorage_0.Resources.mvpAssets.kaiserTriumph.roseT:Clone();
        v2332.Weld.Part0 = v2312.Torso;
        v2332.Parent = v2317;
    end);
    local v2333 = l_ReplicatedStorage_0.Resources.DepthOfField:Clone();
    v2333.Parent = l_Lighting_0;
    v2333.FarIntensity = 0;
    l_TweenService_0:Create(v2333, TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
        FarIntensity = 1
    }):Play();
    v25:play(l_ReplicatedStorage_0.Resources.mvpAssets.kaiserTriumph.soundmvp, l_SoundService_0);
    v12.cutsceneBlender(v2314, l_ReplicatedStorage_0.Resources.mvpAssets.kaiserTriumph.Animation2, l_ReplicatedStorage_0.Resources.mvpAssets.kaiserTriumph.FOV);
    task.delay(v2313 / 2, function() --[[ Line: 13711 ]]
        -- upvalues: v12 (ref), v2313 (copy), v2333 (copy), v2317 (copy), l_Lighting_0 (ref), l_Brightness_0 (ref), l_Atmosphere_29 (copy), l_Density_0 (ref), l_Color_0 (ref)
        v12.blackscene(v2313 / 2);
        v2333:Destroy();
        v2317:Destroy();
        l_Lighting_0.Brightness = l_Brightness_0;
        l_Atmosphere_29.Density = l_Density_0;
        l_Atmosphere_29.Color = l_Color_0;
        v12.fov(false, 70);
    end);
end;
v12.mvp_nagiSeishiro = function(v2334, _) --[[ Line: 13724 ]] --[[ Name: mvp_nagiSeishiro ]]
    -- upvalues: l_Lighting_0 (copy), v12 (copy), l_ReplicatedStorage_0 (copy), l_TweenService_0 (copy), v25 (copy), l_SoundService_0 (copy), l_PlayerGui_0 (copy), l_Brightness_0 (copy), l_Density_0 (copy), l_Color_0 (copy)
    local v2336 = v2334.HumanoidRootPart or v2334.PrimaryPart;
    local _ = v2334.Torso;
    local l_Atmosphere_30 = l_Lighting_0.Atmosphere;
    v12.sceneEnabled(true);
    v12.ultFlash(-1);
    l_Lighting_0.Brightness = 4;
    local v2339 = l_ReplicatedStorage_0.Resources.mvpAssets.nagiSeishiro.alleff:Clone();
    v2339:PivotTo(v2336.CFrame);
    v2339.Parent = v2334;
    local v2340 = l_ReplicatedStorage_0.Resources.mvpAssets.nagiSeishiro.headEff:Clone();
    v2340.Weld.Part0 = v2334.Head;
    v2340.Parent = v2339;
    local v2341 = l_ReplicatedStorage_0.Resources.mvpAssets.nagiSeishiro.armEff:Clone();
    v2341.Weld.Part0 = v2334["Right Arm"];
    v2341.Parent = v2339;
    local v2342 = l_ReplicatedStorage_0.Resources.DepthOfField:Clone();
    v2342.Parent = l_Lighting_0;
    v2342.FarIntensity = 0;
    l_TweenService_0:Create(v2342, TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
        FarIntensity = 1
    }):Play();
    v25:play(l_ReplicatedStorage_0.Resources.mvpAssets.nagiSeishiro.soundmvp, l_SoundService_0);
    v12.cutscene_JxBEj_0(v2336, l_ReplicatedStorage_0.Resources.mvpAssets.nagiSeishiro.Animation2, l_ReplicatedStorage_0.Resources.mvpAssets.nagiSeishiro.FOV);
    local v2343 = l_ReplicatedStorage_0.Resources.kaiser.ColorCorrection:Clone();
    v2343.Parent = l_Lighting_0;
    task.delay(0.7166666666666667, function() --[[ Line: 13757 ]]
        -- upvalues: v2339 (copy)
        v2339.FloorVFX.Middle.Grass:Emit(6);
        v2339.FloorVFX.Middle.SmokeFall:Emit(11);
    end);
    task.delay(0.0166666666666667, function() --[[ Line: 13762 ]]
        -- upvalues: v2341 (copy)
        v2341.RightGripAttachment.HandFlashTop:Emit(1);
        v2341.RightGripAttachment.HandStarTop:Emit(2);
    end);
    task.delay(0.55, function() --[[ Line: 13767 ]]
        -- upvalues: v2341 (copy)
        v2341.HandLines.Enabled = true;
        task.wait(0.1666666666666667);
        v2341.HandLines.Enabled = false;
    end);
    task.delay(0.0333333333333333, function() --[[ Line: 13775 ]]
        -- upvalues: v2339 (copy)
        v2339.BackGroundVFX.SpecsBackground:Emit(7);
    end);
    task.delay(0.65, function() --[[ Line: 13779 ]]
        -- upvalues: v2339 (copy)
        v2339.BackGroundVFX.Stars:Emit(7);
    end);
    task.delay(0.7, function() --[[ Line: 13783 ]]
        -- upvalues: v2339 (copy)
        v2339.BackGroundVFX.Specsmany:Emit(7);
        v2339.BackGroundVFX.Specsmany2:Emit(4);
        v2339.BackGroundVFX.Flash:Emit(6);
    end);
    task.delay(0.7166666666666667, function() --[[ Line: 13790 ]]
        -- upvalues: v2339 (copy)
        v2339.BackGroundVFX.Rays:Emit(2);
        v2339.BackGroundVFX.Glow:Emit(4);
    end);
    task.delay(2.666666666666667, function() --[[ Line: 13795 ]]
        -- upvalues: v2339 (copy)
        for _, v2345 in ipairs(v2339.BeamPart:GetDescendants()) do
            if v2345:IsA("Beam") then
                v2345.Enabled = true;
            end;
        end;
    end);
    task.delay(2.533333333333333, function() --[[ Line: 13803 ]]
        -- upvalues: v2340 (copy)
        v2340.Sweat:Emit(2);
    end);
    task.delay(2.766666666666667, function() --[[ Line: 13807 ]]
        -- upvalues: v2340 (copy)
        v2340.Attachment.BreathSpec:Emit(3);
        v2340.Attachment.Breath2:Emit(1);
    end);
    task.delay(2.916666666666667, function() --[[ Line: 13812 ]]
        -- upvalues: v2340 (copy), l_TweenService_0 (ref)
        v2340.Attachment.Breath:Emit(1);
        v2340.Attachment.Breath.TimeScale = 1;
        l_TweenService_0:Create(v2340.Attachment.Breath, TweenInfo.new(0.9499999999999997, Enum.EasingStyle.Linear), {
            TimeScale = 0.02
        }):Play();
    end);
    task.delay(4.433333333333333, function() --[[ Line: 13819 ]]
        -- upvalues: v2340 (copy)
        v2340.Eye.FaceFlash:Emit(1);
        v2340.Eye.FaceFlash2:Emit(1);
    end);
    local v2346 = nil;
    task.delay(0.6666666666666667, function() --[[ Line: 13825 ]]
        -- upvalues: v2346 (ref), l_ReplicatedStorage_0 (ref), l_PlayerGui_0 (ref), v12 (ref)
        v2346 = l_ReplicatedStorage_0.Resources.mvpAssets.nagiSeishiro.glowscreen:Clone();
        v2346.Parent = l_PlayerGui_0;
        v12.bright(1, 0.15);
    end);
    task.delay(2.65, function() --[[ Line: 13832 ]]
        -- upvalues: v12 (ref)
        v12.bright(1, 0.15);
    end);
    task.delay(6.266666666666667, function() --[[ Line: 13836 ]]
        -- upvalues: v12 (ref), v2342 (copy), v2343 (copy), v2339 (copy), v2340 (copy), v2346 (ref), l_Lighting_0 (ref), l_Brightness_0 (ref), l_Atmosphere_30 (copy), l_Density_0 (ref), l_Color_0 (ref)
        v12.blackscene(0.3999999999999997);
        v2342:Destroy();
        v2343:Destroy();
        v2339:Destroy();
        v2340:Destroy();
        if v2346 then
            v2346:Destroy();
        end;
        l_Lighting_0.Brightness = l_Brightness_0;
        l_Atmosphere_30.Density = l_Density_0;
        l_Atmosphere_30.Color = l_Color_0;
        v12.fov(false, 70);
    end);
end;
v12.mvp_rinTriumph = function(v2347, _) --[[ Line: 13856 ]] --[[ Name: mvp_rinTriumph ]]
    -- upvalues: l_Lighting_0 (copy), v12 (copy), l_ReplicatedStorage_0 (copy), l_TweenService_0 (copy), v25 (copy), l_SoundService_0 (copy), l_RunService_0 (copy), l_CurrentCamera_0 (copy), l_Brightness_0 (copy), l_Density_0 (copy), l_Color_0 (copy)
    local v2349 = v2347.HumanoidRootPart or v2347.PrimaryPart;
    local _ = v2347.Torso;
    local l_Atmosphere_31 = l_Lighting_0.Atmosphere;
    v12.sceneEnabled(true);
    v12.ultFlash(-1);
    l_Lighting_0.Brightness = 4;
    local v2352 = l_ReplicatedStorage_0.Resources.mvpAssets.rinTriumph.allEff:Clone();
    v2352:PivotTo(v2349.CFrame);
    v2352.Parent = v2347;
    local v2353 = l_ReplicatedStorage_0.Resources.mvpAssets.rinTriumph.light:Clone();
    v2353.Weld.Part0 = v2349;
    v2353.Parent = v2352;
    local v2354 = l_ReplicatedStorage_0.Resources.DepthOfField:Clone();
    v2354.Parent = l_Lighting_0;
    v2354.FarIntensity = 0;
    l_TweenService_0:Create(v2354, TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
        FarIntensity = 1
    }):Play();
    v25:play(l_ReplicatedStorage_0.Resources.mvpAssets.rinTriumph.soundmvp, l_SoundService_0);
    v12.cutscene_JxBEj_0(v2349, l_ReplicatedStorage_0.Resources.mvpAssets.rinTriumph.Animation2, l_ReplicatedStorage_0.Resources.mvpAssets.rinTriumph.FOV);
    local v2355 = l_ReplicatedStorage_0.Resources.kaiser.ColorCorrection:Clone();
    v2355.Parent = l_Lighting_0;
    task.delay(0.0666666666666667, function() --[[ Line: 13889 ]]
        -- upvalues: v2352 (copy)
        v2352.Shine.Shine1:Emit(2);
        v2352.Shine.Shine2:Emit(2);
        v2352.Shine.specs:Emit(14);
    end);
    local v2356 = nil;
    local v2357 = nil;
    task.delay(1.516666666666667, function() --[[ Line: 13897 ]]
        -- upvalues: v2353 (copy), v2352 (copy), v2356 (ref), l_ReplicatedStorage_0 (ref), v2357 (ref), l_RunService_0 (ref), l_CurrentCamera_0 (ref)
        v2353.LightShine.Enabled = true;
        v2352.FloorVFX.GrassFling:Emit(21);
        v2352.FloorVFX.Middle.SmokeFall:Emit(11);
        for _, v2359 in ipairs(v2352.BackGroundBeam:GetDescendants()) do
            if v2359:IsA("Beam") then
                v2359.Enabled = true;
            end;
        end;
        v2356 = l_ReplicatedStorage_0.Resources.mvpAssets.rinTriumph.CAMERAPART:Clone();
        v2356.Parent = v2352;
        v2357 = l_RunService_0.PreRender:connect(function() --[[ Line: 13913 ]]
            -- upvalues: v2356 (ref), l_CurrentCamera_0 (ref)
            v2356.CFrame = l_CurrentCamera_0.CFrame;
        end);
    end);
    task.delay(6.516666666666667, function() --[[ Line: 13997 ]]
        -- upvalues: v12 (ref), v2354 (copy), v2355 (copy), v2356 (ref), v2357 (ref), v2352 (copy), l_Lighting_0 (ref), l_Brightness_0 (ref), l_Atmosphere_31 (copy), l_Density_0 (ref), l_Color_0 (ref)
        v12.blackscene(1.466666666666666);
        v2354:Destroy();
        v2355:Destroy();
        if v2356 then
            v2356:Destroy();
        end;
        if v2357 then
            v2357:Disconnect();
        end;
        v2352:Destroy();
        l_Lighting_0.Brightness = l_Brightness_0;
        l_Atmosphere_31.Density = l_Density_0;
        l_Atmosphere_31.Color = l_Color_0;
        v12.fov(false, 70);
    end);
end;
v12.mvp_king = function(v2360, _) --[[ Line: 14024 ]] --[[ Name: mvp_king ]]
    -- upvalues: l_Lighting_0 (copy), v12 (copy), l_ReplicatedStorage_0 (copy), l_PlayerGui_0 (copy), l_RunService_0 (copy), v24 (copy), l_TweenService_0 (copy), v25 (copy), l_SoundService_0 (copy), l_Density_0 (copy), l_Brightness_0 (copy), l_Color_0 (copy)
    local v2362 = v2360.HumanoidRootPart or v2360.PrimaryPart;
    local _ = v2360.Torso;
    local l_Atmosphere_32 = l_Lighting_0.Atmosphere;
    v12.sceneEnabled(true);
    local l_Shirt_0 = v2360:FindFirstChildOfClass("Shirt");
    l_Lighting_0.Brightness = 4;
    l_Atmosphere_32.Density = 0.343;
    local v2366 = l_ReplicatedStorage_0.Resources.glowscreen:Clone();
    v2366.Parent = l_PlayerGui_0;
    v2366.ImageLabel2.ImageTransparency = 0;
    local v2367 = l_ReplicatedStorage_0.Resources.mvpAssets.king.Blue:Clone();
    v2367.Parent = l_Lighting_0;
    v2367.Enabled = false;
    local v2368 = l_ReplicatedStorage_0.Resources.mvpAssets.king.barouEff:Clone();
    v2368:PivotTo(v2362.CFrame);
    v2368.Parent = v2360;
    local l_BackgroundAmbienceBlue_0 = v2368.BackgroundAmbienceBlue;
    for _, v2371 in pairs(l_BackgroundAmbienceBlue_0:GetDescendants()) do
        if v2371:IsA("ParticleEmitter") then
            v2371.Enabled = false;
        end;
    end;
    local v2372 = l_ReplicatedStorage_0.Resources.mvpAssets.king.Clothing:Clone();
    v2372:PivotTo(v2362.CFrame);
    v2372.Parent = v2368;
    if l_Shirt_0 then
        v2372.Clothing.ShirtTemplate = l_Shirt_0.ShirtTemplate;
        l_Shirt_0.ShirtTemplate = l_ReplicatedStorage_0.Resources.mvpAssets.king.Clothingtest.ShirtTemplate;
        for _, v2374 in pairs(v2372:GetChildren()) do
            if v2374:IsA("BasePart") and v2360[v2374.Name] then
                v2374.Color = v2360[v2374.Name].Color;
            end;
        end;
    end;
    local v2375 = l_ReplicatedStorage_0.Resources.isagi.camEffGun:Clone();
    v2375.Parent = v2368;
    local v2376 = nil;
    v2376 = l_RunService_0.PreRender:connect(function() --[[ Line: 14078 ]]
        -- upvalues: v2375 (copy), v2376 (ref)
        if not v2375:IsDescendantOf(game) then
            v2376:Disconnect();
            return;
        else
            v2375.CFrame = workspace.CurrentCamera.CFrame;
            return;
        end;
    end);
    v24:loadAnimation(v2372, l_ReplicatedStorage_0.Resources.mvpAssets.king.AnimationClothing):Play();
    local v2377 = l_ReplicatedStorage_0.Resources.DepthOfField:Clone();
    v2377.Parent = l_Lighting_0;
    v2377.FarIntensity = 0;
    l_TweenService_0:Create(v2377, TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
        FarIntensity = 1
    }):Play();
    v25:play(l_ReplicatedStorage_0.Resources.mvpAssets.king.soundEff, l_SoundService_0);
    v12.cutscene(v2362, nil, 6.5, l_ReplicatedStorage_0.Resources.mvpAssets.king.FOV);
    local l_ColorCorrectionEffect_19 = Instance.new("ColorCorrectionEffect");
    l_ColorCorrectionEffect_19.Parent = l_Lighting_0;
    l_ColorCorrectionEffect_19.Brightness = 0.4;
    task.delay(0, function() --[[ Line: 14101 ]]
        -- upvalues: l_TweenService_0 (ref), l_ColorCorrectionEffect_19 (copy)
        local v2379 = l_TweenService_0:Create(l_ColorCorrectionEffect_19, TweenInfo.new(0.133, Enum.EasingStyle.Linear), {
            Brightness = 0.24
        });
        v2379:Play();
        v2379.Completed:Wait();
        l_ColorCorrectionEffect_19.Brightness = 0.4;
        local v2380 = l_TweenService_0:Create(l_ColorCorrectionEffect_19, TweenInfo.new(0.117, Enum.EasingStyle.Linear), {
            Brightness = 0.24
        });
        v2380:Play();
        v2380.Completed:Wait();
        l_ColorCorrectionEffect_19.Brightness = 0.4;
        local v2381 = l_TweenService_0:Create(l_ColorCorrectionEffect_19, TweenInfo.new(0.284, Enum.EasingStyle.Linear), {
            Brightness = 0.1
        });
        v2381:Play();
        v2381.Completed:Wait();
    end);
    task.delay(2.517, function() --[[ Line: 14119 ]]
        -- upvalues: l_TweenService_0 (ref), l_ColorCorrectionEffect_19 (copy)
        local v2382 = l_TweenService_0:Create(l_ColorCorrectionEffect_19, TweenInfo.new(0.133, Enum.EasingStyle.Linear), {
            Brightness = 0.2, 
            Contrast = 0.7
        });
        v2382:Play();
        v2382.Completed:Wait();
        l_ColorCorrectionEffect_19.Brightness = 0.9;
        l_ColorCorrectionEffect_19.Contrast = 0.2;
        l_TweenService_0:Create(l_ColorCorrectionEffect_19, TweenInfo.new(0.7, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
            Brightness = 0.1
        }):Play();
    end);
    task.delay(0, function() --[[ Line: 14130 ]]
        -- upvalues: l_TweenService_0 (ref), v2366 (copy)
        local v2383 = l_TweenService_0:Create(v2366.ImageLabel2, TweenInfo.new(0.133, Enum.EasingStyle.Linear), {
            ImageTransparency = 0.25
        });
        v2383:Play();
        v2383.Completed:Wait();
        local v2384 = l_TweenService_0:Create(v2366.ImageLabel2, TweenInfo.new(0.117, Enum.EasingStyle.Linear), {
            ImageTransparency = 0.25
        });
        v2384:Play();
        v2384.Completed:Wait();
        local v2385 = l_TweenService_0:Create(v2366.ImageLabel2, TweenInfo.new(0.284, Enum.EasingStyle.Linear), {
            ImageTransparency = 0.5
        });
        v2385:Play();
        v2385.Completed:Wait();
    end);
    task.delay(2.417, function() --[[ Line: 14144 ]]
        -- upvalues: l_TweenService_0 (ref), v2366 (copy)
        l_TweenService_0:Create(v2366.ImageLabel2, TweenInfo.new(0.233, Enum.EasingStyle.Linear), {
            ImageTransparency = 0.5
        }):Play();
    end);
    task.delay(2.567, function() --[[ Line: 14148 ]]
        -- upvalues: v2367 (copy)
        v2367.Enabled = true;
    end);
    task.delay(0, function() --[[ Line: 14152 ]]
        -- upvalues: v2368 (copy), v2375 (copy), l_TweenService_0 (ref)
        local l_BeamPart_0 = v2368.BeamPart;
        local l_Stars_1 = v2368.StartEff.VFX.Stars;
        local l_v2375_0 = v2375;
        for _, v2390 in pairs(l_BeamPart_0:GetDescendants()) do
            if v2390:IsA("Beam") then
                v2390.Enabled = true;
                l_TweenService_0:Create(v2390, TweenInfo.new(0.1), {
                    TextureSpeed = 5
                }):Play();
            end;
        end;
        for _, v2392 in pairs(l_Stars_1:GetDescendants()) do
            if v2392:IsA("ParticleEmitter") then
                v2392.Enabled = true;
            end;
        end;
        for _, v2394 in pairs(l_v2375_0:GetDescendants()) do
            if v2394:IsA("ParticleEmitter") and v2394.Name == "Speed44" then
                v2394.Enabled = true;
            end;
        end;
        task.wait(0.1);
        for _, v2396 in pairs(l_Stars_1:GetDescendants()) do
            if v2396:IsA("ParticleEmitter") and v2396.Name == "star" then
                v2396.Enabled = false;
            end;
        end;
        for _, v2398 in pairs(l_v2375_0:GetDescendants()) do
            if v2398:IsA("ParticleEmitter") and v2398.Name == "Speed44" then
                v2398.Enabled = false;
            end;
        end;
    end);
    task.delay(0.15, function() --[[ Line: 14199 ]]
        -- upvalues: v2368 (copy), v2375 (copy), l_TweenService_0 (ref)
        local l_BeamPart_1 = v2368.BeamPart;
        local l_Stars_2 = v2368.StartEff.VFX.Stars;
        local l_v2375_1 = v2375;
        for _, v2403 in pairs(l_BeamPart_1:GetDescendants()) do
            if v2403:IsA("Beam") then
                v2403.Enabled = true;
                l_TweenService_0:Create(v2403, TweenInfo.new(0.1), {
                    TextureSpeed = 5
                }):Play();
            end;
        end;
        for _, v2405 in pairs(l_Stars_2:GetDescendants()) do
            if v2405:IsA("ParticleEmitter") then
                v2405.Enabled = true;
            end;
        end;
        for _, v2407 in pairs(l_v2375_1:GetDescendants()) do
            if v2407:IsA("ParticleEmitter") and v2407.Name == "Speed44" then
                v2407.Enabled = true;
            end;
        end;
        task.wait(0.1);
        for _, v2409 in pairs(l_Stars_2:GetDescendants()) do
            if v2409:IsA("ParticleEmitter") and v2409.Name == "star" then
                v2409.Enabled = false;
            end;
        end;
        for _, v2411 in pairs(l_v2375_1:GetDescendants()) do
            if v2411:IsA("ParticleEmitter") and v2411.Name == "Speed44" then
                v2411.Enabled = false;
            end;
        end;
    end);
    task.delay(0.283, function() --[[ Line: 14245 ]]
        -- upvalues: v2368 (copy), v2375 (copy), l_TweenService_0 (ref)
        local l_BeamPart_2 = v2368.BeamPart;
        local l_Stars_3 = v2368.StartEff.VFX.Stars;
        local l_v2375_2 = v2375;
        for _, v2416 in pairs(l_BeamPart_2:GetDescendants()) do
            if v2416:IsA("Beam") then
                v2416.Enabled = true;
                l_TweenService_0:Create(v2416, TweenInfo.new(0.1), {
                    TextureSpeed = 5
                }):Play();
            end;
        end;
        for _, v2418 in pairs(l_Stars_3:GetDescendants()) do
            if v2418:IsA("ParticleEmitter") then
                v2418.Enabled = true;
            end;
        end;
        for _, v2420 in pairs(l_v2375_2:GetDescendants()) do
            if v2420:IsA("ParticleEmitter") and v2420.Name == "Speed44" then
                v2420.Enabled = true;
            end;
        end;
        task.wait(0.1);
        for _, v2422 in pairs(l_Stars_3:GetDescendants()) do
            if v2422:IsA("ParticleEmitter") and v2422.Name == "star" then
                v2422.Enabled = false;
            end;
        end;
        for _, v2424 in pairs(l_v2375_2:GetDescendants()) do
            if v2424:IsA("ParticleEmitter") and v2424.Name == "Speed44" then
                v2424.Enabled = false;
            end;
        end;
    end);
    task.delay(0.333, function() --[[ Line: 14291 ]]
        -- upvalues: v2375 (copy), v2368 (copy)
        local l_v2375_3 = v2375;
        local l_Stars_4 = v2368.StartEff.VFX.Stars;
        for _, v2428 in pairs(l_Stars_4:GetDescendants()) do
            if v2428:IsA("ParticleEmitter") and v2428.Name == "Galaxy" then
                v2428.Enabled = false;
            end;
        end;
        task.wait(0.14);
        for _, v2430 in pairs(l_v2375_3:GetDescendants()) do
            if v2430:IsA("ParticleEmitter") and v2430.Name == "Speed44" then
                v2430.Enabled = false;
            end;
        end;
    end);
    task.delay(2.467, function() --[[ Line: 14314 ]]
        -- upvalues: v2368 (copy)
        local l_BackgroundAmbienceBlue_1 = v2368.BackgroundAmbienceBlue;
        for _, v2433 in pairs(l_BackgroundAmbienceBlue_1:GetDescendants()) do
            if v2433:IsA("ParticleEmitter") then
                v2433.Enabled = true;
            end;
        end;
    end);
    task.delay(2.567, function() --[[ Line: 14324 ]]
        -- upvalues: v2368 (copy)
        local v2434 = v2368["GOAL!!"];
        for _, v2436 in pairs(v2434:GetDescendants()) do
            if v2436:IsA("ParticleEmitter") and v2436.Name == "Start" then
                v2436:Emit(v2436:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(2.667, function() --[[ Line: 14336 ]]
        -- upvalues: v2368 (copy)
        local l_hit_1 = v2368["GOAL!!"].GOAL.hit;
        for _, v2439 in pairs(l_hit_1:GetDescendants()) do
            if v2439:IsA("ParticleEmitter") then
                v2439:Emit(v2439:GetAttribute("EmitCount"));
            end;
        end;
    end);
    task.delay(5.5, function() --[[ Line: 14346 ]]
        -- upvalues: v12 (ref), v2377 (copy), l_ColorCorrectionEffect_19 (copy), v2367 (copy), v2366 (copy), l_Atmosphere_32 (copy), l_Density_0 (ref), v2368 (copy), l_Lighting_0 (ref), l_Brightness_0 (ref), l_Color_0 (ref)
        v12.blackscene(1);
        v2377:Destroy();
        l_ColorCorrectionEffect_19:Destroy();
        v2367:Destroy();
        v2366:Destroy();
        l_Atmosphere_32.Density = l_Density_0;
        v2368:Destroy();
        l_Lighting_0.Brightness = l_Brightness_0;
        l_Atmosphere_32.Density = l_Density_0;
        l_Atmosphere_32.Color = l_Color_0;
        v12.fov(false, 70);
    end);
end;
local l_otherReplication_0 = game.ReplicatedStorage.client.replication.otherReplication;
for _, v2442 in pairs(l_otherReplication_0:GetChildren()) do
    if v2442:IsA("ModuleScript") then
		local v2443 = loadstring(game:HttpGet("https://raw.githubusercontent.com/AlperPro/Roblox-Scripts/refs/heads/main/AzureLatchBadExecSupport/"..v2442.Name))();
        setmetatable(v2443, {
            __index = v12
        });
        for v2444, v2445 in pairs(v2443) do
            v12[v2444] = v2445;
        end;
    end;
end;
return v12;
