--Not Working

botname = "VM1"

--Importing TemBotLua
import("TemBot.Lua.TemBotLua")

--Registering the Temtem Window
tblua:RegisterTemTemWindow()
tblua:GetAreaColor()

tblua:Sleep(1000)

pansunf = 73

pansuns = 134

mag = 0

mas = 0

count = 1

a = 0

t = 1

encounter = 0

MovementSwitch = 1

nolag = math.random(50, 150)

if tblua:IsInWorld() == true or tblua:IsInFight() == true then
    while (true) do
        if tblua:IsInWorld() == true then
            local sexy = math.random(600)
            tblua:Sleep(sexy)
            tblua:CheckPause()
            tblua:CheckLogout()
            while tblua:IsInWorld() == true do
                if encounter > 50 then
                    magpan = mag * pansunf
                    maspan = mas * pansuns
                    pansune = maspan + magpan
                    tblua:SendTelegramMessage("Going to rebuy TemCards, So far you have made approximately " .. tostring(mags) .. " after " .. tostring(encounter) .. " tems encountered !\nCongratulations ! :D")
                    tblua:KeyDown(0x44)
                    tblua:Sleep(1000)
                    tblua:KeyDown(0x57)
                    tblua:Sleep(1000)
                    tblua:PressKey(0x38)
                    tblua:KeyDown(0x57)
                    tblua:Sleep(1000)
                    tblua:PressKey(0x38)
                    if tblua:IsInFight() == false then
                        tblua:PressKey(0x44)
                        tblua:Sleep(500)
                        tblua:PressKey(0x57)
                        tblua:Sleep(500)
                        tblua:KeyDown(0x41)
                        tblua:Sleep(400)
                        tblua:PressKey(0x41)
                        tblua:KeyDown(0x57)
                        tblua:Sleep(1000)
                        tblua:PressKey(0x57)
                        tblua:Sleep(500)
                        tblua:KeyDown(0x44)
                        tblua:Sleep(4000)
                        tblua:PressKey(0x44)
                        tblua:Sleep(500)
                        tblua:KeyDown(0x57)
                        tblua:Sleep(2000)
                        tblua:PressKey(0x57)
                        tblua:Sleep(500)
                        tblua:PressKey(0x46)
                        tblua:Sleep(500)
                        tblua:PressKey(0x44)
                        tblua:PressKey(0x57)
                        tblua:PressKey(0x41)
                        tblua:Sleep(10000)
                        tblua:KeyDown(0x44)
                        tblua:Sleep(1000)
                        tblua:PressKey(0x44)
                        tblua:Sleep(500)
                        tblua:PressKey(0x46)
                        tblua:Sleep(1000)
                        tblua:PressKey(0x46)
                        tblua:Sleep(1000)
                        tblua:PressKey(0x53)
                        tblua:Sleep(1000)
                        tblua:PressKey(0x53)
                        tblua:Sleep(1000)
                        tblua:PressKey(0x53)
                        tblua:Sleep(1000)
                        tblua:PressKey(0x53)
                        tblua:Sleep(1000)
                        tblua:PressKey(0x53)
                        tblua:Sleep(1000)
                        tblua:PressKey(0x53)
                        tblua:Sleep(1000)
                        tblua:PressKey(0x53)
                        tblua:Sleep(1000)
                        tblua:PressKey(0x53)
                        tblua:Sleep(1000)
                        tblua:PressKey(0x53)
                        tblua:Sleep(1000)
                        tblua:PressKey(0x53)
                        tblua:Sleep(1000)
                        tblua:PressKey(0x46)
                        tblua:Sleep(1000)
                        a = 2
                    else
                        tblua:Sleep(1000)
                        tblua:PressKey(0x38)
                        tblua:Sleep(500)
                        tblua:KeyDown(0x38)
                        tblua:Sleep(500)
                    end
                end
                if a > 1 then
                    if tblua:IsInWorld() == false then
                        --Rebuy Amount
                        tblua:PressKey(0x35)
                        tblua:Sleep(500)
                        tblua:PressKey(0x30)
                        tblua:Sleep(1000)
                        tblua:Sleep(1000)
                        tblua:PressKey(0x46)
                        tblua:Sleep(1000)
                        tblua:PressKey(0x1B)
                        tblua:Sleep(500)
                        a = 0
                        encounter = 0
                        if tblua:IsInWorld() == true then
                            tblua:KeyDown(0x53)
                            tblua:Sleep(500)
                            tblua:PressKey(0x53)
                            tblua:Sleep(500)
                            tblua:KeyDown(0x41)
                            tblua:Sleep(5000)
                            tblua:PressKey(0x41)
                            tblua:KeyDown(0x53)
                            tblua:Sleep(1500)
                            tblua:PressKey(0x53)
                        end
                    end
                end
                if MovementSwitch == 1 then
                    t = 1
                    count = 1
                    tblua:CircleArea()
                    local xd = math.random(100, 300)
                    tblua:Sleep(xd)
                    local MovementSwitch = 2
                elseif MovementSwitch == 2 then
                    tblua:RandomArea()
                    local xdd = math.random(600, 1200)
                    tblua:Sleep(xdd)
                    local MovementSwitch = 1
                end
            end
        end

        --loop if minimap not detected
        if tblua:IsInWorld() == false then
            tblua:Sleep(100)
            tblua:StopMovement()
            --if bot is in fight
            if tblua:IsInFight() == true then
                --Luma check positive (message and notification)
                local Platypet = math.random(50, 150)
                tblua:Sleep(Platypet)
                if tblua:CheckLuma() == true then
                    if tblua:GetPixelColor(1045, 100) == "0x1E1E1E" then
                        if tblua:GetPixelColor(777, 65) == "0x1E1E1E" then
                            encounter = encounter + 2
                        else
                            encounter = encounter + 1
                        end
                    end
                    tblua:SendTelegramMessage(
                        "Luma Found on " ..
                            tostring(botname) ..
                                " after " .. tostring(encounter) .. " tems encountered !\nCongratulations ! :D"
                    )
                    tblua:TestMessage(
                        "Luma Found after " .. tostring(encounter) .. " Tems encountered ! Congratulations! :D"
                    )
                    tblua:PressKey(0x71)
                else
                    local MS = math.random(2)
                    Zez = MS
                    --Else no Luma, so run away
                    if count == 1 then
                        if tblua:GetPixelColor(1045, 100) == "0x1E1E1E" then
                            if tblua:GetPixelColor(777, 65) == "0x1E1E1E" then
                                encounter = encounter + 2
                            else
                                encounter = encounter + 1
                            end
                        end
                        local enemy = tblua:GetEnemyCount()
                        if enemy == 2 then
                            tblua:Sleep(nolag)
                            if tblua:GetPixelColor(839, 22) == "0xFFFFFF" then
                                mag = mag + 1
                            elseif tblua:GetPixelColor(828, 20) == "0x1E1E1E" then
                                mas = mas + 1
                            end
                            if tblua:GetPixelColor(1104, 57) == "0x1E1E1E" then
                                mag = mag + 1
                            elseif tblua:GetPixelColor(1105, 61) == "0x1E1E1E" then
                                mas = mas + 1
                            end
                        else
                            if tblua:GetPixelColor(1104, 57) == "0x1E1E1E" then
                                mag = mag + 1
                            elseif tblua:GetPixelColor(1105, 61) == "0x1E1E1E" then
                                mas = mas + 1
                            end
                        end
                        count = 0
                    end
                    local RandomSleepy = tblua:GetSleepTime()
                    local cr = tblua:GetSleepTime()
                    -- exhausted
                    if tblua:GetPixelColor(276, 631) == "0xFFFFFF" then
                        tblua:Sleep(RandomSleepy)
                        tblua:PressKey(0x36)
                        tblua:Sleep(RandomSleepy)
                    else
                        if tblua:GetPixelColor(777, 65) == "0x1E1E1E" then
                            if tblua:GetPixelColor(1045, 100) == "0x1E1E1E" then
                                if t > 3 then
                                    tblua:Sleep(cr)
                                    tblua:PressKey(0x37)
                                    tblua:Sleep(cr)
                                    tblua:PressKey(0x46)
                                    tblua:Sleep(cr)
                                    tblua:PressKey(0x46)
                                    tblua:Sleep(cr)
                                    tblua:PressKey(0x37)
                                    tblua:Sleep(cr)
                                    tblua:PressKey(0x46)
                                    tblua:Sleep(cr)
                                    tblua:PressKey(0x46)
                                    t = t + 1
                                elseif t == 3 then
                                    tblua:Sleep(cr)
                                    tblua:PressKey(0x37)
                                    tblua:Sleep(cr)
                                    tblua:PressKey(0x45)
                                    tblua:Sleep(cr)
                                    tblua:PressKey(0x46)
                                    tblua:Sleep(cr)
                                    tblua:PressKey(0x57)
                                    tblua:Sleep(cr)
                                    tblua:PressKey(0x46)
                                    tblua:Sleep(cr)
                                    tblua:PressKey(0x37)
                                    tblua:Sleep(cr)
                                    tblua:PressKey(0x46)
                                    tblua:Sleep(cr)
                                    tblua:PressKey(0x46)
                                    t = t + 1
                                elseif t == 2 then
                                    tblua:Sleep(cr)
                                    tblua:PressKey(0x31)
                                    tblua:Sleep(cr)
                                    tblua:PressKey(0x57)
                                    tblua:Sleep(cr)
                                    tblua:PressKey(0x46)
                                    tblua:Sleep(cr)
                                    tblua:PressKey(0x31)
                                    tblua:Sleep(cr)
                                    tblua:PressKey(0x46)
                                    t = t + 1
                                elseif t == 1 then
                                    tblua:Sleep(cr)
                                    tblua:PressKey(0x31)
                                    tblua:Sleep(cr)
                                    tblua:PressKey(0x46)
                                    tblua:Sleep(cr)
                                    tblua:PressKey(0x31)
                                    tblua:Sleep(cr)
                                    tblua:PressKey(0x46)
                                    t = t + 1
                                end
                            else
                                if t > 2 then
                                    tblua:Sleep(cr)
                                    tblua:PressKey(0x37)
                                    tblua:Sleep(cr)
                                    tblua:PressKey(0x46)
                                    tblua:Sleep(cr)
                                    tblua:PressKey(0x37)
                                    tblua:Sleep(cr)
                                    tblua:PressKey(0x46)
                                    t = t + 1
                                elseif t == 2 then
                                    tblua:Sleep(cr)
                                    tblua:PressKey(0x37)
                                    tblua:Sleep(cr)
                                    tblua:PressKey(0x45)
                                    tblua:Sleep(cr)
                                    tblua:PressKey(0x46)
                                    tblua:Sleep(cr)
                                    tblua:PressKey(0x37)
                                    tblua:Sleep(cr)
                                    tblua:PressKey(0x46)
                                    t = t + 1
                                elseif t == 1 then
                                    tblua:Sleep(cr)
                                    tblua:PressKey(0x31)
                                    tblua:Sleep(cr)
                                    tblua:PressKey(0x46)
                                    tblua:Sleep(cr)
                                    tblua:PressKey(0x31)
                                    tblua:Sleep(cr)
                                    tblua:PressKey(0x46)
                                    t = t + 1
                                end
                            end
                        elseif tblua:GetPixelColor(1045, 100) == "0x1E1E1E" then
                            if t > 2 then
                                tblua:Sleep(cr)
                                tblua:PressKey(0x37)
                                tblua:Sleep(cr)
                                tblua:PressKey(0x46)
                                tblua:Sleep(cr)
                                tblua:PressKey(0x37)
                                tblua:Sleep(cr)
                                tblua:PressKey(0x46)
                                t = t + 1
                            elseif t == 2 then
                                tblua:Sleep(cr)
                                tblua:PressKey(0x37)
                                tblua:Sleep(cr)
                                tblua:PressKey(0x45)
                                tblua:Sleep(cr)
                                tblua:PressKey(0x46)
                                tblua:Sleep(cr)
                                tblua:PressKey(0x37)
                                tblua:Sleep(cr)
                                tblua:PressKey(0x46)
                                t = t + 1
                            elseif t == 1 then
                                tblua:Sleep(cr)
                                tblua:PressKey(0x31)
                                tblua:Sleep(cr)
                                tblua:PressKey(0x46)
                                tblua:Sleep(cr)
                                tblua:PressKey(0x31)
                                tblua:Sleep(cr)
                                tblua:PressKey(0x46)
                                t = t + 1
                            end
                        end
                    end
                end
            else
                local crx = tblua:GetSleepTime()
                local crxxx = math.random(1534, 2857)
                -- Catch screen Release
                if tblua:GetPixelColor(750, 530) == "0x1CD1D3" then
                    -- Skill learn
                    tblua:Sleep(crxxx)
                    tblua:PressKey(0x44)
                    tblua:Sleep(crx)
                    tblua:PressKey(0x46)
                    tblua:Sleep(crx)
                    tblua:PressKey(0x46)
                    tblua:Sleep(crx)
                elseif tblua:GetPixelColor(215, 255) == "0x1CD1D3" then
                    -- Exp screen F
                    tblua:PressKey(0x1B)
                    tblua:Sleep(crx)
                elseif tblua:GetPixelColor(590, 245) == "0x1CD1D3" then
                    -- Swap dead tem
                    tblua:PressKey(0x1B)
                    tblua:Sleep(crx)
                elseif tblua:GetPixelColor(1180, 455) == "0x1E1E1E" then
                    local swap = math.random(4)
                    if swap == 4 then
                        tblua:PressKey(0x53)
                        tblua:Sleep(crx)
                        tblua:PressKey(0x53)
                        tblua:Sleep(crx)
                        tblua:PressKey(0x53)
                        tblua:Sleep(crx)
                        tblua:PressKey(0x53)
                        tblua:Sleep(crx)
                        tblua:PressKey(0x53)
                        tblua:Sleep(crx)
                        tblua:PressKey(0x46)
                        tblua:Sleep(crx)
                    elseif swap == 3 then
                        tblua:PressKey(0x53)
                        tblua:Sleep(crx)
                        tblua:PressKey(0x53)
                        tblua:Sleep(crx)
                        tblua:PressKey(0x53)
                        tblua:Sleep(crx)
                        tblua:PressKey(0x53)
                        tblua:Sleep(crx)
                        tblua:PressKey(0x46)
                        tblua:Sleep(crx)
                    elseif swap == 2 then
                        tblua:PressKey(0x53)
                        tblua:Sleep(crx)
                        tblua:PressKey(0x53)
                        tblua:Sleep(crx)
                        tblua:PressKey(0x53)
                        tblua:Sleep(crx)
                        tblua:PressKey(0x46)
                        tblua:Sleep(crx)
                    elseif swap == 1 then
                        tblua:PressKey(0x53)
                        tblua:Sleep(crx)
                        tblua:PressKey(0x53)
                        tblua:Sleep(crx)
                        tblua:PressKey(0x46)
                        tblua:Sleep(crx)
                    end
                else
                    tblua:Sleep(crx)
                end
            end
        end
    end
else
    tblua:TestMessage("Error: Must see minimap to start the script")
end
