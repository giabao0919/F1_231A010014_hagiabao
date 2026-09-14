void main() {
  var ten = 'Dart'; // suy luận kiểu
  final int namHoc = 2026; // gán một lần, lúc chạy const
  double pi = 3.14159; // hằng lúc biên dịch
  String? biDanh;
  print('Xin chào $ten! Năm $namHoc, pi = $pi');
  print('Bí danh: ${biDanh ?? "(chưa có)"}');
  print('Độ dài bí danh: ${biDanh?.length}'); // null, không lỗi
}
