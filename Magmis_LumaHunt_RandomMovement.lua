import("TemBot.Lua.TemBotLua")

--Registering the Temtem Window
tblua:RegisterTemTemWindow()

tblua:GetAreaColor()

a = 2

i = 0

tblua:Sleep(1500)

if tblua:IsInWorld() == true then
    while (true) do
        tblua:Sleep(100)
        --check pause and logout user settings
        tblua:CheckPause()
        tblua:CheckLogout()
        if tblua:IsInWorld() == true then
            while tblua:IsInWorld() == true do
                --Rebuy TemCards
                if i > 30 then
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
                        tblua:KeyDown(0x25)
                        tblua:Sleep(400)
                        tblua:PressKey(0x25)
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
                        tblua:PressKey(0x25)
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
                        i = 0
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
                local Sleep = math.random(500, 800)
                local MovementSwitch = math.random(2)
                --random top down delay
                if MovementSwitch == 1 then
                    tblua:RandomArea()
                elseif MovementSwitch == 2 then
                    tblua:CircleArea()
                end
            end
            tblua:StopMovement()

            --loop if minimap not detected
            while tblua:IsInWorld() == false do
                --if bot is in fight
                if tblua:IsInFight() == true then
                    --Luma check positive (message and notification)
                    if tblua:CheckLuma() == true then
                        tblua:SendTelegramMessage("Luma Found!")
                        tblua:TestMessage("Luma Found!")
                        tblua:PressKey(0x71)
                    else
                        while tblua:IsInWorld() == false do
                            while tblua:IsInFight() == false do
                                --Release
                                tblua:WaitLoop(false)
                            end
                            if tblua:IsInFight() == true then
                                --Get Count of TemTem
                                tblua:GetEnemyCount()
                                if tblua:GetEnemyCount() == 1 then
                                    --Attack 1
                                    tblua:Sleep(1000)
                                    tblua:PressKey(0x31)
                                    tblua:Sleep(1000)
                                    tblua:PressKey(0x46)
                                    tblua:Sleep(1000)
                                    tblua:PressKey(0x31)
                                    tblua:Sleep(1000)
                                    tblua:PressKey(0x46)
                                    --Catch 1
                                    tblua:Sleep(20000)
                                    tblua:PressKey(0x37)
                                    tblua:Sleep(1000)
                                    tblua:PressKey(0x46)
                                    tblua:Sleep(1000)
                                    tblua:PressKey(0x37)
                                    tblua:Sleep(1000)
                                    tblua:PressKey(0x46)
                                    tblua:Sleep(20000)
                                    i = i + 2
                                    --Check if caught 1
                                    if tblua:IsInFight() == false then
                                        --end Release
                                        --Release
                                        tblua:PressKey(0x44)
                                        tblua:Sleep(1000)
                                        tblua:PressKey(0x46)
                                        tblua:Sleep(1000)
                                        tblua:PressKey(0x46)
                                        tblua:Sleep(1000)
                                        tblua:PressKey(0x46)
                                        tblua:Sleep(20000)
                                        break
                                    else
                                        --Catch 2
                                        tblua:Sleep(5000)
                                        tblua:PressKey(0x37)
                                        tblua:Sleep(1000)
                                        tblua:PressKey(0x46)
                                        tblua:Sleep(1000)
                                        tblua:PressKey(0x37)
                                        tblua:Sleep(1000)
                                        tblua:PressKey(0x46)
                                        tblua:Sleep(20000)
                                        i = i + 2
                                        --end Catch 2
                                        if tblua:IsInFight() == false then
                                            --end Release 2
                                            --Release 2
                                            tblua:PressKey(0x44)
                                            tblua:Sleep(1000)
                                            tblua:PressKey(0x46)
                                            tblua:Sleep(1000)
                                            tblua:PressKey(0x46)
                                            tblua:Sleep(1000)
                                            tblua:PressKey(0x46)
                                            tblua:Sleep(20000)
                                            break
                                        else
                                            --Catch 3
                                            tblua:Sleep(5000)
                                            tblua:PressKey(0x37)
                                            tblua:Sleep(1000)
                                            tblua:PressKey(0x46)
                                            tblua:Sleep(1000)
                                            tblua:PressKey(0x37)
                                            tblua:Sleep(1000)
                                            tblua:PressKey(0x46)
                                            tblua:Sleep(20000)
                                            i = i + 1
                                            --end Catch 3
                                            if tblua:IsInFight() == false then
                                                --end Release 3
                                                --Release 3
                                                tblua:PressKey(0x44)
                                                tblua:Sleep(1000)
                                                tblua:PressKey(0x46)
                                                tblua:Sleep(1000)
                                                tblua:PressKey(0x46)
                                                tblua:Sleep(1000)
                                                tblua:PressKey(0x46)
                                                tblua:Sleep(20000)
                                                break
                                            else
                                                --Run away 3
                                                tblua:PressKey(0x38)
                                                tblua:Sleep(1000)
                                                tblua:PressKey(0x38)
                                                tblua:Sleep(10000)
                                                break
                                            end
                                        end
                                    end
                                elseif tblua:GetEnemyCount() == 2 then
                                    --Attack Right Tem
                                    tblua:Sleep(1000)
                                    tblua:PressKey(0x31)
                                    tblua:Sleep(1000)
                                    tblua:PressKey(0x46)
                                    tblua:Sleep(1000)
                                    tblua:PressKey(0x31)
                                    tblua:Sleep(1000)
                                    tblua:PressKey(0x46)
                                    tblua:Sleep(20000)
                                    --Attack Left Tem
                                    tblua:Sleep(1000)
                                    tblua:PressKey(0x31)
                                    tblua:Sleep(1000)
                                    tblua:PressKey(0x57)
                                    tblua:Sleep(1000)
                                    tblua:PressKey(0x46)
                                    tblua:Sleep(1000)
                                    tblua:PressKey(0x31)
                                    tblua:Sleep(1000)
                                    tblua:PressKey(0x46)
                                    tblua:Sleep(20000)
                                    --Catch right tem
                                    tblua:PressKey(0x37)
                                    tblua:Sleep(2000)
                                    tblua:PressKey(0x46)
                                    tblua:Sleep(2000)
                                    tblua:PressKey(0x46)
                                    tblua:Sleep(2000)
                                    tblua:PressKey(0x37)
                                    tblua:Sleep(2000)
                                    tblua:PressKey(0x46)
                                    tblua:Sleep(2000)
                                    tblua:PressKey(0x46)
                                    tblua:Sleep(27000)
                                    i = i + 2
                                    --Check if caught 1
                                    if tblua:IsInFight() == false then
                                        --Release
                                        tblua:WaitLoop(false)
                                        tblua:Sleep(20000)
                                        if tblua:IsInWorld() == true then
                                            goto fin
                                        end
                                        tblua:Sleep(10000)
                                        --end Release
                                        if tblua:IsInFight() == true then
                                            --Catch left tem
                                            tblua:PressKey(0x37)
                                            tblua:Sleep(1000)
                                            tblua:PressKey(0x46)
                                            tblua:Sleep(1000)
                                            tblua:PressKey(0x37)
                                            tblua:Sleep(1000)
                                            tblua:PressKey(0x46)
                                            tblua:Sleep(27000)
                                            i = i + 2
                                        elseif tblua:IsInFight() == false then
                                            if tblua:IsInWorld() == true then
                                                break
                                            elseif tblua:IsInFight() == false then
                                                --Release
                                                tblua:WaitLoop(false)
                                                tblua:Sleep(20000)
                                                if tblua:IsInWorld() == true then
                                                    goto fin
                                                end
                                                tblua:Sleep(10000)
                                                --end Release
                                                if tblua:IsInFight() == true then
                                                    --Catch left tem
                                                    tblua:PressKey(0x37)
                                                    tblua:Sleep(1000)
                                                    tblua:PressKey(0x46)
                                                    tblua:Sleep(1000)
                                                    tblua:PressKey(0x37)
                                                    tblua:Sleep(1000)
                                                    tblua:PressKey(0x46)
                                                    tblua:Sleep(27000)
                                                    i = i + 2
                                                elseif tblua:IsInFight() == false then
                                                    --Release
                                                    tblua:WaitLoop(false)
                                                    tblua:Sleep(20000)
                                                    if tblua:IsInWorld() == true then
                                                        goto fin
                                                    end
                                                    tblua:Sleep(10000)
                                                    if tblua:IsInFight() == true then
                                                        --Catch left tem
                                                        tblua:PressKey(0x37)
                                                        tblua:Sleep(1000)
                                                        tblua:PressKey(0x46)
                                                        tblua:Sleep(1000)
                                                        tblua:PressKey(0x37)
                                                        tblua:Sleep(1000)
                                                        tblua:PressKey(0x46)
                                                        tblua:Sleep(27000)
                                                        i = i + 2
                                                    elseif tblua:IsInFight() == false then
                                                        --Release
                                                        tblua:WaitLoop(false)
                                                        tblua:Sleep(20000)
                                                        if tblua:IsInWorld() == true then
                                                            goto fin
                                                        end
                                                        tblua:Sleep(10000)
                                                        if tblua:IsInFight() == true then
                                                            tblua:TestMessage("run away")
                                                            --Run away 3
                                                            tblua:PressKey(0x38)
                                                            tblua:Sleep(1000)
                                                            tblua:PressKey(0x38)
                                                            tblua:Sleep(10000)
                                                            break
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    end
                                    ::fin::
                                else
                                    if tblua:IsInFight() == true then
                                        tblua:TestMessage("Both Catches failed")
                                        --Catch left tem
                                        tblua:PressKey(0x37)
                                        tblua:Sleep(1000)
                                        tblua:PressKey(0x46)
                                        tblua:Sleep(1000)
                                        tblua:PressKey(0x37)
                                        tblua:Sleep(1000)
                                        tblua:PressKey(0x46)
                                        tblua:Sleep(20000)
                                        if tblua:IsInFight() == false then
                                            --Release
                                            tblua:PressKey(0x44)
                                            tblua:Sleep(1000)
                                            tblua:PressKey(0x46)
                                            tblua:Sleep(1000)
                                            tblua:PressKey(0x46)
                                            tblua:Sleep(1000)
                                            tblua:PressKey(0x46)
                                            tblua:Sleep(20000)
                                            i = i + 1
                                            break
                                            --end Release
                                            if tblua:IsInFight() == true then
                                                --Catch left tem
                                                tblua:PressKey(0x37)
                                                tblua:Sleep(1000)
                                                tblua:PressKey(0x46)
                                                tblua:Sleep(1000)
                                                tblua:PressKey(0x37)
                                                tblua:Sleep(1000)
                                                tblua:PressKey(0x46)
                                                tblua:Sleep(20000)
                                                i = i + 1
                                                if tblua:IsInFight() == false then
                                                    --Release
                                                    tblua:PressKey(0x44)
                                                    tblua:Sleep(1000)
                                                    tblua:PressKey(0x46)
                                                    tblua:Sleep(1000)
                                                    tblua:PressKey(0x46)
                                                    tblua:Sleep(1000)
                                                    tblua:PressKey(0x46)
                                                    tblua:Sleep(20000)
                                                    break
                                                else
                                                    --Run away 3
                                                    tblua:PressKey(0x38)
                                                    tblua:Sleep(1000)
                                                    tblua:PressKey(0x38)
                                                    tblua:Sleep(10000)
                                                    break
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
else
    tblua:TestMessage("Error: Not ready to start the script")
end
