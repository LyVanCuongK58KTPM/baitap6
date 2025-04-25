# baitap6
btvn 6 của sv: K225480106100_Lý Văn Cường_HQTCSDL
Bài tập 6: Hệ quản trị CSDL
Chủ đề: Câu lệnh Select
Yêu cầu bài tập: 
Cho file sv_tnut.sql (1.6MB)
1. Hãy nêu các bước để import được dữ liệu trong sv_tnut.sql vào sql server của em
2. dữ liệu đầu vào là tên của sv; sđt; ngày, tháng, năm sinh của sinh viên (của sv đang làm bài tập này)
3. nhập sql để tìm xem có những sv nào trùng hoàn toàn ngày/tháng/năm với em?
4. nhập sql để tìm xem có những sv nào trùng ngày và tháng sinh với em?
5. nhập sql để tìm xem có những sv nào trùng tháng và năm sinh với em?
6. nhập sql để tìm xem có những sv nào trùng tên với em?
7. nhập sql để tìm xem có những sv nào trùng họ và tên đệm với em.
8. nhập sql để tìm xem có những sv nào có sđt sai khác chỉ 1 số so với sđt của em.
9. BẢNG SV CÓ HƠN 9000 ROWS, HÃY LIỆT KÊ TẤT CẢ CÁC SV NGÀNH KMT, SẮP XẾP THEO TÊN VÀ HỌ ĐỆM, KIỂU TIẾNG  VIỆT, GIẢI THÍCH.
10. HÃY NHẬP SQL ĐỂ LIỆT KÊ CÁC SV NỮ NGÀNH KMT CÓ TRONG BẢNG SV (TRÌNH BÀY QUÁ TRÌNH SUY NGHĨ VÀ GIẢI NHỮNG VỨNG MẮC)

DEADLINE: 23H59:59 NGÀY 25/4/2025

-------------------------------------------------------------------------------------------------------------
## 1. Các bước để import dữ liệu từ file sv_tnut.sql vào sql server:
   - B1: Sau khi kết nối tới sql server, chọn file ---> open ---> file...:
  
     ![image](https://github.com/user-attachments/assets/b8a1aa33-bb44-4218-b04c-dcd90ec814cc)

   - B2: Chọn đường dẫn tải file về vào chọn đúng file sv_tnut.sql:

 ![image](https://github.com/user-attachments/assets/4802ef63-0b17-4bab-8160-08c1bd02ab02)


    
   - B3: Tạo database với tên sv_tnut để trùng với câu lệnh use[sv_tnut] của thầy(lệnh sử dụng database):
  
    ![image](https://github.com/user-attachments/assets/c79a0825-f3dd-424e-9a30-f7c2500637be)


   - B3: Bôi đen câu lệnh use[sv_tnut] và câu lệnh tạo bảng SV để tạo ra bảng trước rồi mới nhập dữ liệu được:
  
     ![image](https://github.com/user-attachments/assets/08f0b4c9-9f88-44e6-a720-022cea05120f)
     
  Kết quả chúng ta thấy được database đã có bảng dbo.SV:

![image](https://github.com/user-attachments/assets/ee750f21-1f64-4414-9a48-421ed50ddf35)


   - B4: Bôi đen( chọn) các dòng lệnh Insert ( toàn bộ code còn lại) rồi chạy để nạp dữ liệu vào cho bảng SV:

     ![image](https://github.com/user-attachments/assets/f67530ba-3e88-42c9-97e3-f29a4c8685b9)


## 2. Truy vấn ra thông tin của em ( Lý Văn Cường) với dữ liệu đầu vào là tên; sđt; ngày, tháng, năm sinh

   - New Query để code truy vấn
   - Dùng câu lệnh SELECT các trường tên, ngày sinh, số điện thoại từ bảng SV where tên các trường = dữ liệu phù hợp với thông tin của em:
  
     ![image](https://github.com/user-attachments/assets/ff24dc2a-375b-4de0-b30e-444f9091f1e6)


## 3. Truy vấn những sinh viên trùng hoàn toàn ngày tháng năm sinh với em:

- Dùng câu lệnh day, month, year để lấy ra được ngày, tháng, năm từ cột ns có kiểu Date để so sánh:

  ![image](https://github.com/user-attachments/assets/40286e22-e267-44f6-aa4b-7972a4ea8c8b)

## 4. Truy vấn những thông tin trùng ngày và tháng sinh:

   ![image](https://github.com/user-attachments/assets/0e326bf6-c62c-4780-82fa-03d0b6a1fe78)

## 5. Truy vấn thông tin những sinh viên trùng tháng và năm sinh với em:

   ![image](https://github.com/user-attachments/assets/c41419fa-5e25-4c1e-b44d-b1eaa30db104)

## 6. Truy vấn thông tin những sinh viên trùng tên với em:

  ![image](https://github.com/user-attachments/assets/90a02e14-6878-48a6-9d43-de3ce2595fe4)

## 7. Truy vấn thông tin những sinh viên có trùng họ và tên đệm với em:

   ![image](https://github.com/user-attachments/assets/e1a46622-dac9-4b0f-8845-aa2e2164fba9)

## 8. Truy vấn những sinh viên có sdt khác chỉ 1 số với em:

   ![image](https://github.com/user-attachments/assets/6fe7e731-0afb-4b35-aebb-5169fc54b938)

   Trong danh sách không có sinh viên nào sai chỉ 1 số so với SDT của em

## 9. LIỆT KÊ TẤT CẢ CÁC SV NGÀNH KMT, SẮP XẾP THEO TÊN VÀ HỌ ĐỆM, KIỂU TIẾNG  VIỆT:

![image](https://github.com/user-attachments/assets/a57ead19-9b39-4f09-8981-57ca434b9c61)

- Giải thích:

  + WHERE lop LIKE '%KMT': tìm trong cột lop có chuỗi string nào trùng với chuỗi kí tự KMT thì lôi ra
 
  + COLLATE Vietnamese_CI_AS: Sắp xếp tên và họ đệm kiểu tiếng Việt theo thứ tự từ a-->z
 
  ## 10. Truy vấn các sinh viên nữ ngành KMT có trong bảng SV:
  
 
  ![image](https://github.com/user-attachments/assets/2ac4afc1-ac2b-4808-b797-5862f9ad799e)



  - Em truy vấn ra họ tên của toàn bộ sv KMT
  - Cop cột tên đưa lên Chat để nhờ suy luận ra tên các bạn nữ
  - Sau khi đã có tên thì dùng các tên đó kèm lệnh WHERE lop LIKE '%KMT%' AND ten IN ( các tên vừa suy luận)
  - Test ra số lượng còn ít, khi đó em có thê tự lọc ra tên các bạn nữ bằng tay

 
      










