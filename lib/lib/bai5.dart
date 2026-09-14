void main() {
  final danhSach = <double>[7.5, 4.0, 8.5, 9.0, 5.5];

  final soLuongGioi = danhSach.where((diem) => diem >= 8.0).length;

  print('Số lượng sinh viên đạt loại Giỏi: $soLuongGioi');
  print('Danh sách điểm trước khi lọc: $danhSach');

  final gioi = danhSach.where((diem) => diem >= 8.0).toList();
  print('Sinh viên đạt loại Giỏi: $gioi');

  final tongDiem = danhSach.reduce((a, b) => a + b);
  final diemTB = tongDiem / danhSach.length;
  print('Điểm trung bình: ${diemTB.toStringAsFixed(2)}');
}
