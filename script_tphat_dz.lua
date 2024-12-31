repeat wait() until game:IsLoaded() and game.Players.LocalPlayer

getgenv().Key = "SLUCtgcoOADLhFRXnHAoGSZzGFYGIsDc"

-- Hiển thị thông báo khi chạy script
print("Bạn bị béo =))")

-- Biến trạng thái menu
local MenuVisible = true
local CurrentTab = "Main"

-- Biến trạng thái các chức năng
local AutoFarmLevel = false
local AutoFarmBone = false
local AutoKatakuri = false
local AutoGetCDK = false
local AutoSoulGuitar = false

-- Hàm hiển thị menu
function drawMenu()
    if MenuVisible then
        print("========== PhatDepZai Hub ==========")
        print("Tab hiện tại: " .. CurrentTab)
        print("=====================================")
        
        if CurrentTab == "Main" then
            print("1. Auto Farm Level [" .. tostring(AutoFarmLevel) .. "]")
            print("2. Auto Farm Bone [" .. tostring(AutoFarmBone) .. "]")
            print("3. Auto Katakuri [" .. tostring(AutoKatakuri) .. "]")
            print("4. Chuyển sang SubFarm")
        elseif CurrentTab == "SubFarm" then
            print("1. Auto Get CDK [" .. tostring(AutoGetCDK) .. "]")
            print("2. Auto Soul Guitar [" .. tostring(AutoSoulGuitar) .. "]")
            print("3. Quay lại Main")
        end
        print("=====================================")
        
        -- Nhận lựa chọn từ người dùng
        local choice = tonumber(io.read())
        
        -- Xử lý lựa chọn theo tab
        if CurrentTab == "Main" then
            if choice == 1 then
                AutoFarmLevel = not AutoFarmLevel
                print("Auto Farm Level: " .. tostring(AutoFarmLevel))
                if AutoFarmLevel then startAutoFarmLevel() end
            elseif choice == 2 then
                AutoFarmBone = not AutoFarmBone
                print("Auto Farm Bone: " .. tostring(AutoFarmBone))
                if AutoFarmBone then startAutoFarmBone() end
            elseif choice == 3 then
                AutoKatakuri = not AutoKatakuri
                print("Auto Katakuri: " .. tostring(AutoKatakuri))
                if AutoKatakuri then startAutoKatakuri() end
            elseif choice == 4 then
                CurrentTab = "SubFarm"
            else
                print("Lựa chọn không hợp lệ!")
            end
        elseif CurrentTab == "SubFarm" then
            if choice == 1 then
                AutoGetCDK = not AutoGetCDK
                print("Auto Get CDK: " .. tostring(AutoGetCDK))
                if AutoGetCDK then startAutoGetCDK() end
            elseif choice == 2 then
                AutoSoulGuitar = not AutoSoulGuitar
                print("Auto Soul Guitar: " .. tostring(AutoSoulGuitar))
                if AutoSoulGuitar then startAutoSoulGuitar() end
            elseif choice == 3 then
                CurrentTab = "Main"
            else
                print("Lựa chọn không hợp lệ!")
            end
        end
    end
end

-- Hàm Auto Farm Level
function startAutoFarmLevel()
    spawn(function()
        while AutoFarmLevel do
            wait(1)
            print("Đang farm level...")
            -- Thêm logic farm level ở đây
        end
    end)
end

-- Hàm Auto Farm Bone
function startAutoFarmBone()
    spawn(function()
        while AutoFarmBone do
            wait(1)
            print("Đang farm Bone...")
            -- Thêm logic farm bone ở đây
        end
    end)
end

-- Hàm Auto Katakuri
function startAutoKatakuri()
    spawn(function()
        while AutoKatakuri do
            wait(1)
            print("Đang đánh Katakuri...")
            -- Thêm logic auto Katakuri ở đây
        end
    end)
end

-- Hàm Auto Get CDK
function startAutoGetCDK()
    spawn(function()
        while AutoGetCDK do
            wait(1)
            print("Đang lấy CDK...")
            -- Thêm logic lấy CDK ở đây
        end
    end)
end

-- Hàm Auto Soul Guitar
function startAutoSoulGuitar()
    spawn(function()
        while AutoSoulGuitar do
            wait(1)
            print("Đang lấy Soul Guitar...")
            -- Thêm logic lấy Soul Guitar ở đây
        end
    end)
end

-- Vòng lặp hiển thị menu
while MenuVisible do
    drawMenu()
    wait(0.1)
end
