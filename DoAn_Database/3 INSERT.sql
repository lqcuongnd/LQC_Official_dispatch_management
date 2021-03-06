use QLCV

--ACC

INSERT INTO ACC VALUES ('admin','admin',N'Lương Quang Cương',N'Nam',1)
INSERT INTO ACC VALUES ('cuongdao','normal',N'Nguyễn Chí Cường',N'Nam',2)
INSERT INTO ACC VALUES ('hungga','normal',N'Trần Minh Hưng',N'Nam',2)
INSERT INTO ACC VALUES ('nhulun','normal',N'Trần Thị Huỳnh Như',N'Nữ',2)
INSERT INTO ACC VALUES ('hieucho','normal',N'Lê Trung Hiếu',N'Nam',2)
INSERT INTO ACC VALUES ('dat09','normal',N'Nguyễn Thành Đạt',N'Nam',2)
INSERT INTO ACC VALUES ('tcuong','normal',N'Trần Tiến Cường',N'Nam',2)
INSERT INTO ACC VALUES ('thuytrang','normal',N'Trần Thị Thùy Trang',N'Nữ',2)


--


INSERT INTO HOP(LOAI) VALUES (N'Văn bản đến Hành chính quân sự 2010 - 2016')
INSERT INTO HOP(LOAI) VALUES (N'Văn bản đến Chính trị 2010 - 2016')
INSERT INTO HOP(LOAI) VALUES (N'Văn bản đi Hành chính quân sự 2010 - 2016')
INSERT INTO HOP(LOAI) VALUES (N'Văn bản đi Ban Tác huấn 2010 - 2016')
INSERT INTO HOP(LOAI) VALUES (N'Các Quyết định bổ nhiệm của Quân khu 2010 - 2018')
INSERT INTO HOP(LOAI) VALUES (N'Nghị quyết từ Quân khu 2010 - 2016')
INSERT INTO HOP(LOAI) VALUES (N'Văn bản Hành chính quân sự tuyệt mật 2010 - 2018')
INSERT INTO HOP(LOAI) VALUES (N'Các tờ trình xây dựng của Ban Doanh trại 2010 - 2018')
INSERT INTO HOP(LOAI) VALUES (N'Báo cáo tài chính của Sư đoàn từ 2013 - 2016')
INSERT INTO HOP(LOAI) VALUES (N'Văn bản đến tối mật từ 2013 - 2018')
INSERT INTO HOP(LOAI) VALUES (N'Văn bản đến tuyệt mật từ 2013 - 2018')


--


INSERT INTO THELOAIVBDEN VALUES (2018,N'H',N'Hành chính quân sự',0)
INSERT INTO THELOAIVBDEN VALUES (2018,N'Q',N'Quy phạm pháp luật',0)
INSERT INTO THELOAIVBDEN VALUES (2018,N'TMo',N'Thư mời',0)
INSERT INTO THELOAIVBDEN VALUES (2018,N'XH',N'Các tổ chức chính trị xã hội',0)
INSERT INTO THELOAIVBDEN VALUES (2018,N'TM',N'Phòng Tham mưu',0)
INSERT INTO THELOAIVBDEN VALUES (2018,N'CT',N'Phòng Chính trị',0)
INSERT INTO THELOAIVBDEN VALUES (2018,N'HC',N'Phòng Hậu cần',0)
INSERT INTO THELOAIVBDEN VALUES (2018,N'KT',N'Phòng Kỹ thuật',0)
INSERT INTO THELOAIVBDEN VALUES (2018,N'D',N'Đảng',0)



--

INSERT INTO THELOAIVBDI(NAM,MATL,TENTL) VALUES (2018,'BCH',N'Bộ chỉ huy Sư đoàn BB5')
INSERT INTO THELOAIVBDI(NAM,MATL,TENTL) VALUES (2018,'PTM',N'Phòng Tham mưu')
INSERT INTO THELOAIVBDI(NAM,MATL,TENTL) VALUES (2018,'PCT',N'Phòng Chính trị')
INSERT INTO THELOAIVBDI(NAM,MATL,TENTL) VALUES (2018,'PHC',N'Phòng Hậu cần')
INSERT INTO THELOAIVBDI(NAM,MATL,TENTL) VALUES (2018,'PKT',N'Phòng Kỹ thuật')
INSERT INTO THELOAIVBDI(NAM,MATL,TENTL) VALUES (2018,'PD',N'Văn bản phê duyệt')	
INSERT INTO THELOAIVBDI(NAM,MATL,TENTL) VALUES (2018,'D',N'Đảng')


--


INSERT INTO VANBANDI VALUES (2018,N'BCH',1,N'TB-SĐ5','2018-01-02',N'Mật',N'Thường',N'Thông báo - V/v triển khai kế hoạch huấn luyện năm 2018',N'',N'4// - Phạm Văn Thuận - f.t',23,4,N'BCH Sư đoàn(7);
4CQ, 3e trực thuộc, 7d TT;
Lưu: BTH,BM;',N'Ban Tác Huấn/PTM',N'',3,1,N'',N'Nguyễn Chí Cường')
INSERT INTO VANBANDI VALUES (2018,N'BCH',2,N'BC-SĐ5','2018-02-05',N'Thường',N'Thường',N'Báo cáo - Tiến độ xây dựng công trình Nhà khách 55',N'2/// - Trần Đơn - TL.QK7',N'4// - Phạm Văn Thuận - f.t',18,6,N'BTLQK7;
BCH Sưđoàn(7);
Lưu: NDT,BM;',N'Ban Doanh trại/PHC',N'',null,null,N'Chú Hùng xin giữ 1 bản',N'Nguyễn Chí Cường')
INSERT INTO VANBANDI VALUES (2018,N'BCH',3,N'TB-SĐ5','2018-02-06',N'Thường',N'Thường',N'Thông báo - V/v Kiểm tra, bảo dưỡng vũ khí',N'',N'3// - Phạm Văn Rậm - p.TMT/f',23,7,N'BCH Sư đoàn(7);
4CQ, 3e trực thuộc, 7d TT;
Lưu: BTH,BM',N'Ban Tác Huấn/PTM',N'',null,null,N'',N'Nguyễn Chí Cường')
INSERT INTO VANBANDI VALUES (2018,N'BCH',4,N'TB-SĐ5','2018-02-07',N'Mật',N'Thường',N'Thông báo - Tình hình địch tuần(28/12/2017 - 04/01/2018)',N'',N'3// - Trần Minh Phong - p.ft',23,4,N'BCH Sư đoàn(7);
4CQ, 3e trực thuộc, 7d TT;
Lưu: BCY, BM;',N'Ban Cơ yếu/PTM',N'',null,null,N'',N'Nguyễn Chí Cường')
INSERT INTO VANBANDI VALUES (2018,N'BCH',5,N'TTr-SĐ5','2018-02-08',N'Thường',N'Thường',N'Tờ trình - V/v Xin kinh phí nâng cấp, cải tạo khu nhà ở chiến sỹ e5',N'1/// - Võ Văn Cổ - TMT/QK7',N'4// - Phạm Văn Thuận - f.t',15,3,N'BTLQK7, Phòng Tài chính QK7;
BCH Sư đoàn(7);
4CQ, 3e trực thuộc, 7d TT;
Lưu: BDT, BM;',N'Ban Doanh trại/PHC',N'',null,null,N'',N'Nguyễn Chí Cường')
INSERT INTO VANBANDI VALUES (2018,N'PTM',1,N'PTM-CY','2018-01-05',N'Tối mật',N'Thường',N'Công văn - Về công tác Cơ yếu năm 2018',N'',N'3// - Đặng Văn Hảo - p.TMT/f',23,3,N'BCH Sư đoàn(7);
4CQ, 3e trực thuộc, 7d TT;
Lưu: BCY,BM;',N'Ban Cơ yếu/PTM',N'',5,1,N'',N'Nguyễn Chí Cường')
INSERT INTO VANBANDI VALUES (2018,N'PTM',2,N'TB-PTM','2018-01-09',N'Tối mật',N'Thường',N'Thông báo - V/v Công tác chuẩn bị cho đợt diễn tập Mây Tàu',N'',N'3// - Đặng Văn Hảo - p.TMT/f',23,6,N'BCH Sư đoàn(7);
4CQ, 3e trực thuộc, 7d TT;
Lưu: BTH,BM;',N'Ban Tác huấn/PTM',N'',5,2,N'',N'Nguyễn Chí Cường')
INSERT INTO VANBANDI VALUES (2018,N'PTM',3,N'PTM-TH','2018-02-13',N'Thường',N'Thường',N'Công văn - V/v Hợp luyện Điều lệnh đội ngũ chuẩn bị chào mừng Tân xuân 2018',N'',N'3// - Phạm Văn Rậm - p.TMT/f',23,4,N'BCH Sư đoàn(7);
4CQ, 3e trực thuộc, 7d TT;
Lưu: BTH, BM;',N'Ban Tác huấn/PTM',N'',3,3,N'',N'Nguyễn Chí Cường')
INSERT INTO VANBANDI VALUES (2018,N'PTM',4,N'BC-PTM','2018-02-15',N'Thường',N'Thường',N'Báo cáo - V/v Công tác chuẩn bị nhập ngũ cho tân binh 2018',N'',N'3// - Phạm Văn Rậm - p.TMT/f',23,4,N'BCH Sư đoàn(7);
4CQ, 3e trực thuộc, 7d TT;
Lưu: BQL, BM;',N'Ban Quân lực/PTM',N'',null,null,N'',N'Nguyễn Chí Cường')
INSERT INTO VANBANDI VALUES (2018,N'PTM',5,N'TB-PTM','2018-03-16',N'Mật',N'Thường',N'Thông báo - V/v bảo dưỡng các loại vũ khí pháo binh ',N'',N'3// - Đặng Văn Hảo - p.TMT/f',17,4,N'BCH Sư đoàn(7);
4CQ, 3e trực thuộc, 7d TT;
Lưu: BQL, BM;',N'Ban Pháo binh/PTM',N'',3,4,N'',N'Nguyễn Thành Đạt')
INSERT INTO VANBANDI VALUES (2018,N'PTM',6,N'TTr-PTM','2018-04-12',N'Thường',N'Thường',N'Tờ trình - V/v cung cấp tài chính mua sắm trang thiết bị, văn phòng phẩm',N'4// - Phạm Văn Thuận - ft',N'3// - Đặng Văn Hảo - p.TMT/f',12,3,N'BCH Sư đoàn(7);
Ban Tài chính;
Lưu: BTH, BM;',N'Ban Tác huấn/PTM',N'',null,null,N'',N'Nguyễn Thành Đạt')
INSERT INTO VANBANDI VALUES (2018,N'PTM',7,N'PTM-QL','2018-04-19',N'Tuyệt mật',N'Thường',N'Công văn - V/v giải trình nguyên nhân tử vong của đ/c binh nhì NCK',N'',N'3// - Phạm Văn Rậm - p.TMT/f',7,2,N'BCH Sư đoàn(7);
Lưu: BQL, BM;',N'Ban Quân lực/PTM',N'',4,1,N'',N'Nguyễn Thành Đạt')
INSERT INTO VANBANDI VALUES (2018,N'PTM',8,N'HD-PTM','2018-04-22',N'Thường',N'Thường',N'Hướng dẫn - Công tác tác chiến phòng không năm 2018',N'',N'3// - Đặng Văn Hảo - p.TMT/f',23,4,N'BCH Sư đoàn(7);
4CQ, 3e trực thuộc, 7d TT;
Lưu: BPK, BM;',N'Ban Phòng không/PTM',N'',null,null,N'',N'Nguyễn Thành Đạt')
INSERT INTO VANBANDI VALUES (2018,N'PTM',9,N'BC-PTM','2018-04-22',N'Mật',N'Thường',N'Báo cáo - Tình hình địch tuần',N'',N'3// - Đặng Văn Hảo - p.TMT/f',23,4,N'BCH Sư đoàn(7);
4CQ, 3e trực thuộc, 7d TT;
Lưu: BTH,BM;',N'Ban Tác huấn/PTM',N'',6,1,N'',N'Nguyễn Thành Đạt')
INSERT INTO VANBANDI VALUES (2018,N'PCT',1,N'TB-PCT','2018-01-08',N'Thường',N'Thường',N'Thông báo - V/v Chuẩn bị tổ chức chương trình chào đón tân niên cho tân binh nhập ngũ tháng 2/2018',N'4// - Phan Văn Xựng - p.CU/f',N'4// - Lê Văn Nhân - cnCT/f',23,3,N'BCH Sư đoàn(7);
4CQ, 3e trực thuộc, 7d TT;
Lưu: BTH, BM;',N'Ban Tuyên huấn/PCT',N'',null,null,N'',N'Trần Thị Huỳnh Như')
INSERT INTO VANBANDI VALUES (2018,N'PCT',2,N'TB-PCT','2018-02-09',N'Thường',N'Thường',N'Thông báo - Triển khai cuộc thi viết tìm hiểu luật tố tụng',N'',N'4// - Lê Văn Nhân - cnCT/f',23,4,N'BCH Sư đoàn(7);
4CQ, 3e trực thuộc, 7d TT;
Lưu: BTH, BM;',N'Ban Tuyên huấn/PCT',N'',null,null,N'',N'Trần Thị Huỳnh Như')
INSERT INTO VANBANDI VALUES (2018,N'PCT',3,N'TTr-PCT','2018-02-10',N'Thường',N'Thường',N'Tờ trình - V/v Xin kinh phí Tổ chức chương trình chào đón tân niên cho tân binh nhập ngũ tháng 2/2018',N'4// - Phạm Văn Thuận - f.t',N'4// - Nguyễn Doãn Nam - p.cnCT/f',12,2,N'BCH Sư đoàn(7);
ban Tài chính/f;
Lưu: BTH, BM;',N'Ban Tuyên huấn/PCT',N'',null,null,N'',N'Trần Thị Huỳnh Như')
INSERT INTO VANBANDI VALUES (2018,N'PCT',4,N'TB-PCT','2018-02-15',N'Thường',N'Thường',N'Thông báo - V/v Phổ biến Chỉ thị 443 của Quân khu',N'',N'4// - Nguyễn Doãn Nam - p.cnCT/f',23,3,N'BCH Sư đoàn(7);
4CQ, 3e trực thuộc, 7d TT;
Lưu: BTH, BM;',N'Ban Tuyên huấn/PCT',N'',null,null,N'Kèm 6 tờ phụ lục',N'Trần Thị Huỳnh Như')
INSERT INTO VANBANDI VALUES (2018,N'PCT',5,N'PCT-BVAN','2018-03-15',N'Tối mật',N'Thường',N'Công văn - V/v Triển khai công tác Bảo vệ An ninh trong Sư đoàn đầu năm 2018',N'',N'4// - Lê Văn Nhân - cnCT/f',12,4,N'BCH Sư đoàn(7);
4CQ, 3e trực thuộc, 7d TT;
Lưu: BVAN, BM;',N'Ban Bảo vệ An ninh/PCT',N'',5,3,N'',N'Lê Trung Hiếu')
INSERT INTO VANBANDI VALUES (2018,N'PCT',6,N'PCT-DV','2018-03-18',N'Thường',N'Thường',N'Công văn - V/v Kế hoạch công tác dân vận quý I/2018',N'',N'4// - Nguyễn Doãn Nam - p.cnCT/f',23,6,N'BCH Sư đoàn(7);
4CQ, 3e trực thuộc, 7d TT;
Lưu: BDV, BM;',N'Ban Dân vận/PCT',N'',null,null,N'',N'Lê Trung Hiếu')
INSERT INTO VANBANDI VALUES (2018,N'PCT',7,N'BC-PCT','2018-03-21',N'Thường',N'Thường',N'Báo cáo - Kết quả cuộc thi nấu ăn Sư đoàn',N'',N'4// - Nguyễn Doãn Nam - p.cnCT/f',15,3,N'BCH Sư đoàn(7);
Các đơn vị đoạt giải;
Lưu: KHTH, BM;',N'Tl. Kế hoạch Tổng hợp/PCT',N'',null,null,N'',N'Lê Trung Hiếu')
INSERT INTO VANBANDI VALUES (2018,N'PCT',8,N'HD-PCT','2018-03-26',N'Mật',N'Thường',N'Hướng dẫn - Công tác tổ chức năm 2018',N'',N'4// - Nguyễn Doãn Nam - p.cnCT/f',20,4,N'BCH Sư đoàn(7);
4CQ, 3e trực thuộc, 7d TT;
Lưu: BTC, BM;',N'Ban Tổ chức/PCT',N'',null,null,N'',N'Lê Trung Hiếu')
INSERT INTO VANBANDI VALUES (2018,N'PHC',1,N'TMKH-PHC','2018-01-05',N'Thường',N'Thường',N'Công văn - V/v Xin ý kiến về việc chuẩn bị cho tiệc mừng xuân Sư đoàn 2018',N'',N'2// - Nguyễn Văn Dũng - p.cnHC/f',13,2,N'BCH Sư đoàn(7);
Lưu: Ban TMKH/PHC, BM;',N'Ban Tham mưu kế hoạch/PHC',N'',null,null,N'',N'Nguyễn Chí Cường')
INSERT INTO VANBANDI VALUES (2018,N'PHC',2,N'BC-PHC','2018-01-23',N'Thường',N'Thường',N'Báo cáo - Dự tính nhu cầu xăng dầu quý I/2018',N'',N'2// - Nguyễn Văn Dũng - p.cnHC/f',13,2,N'BCH Sư đoàn(7);
Ban Tài chính;
Lưu: BXD, BM;',N'Ban Xăng dầu/PHC',N'',null,null,N'',N'Nguyễn Chí Cường')
INSERT INTO VANBANDI VALUES (2018,N'PHC',3,N'TTr-PHC','2018-01-25',N'Thường',N'Thường',N'Tờ trình - V/v cung cấp tài chính mua văn phòng phẩm',N'',N'2// - Nguyễn Văn Dũng - p.cnHC/f',12,2,N'BCH Sư đoàn(7);
Ban Tài chính;
Lưu: Ban BDT, BM;',N'Ban Doanh trại/PHC',N'',null,null,N'',N'Nguyễn Chí Cường')
INSERT INTO VANBANDI VALUES (2018,N'PHC',4,N'TTr-PHC','2018-01-25',N'Thường',N'Thường',N'Tờ trình - V/v phê duyệt công trình doanh trại e5',N'3// - Trần Minh Phong - p.ft',N'2// - Nguyễn Văn Dũng - p.cnHC/f',12,6,N'BCH Sư đoàn(7);
Ban Tài chính;
Lưu: Ban BDT, BM;',N'Ban Doanh trại/PHC',N'',null,null,N'',N'Lương Quang Cương')
INSERT INTO VANBANDI VALUES (2018,N'PHC',5,N'BC-PHC','2018-01-25',N'Mật',N'Thường',N'Báo cáo - Tài chính đầu năm 2018',N'3// - Trần Minh Phong - p.ft',N'2// - Nguyễn Văn Dũng - p.cnHC/f',12,6,N'BCH Sư đoàn(7);
Ban Tài chính;
Lưu: Ban BTC, BM;',N'Ban Tài chính/PHC',N'',6,2,N'Chú Phong giữ 1 bản',N'Lương Quang Cương')
INSERT INTO VANBANDI VALUES (2018,N'PKT',1,N'BC-PKT','2018-01-05',N'Thường',N'Thường',N'Báo cáo - Chất lượng kiểm định tăng thiết giáp',N'4// - Phạm Văn Thuận - f.t',N'2// - Lê Xuân Nhật - cnKT.f',12,7,N'BCH Sư đoàn(7);
Lưu: Ban BXM, BM;',N'Ban Xe - Máy/PHC',N'',null,null,N'',N'Nguyễn Chí Cường')
INSERT INTO VANBANDI VALUES (2018,N'PKT',2,N'PKT-TB','2018-01-13',N'Thường',N'Thường',N'Thông báo - Công tác đảm bảo an toàn trang thiết bị quân sự 2018',N'',N'2// - Lê Xuân Nhật - cnKT.f',12,4,N'BCH Sư đoàn(7);
Lưu: Ban TMKH, BM;',N'Ban Tham mưu kế hoạch/PKT',N'',null,null,N'',N'Nguyễn Chí Cường')
INSERT INTO VANBANDI VALUES (2018,N'PKT',3,N'TTr-PKT','2018-02-10',N'Thường',N'Thường',N'Tờ trình - Xin kinh phí mua văn phòng phẩm ',N'3// - Trần Minh Phong - p.ft',N'2// - Lê Xuân Nhật - cnKT.f',12,2,N'BCH Sư đoàn(7);
Ban Tài chính;
Lưu: BQK, BM;',N'Ban Quân khí/PKT',N'',null,null,N'',N'Nguyễn Chí Cường')
INSERT INTO VANBANDI VALUES (2018,N'PKT',4,N'HD-PKT','2018-03-10',N'Thường',N'Thường',N'Hướng dẫn - Công tác Xe - máy năm 2018',N'',N'2// - Lê Xuân Nhật - cnKT.f',23,4,N'BCH Sư đoàn(7);
Ban Tài chính;
Lưu: BXM, BM;',N'Ban Xe - Máy/PHC',N'',null,null,N'',N'Nguyễn Chí Cường')
INSERT INTO VANBANDI VALUES (2018,N'PKT',5,N'PKT-CT','2018-03-26',N'Thường',N'Thường',N'Công văn - V/v Tổ chức họp đầu năm',N'',N'2// - Lê Xuân Nhật - cnKT.f',16,3,N'BCH Sư đoàn(7);
Lưu: tl.CT/PKT, BM;',N'trợ lý Chính trị/PKT',N'',null,null,N'',N'Nguyễn Chí Cường')
INSERT INTO VANBANDI VALUES (2018,N'D',1,N'BC-ĐU','2018-01-05',N'Mật',N'Thường',N'Báo cáo - Tình hình đảng viên 2017',N'',N'4// - Phan Văn Xựng - CU/f',15,2,N'ĐU/f;
Các ĐU cấp cơ sở;
UBKT/f, BM;',N'Ủy Ban Kiểm tra Sư đoàn',N'',null,null,N'',N'Nguyễn Chí Cường')
INSERT INTO VANBANDI VALUES (2018,N'D',2,N'TB-ĐU','2018-01-25',N'Mật',N'Thường',N'Thông báo - V/v Rà soát lý lịch đảng viên Sư đoàn 2018',N'',N'4// - Nguyễn Quốc Khoa - p.CU/f',13,3,N'ĐU/f;
Các ĐU cấp cơ sở;
UBKT/f, BM;',N'Ủy Ban Kiểm tra Sư đoàn',N'',null,null,N'',N'Nguyễn Chí Cường')
INSERT INTO VANBANDI VALUES (2018,N'D',3,N'TB-ĐU','2018-02-01',N'Thường',N'Thường',N'Thông báo - V/v Kiện toàn UBKT',N'',N'4// - Nguyễn Quốc Khoa - p.CU/f',12,2,N'ĐU/f;
Các ĐU cấp cơ sở;
BTC/PCT, BM;',N'Ban Tổ chức/f',N'',null,null,N'',N'Nguyễn Chí Cường')
INSERT INTO VANBANDI VALUES (2018,N'D',4,N'BC-ĐU','2018-02-20',N'Tuyệt mật',N'Thường',N'Báo cáo - Kết quả cuộc họp ngày 19/02/2018',N'',N'4// - Phan Văn Xựng - CU/f',10,3,N'ĐU/f;
Các ĐU cấp cơ sở;
UBKT/f, BM;',N'Ủy Ban Kiểm tra Sư đoàn',N'',4,2,N'Chú Xựng giữ 1 bản',N'Lương Quang Cương')
INSERT INTO VANBANDI VALUES (2018,N'PD',1,N'10/BC-TĐ271','2018-02-20',N'Thường',N'Thường',N'Báo cáo - Công tác chuẩn bị hợp luyện của eBB271',N'',N'1// - Huỳnh Việt Lê Kha - et',10,4,N'f5;
Các cơ quan đơn vị;',N'eBB271',N'',null,null,N'',N'Nguyễn Chí Cường')
INSERT INTO VANBANDI VALUES (2018,N'PD',2,N'20/TTr-TĐ4','2018-02-15',N'Thường',N'Thường',N'Tờ trình - Xin kinh phí tu bổ doanh trại',N'',N'1// - Nguyễn Lê Danh - e.t',15,3,N'f5;
Các cơ quan đơn vị;',N'eBB4',N'',null,null,N'',N'Nguyễn Chí Cường')


--


INSERT INTO VANBANDEN VALUES (2018,N'H',1,N'Phòng Tác chiến -  Bộ Tham mưu Quân khu 7',N'05/PTC - TH','2018-01-05','2018-01-02',N'Tối mật',N'Hỏa tốc',N'Công văn - V/v Một số thay đổi trong kế hoạch tăng cường bảo đảm an ninh đầu năm 2018',N'',N'1/// - Võ Văn Cổ - p.TMT/QK7',1,4,N'Các e trực thuộc, 4f;
…',N'Chuyển BTH/PTM Sao y gửi cho chỉ huy/f và 4CQ
- Chú Rậm',N'',8,1,N'',N'Nguyễn Chí Cường')
INSERT INTO VANBANDEN VALUES (2018,N'Q',1,N'Bộ Quốc phòng',N'197/2014/TT-BQP','2018-01-05','2017-12-29',N'Thường',N'Thường',N'Thông tư - Quy định việc thực hiện công tác quốc phòng, quân sự ở bộ, ngành và địa phương',N'',N'3/// - Đỗ Bá Tỵ',1,4,N'Các đơn vị, quân khu cả nước;
Các trường Quân đội;
',N'Photo BHC, 4 CQ - Chú Thuận',N'Bảo Mật/f',1,1,N'',N'Nguyễn Chí Cường')
INSERT INTO VANBANDEN VALUES (2018,N'TMo',1,N'UBND Huyện Dương Minh Châu',N'10/TM','2018-01-08','2018-01-06',N'Thường',N'Thường',N'Thư mời
Họp mặt đầu xuân các cơ quan đoàn thể địa phương
10:00 ngày 11/01/2018, Nhà khách huyện DMC, 225/23B Nguyễn Lê.',N'',N'Nguyễn Thị Loan - P.CT',1,1,N'',N'Chú Rậm dự',N'',null,null,N'',N'Nguyễn Chí Cường')
INSERT INTO VANBANDEN VALUES (2018,N'TM',1,N'Ban Tham mưu Trung đoàn BB271',N'08/BC-TH','2018-01-20','2018-01-15',N'Thường',N'Thượng khẩn',N'Báo cáo - Công tác chuẩn bị hợp luyện ĐLĐN',N'',N'2// - Huỳnh Việt Lê Kha - et',1,3,N'PTM/f5;
Các d trực thuộc;
Lưu: TH, BM;',N'Chuyển PTM - Chú Rậm',N'',null,null,N'',N'Nguyễn Chí Cường')
INSERT INTO VANBANDEN VALUES (2018,N'CT',1,N'Cục Chính trị Quân khu 7',N'12/CCT-TH','2018-01-22','2018-01-13',N'Thường',N'Thường',N'Công văn - V/v chuẩn bị cho công tác tuyên huấn năm 2018',N'',N'1/// - Phạm Toàn - p.CnCT/QK7',2,2,N'PCT/f5;
Các d trực thuộc;
Lưu: TH, BM;',N'Ban Tuyên huấn chuẩn bị - Chú Xựng',N'',null,null,N'Chú Khoa giữ 1 bản gốc',N'Nguyễn Chí Cường')
INSERT INTO VANBANDEN VALUES (2018,N'HC',1,N'Cục Hậu cần Quân khu',N'05/CHC-TC','2018-01-21','2018-01-17',N'Tuyệt mật',N'Khẩn',N'Công văn - V/v Phân bổ thêm nguồn tài chính cho Sư đoàn BB5',N'',N'4// - Lê Văn Sang - p.cnHCQK',2,1,N'Phòng Tài chính QK7;
f5;
Lưu: BM;',N'giao đ/c Nam - BTC/f hoàn thành',N'',7,1,N'Chú Phong giữ 1 bản gốc ',N'Nguyễn Chí Cường')
INSERT INTO VANBANDEN VALUES (2018,N'KT',1,N'Cục Kỹ thuật Quân khu 7',N'02/TB-CKT','2018-03-25','2018-03-20',N'Mật',N'Thường',N'Thông báo - Về việc kiểm tra quân khí ',N'',N'4// - Nguyễn Xuân Hợp - cnKT/QK7',1,3,N'PKT/f5;
Các d trực thuộc;
Lưu: QK, BM;',N'Chuyển PKT - Chú Ngạn',N'Phòng Kỹ thuật/f',null,null,N'',N'Nguyễn Chí Cường')
INSERT INTO VANBANDEN VALUES (2018,N'H',2,N'Bộ Chỉ huy Bộ Tư lệnh Quân khu 7',N'43/CL-BTL','2018-03-25','2018-03-24',N'Mật',N'Hỏa tốc',N'Chỉ lệnh - Về chỉ đạo mới của Bộ trưởng BQP',N'',N'2/// - Trần Đơn - Tl.QK',1,4,N'BTLQK;
Các e, f trực thuộc;
…;
Lưu: CTH, BM;',N'Giao Ban Tác huấn xây dựng kế hoạch chi tiết chỉ đạo các đơn vị.
- Chú Thuận',N'Bảo Mật/f',1,2,N'',N'Nguyễn Chí Cường')
INSERT INTO VANBANDEN VALUES (2018,N'XH',1,N'UBND Huyện Dương Minh Châu',N'12/UBND-DV','2018-03-27','2018-03-25',N'Thường',N'Thường',N'Công văn - V/v phối hợp trong công tác dân vận với Sư đoàn BB5',N'',N'Nguyễn Thị Loan - P.CT',1,3,N'f5;
Các cơ quan đoàn thể;
BDV, BM;',N'Ban Dân vận phối hợp địa phương thực hiện
- Chú Xựng',N'',null,null,N'',N'Nguyễn Chí Cường')
INSERT INTO VANBANDEN VALUES (2018,N'TMo',2,N'Giáo xứ Vinh Sơn',N'20/TM','2018-03-29','2018-03-20',N'Thường',N'Thường',N'Thư mời
Tham dự lễ hiệp dâng
08:00 ngày 01/04/2018, Giáo xứ Vinh Sơn',N'',N'',1,1,N'',N'đ/c Phong dự - Chú Thuận',N'',null,null,N'',N'Nguyễn Chí Cường')
INSERT INTO VANBANDEN VALUES (2018,N'TM',2,N'Phòng Cơ yếu - Bộ Tham mưu Quân khu 7',N'15/HD-PCY','2018-02-02','2018-01-30',N'Mật',N'Thường',N'Hướng dẫn - Công tác Cơ yếu năm 2018',N'',N'4// - Phạm Hào Nam - cnCY/QK',1,3,N'PTM/f5;
Lưu: PCY, BM;',N'Chuyển Ban Cơ yếu - Chú Rậm',N'',1,3,N'',N'Nguyễn Chí Cường')
INSERT INTO VANBANDEN VALUES (2018,N'H',3,N'Bộ Tham mưu Quân khu 7',N'25/BTM-TH','2018-02-12','2018-02-09',N'Thường',N'Hỏa tốc',N'Công văn - V/v trùng tu trường bắn Sư đoàn 5 phục vụ hội thao',N'',N'1/// - Võ Văn Cổ - p.TMT/QK7',1,6,N'PKT/f5;
Lưu: TH, BM;',N'Chuyển BTH/PTM kết hợp BDT/PHC xử lý - Chú Thuận',N'',null,null,N'',N'Nguyễn Chí Cường')


--


INSERT INTO CQSOANTHAO VALUES (N'Sư đoàn BB5')
INSERT INTO CQSOANTHAO VALUES (N'Ủy ban kiểm tra/f')

INSERT INTO CQSOANTHAO VALUES (N'Phòng Tham mưu')
INSERT INTO CQSOANTHAO VALUES (N'Phòng Chính trị')
INSERT INTO CQSOANTHAO VALUES (N'Phòng Hậu cần')
INSERT INTO CQSOANTHAO VALUES (N'Phòng Kỹ thuật')

INSERT INTO CQSOANTHAO VALUES (N'Ban Tác huấn/PTM')
INSERT INTO CQSOANTHAO VALUES (N'Ban Phòng không/PTM')
INSERT INTO CQSOANTHAO VALUES (N'Ban Pháo binh/PTM')
INSERT INTO CQSOANTHAO VALUES (N'Ban Công binh/PTM')
INSERT INTO CQSOANTHAO VALUES (N'Ban Cơ yếu/PTM')
INSERT INTO CQSOANTHAO VALUES (N'Ban Thông tin/PTM')
INSERT INTO CQSOANTHAO VALUES (N'TL.Chính trị/PTM')
INSERT INTO CQSOANTHAO VALUES (N'Ban Hành chính/PTM')

INSERT INTO CQSOANTHAO VALUES (N'Ban Tuyên huấn/PCT')
INSERT INTO CQSOANTHAO VALUES (N'TL.Kế hoạch tổng hợp/PCT')
INSERT INTO CQSOANTHAO VALUES (N'Ban Cán bộ/PCT')
INSERT INTO CQSOANTHAO VALUES (N'Ban Tổ chức/PCT')
INSERT INTO CQSOANTHAO VALUES (N'Ban Dân vận/PCT')
INSERT INTO CQSOANTHAO VALUES (N'Ban Bảo vệ an ninh/PCT')

INSERT INTO CQSOANTHAO VALUES (N'Ban Tham mưu kế hoạch/PHC')
INSERT INTO CQSOANTHAO VALUES (N'Ban Xăng dầu/PHC')
INSERT INTO CQSOANTHAO VALUES (N'Ban Doanh trại/PHC')
INSERT INTO CQSOANTHAO VALUES (N'Ban Tài chính/PHC')
INSERT INTO CQSOANTHAO VALUES (N'Ban Quân nhu/PHC')
INSERT INTO CQSOANTHAO VALUES (N'Ban Quân y/PHC')

INSERT INTO CQSOANTHAO VALUES (N'Ban Xe - máy/PKT')
INSERT INTO CQSOANTHAO VALUES (N'TL.Chính trị/PKT')
INSERT INTO CQSOANTHAO VALUES (N'Ban Quân khí/PKT')