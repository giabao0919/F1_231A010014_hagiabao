void main() {
  final diem = <double>[7.5, 4.0, 8.5, 9.0, 5.5];

  final diemDat = diem.where((d) => d >= 5).toList();
  final tongDiem = diem.reduce((a, b) => a + b);
  final diemTrungBinh = tongDiem / diem.length;

  print('Điểm TB: ${diemTrungBinh.toStringAsFixed(2)}');
  print('Đạt: $diemDat');
}
