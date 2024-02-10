--Create by Rioh from Rioh on the Cloud

--[[TUTORIAL:
//CÀI ĐẶT RESOURCE:
1. Giải nén rioh_3Dtext.rar
2. Sao chép thư mục "rioh_3Dtext" vào thư mục "resource"
3. Thêm dòng "ensure rioh_3Dtext" vào tệp server.cfg
4. Khởi động lại server

//THIẾT LẬP:
coords: Tọa độ điểm
text: Hiển thị nội dung bạn muốn
r, g, b: Đổi màu nội dung - Đỏ (Red), Xanh (Greed), Xanh lam (Blue)
scale: Kích thước của nội dung
]]

Config = {}

Config.Text = {
    {
        coords = vec3(215.69, -811.79, 32.52), 
        text = "Garage Center", 
        r = 0, 
        g = 255, 
        b = 255, 
        scale = 2.0
    },
    -- Sao chép đoạn mã trên và điền xuống phía dưới dòng này để thêm nội dung
}

Config.Distance = 20.0 -- Khoảng cách xuất hiện chữ
Config.UseFont = false --'Baloo Paaji 2 Semibold' -- Nếu bạn sử dụng font, hãy nhập Font ID vào đây theo dạng string
--Config.UseFont = 'Arial' -- Ví dụ