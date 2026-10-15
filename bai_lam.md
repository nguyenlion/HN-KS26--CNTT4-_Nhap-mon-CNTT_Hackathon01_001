# bai_lam

# BÀI LÀM – HACKATHON 01

- **Mã đề:** 01
- **Họ tên: Nguyễn Khắc Hiếu**
- **Lớp: CNTT4**
- **Link repository:**
- **Hệ điều hành (Windows/macOS): Windows**

## 4.2. Thao tác máy tính cơ bản bằng CLI

### Các lệnh đã chạy

```bash
Hiển thị đường dẫn tuyệt đối của thư mục hiện tại
+ pwd

●Liệt kê nội dung, gồm cả file ẩn.
+ ls -force

●Di chuyển các file yeu_cau.txt vào docs, các file logo vào media.
+ Move-Item .\yeu_cau.txt .\docs\
+ Move-Item .\logo_nha_sach.PNG .\media\

●Sao chép logo từ media vào backup.
+ Copy-Item .\media\logo_nha_sach.PNG .\backup\

●Xoá file .tmp tại thư mục gốc; không xoá file khác.
+ rm .\temp_014.tmp

Dùng đường dẫn tương đối vào logs, liệt kê nội dung rồi quay lại thư mục gốc.
+ cd .\logs\
+ ls
+ cd ..
```

### Kết quả liệt kê toàn bộ dự án (Windows: Get-ChildItem -Recurse -Force; macOS: ls -aR)

```
Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----        15/10/2026   8:10 am                backup
d-----        15/10/2026   8:12 am                data
d-----        15/10/2026   8:10 am                docs
d-----        15/10/2026   8:12 am                logs
d-----        15/10/2026   8:10 am                media
-a----        11/10/2026  11:38 am             72 .env
-a----        11/10/2026  11:38 am           2224 bai_lam.md
-a----        11/10/2026  11:38 am           6344 logo_nha_sach.PNG
-a----        11/10/2026  11:38 am             22 temp_014.tmp
-a----        11/10/2026  11:38 am             71 yeu_cau.txt
```

## 4.3. Lọc log thủ công

### Lệnh đã chạy

```bash
●Dùng các lệnh đọc file và lọc nội dung, tiến hành lọc các dòng chứa ERROR trong logs/store.log.
●Ghi kết quả vào logs/daily_report.txt.
+ Get-Content .\logs\store.log | Select-String "ERROR" > .\logs\daily_report.txt
●Đọc file báo cáo để kiểm tra
+ Get-Content .\logs\daily_report.txt -TotalCount 2
```

### 2 dòng lỗi đầu tiên trong daily_report.txt

```

2025-10-28 08:15:16 [ERROR] Thanh toan bi tu choi

```

![image.png](image.png)

## 4.4. Thao tác với tài liệu Markdown (README.md)

> README.md được chấm trực tiếp trên file `README.md` ở gốc dự án. Đánh dấu `[x]` vào các mục đã làm để tự kiểm tra.
> 
- [x]  Heading 1: tên dự án
- [x]  Mô tả ngắn có cả **in đậm** và *in nghiêng*
- [x]  Bảng `Thư mục | Nội dung`, ít nhất 3 dòng dữ liệu
- [x]  Code block chứa lệnh PowerShell/Terminal liệt kê nội dung dự án
- [x]  Task list ít nhất 2 công việc, có ít nhất 1 mục đã hoàn thành
- [x]  Blockquote nhắc không upload `.env`

## 4.5. Chạy script auto_report (.ps1 hoặc .sh)

### Lệnh chạy (Windows: nếu dùng Phụ lục 2 thì ghi cả 2 lệnh)

```bash
.\auto_report.ps1
```

### Kết quả hiển thị

```
Dang loc log...
Hoan thanh!
```

## 4.6. Đếm số dòng lỗi

### Lệnh

```bash
(Get-Content .\logs\store.log | Select-String "ERROR").count
```

### Kết quả đếm (Windows: giá trị Count; macOS: con số in ra)

```
6
```

## 4.7. Báo cáo tổng hợp

### Các lệnh đã chạy

```bash
+  New-Item .\logs\tong_hop.txt
+ "=== TONG HOP LOG ===" > .\logs\tong_hop.txt
+ Get-Content .\logs\store.log | Select-String "WARNING" >> .\logs\tong_hop.txt
+  Get-Content .\logs\store.log | Select-String "ERROR" >> .\logs\tong_hop.txt
```

### Nội dung file logs/tong_hop.txt

```
=== TONG HOP LOG ===

2025-10-28 08:27:16 [WARNING] Sach sap het hang trong kho
2025-10-28 08:42:16 [WARNING] Thoi gian tai trang cham
2025-10-28 08:54:16 [WARNING] Thoi gian tai trang cham

2025-10-28 08:15:16 [ERROR] Thanh toan bi tu choi
2025-10-28 08:24:16 [ERROR] Ket noi kho du lieu that bai
2025-10-28 08:30:16 [ERROR] Thanh toan bi tu choi
2025-10-28 08:33:16 [ERROR] Khong tim thay trang /sach-moi (404)
2025-10-28 08:45:16 [ERROR] Khong tim thay trang /sach-moi (404)
2025-10-28 09:00:16 [ERROR] Thanh toan bi tu choi
```

## 4.8. Excel

> Phần Excel được chấm trực tiếp trên file `data/hoa_don_thang_10.xlsx`, không cần ghi vào đây.
>