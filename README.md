# 58KTPM
Bài tập 02 -Nguyễn Thị Hằng Nga -K225480106050 -môn HQTCSDL
BÀI TẬP VỀ NHÀ 02 - MÔN HỆ QUẢN TRỊ CSDL:

DEADLINE: 23H59 NGÀY 25/03/2025

ĐIỀU KIỆN: (ĐÃ LÀM XONG BÀI 1)
1. Đã cài đặt SQL Server 2022 Dev.
2. Đã cài đặt SQL Managerment Studio bản mới nhất.
3. Đã kết nối từ SQL Managerment Studio vào SQL Server.
4. Đã có tài khoản github, biết cách tạo repository(kho lưu trữ) cho phép truy cập public.

BÀI TOÁN:
- Tạo csdl quan hệ với tên QLSV gồm các bảng sau:
  + SinhVien(#masv,hoten,NgaySinh)
  + Lop(#maLop,tenLop)
  + GVCN(#@maLop,#@magv,#HK)
  + LopSV(#@maLop,#@maSV,ChucVu)
  + GiaoVien(#magv,hoten,NgaySinh,@maBM)
  + BoMon(#MaBM,tenBM,@maKhoa)
  + Khoa(#maKhoa,tenKhoa)
  + MonHoc(#mamon,Tenmon,STC)
  + LopHP(#maLopHP,TenLopHP,HK,@maMon,@maGV)
  + DKMH(#@maLopHP,#@maSV,DiemTP,DiemThi,PhanTramThi)

YÊU CẦU:
1. Thực hiện các hành động sau trên giao diện đồ hoạ để tạo cơ sở dữ liệu cho bài toán:
  + Tạo database mới, mô tả các tham số(nếu có) trong quá trình.
  + Tạo các bảng dữ liệu với các trường như mô tả, chọn kiểu dữ liệu phù hợp với thực tế (tự tìm hiểu)
  + Mỗi bảng cần thiết lập PK, FK(s) và CK(s) nếu cần thiết. (chú ý dấu # và @: # là chỉ PK, @ chỉ FK)
2. Chuyển các thao tác đồ hoạ trên thành lệnh SQL tương đương. lưu tất cả các lệnh SQL trong file: Script_DML.sql


HÌNH THỨC LÀM BÀI:
1. Tạo repository mới, tạo file readme.md (có hướng dẫn trên zalo group)
2. Sinh viên thao tác trên máy tính cá nhân, chụp màn hình quá trình làm, chỉ cần chụp active window, thi thoảng chụp full màn hình để thấy sự cá nhân hoá.
3. Hình sau khi chụp paste trực tiếp vào file readme trên github, cần mô tả các phần trên ảnh để tỏ ra là hiểu hết!
4. upload các file liên quan: Script_DML.sql
5. Update link của repository vào cột bài tập 2 trên file excel online của thầy (đã ghim link trên zalo group)

Chú ý:
1. Được phép dùng AI và tham khảo bài của bạn, nhưng phải có sự khác biệt đáng kể.
2. Nghiêm cấm copy, clone. Tham khảo và copy là 2 việc khác hẳn nhau. Thầy có tool để check!
3. Bài làm phải có dấu ấn cá nhân (hãy sáng tạo và biết cách bảo vệ mình nếu bạn là bản chính)
4. Kết quả AI phải phù hợp với yêu cầu, nếu quá sai lệch <=> sv ko đọc => Cấm thi
5. Nên nhớ: cấm thi là ko có vùng cấm và thầy chưa bao giờ nói đùa về việc cấm thi.


Bước đầu tạo cơ sở dữ liệu quản lý sinh viên

![Screenshot 2025-03-24 210419](https://github.com/user-attachments/assets/401cab4d-50cd-4497-b925-781b6f00bbc5)

trong đó:Database name (tên csdl_QLSV) và default là quyền sở hữu csdl thuộc về người tạo database
         
Sau khi tạo csdl nó sẽ xuất hiện bên trái giao diện sql tiếp đó kích chuột phải chọn tables->chuột phải tiếp chọn new->chọn table để tạo các bảng

![Screenshot 2025-03-25 154753](https://github.com/user-attachments/assets/fde69ff2-9be3-4091-b21d-083cf11caa0e)

Xuất hiện giao diện tạo bảng nhập các thuộc tính và kiểu dữ liệu của bảng rồi ctrl+S->nhập tên bảng->chọn ok để lưu tên bảng vd như bảng giaovien

![Screenshot 2025-03-25 162611](https://github.com/user-attachments/assets/4f3685ec-dbc3-4fe6-8145-06b6639f6d3d)

![Screenshot 2025-03-24 223325](https://github.com/user-attachments/assets/01ceab71-6542-41b8-8562-8bcf891d552d)

![Screenshot 2025-03-25 162611](https://github.com/user-attachments/assets/349dc615-8035-4cb9-9f09-2bf696f996c5)

tương tự cũng làm như vậy để tạo các bảng theo yêu cầuu đề bài :Sinh vien,Lop,Gvcn,Lopsv,Bomon,Khoa,Monhoc,Lophp,DKMH bên dưới đây là các hình ảnh minh họa

![Screenshot 2025-03-25 152236](https://github.com/user-attachments/assets/bb1f29ae-0cca-46f4-873b-90b71ac5a54a)


![Screenshot 2025-03-24 230453](https://github.com/user-attachments/assets/47272550-2760-4425-800c-2a2a61844b2b)


![Screenshot 2025-03-24 225914](https://github.com/user-attachments/assets/b57d56cc-e75d-42e9-b30c-fe559d890314)


![Screenshot 2025-03-24 225148](https://github.com/user-attachments/assets/54d67826-d235-4251-bf80-bf160b2be947)


![Screenshot 2025-03-24 221544](https://github.com/user-attachments/assets/cf6d487e-b0c7-4b44-b0ec-5b82c1d255f2)


![Screenshot 2025-03-25 164333](https://github.com/user-attachments/assets/436038e8-904c-449e-94d6-13482ef8b237)


![Screenshot 2025-03-25 164647](https://github.com/user-attachments/assets/f96d5515-c159-487b-b058-a2ad84288eca)


![Screenshot 2025-03-25 164746](https://github.com/user-attachments/assets/10ee6c67-1f05-4d00-bf2c-3e96c1be3b69)









         
