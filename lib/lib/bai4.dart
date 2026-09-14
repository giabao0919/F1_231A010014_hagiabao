class SinhVien {
  final String hoTen;
  final String mssv;
  final double diemTB;

  const SinhVien(this.hoTen, this.mssv, this.diemTB);

  String get xepLoai {
    if (diemTB >= 8.5) return 'Giỏi';
    if (diemTB >= 7.0) return 'Khá';
    if (diemTB >= 5.0) return 'Trung bình';
    return 'Yếu';
  }

  @override
  String toString() {
    return 'Đầu ra mong đợi: \n'
        'Họ tên: $hoTen\n'
        'MSSV: $mssv\n'
        'Điểm TB: ${diemTB.toStringAsFixed(1)}\n'
        'Xếp loại: $xepLoai';
  }
}

void main() {
  final sv = SinhVien('Nguyễn Văn A', '2201234567', 8.7);
  print(sv);
}
