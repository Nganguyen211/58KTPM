BÀI TẬP VỀ NHÀ 03 - MÔN HỆ QUẢN TRỊ CSDL:

DEADLINE: 23H59 NGÀY 30/03/2025

ĐIỀU KIỆN: (ĐÃ LÀM XONG BÀI 2)

BÀI TOÁN: Sửa bài 2 để có csdl như sau:
  + SinhVien(#masv,hoten,NgaySinh)
  + Lop(#maLop,tenLop)
  + GVCN(#@maLop,#@magv,#HK)
  + LopSV(#@maLop,#@maSV,ChucVu)
  + GiaoVien(#magv,hoten,NgaySinh,@maBM)
  + BoMon(#MaBM,tenBM,@maKhoa)
  + Khoa(#maKhoa,tenKhoa)
  + MonHoc(#mamon,Tenmon,STC)
  + LopHP(#maLopHP,TenLopHP,HK,@maMon,@maGV)
  + DKMH(#id_dk, @maLopHP,@maSV,DiemThi,PhanTramThi)
  + Diem(#id, @id_dk, diem)

YÊU CẦU:
1. Sửa bảng DKMH và bảng Điểm từ bài tập 2 để có các bảng như yêu cầu.
2. Nhập dữ liệu demo cho các bảng (nhập có kiểm soát từ tính năng Edit trên UI của mssm)
3. Viết lệnh truy vấn để: Tính được điểm thành phần của 1 sinh viên đang học tại 1 lớp học phần.

HÌNH THỨC LÀM BÀI:
1. Tạo file bai_tap3.md trên cùng repository của bài tập 2:
   Nội dung chứa đề bài, và ảnh chụp quá trình thao tác các yêu cầu khác.
2. Chụp ảnh quá trình sửa bảng DKMH và quá trình thêm bảng Diem, chú ý @ là FK, và thêm CK cho trường điểm
3. Hình sau khi chụp paste trực tiếp vào file bai_tap3.md trên github, cần mô tả các phần trên ảnh để tỏ ra là hiểu hết!
4. dùng tính năng: Tasks -> Generate Scrips => sinh ra file: bai_tap_3_schema.sql  (chỉ chứa lệnh tạo cấu trúc của db)
5. dùng tính năng: Tasks -> Generate Scrips => advance => Check Data only => sinh ra file: bai_tap_3_data.sql  (chỉ chứa dữ liệu đã nhập demo vào db)
6. Tạo diagram mô tả các PK, FK của db. Chụp hình kết quả các bảng có các đường nối 1-->nhiều
7. upload 2 file  bai_tap_3_schema.sql và bai_tap_3_data.sql lên repository.
8. nhớ commit để save nội dung file bai_tap3.md

DEADLINE: 23H59 NGÀY 30/03/2025

---------------------- hết bài tập 3-------------------------------------------
Chú ý:
1. Được phép dùng AI và tham khảo bài của bạn, nhưng phải có sự khác biệt đáng kể.
2. Nghiêm cấm copy, clone. Tham khảo và copy là 2 việc khác hẳn nhau. Thầy có tool để check!
3. Bài làm phải có dấu ấn cá nhân (hãy sáng tạo và biết cách bảo vệ mình nếu bạn là bản chính)
4. Kết quả AI phải phù hợp với yêu cầu, nếu quá sai lệch <=> sv ko đọc => Cấm thi
5. Nên nhớ: cấm thi là ko có vùng cấm và thầy chưa bao giờ nói đùa về việc cấm thi.

Nhắc lại nội quy học tập:
SV vi phạm 1 trong các lỗi sau chỉ 1 lần sẽ bị cấm thi: 🚫
1. Nghỉ ko lý do chính đáng.
2. Không làm bài tập về nhà.
3. Vắng bài kiểm tra.
4. Nói chuyện tự do trong lớp.

Bên cạnh đó, sẽ có điểm thưởng 10đ cho sv :  🎁
1. Trả lời đúng câu hỏi trên lớp.
2. Hỏi câu hỏi làm thầy khó trả lời.

---NHẮC LẠI THỜI HẠN DEADLINE: 23H59 NGÀY 30/03/2025---


1. Sửa bảng DKMH và bảng Điểm từ bài tập 2 để có các bảng như yêu cầu.

*)Sửa bảng DKMH theo yêu cầu :
![Screenshot 2025-03-30 134200](https://github.com/user-attachments/assets/d0e16572-4724-42b3-b57d-b42cd4113226)
 sửa bảng DKMH theo yêu cầu và set up khóa chính
 ![Screenshot 2025-03-30 140316](https://github.com/user-attachments/assets/fbd0061c-5504-4c10-91e7-cb51e164dc1c)
thiết lập điều kiện ,kích chuột phải xuất hiện hộp thoại và thực hiện các bước 1,2,3 như hình
*)Tạo bảng điểm 
kích chuột phải vào tables chọn new chọn table để tạo bảng thêm các trường và thiết lập khóa chính
![image](https://github.com/user-attachments/assets/d89962b0-2b29-46fb-9ba4-e9fdd490257e)

thiết lập điều kiệnh như bảng DKMH
![Screenshot 2025-03-30 221913](https://github.com/user-attachments/assets/7097259b-ccca-4be4-86e4-a5e2b80553c8)

tạo khóa phụ liên kết giữa bảng điểm và DKMH như bt2
![Screenshot 2025-03-30 221307](https://github.com/user-attachments/assets/acd32a5d-bbc5-447c-81e5-a0c3d096ed05)


2.Nhập dữ liệu demo cho các bảng (nhập có kiểm soát từ tính năng Edit trên UI của mssm)

*)Dữ liệu demo bảng Sinhvien 

![image](https://github.com/user-attachments/assets/2483cc7c-f6b8-4fcb-8274-0decb05a6739)

*)Dữ liệu demo bảng Lop(lop1): Đặt Unique cho tenLop để tránh sự trùng lặp cảnh báo khi hệ thống phát hiện sự trùng lặp

![image](https://github.com/user-attachments/assets/079178c5-3cfe-49da-91b5-b043f7f8585a)

 *)Dữ liệu demo bảng Gvcn
 
![image](https://github.com/user-attachments/assets/6298887a-47fb-4727-9c91-608c4dc67f52)

*)Dữ liệu demo bảng Lopsv

![image](https://github.com/user-attachments/assets/9da860b7-6b75-4e20-8667-80d1c1988a9a)

 *)Dữ liệu demo bảng Giaovien
 
![image](https://github.com/user-attachments/assets/acda694e-833f-4822-a007-9238842c213c)

 *)Dữ liệu demo bảng Bomon
 
![image](https://github.com/user-attachments/assets/00814ed5-cfc7-4ef7-80d3-6e7eff9651a6)

 *)Dữ liệu demo bảng Khoa 
 
![image](https://github.com/user-attachments/assets/c7e39544-50bf-41dc-bb82-e59f0c36ab80)

*)Dữ liệu demo bảng Monhoc 


![image](https://github.com/user-attachments/assets/4ce853ee-a45a-4bb2-9a34-b97d18ce9fc6)

*)Dữ liệu demo bảng Lophp

![image](https://github.com/user-attachments/assets/4b79dc54-078c-485e-955b-e55fcc07545b)

 *)Dữ liệu demo bảng DKMH
 
![image](https://github.com/user-attachments/assets/a04a7d66-1bc9-4119-bf91-d996306711bd)

 *)Dữ liệu demo bảng Diem
 
![image](https://github.com/user-attachments/assets/50730811-c752-4f59-aa4c-a5cca132efdf)

3.Viết lệnh truy vấn để: Tính được điểm thành phần của 1 sinh viên đang học tại 1 lớp học phần.

*)Lệnh truy vấn tính điểm thành phần của 1 sinh viên.

![image](https://github.com/user-attachments/assets/bacd4044-6fc6-403a-8d05-b4dde8944eab)

*)Thao tác tạo diagram mô tả các PK, FK của db.

![image](https://github.com/user-attachments/assets/d9e58400-ee25-4a5e-84d9-aa87551e4c36)

Kích chuột phải vào database diagrams -> chọn new database diagram xuất hiện hộp thoại như bên dưới

![image](https://github.com/user-attachments/assets/f1830ee6-3eaa-4e45-bb78-82c563408593)

Tiếp tục chọn tất cả các bảng và ấn Add kết quả được 

![image](https://github.com/user-attachments/assets/bb0a1182-13fc-44eb-acce-aaeca3631f97)


