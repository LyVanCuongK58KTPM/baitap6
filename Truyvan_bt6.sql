--1.Truy vấn tên,sdt,ngày tháng năm sinh trùng với thông tin của em(Lý Văn Cường)
Select ten, ns, sdt
from SV
where ten = N'Cường' AND ns = '2003-06-11' AND sdt = '382283914'


--Truy vấn thông tin các sinh viên có trùng ngày tháng năm sinh với em
select * from SV
where day(ns) = '11' AND month(ns) = '06' AND year(ns)= '2003'


--Truy vấn thông tin các sinh viên trùng ngày và tháng sinh 
select * from SV
where day(ns) = '11' AND month(ns) = '06'


--Truy vấn ra thông tin các sinh viên có trùng tháng, năm sinh
select * from SV
where  month(ns) = '06' AND year(ns)= '2003'


--Truy vấn ra thông tin các sinh viên có trùng tên với em
select * 
From SV
Where ten = N'Cường'


--Truy vấn ra thông tin các sinh viên có trùng họ đệm với em
select * 
From SV
Where hodem = N'Lý Văn'


--Truy vấn ra thông tin các sinh viên có sdt khác chỉ 1 số so với sdt của em
SELECT *
FROM SV
WHERE LEN(sdt) = LEN('382283914')
AND (
    IIF(SUBSTRING(sdt, 1, 1) <> SUBSTRING('382283914', 1, 1), 1, 0) +
    IIF(SUBSTRING(sdt, 2, 1) <> SUBSTRING('382283914', 2, 1), 1, 0) +
    IIF(SUBSTRING(sdt, 3, 1) <> SUBSTRING('382283914', 3, 1), 1, 0) +
    IIF(SUBSTRING(sdt, 4, 1) <> SUBSTRING('382283914', 4, 1), 1, 0) +
    IIF(SUBSTRING(sdt, 5, 1) <> SUBSTRING('382283914', 5, 1), 1, 0) +
    IIF(SUBSTRING(sdt, 6, 1) <> SUBSTRING('382283914', 6, 1), 1, 0) +
    IIF(SUBSTRING(sdt, 7, 1) <> SUBSTRING('382283914', 7, 1), 1, 0) +
    IIF(SUBSTRING(sdt, 8, 1) <> SUBSTRING('382283914', 8, 1), 1, 0) +
    IIF(SUBSTRING(sdt, 9, 1) <> SUBSTRING('382283914', 9, 1), 1, 0)
) 
= 1;


--Liệt kê và sắp xếp tên các sinh viên ngành KMT kiểu tiếng việt
SELECT *
FROM SV
WHERE lop LIKE '%KMT%'
ORDER BY 
    ten COLLATE Vietnamese_CI_AS,
    hodem COLLATE Vietnamese_CI_AS;

--Liệt kê các sinh viên nữ ngành KMT
SELECT *
FROM SV
WHERE lop LIKE '%KMT%' AND
ten IN ( N'Ánh', N'Bích', N'Hà', N'Hằng', N'Hạnh',
              N'Huyền', N'Linh', N'Mai', N'My', N'Ngân', N'Ngọc', N'Nguyệt', N'Nhung',
              N'Phương', N'Quỳnh', N'Thùy', N'Thương', N'Trang', N'Tuyết',
               N'Vân', N'Ý', N'Yến')
