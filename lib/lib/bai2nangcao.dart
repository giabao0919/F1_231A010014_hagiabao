import 'dart:io';

double tinhBMI({required double canNang, required double chieuCao}) =>
    canNang / (chieuCao * chieuCao);

String phanLoaiBMI(double bmi) {
  if (bmi < 18.5) return 'Thiếu cân';
  if (bmi < 23) return 'Bình thường';
  if (bmi < 25) return 'Thừa cân';
  return 'Béo phì';
}

void nhapThongTinCaNhan() {
  stdout.write('Nhập cân nặng (kg): ');
  final canNang = double.parse(stdin.readLineSync() ?? '0');

  stdout.write('Nhập chiều cao (m): ');
  final chieuCao = double.parse(stdin.readLineSync() ?? '0');

  final bmi = tinhBMI(canNang: canNang, chieuCao: chieuCao);

  print('================================');
  print('Cân nặng: $canNang kg');
  print('Chiều cao: $chieuCao m');
  print('BMI = ${bmi.toStringAsFixed(1)}');
  print('Phân loại: ${phanLoaiBMI(bmi)}');
  print('================================');
}

void main() {
  nhapThongTinCaNhan();
}
