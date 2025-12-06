# WEBSITE BÁN KEY HACK GAME - HỆ THỐNG QUẢN LÝ DỊCH VỤ KEY TOOL

Hệ thống website chuyên nghiệp phục vụ việc kinh doanh và phân phối key bản quyền cho các tool hack game. Website được xây dựng với kiến trúc PHP thuần kết hợp MySQL, tối ưu hóa cho việc quản lý, thanh toán và phân phối key tự động.

## TỔNG QUAN DỰ ÁN

Website cung cấp một nền tảng hoàn chỉnh cho việc kinh doanh key tool game với đầy đủ chức năng từ quản lý sản phẩm, thanh toán đa dạng, đến hệ thống báo cáo chi tiết. Hệ thống được thiết kế để vận hành tự động tối đa, giảm thiểu thao tác thủ công cho người quản trị.

**Công nghệ sử dụng:**

- Backend: PHP thuần (không sử dụng framework)
- Database: MySQL/MariaDB
- Frontend: HTML5, CSS3, JavaScript/jQuery
- UI Framework: Bootstrap 4, AdminLTE
- Ajax routing system (Single Page Application style)

**Cấu trúc database:** File `tuanori.sql` chứa cấu trúc CSDL đầy đủ

## CHỨC NĂNG CHO KHÁCH HÀNG (CLIENT)

### 1. Hệ thống tài khoản và xác thực

**Đăng ký tài khoản mới:**

- Đăng ký bằng username, email, số điện thoại và mật khẩu
- Kiểm tra tính hợp lệ của email và username theo chuẩn
- Bảo vệ chống spam với giới hạn tối đa 10 tài khoản trên 1 IP
- Mật khẩu được mã hóa băm MD5 trước khi lưu vào database
- Tạo token đăng nhập tự động sau khi đăng ký thành công
- Token được lưu trong cookie với thời hạn 31 ngày

**Đăng nhập:**

- Xác thực bằng username và mật khẩu
- Hệ thống chống brute force: khóa đăng nhập 30 giây sau 5 lần nhập sai
- Kiểm tra trạng thái tài khoản (banned/active) trước khi cho phép đăng nhập
- Cập nhật thông tin IP, user agent và thời gian truy cập mỗi lần đăng nhập
- Tự động tạo token mới và lưu cookie khi đăng nhập thành công

**Quản lý phiên đăng nhập:**

- Hệ thống sử dụng token cookie để duy trì phiên đăng nhập
- Token được validate ở mỗi request có yêu cầu xác thực
- Chống truy cập trái phép bằng cách kiểm tra IP bị block trước khi xử lý
- Có thể đăng xuất để hủy token hiện tại

### 2. Nạp tiền vào tài khoản

**Nạp tiền qua thẻ cào điện thoại:**

- Hỗ trợ các nhà mạng: Viettel, Vinaphone, Mobifone, Vietnamobile, Zing
- Các mệnh giá: 10.000đ, 20.000đ, 50.000đ, 100.000đ, 200.000đ, 500.000đ, 1.000.000đ
- Tích hợp API từ cardvip.vn để xác thực thẻ tự động
- Hệ thống chiết khấu theo cấu hình admin (VD: nạp 100k nhận 80k nếu CK 20%)
- Kiểm tra seri và mã thẻ hợp lệ (độ dài tối thiểu 7 ký tự)
- Giới hạn 3 thẻ đang chờ xử lý cùng lúc
- Chống spam: nếu có 6 thẻ sai mà không có thẻ nào đúng trong ngày thì khóa nạp thẻ đến hôm sau
- Thời gian xử lý: 10-30 giây
- Trạng thái thẻ: xuly (đang xử lý), hoantat (thành công), thatbai (thất bại)
- Tự động cộng tiền vào tài khoản khi thẻ được duyệt thành công

**Nạp tiền qua chuyển khoản ngân hàng (Auto Bank):**

- Hỗ trợ nhiều ngân hàng: MB Bank, Vietcombank, Techcombank, ACB, VPBank, và nhiều ngân hàng khác
- Tích hợp API ngân hàng để kiểm tra giao dịch tự động (cronjob)
- Khách hàng chuyển khoản với cú pháp: Nội dung chuyển khoản + Mã ID người dùng
- VD: "NAPTIEN123" với 123 là ID tài khoản
- Hệ thống tự động quét lịch sử giao dịch ngân hàng mỗi phút
- Tự động cộng tiền chính xác theo số tiền chuyển khoản
- Cập nhật số dư hiện tại (money) và tổng số tiền đã nạp (total_money)
- Ghi nhận đầy đủ thông tin giao dịch: mã GD, số tiền, nội dung, thời gian
- Gửi thông báo Telegram cho admin khi có giao dịch mới (nếu bật)

**Nạp tiền qua ví MoMo (Auto MoMo):**

- Tích hợp API MoMo để kiểm tra giao dịch tự động
- Cronjob chạy định kỳ kiểm tra lịch sử giao dịch MoMo
- Tự động cộng tiền khi phát hiện giao dịch hợp lệ với mã ID
- Hoạt động tương tự như Auto Bank

**Lịch sử nạp tiền:**

- Xem lịch sử nạp thẻ cào: mã thẻ, seri, mệnh giá, thực nhận, trạng thái, thời gian
- Xem lịch sử nạp ATM: hình thức, mã giao dịch, số tiền, nội dung, thời gian
- Lịch sử biến động số dư: số dư trước, số dư sau, ghi chú, số tiền, thời gian

### 3. Mua key tool game

**Danh mục và gói sản phẩm:**

- Hệ thống phân loại theo chuyên mục (categories): PUBG Mobile, Free Fire, Liên Quân, Call of Duty, v.v.
- Mỗi chuyên mục có nhiều gói key khác nhau (category_goi)
- Thông tin gói: tên gói, giá tiền, thời gian sử dụng (tính theo giờ), mô tả chi tiết
- Hiển thị số lượng key còn trong kho cho từng gói
- Hỗ trợ tìm kiếm nhanh theo từ khóa SEO
- Mỗi gói có ảnh mô tả và thông tin chi tiết

**Quy trình mua hàng:**

1. Khách hàng chọn chuyên mục game muốn hack
2. Chọn gói key phù hợp với nhu cầu (theo giá và thời gian)
3. Nhập số lượng key muốn mua (tối thiểu 1)
4. Hệ thống hiển thị popup xác nhận với thông tin:
   - Tên game/tool
   - Loại gói đã chọn
   - Số lượng
   - Giá mỗi key
   - Thời gian sử dụng
   - Tổng tiền thanh toán
5. Xác nhận thanh toán
6. Hệ thống kiểm tra số dư tài khoản
7. Trừ tiền tự động và phát key ngay lập tức

**Cơ chế phát key:**

- Key được lấy từ database theo thứ tự FIFO (first in first out)
- Mỗi key chỉ được bán 1 lần duy nhất (status chuyển từ 1 sang 0)
- Key được lưu vào lịch sử mua hàng của khách (ls_mua)
- Ghi nhận đầy đủ: username, sản phẩm, gói, token key, thời gian, số tiền
- Tự động trừ tiền khách hàng và tạo biến động số dư
- Kiểm tra số lượng key trong kho trước khi cho phép mua
- Thông báo rõ ràng nếu hết hàng hoặc số lượng không đủ

**Hệ thống giảm giá:**

- Hỗ trợ tính năng giảm giá cho khách hàng (dựa vào biến my_gg)
- Công thức: Giá sau giảm = Giá gốc x (100 - % giảm giá) / 100
- Áp dụng giảm giá khi tính tổng tiền thanh toán

**Xem lịch sử mua key:**

- Danh sách tất cả key đã mua
- Thông tin chi tiết: tên game, gói, key/token, thời gian mua, giá tiền
- Có thể copy key để sử dụng
- Sắp xếp theo thời gian mới nhất

### 4. Chuyển tiền nội bộ

**Chuyển tiền cho thành viên khác:**

- Chuyển tiền cho thành viên khác trong hệ thống bằng ID người dùng
- Số tiền chuyển tối thiểu: 10.000đ
- Số tiền chuyển tối đa: 1.000.000đ
- Phí giao dịch: 1.000đ/lần chuyển (trừ vào người chuyển)
- Kiểm tra số dư đủ để chuyển và trả phí
- Không thể tự chuyển tiền cho chính mình
- Kiểm tra người nhận có tồn tại và đang hoạt động (không bị banned)
- Giao dịch được ghi nhận vào bảng chuyentien và biendongsodu cho cả 2 bên
- Ghi nhận IP thực hiện giao dịch để chống gian lận

**Lịch sử chuyển tiền:**

- Xem lịch sử các lần chuyển/nhận tiền
- Thông tin: người chuyển, người nhận, số tiền, thời gian, IP

### 5. Sử dụng Giftcode

**Nhập mã Giftcode:**

- Nhập mã giftcode để nhận tiền thưởng miễn phí
- Mã giftcode phân biệt chữ hoa chữ thường (case-sensitive)
- Mỗi mã chỉ sử dụng được 1 lần duy nhất
- Tự động cộng tiền vào tài khoản khi nhập mã đúng
- Ghi nhận username và thời gian sử dụng
- Cập nhật biến động số dư với ghi chú rõ ràng

**Lịch sử Giftcode:**

- Xem danh sách các mã đã sử dụng thành công
- Thông tin: mã gift, số tiền nhận, thời gian

### 6. Các tính năng bổ sung

**Thông báo hệ thống:**

- Hiển thị thông báo quan trọng từ admin
- Popup thông báo khi có cập nhật mới

**Hệ thống bảo mật:**

- Kiểm tra IP bị block trước khi xử lý mọi request
- Chống SQL injection với hàm check_string() và mysqli_real_escape_string()
- Chống XSS với htmlspecialchars() và addslashes()
- Validate dữ liệu đầu vào ở tất cả các form
- Session timeout và token expiry
- Ghi nhận IP và User Agent mỗi lần thao tác quan trọng

**Responsive design:**

- Giao diện tương thích mọi thiết bị: desktop, tablet, mobile
- Sử dụng Bootstrap 4 để đảm bảo responsive
- Menu hamburger cho mobile
- Touch-friendly buttons và forms

## CHỨC NĂNG CHO QUẢN TRỊ VIÊN (ADMIN)

### 1. Dashboard và thống kê

**Trang chủ admin (Home.php):**

- Thống kê tổng quan hệ thống
- Số lượng thành viên
- Tổng doanh thu
- Số giao dịch hôm nay
- Biểu đồ doanh thu theo thời gian
- Hoạt động gần đây
- Top khách hàng nạp tiền nhiều nhất

### 2. Quản lý thành viên (Users.php)

**Danh sách thành viên:**

- Hiển thị tất cả thành viên đã đăng ký
- Thông tin: STT, Username, Số dư (money), Tổng nạp (total_money), Email, Ngày tạo, Trạng thái
- Tìm kiếm và lọc thành viên
- Phân trang với DataTables
- Sắp xếp theo cột

**Chỉnh sửa thành viên (EditUser.php):**

- Cập nhật thông tin cá nhân: email, số điện thoại
- Điều chỉnh số dư tài khoản (cộng/trừ tiền thủ công)
- Thay đổi cấp độ: member, admin, moderator
- Đình chỉ tài khoản (banned ON/OFF)
- Đặt lại mật khẩu
- Xem lịch sử giao dịch của thành viên
- Thay đổi phần trăm giảm giá cho thành viên

**Chặn IP (BlockIP):**

- Thêm IP vào blacklist
- IP bị chặn không thể sử dụng bất kỳ chức năng nào
- Quản lý danh sách IP đã chặn
- Gỡ chặn IP

### 3. Quản lý sản phẩm và key

**Quản lý chuyên mục (Category.php):**

- Thêm/sửa/xóa chuyên mục game
- Thông tin: tên, mô tả, ảnh đại diện, từ khóa SEO, slug URL
- Hiển thị/ẩn chuyên mục (status)
- Tạo slug tự động từ tên chuyên mục

**Quản lý gói sản phẩm (Goi.php):**

- Thêm/sửa/xóa các gói key trong từng chuyên mục
- Cấu hình: tên gói, giá tiền, thời gian sử dụng (giờ), mô tả
- Chọn chuyên mục cha
- Bật/tắt hiển thị gói

**Quản lý key (Keys.php và ListKey.php):**

- Thêm key vào hệ thống (thủ công hoặc import hàng loạt)
- Gán key vào từng gói sản phẩm cụ thể
- Xem số lượng key còn lại cho mỗi gói
- Trạng thái key: còn hàng (status=1), đã bán (status=0)
- Xóa key hỏng hoặc không hợp lệ

**Lịch sử key đã bán (Key-Sold.php):**

- Xem tất cả key đã được bán
- Thông tin: khách hàng, sản phẩm, key, thời gian, giá
- Thống kê doanh thu theo sản phẩm
- Xuất báo cáo

### 4. Quản lý tài chính

**Cấu hình nạp thẻ (Cards.php):**

- Bật/tắt chức năng nạp thẻ cào
- Cấu hình PARTNER_ID và PARTNER_KEY từ cardvip.vn
- Thiết lập phần trăm chiết khấu thẻ (ckcard)
- VD: nạp 100k, chiết khấu 20%, nhận 80k
- Xem số dư API nạp thẻ

**Lịch sử nạp thẻ (LSCards.php):**

- Xem tất cả giao dịch nạp thẻ
- Thông tin: username, loại thẻ, mệnh giá, seri, mã thẻ, thực nhận, trạng thái, thời gian
- Lọc theo trạng thái: tất cả, thành công, thất bại, đang xử lý
- Callback từ nhà cung cấp thẻ để cập nhật trạng thái tự động

**Cấu hình ngân hàng (Bank.php):**

- Bật/tắt nạp tiền qua ngân hàng
- Thêm/sửa/xóa tài khoản ngân hàng nhận tiền
- Thông tin: số TK, tên chủ TK, ngân hàng, ảnh QR code
- Cấu hình API MoMo Auto (token)
- Cấu hình API Bank Auto (token, STK, username, password, loại bank)
- Hỗ trợ MB Bank, Vietcombank, Techcombank, ACB, VPBank, v.v.

**Lịch sử nạp ATM/MoMo (LSBank.php):**

- Xem tất cả giao dịch nạp qua chuyển khoản
- Thông tin: username, hình thức (MBBANK/MOMO), mã GD, số tiền, nội dung, thời gian
- Kiểm tra giao dịch trùng lặp
- Xuất báo cáo Excel

**Quản lý chuyển tiền (Transfers.php, LSTransfer.php):**

- Xem lịch sử chuyển tiền nội bộ
- Thông tin: người chuyển, người nhận, số tiền, thời gian, IP
- Phát hiện giao dịch bất thường

**Biến động số dư (Biendongsodu.php):**

- Xem tất cả lịch sử biến động số dư của mọi thành viên
- Thông tin: username, số dư trước, số dư sau, ghi chú, số tiền, thời gian
- Giúp đối chiếu và kiểm tra lỗi
- Theo dõi mọi thao tác liên quan đến tiền
- Xuất báo cáo chi tiết

**Cấu hình rút tiền (Withdraw.php):**

- Thiết lập số tiền rút tối thiểu
- Cấu hình token MoMo và password để tự động duyệt rút tiền
- Xem số dư ví MoMo
- Quản lý yêu cầu rút tiền đợi duyệt
- Duyệt/từ chối yêu cầu rút tiền

### 5. Quản lý Giftcode

**Tạo và quản lý Giftcode (Giftcode.php):**

- Tạo mã giftcode thủ công hoặc random tự động
- Thiết lập số tiền cho mỗi mã
- Trạng thái: chưa dùng (status=1), đã dùng (status=0)
- Xem danh sách tất cả giftcode
- Thông tin: mã, số tiền, trạng thái, người dùng (nếu đã dùng), thời gian
- Xóa giftcode

**Lịch sử sử dụng Giftcode (LSGift.php):**

- Xem lịch sử các mã đã được sử dụng
- Thống kê tổng tiền đã phát qua giftcode

### 6. Quản lý nội dung

**Quản lý bài viết (Blogs.php):**

- Thêm/sửa/xóa bài viết tin tức, hướng dẫn
- Soạn thảo với trình editor WYSIWYG
- SEO: title, description, keywords
- Ảnh đại diện bài viết
- Hiển thị/ẩn bài viết

**Chỉnh sửa bài viết (EditBlog.php):**

- Cập nhật nội dung bài viết
- Thay đổi ảnh, tiêu đề
- Tối ưu SEO

**Quản lý thông báo (Noti.php):**

- Tạo thông báo hệ thống gửi đến người dùng
- Popup thông báo khi đăng nhập
- Thông báo quan trọng hiển thị trên dashboard

### 7. Cấu hình hệ thống

**Cài đặt website (Setting.php):**

- Tên website
- Mô tả website (description)
- Từ khóa tìm kiếm (keywords)
- Logo website
- Favicon
- Ảnh giới thiệu (OG image)
- Script header/footer (Google Analytics, Facebook Pixel, v.v.)
- Liên hệ: email, phone, địa chỉ
- Link mạng xã hội: Facebook, Zalo, Telegram, v.v.

**Cấu hình thanh toán:**

- ON/OFF từng phương thức thanh toán
- Thiết lập API keys
- Chiết khấu và phí giao dịch
- Nội dung chuyển khoản (memo prefix)

**Cấu hình Telegram Bot:**

- Nhập ID chat và Bot token
- Bật/tắt thông báo qua Telegram
- Nhận thông báo khi:
  - Có đơn hàng mới
  - Có giao dịch nạp tiền
  - Có vấn đề cần xử lý

**Các cấu hình khác:**

- Bật/tắt chế độ bảo trì
- Thông báo bảo trì
- Captcha bảo mật
- Email gửi tự động
- Cấu hình SMTP

### 8. Cron Jobs tự động

**Cronjob kiểm tra nạp ATM (NapATM.php):**

- Chạy định kỳ mỗi phút (hoặc tùy chỉnh)
- Kết nối API ngân hàng (MB Bank hoặc ngân hàng khác)
- Lấy danh sách giao dịch mới
- Parse mã ID từ nội dung chuyển khoản
- Kiểm tra giao dịch chưa xử lý (theo mã GD)
- Tự động cộng tiền vào tài khoản user có ID tương ứng
- Lưu lịch sử vào bảng napatm
- Ghi nhận biến động số dư
- Gửi thông báo Telegram nếu được bật

**Cronjob kiểm tra nạp MoMo (NapMM.php):**

- Chạy định kỳ mỗi phút
- Kết nối API ví MoMo
- Xử lý tương tự như NapATM
- Lưu hình thức là MOMO

**Cách cài đặt cronjob trên hosting/VPS:**

```
* * * * * php /path/to/website/cronjob/NapATM.php
* * * * * php /path/to/website/cronjob/NapMM.php
```

### 9. Các công cụ hỗ trợ

**Quản lý phiên (UpdateHD.php):**

- Cập nhật thông tin hướng dẫn sử dụng
- Hướng dẫn cho khách hàng

**Topup quản trị:**

- Admin có thể nạp tiền thủ công cho thành viên
- Ghi chú lý do nạp

## CẤU TRÚC HỆ THỐNG

### Cấu trúc thư mục

```
├── controller/          # Xử lý logic nghiệp vụ
│   └── client/         # Controllers cho khách hàng
│       ├── Buy.php     # Xử lý mua key
│       ├── Chuyentien.php  # Xử lý chuyển tiền
│       ├── Giftcode.php    # Xử lý giftcode
│       ├── Login.php       # Xử lý đăng nhập
│       ├── Logout.php      # Xử lý đăng xuất
│       ├── Napthe.php      # Xử lý nạp thẻ
│       └── Register.php    # Xử lý đăng ký
├── core/               # Core system
│   ├── config.php      # Cấu hình database và class TUANORI
│   └── function.php    # Các hàm tiện ích
├── cronjob/            # Các tác vụ tự động
│   ├── NapATM.php      # Auto nạp tiền ATM
│   └── NapMM.php       # Auto nạp tiền MoMo
├── pages/              # Giao diện
│   ├── admin/          # Trang quản trị
│   └── client/         # Trang khách hàng
├── public/             # Assets tĩnh
│   ├── css/            # File CSS
│   ├── js/             # File JavaScript
│   ├── img/            # Hình ảnh
│   ├── fonts/          # Font chữ
│   └── uploads/        # File upload
├── template/           # Templates và plugins
├── index.php           # File chính
└── tuanori.sql         # Database schema
```

### Database Schema

**Các bảng chính:**

- `users` - Thông tin người dùng
- `category` - Danh mục game/tool
- `category_goi` - Gói sản phẩm
- `list_key` - Danh sách key
- `ls_mua` - Lịch sử mua hàng
- `napcard` - Lịch sử nạp thẻ
- `napatm` - Lịch sử nạp ATM/MoMo
- `chuyentien` - Lịch sử chuyển tiền
- `giftcode` - Danh sách giftcode
- `biendongsodu` - Biến động số dư
- `listbank` - Danh sách ngân hàng
- `blockip` - Danh sách IP bị chặn
- `options` - Cấu hình hệ thống

### Routing System

**Hệ thống sử dụng Single Page Application style với JavaScript Router:**

- File `public/js/router.js` xử lý routing
- Không cần reload trang khi chuyển trang
- Ajax load content động
- URL thân thiện với SEO
- History API để quản lý back/forward

**Cấu trúc URL:**

- Trang chủ: `/`
- Đăng nhập: `/auth/login`
- Đăng ký: `/auth/register`
- Chuyên mục: `/category/{slug}`
- Lịch sử: `/history/napthe`, `/history/atm`, `/history/key`, v.v.
- Admin: `/admin/users`, `/admin/category`, v.v.

### Bảo mật

**Các biện pháp bảo mật đã triển khai:**

- Kiểm tra `IN_SITE` constant để chống truy cập trực tiếp file PHP
- Escape input với mysqli_real_escape_string()
- Validate và sanitize mọi dữ liệu đầu vào
- Mã hóa mật khẩu với MD5 (khuyến nghị nâng cấp lên bcrypt)
- Token authentication với cookie
- Session hijacking protection
- IP blocking system
- Rate limiting cho login và sensitive actions
- CSRF protection (khuyến nghị thêm token)
- XSS prevention với htmlspecialchars()
- SQL injection prevention
- File upload validation
- Ghi log các hành động quan trọng

## CÀI ĐẶT VÀ TRIỂN KHAI

### Yêu cầu hệ thống

**Máy chủ:**

- PHP 7.0 hoặc cao hơn (khuyến nghị PHP 7.4+)
- MySQL 5.6+ hoặc MariaDB 10.0+
- Apache hoặc Nginx
- Hỗ trợ cURL extension
- Hỗ trợ MySQLi extension
- Cho phép đọc/ghi file (chmod 755/777)

**Hosting:**

- Dung lượng: tối thiểu 500MB
- Băng thông: không giới hạn
- Hỗ trợ Cronjob
- SSL certificate (khuyến nghị)

### Các bước cài đặt

**Bước 1: Upload source code**

- Giải nén và upload toàn bộ file lên thư mục gốc website
- Hoặc clone từ repository

**Bước 2: Tạo database**

- Tạo database MySQL mới
- Import file `tuanori.sql` vào database
- Lưu ý thông tin: tên DB, username, password

**Bước 3: Cấu hình kết nối database**

- Mở file `core/config.php`
- Tìm dòng:

```php
$this->ketnoi = mysqli_connect('localhost', 'root', '', 'demo_web_key')
```

- Thay đổi thông tin kết nối:
  - 'localhost' - host database (thường là localhost)
  - 'root' - username database
  - '' - password database
  - 'demo_web_key' - tên database

**Bước 4: Cấu hình URL**

- Mở file `core/config.php`
- Tìm dòng:

```php
$base_url = 'http://localhost/';
```

- Thay bằng URL thực tế của website:

```php
$base_url = 'https://yourdomain.com/';
```

**Bước 5: Phân quyền thư mục**

- Chmod 755 cho tất cả thư mục
- Chmod 777 cho thư mục `public/uploads/`

**Bước 6: Cấu hình Cronjob**

- Vào cPanel hoặc quản lý hosting
- Thêm 2 cronjob:

```
* * * * * php /home/username/public_html/cronjob/NapATM.php
* * * * * php /home/username/public_html/cronjob/NapMM.php
```

- Thay đường dẫn cho phù hợp

**Bước 7: Đăng nhập admin**

- Truy cập website
- Vào trang đăng nhập
- Dùng tài khoản admin mặc định (xem trong DB table users)
- Đổi mật khẩu ngay sau khi đăng nhập

**Bước 8: Cấu hình hệ thống**

- Vào Admin > Cấu hình
- Điền đầy đủ thông tin website
- Cấu hình API nạp thẻ (cardvip.vn)
- Cấu hình API ngân hàng
- Cấu hình Telegram bot (tùy chọn)

**Bước 9: Thêm sản phẩm**

- Tạo chuyên mục game
- Tạo các gói sản phẩm
- Import key vào từng gói
- Bật hiển thị

**Bước 10: Test hệ thống**

- Đăng ký tài khoản test
- Thử nạp thẻ (nạp thẻ thật hoặc test)
- Thử mua key
- Kiểm tra cronjob hoạt động
- Test các tính năng

### Nâng cấp bảo mật (khuyến nghị)

**Sau khi cài đặt, nên thực hiện:**

- Đổi mật khẩu admin mạnh
- Đổi secret key trong config
- Bật HTTPS/SSL
- Thay đổi mã hóa mật khẩu từ MD5 sang bcrypt
- Thêm CSRF token cho forms
- Cấu hình firewall
- Backup database định kỳ
- Update PHP version mới nhất
- Giới hạn failed login attempts
- Ẩn version PHP trong header

## API TÍCH HỢP

### API nạp thẻ - cardvip.vn

**Endpoint:** `https://cardvip.vn/chargingws/v2`

**Parameters:**

- sign: md5(partner_key + pin + seri)
- telco: loại thẻ (VIETTEL, VINAPHONE, MOBIFONE, v.v.)
- code: mã thẻ
- serial: số seri
- amount: mệnh giá
- request_id: mã giao dịch duy nhất
- partner_id: ID đối tác
- command: 'charging'

**Response:**

```json
{
  "status": 99,
  "message": "Gửi thẻ thành công"
}
```

**Callback:** Hệ thống gọi callback để cập nhật trạng thái thẻ

### API ngân hàng - web2m.com

**Endpoint MB Bank:** `https://api.web2m.com/historyapimb/{password}/{stk}/{token}`

**Response:**

```json
{
  "data": [
    {
      "refNo": "FT21123456789",
      "creditAmount": 100000,
      "debitAmount": 0,
      "description": "NAPTIEN123 chuyen tien"
    }
  ]
}
```

**Xử lý:**

- Parse refNo để lấy mã giao dịch
- Parse description để lấy ID user
- Kiểm tra creditAmount (tiền vào)
- Bỏ qua nếu có debitAmount (tiền ra)

### API MoMo (tương tự)

**Cần có token MoMo hợp lệ**

**Endpoint:** Từ nhà cung cấp API MoMo

## TỐI ƯU VÀ BẢO TRÌ

### Performance

**Tối ưu hóa database:**

- Index các cột thường xuyên query: username, token, status
- Optimize tables định kỳ
- Clean up log cũ

**Tối ưu hóa code:**

- Cache các query thường dùng
- Minimize database queries
- Sử dụng prepared statements
- Lazy load images

**Tối ưu hóa frontend:**

- Minify CSS/JS
- Compress images
- Enable Gzip compression
- Use CDN cho assets
- Browser caching

### Backup

**Nên backup định kỳ:**

- Database: hàng ngày
- Source code: hàng tuần
- File uploads: hàng tuần
- Cấu hình server

**Tools:**

- phpMyAdmin export
- mysqldump command
- Hosting backup features
- Git version control

### Monitoring

**Theo dõi:**

- Uptime website
- Database size
- Error logs
- Access logs
- Cronjob execution
- API response time
- Server resources

### Bảo trì thường xuyên

- Update PHP version
- Update dependencies
- Patch security vulnerabilities
- Clean up temporary files
- Archive old data
- Check for broken links
- Test payment gateways
- Review user feedback

## HỖ TRỢ VÀ LIÊN HỆ

**Developer:** TUANORI  
**Zalo:** 0812665001
